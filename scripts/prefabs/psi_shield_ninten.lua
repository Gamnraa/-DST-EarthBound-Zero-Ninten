local assets =
{
    Asset("ANIM", "anim/ground_psi_shield_ninten.zip"),
    Asset("ANIM", "anim/swap_psi_shield_ninten.zip"),
	Asset("ANIM", "anim/ground_powershield_ninten.zip"),
	Asset("ANIM", "anim/swap_powershield_ninten.zip"),
}

local shieldLines = {
  "PSI Shield!"
}
	
local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_" .. inst.prefab, "swap_" .. inst.prefab)
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function onAttacked(inst, data)
	inst.shieldfx.AnimState:PlayAnimation("anim")
    inst.shieldfx.AnimState:PushAnimation("idle_loop")
	inst.shieldfx.SoundEmitter:PlaySound("psishield/psishield/shieldhit")
	
	--Island Adventure - psi shield reduces boat damage by 25%
	--Unfortunately this has to be done after the damage is applied, at least for now
	--Boat health has a bas_damage_scale but it's not used when doing damage calculations
	--Or at all in actuality
	local sailor = inst.components.sailor
	if sailor and sailor.boat then
		sailor.boat.components.boathealth:DoDelta(data.damage * .25)
	end
	
end
	
local function onAttackedPower(inst, data)
	inst.shieldfx.AnimState:PlayAnimation("anim")
    inst.shieldfx.AnimState:PushAnimation("idle_loop")
	inst.shieldfx.SoundEmitter:PlaySound("psishield/psishield/counterhit")
	
	--Island Adventure - powershield reduces boat damage by 40% and reflects it
	--Unfortunately this has to be done after the damage is applied, at least for now
	--Boat health has a base_damage_scale but it's not used when doing damage calculations
	--Or at all in actuality
	local attacker = data.attacker
	local sailor = inst.components.sailor
	if sailor and sailor.boat then
		sailor.boat.components.boathealth:DoDelta(data.damage * .4)
		if attacker and attacker.components.health then
			return attacker.components.health:DoDelta(-data.damage * .4)
		end
	end
	
	if attacker then
		if attacker.components.health then
			if inst.components.rider and inst.components.rider:IsRiding() then
				attacker.components.health:DoDelta(-data.damage)
			else
				attacker.components.health:DoDelta(-data.damage * 4)
			end
		end
	end
end

local function removeShield(inst, target)
	target.components.combat.externaldamagetakenmultipliers:RemoveModifier(target, "psishield")
	if target.components.talker then	
		target.components.talker:Say("There goes my shield.")
	end
	inst:RemoveEventCallback("attacked", onAttacked, target)
	inst:RemoveEventCallback("attacked", onAttackedPower, target)
	inst:RemoveEventCallback("boatattacked", onAttacked, target)
	inst:RemoveEventCallback("boatattacked", onAttackedPower, target)
	inst:Remove()
	target:DoTaskInTime(.1, function() 
		target.shieldfx:kill_fx() 
		target.shieldfx = nil
	end)
end

local function onAttached(inst, target)
	inst.entity:SetParent(target.entity)
	inst.Transform:SetPosition(0, 0, 0)
	inst:ListenForEvent("death", function()
		inst.components.debuff:Stop()
	end, target)
	
	if target.components.combat then
		target.components.combat.externaldamagetakenmultipliers:SetModifier(target, .5, "psishield")
		inst:ListenForEvent("attacked", onAttacked, target)
		inst:ListenForEvent("boatattacked", onAttacked, target)
		target.shieldfx = SpawnPrefab("shield_fx")
		target.shieldfx.entity:SetParent(target.entity)
	end
end

local function onAttachedPower(inst, target)
	inst.entity:SetParent(target.entity)
	inst.Transform:SetPosition(0, 0, 0)
	inst:ListenForEvent("death", function()
		inst.components.debuff:Stop()
	end, target)
	
	if target.components.combat then
		target.components.combat.externaldamagetakenmultipliers:SetModifier(target, .2, "psishield")
		inst:ListenForEvent("attacked", onAttackedPower, target)
		inst:ListenForEvent("boatattacked", onAttackedPower, target)
		target.shieldfx = SpawnPrefab("counter_fx")
		target.shieldfx.entity:SetParent(target.entity)
	end
end
	

local function onTimerDone(inst, data)
	if data.name == "shieldover" then
		inst.components.debuff:Stop()
	end
end

