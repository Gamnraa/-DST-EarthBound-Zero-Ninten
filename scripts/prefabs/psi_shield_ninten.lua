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

--Yeah using a hashmap because lazy
local shieldVars = {
	["self"] = {
		["psi_shield_ninten"] = .5,
		["powershield_ninten"] = .2
	},
	["other"] = {
		["psi_shield_ninten"] = .5,
		["powershield_ninten"] = .2
	},
	["time"] = {
		["psi_shield_ninten"] = 120,
		["powershield_ninten"] = 360
	},
	["shieldfx"] = {
		["psi_shield_ninten"] = "shield_shieldfx",
		["powershield_ninten"] = "counter_shieldfx"
	}
}

local shieldInsts = {}
local shieldTypes = {}
	
local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_" .. inst.prefab, "swap_" .. inst.prefab)
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

local function doFx(prefab, target)
	local pos = target:GetPosition()
	local shieldfx = SpawnPrefab(prefab)
    shieldfx.Transform:SetPosition(pos.x, pos.y, pos.z)
	local follower = shieldfx.entity:AddFollower()			
	follower:FollowSymbol(target.GUID, target.components.combat.hiteffectsymbol, 0, 0, 0)	
end

local function onAttacked(inst, data)
	inst.shieldfx.AnimState:PlayAnimation("anim")
    inst.shieldfx.AnimState:PushAnimation("idle_loop")
	inst.shieldfx.SoundEmitter:PlaySound("psishield/psishield/shieldhit")
end
	
local function onAttackedPower(inst, data)
	inst.shieldfx.AnimState:PlayAnimation("anim")
    inst.shieldfx.AnimState:PushAnimation("idle_loop")
	inst.shieldfx.SoundEmitter:PlaySound("psishield/psishield/counterhit")
	if data.attacker then
		if data.attacker.components.health then
			if inst.components.rider and inst.components.rider:IsRiding() then
				data.attacker.components.health:DoDelta(-data.damage)
			else
				data.attacker.components.health:DoDelta(-data.damage * 4)
			end
		end
	end
end

local function onUseDoor(inst, data)
	if inst.shieldfx then
		--inst.shieldfx.Remove()
		inst:DoTaskInTime(.33, function()
			inst.shieldfx = SpawnPrefab(inst.shieldfx.prefab)
			inst.shieldfx.entity:SetParent(inst.entity)
		end)
	end
end

local function removeShield(inst, target)
	shieldInsts[target] = nil
	shieldTypes[target] = nil
	if inst.components.entitytracker then
		inst.components.entitytracker:ForgetEntity(target.GUID)
	end
	target.components.combat.externaldamagetakenmultipliersninten = 1
	if target.components.talker and inst:HasTag("player") then	
		target.components.talker:Say("There goes my shield.")
	end
	target:RemoveEventCallback("attacked", onAttacked)
	target:RemoveEventCallback("attacked", onAttackedPower)
	target:RemoveEventCallback("fadeout", onUseDoor)
	target.shieldfx:kill_fx()
	target.shieldfx = nil
end
	

----------------------------------------
-- Function that is called when the player successfully performs PSI Shield
-- inst - the object instance (The PSI Shield item)
-- target - the target the player is casting the spell on
----------------------------------------
local function doShield(inst, target, isOwner, taskTime) 
	if isOwner then
		target.components.combat.externaldamagetakenmultipliersninten = shieldVars["self"][inst.prefab]
	else
		target.components.combat.externaldamagetakenmultipliersninten = shieldVars["other"][inst.prefab]
	end
	local duration = taskTime or shieldVars["time"][inst.prefab]
	shieldInsts[target] = target:DoTaskInTime(duration, function() removeShield(inst, target) end)
	if inst.prefab == "psi_shield_ninten" then
		shieldTypes[target] = "psi_shield_ninten"
		target:ListenForEvent("attacked", onAttacked)
		target.shieldfx = SpawnPrefab("shield_fx")
	else
		shieldTypes[target] = "powershield_ninten"
		target:ListenForEvent("attacked", onAttackedPower)
		target.shieldfx = SpawnPrefab("counter_fx")
	end

	target.shieldfx.entity:SetParent(target.entity)
	
	if inst.components.entitytracker then
		inst.components.entitytracker:TrackEntity(target.GUID, target)
	end

	target:ListenForEvent("fadeout", onUseDoor)
end

-----------------------------------------
-- Function that calls when the player attempts to cast a spell with PSI Shield
-- inst - the object instance (The PSI Shield item)
-- target - the target the player is casting the spell on
-----------------------------------------
local function canShield(inst, target)
	local caster = inst.components.inventoryitem.owner
	if not target then target = caster end
    if caster.components.sanity.current >= TUNING.GRAMNINTEN_PSI_SHIELD_SANITY then
		if shieldInsts[target] then
			if caster == target then
				caster.components.talker:Say("I've got a shield already.")
				return
			end
			caster.components.talker:Say("They've got a shield already.")
			return
		end
		caster.components.sanity:DoDelta(-TUNING.GRAMNINTEN_PSI_SHIELD_SANITY)
		caster.components.talker:Say(shieldLines[math.random(#shieldLines)])
		doShield(inst, target, target.prefab == "gramninten")
	else 
		caster.components.talker:Say("I can't concentrate!")	  
    end
 
end 

local function onSave(inst, data)
	
	for k, v in pairs(shieldInsts) do
		table.insert(data, k.GUID)
		data[k.GUID] = GetTaskRemaining(v)
	end
	
	
	return data
end

local function onLoad(inst, data)
	print("LOAD")
	
	if data and inst.components.entitytracker then
		--Wait for EntityTracker
		inst:DoTaskInTime(0, function()
			for k, v in pairs(data) do
				local shielder = inst.components.entitytracker.entities[v]
				if shielder then
					doShield(inst, shielder, shielder.prefab == "gramninten", data[v])
				end
			end
		end)
	end
		
	print(shieldInsts)
end

 local function createShield(name)
	local function fn()
		local inst = CreateEntity()
		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		
		MakeInventoryPhysics(inst)
		inst.AnimState:SetBank("ground_" .. name)
		inst.AnimState:SetBuild("ground_" .. name)
		inst.AnimState:PlayAnimation("idle")
		
		inst:AddComponent("betterspellcaster")	
		inst.components.betterspellcaster:SetSpellFn(canShield)
		inst.components.betterspellcaster.canuseontargets = true	
		inst.components.betterspellcaster.canonlyuseonlocomotors = true
		inst.components.betterspellcaster.canusefrominventory = true
		--inst.components.betterspellcaster.quickcast = true
		inst.OnLoad = onLoad
		inst.OnSave = onSave
		
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
				if not gowner then return end
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
		
		inst:AddComponent("entitytracker")
		return inst
	end
    return Prefab(name, fn, assets)
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
	   createShield("powershield_ninten")