-----------------------------------------
-- Function that calls when the player attempts to cast a spell with PSI Shield
-- inst - the object instance (The PSI Shield item)
-- target - the target the player is casting the spell on
-----------------------------------------
local function canShield(inst, target)
	local caster = inst.components.inventoryitem.owner	
    if caster.components.sanity.current >= TUNING.GRAMNINTEN_PSI_SHIELD_SANITY then
		if target.shieldfx then
			if caster == target then
				caster.components.talker:Say("I've got a shield already.")
				return
			end
			caster.components.talker:Say("They've got a shield already.")
			return
		end
		caster.components.sanity:DoDelta(-TUNING.GRAMNINTEN_PSI_SHIELD_SANITY)
		caster.components.talker:Say(shieldLines[math.random(#shieldLines)])
		target:AddDebuff("buff_" .. inst.prefab, "buff_" .. inst.prefab)
	else 
		caster.components.talker:Say("I can't concentrate!")	  
    end
 
end 

 local function createShield(name)
	local function fn()
		local inst = CreateEntity()
		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		inst.entity:AddNetwork()
		
		MakeInventoryPhysics(inst)
		inst.AnimState:SetBank("ground_" .. name)
		inst.AnimState:SetBuild("ground_" .. name)
		inst.AnimState:PlayAnimation("idle")
		if not TheWorld.ismastersim then
			return inst
		end
		inst.entity:SetPristine()
		
		inst:AddComponent("spellcaster")	
		inst.components.spellcaster:SetSpellFn(canShield)
		inst.components.spellcaster.canuseontargets = true	
		inst.components.spellcaster.canonlyuseonlocomotors = true
		inst.components.spellcaster.canonlyuseoncombat = true
		--inst.components.spellcaster.quickcast = true
		
		inst:AddComponent("inspectable")
		inst:AddComponent("inventoryitem") 
		inst.inventory = inst.components.inventoryitem
		inst.inventory.imagename = name
		inst.inventory.atlasname = "images/inventoryimages/" .. name .. ".xml"
		inst:AddComponent("equippable")
		
		inst.components.equippable:SetOnEquip( onequip )
		inst.components.equippable:SetOnUnequip( onunequip )
		
		
		inst.components.inventoryitem.onputininventoryfn = function(inst, player)
			if player.components.inventory then
				local gowner = inst.components.inventoryitem:GetGrandOwner()
				if gowner.components.inventory and gowner.prefab ~= "gramninten" then
					inst:DoTaskInTime(0.1, function()
						gowner.components.inventory:DropItem(inst)
						if gowner:HasTag("player") then
							gowner.components.talker:Say("I can't use this!")
						end
					end)
				end
			end
		end
		
		return inst
	end
    return Prefab(name, fn, assets)
end

local function makeBuff(name, attachedfn, detachedfn, duration, priority, prefabs)
	local function fn()
		local inst = CreateEntity()
		
		if not TheWorld.ismastersim then
			inst:DoTaskInTime(0, inst.Remove)
			return isnt
		end
		inst.entity:AddTransform()

        --[[Non-networked entity]]
        --inst.entity:SetCanSleep(false)
        inst.entity:Hide()
        inst.persists = false

        inst:AddTag("CLASSIFIED")

        inst:AddComponent("debuff")
        inst.components.debuff:SetAttachedFn(attachedfn)
        inst.components.debuff:SetDetachedFn(detachedfn)
        inst.components.debuff.keepondespawn = true

        inst:AddComponent("timer")
        inst.components.timer:StartTimer("shieldover", duration)
        inst:ListenForEvent("timerdone", onTimerDone)

        return inst
	end
	return Prefab(name, fn, nil, prefabs)
end

STRINGS.NAMES.PSI_SHIELD_NINTEN  = "PSI Shield"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.PSI_SHIELD_NINTEN = "I don't even know what that could be."
STRINGS.CHARACTERS.WX78.DESCRIBE.PSI_SHIELD_NINTEN = "ERROR. UNDEFINED OBJECT"
STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.PSI_SHIELD_NINTEN = "It protects me from getting seriously hurt!"

STRINGS.NAMES.POWERSHIELD_NINTEN  = "Powershield"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.POWERSHIELD_NINTEN = "I don't even know what that could be."
STRINGS.CHARACTERS.WX78.DESCRIBE.POWERSHIELD_NINTEN = "ERROR. UNDEFINED OBJECT"
STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.POWERSHIELD_NINTEN = "It protects me from getting seriously hurt!"

return createShield("psi_shield_ninten"),
	   createShield("powershield_ninten"),
	   makeBuff("buff_psi_shield_ninten", onAttached, removeShield, 120, 1, {"shield_fx"}),
	   makeBuff("buff_powershield_ninten", onAttachedPower, removeShield, 300, 1, {"counter_fx"})


