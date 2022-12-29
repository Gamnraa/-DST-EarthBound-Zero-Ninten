local assets =
{
    Asset("ANIM", "anim/ground_four_d_slip.zip"),
    Asset("ANIM", "anim/swap_four_d_slip.zip"),
	Asset("ANIM", "anim/ground_four_d_slip_o.zip"),
    Asset("ANIM", "anim/swap_four_d_slip_o.zip"),
}

local prefabs = 
{
	"pk_ground_sinkhole"
}

local slipLines = {
  "Now you see me...",
  "See ya!",
  "4D Slip!",
  "I'm outta here!",
  "Later!"
}

local shieldLines = {
  "PSI Shield!"
}

local pkFireTask = nil



local function onequip(inst, owner)
    --owner.AnimState:OverrideSymbol("swap_object", "swap_" .. inst.prefab, "swap_" .. inst.prefab)
	owner.AnimState:OverrideSymbol("swap_object", "swap_four_d_slip", "swap_four_d_slip")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end
---------------------------


--4D Slip related functions


---------------------------
local function removeSlipBuff(inst, target)
	caster.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED)
end

local function onAttachedSlip(inst, target)
	inst:ListenForEvent("death", function()
		inst.components.debuff:Stop()
	end, target)
	
	caster.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED * 1.5)
	caster.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED * 1.5)
end

local function doSlip(inst, target, pos) 
	local water = nil
	if TUNING.ISLAND_ADVENTURE_ENABLED then water = IsWater(TheWorld.Map:GetTileAtPoint(pos.x, pos.y, pos.z)) end
	if caster.components.sailor and water and caster.components.sailor:IsSailing() == false then
		caster.components.talker:Say("I'd rather not just throw myself into the ocean.")
		caster.components.sanity:DoDelta(TUNING.GRAMNINTEN_FOUR_D_SLIP_SANITY)
		return
	elseif caster.components.sailor and not water and caster.components.sailor:IsSailing() then
		--todo figure out if we can disembark before teleporting so the boat isn't lost
		caster.components.talker:Say("That'd beach my boat!")
	end
	
	caster.components.talker:Say(slipLines[math.random(#slipLines)])
	
	local caster = inst.components.inventoryitem.owner
	caster.Transform:SetPosition(pos.x, pos.y, pos.z)
	
	if inst.prefab == "four_d_slip_o" then
		caster.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED * 1.5)
		caster.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED * 1.5)
		--For time stacking
		if slipBuffTime > 0 then
			slipBuffTime = GetTaskRemaining(slipBuffTask)
			slipBuffTask:Cancel()
		end
		slipBuffTime = slipBuffTime + 30
		slipBuffTask = caster:DoTaskInTime(slipBuffTime, function()
			slipBuffTime = 0
			caster.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED)
			caster.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED)
		end)
	end
end
------------------------------


--PSI Shield related functions


------------------------------
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

local function onAttachedShield(inst, target)
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

local function doShield(inst, target, caster)
	caster.components.talker:Say(shieldLines[math.random(#shieldLines)])
	target:AddDebuff("buff_" .. inst.prefab, "buff_" .. inst.prefab)
end
---------------------------


--PK Fire related functions


---------------------------
local function loopPkFire(target, damage)
	if target.components.burnable.burning then
		if target.components.health then target.components.health:DoDelta(-damage) end
	else
		pkFireTask:Cancel()
	end
end

local function onPkFireHit(inst, attacker, target)
	if not target:IsValid() then
        --target killed or removed in combat damage phase
        return
	end
	if not target.components.burnable then
		return
	end
	
	local damage = 3
	if inst.prefab == "pk_fire_o" then
		local firetrap = SpawnPrefab("houndfire")
		local pos = target:GetPosition()
		firetrap.Transform:SetPosition(pos.x, pos.y, pos.z)
		target:DoTaskInTime(.1, function() target:PushEvent("pkfirestun") end)
	end
	
	target.SoundEmitter:PlaySound("dontstarve/wilson/blowdart_impact_fire")
	target:PushEvent("attacked", {attacker = attacker, damage = 0})
	if target.components.burnable then
		target.components.burnable:Ignite(nil, attacker)
	end
	if target.components.freezable then
		target.components.freezable:Unfreeze()
	end
	if target.components.health then
		target.components.health:DoFireDamage(0, attacker)
	end
	if target.components.combat then
		target.components.combat:SuggestTarget(attacker)
	end
	pkFireTask = target:DoPeriodicTask(.5, function() loopPkFire(target, damage) end)
	inst:RemoveComponent("weapon")
end

----------------------------------------
-- Function that is called when the player successfully performs PK Fire
-- inst - the object instance (The PK Fire item)
-- target - the target the player is casting the spell on
----------------------------------------
local function doPkFire(inst, target, caster) 
	print(target)
	inst:AddComponent("weapon")
	inst.components.weapon:SetDamage(0)
	inst.components.weapon:SetProjectile("fire_projectile")
	inst.components.weapon:SetOnAttack(onPkFireHit)
	inst.components.weapon:LaunchProjectile(caster, target)
end

-----------------------------


--PK Freeze related functions


-----------------------------
local function pkFreeze(target, attacker)
	if not target:IsValid() then
        --target killed or removed in combat damage phase
        return
    end

    if target.components.sleeper ~= nil and target.components.sleeper:IsAsleep() then
        target.components.sleeper:WakeUp()
    end

    if target.components.burnable ~= nil then
        if target.components.burnable:IsBurning() then
            target.components.burnable:Extinguish()
        elseif target.components.burnable:IsSmoldering() then
            target.components.burnable:SmotherSmolder()
        end
    end

    if target.components.combat ~= nil then
        target.components.combat:SuggestTarget(attacker)
    end

    if target.sg ~= nil and not target.sg:HasStateTag("frozen") then
        target:PushEvent("attacked", { attacker = attacker, damage = 0, weapon = nil })
    end

    if target.components.freezable ~= nil then
        target.components.freezable:Freeze()
        target.components.freezable:SpawnShatterFX()
    end
end

local function doPkFreeze(inst, target, caster) 
	pkFreeze(target, caster)
	
	if inst.prefab == "pk_freeze_o" then
		local pos = target:GetPosition()
		local ents = TheSim:FindEntities(pos.x, 0, pos.z, 6.0, nil, {"player", "playerghost", "companion", "FX", "INLIMBO"}, {"freezable"})
		for _, v in pairs(ents) do
			pkFreeze(v)
			if v.components.health then
				v.components.health:DoDelta(-20)
			end
		end
	end	
end
-----------------------------


--PK Ground related functions


-----------------------------
local function doPkGround(inst, target, pos) 
	local sinkhole = SpawnPrefab("pk_ground_sinkhole")
	if inst.prefab == "pk_ground_o" then 
		sinkhole.mtrength = 100
		sinkhole.damageMod = .17 
	end
	sinkhole.Transform:SetPosition(pos.x, pos.y, pos.z)
	SpawnPrefab("sinkhole_spawn_fx_"..math.random(3)).Transform:SetPosition(pos.x, pos.y, pos.z)
	sinkhole:PushEvent("pkgroundcollapse")
	--
end

local function doPkThunder(inst, target, caster)
end

local function doPkStarstorm(inst, target, caster)
end

local psiCosts = {
	["gramninten"] = {
		["four_d_slip"] = TUNING.GRAMNINTEN_FOUR_D_SLIP_SANITY,
		["psi_shield"] = TUNING.GRAMNINTEN_PSI_SHIELD_SANITY,
		["four_d_slip_o"] = TUNING.GRAMNINTEN_FOUR_D_SLIP_SANITY,
		["powershield"] = TUNING.GRAMNINTEN_PSI_SHIELD_SANITY,
	},
	["gramtora"] = {
		["pk_fire"] = TUNING.GRAMTORA_PK_FIRE_SANITY,
		["pk_freeze"] = TUNING.GRAMTORA_PK_FREEZE_SANITY,
		["pk_ground"] = TUNING.GRAMTORA_PK_GROUND_SANITY,
		["pk_gramthunder"] = TUNING.GRAMTORA_PK_THUNDER_SANITY,
		["pk_starstorm"] = TUNING.GRAMTORA_PK_STARSTORM_SANITY,
		["pk_fire_o"] = TUNING.GRAMTORA_PK_FIRE_SANITY,
		["pk_freeze_o"] = TUNING.GRAMTORA_PK_FREEZE_SANITY,
		["pk_ground_o"] = TUNING.GRAMTORA_PK_GROUND_SANITY,
		["pk_gramthunder_o"] = TUNING.GRAMTORA_PK_THUNDER_SANITY,
	},
	["grampora"] = {
		["pk_fire"] = TUNING.GRAMPORA_PK_FIRE_SANITY,
		["pk_freeze"] = TUNING.GRAMPORA_PK_FREEZE_SANITY,
		["pk_fire_o"] = TUNING.GRAMPORA_PK_FIRE_SANITY,
		["pk_freeze_o"] = TUNING.GRAMPORA_PK_FREEZE_SANITY,
	},
}

local psiAbilities = {
	["gramninten"] = {
		["four_d_slip"] = function(inst, target, caster, pos) doSlip(inst, target, pos) end,
		["psi_shield_ninten"] = function(inst, target, caster, pos) doShield(inst, target, caster)  end,
		["four_d_slip_o"] = function(inst, target, caster, pos) doSlip(inst, target, pos) end,
		["powershield_ninten"] = function(inst, target, caster, pos) doShield(inst, target, caster)  end,
	},
	["gramtora"] = {
		["pk_fire"] = function(inst, target, caster, pos) doPkFire(inst, target, caster) end,
		["pk_freeze"] = function(inst, target, caster, pos) doPkFreeze(inst, target, caster) end,
		["pk_ground"] = function(inst, target, caster, pos) doPkGround(inst, target, pos) end,
		["pk_fire_o"] = function(inst, target, caster, pos) doPkFire(inst, target, caster) end,
		["pk_freeze_o"] = function(inst, target, caster, pos) doPkFreeze(inst, target, caster) end,
		["pk_ground_o"] = function(inst, target, caster, pos) doPkGround(inst, target, pos) end,
	},
	["grampora"] = {
		["pk_fire"] = function(inst, target, caster, pos) doPkFire(inst, target, caster) end,
		["pk_freeze"] = function(inst, target, caster, pos) doPkFreeze(inst, target, caster) end,
		["pk_fire_o"] = function(inst, target, caster, pos) doPkFire(inst, target, caster) end,
		["pk_freeze_o"] = function(inst, target, caster, pos) doPkFreeze(inst, target, caster) end,
	},
}


-----------------------------------------
-- Function that calls when the player attempts to cast a spell
-- inst - the object instance 
-- target - the target the player is casting the spell on
-- pos - the location the spell is to be cast at
-- cost - the sanity cost for the spell
-- glovecaster - used when the function is called from the Magic Gloves component action
-----------------------------------------
local function canPsi(inst, target, pos, cost, glovescaster)
	local caster = inst.components.inventoryitem.owner
	if not caster.components.sanity then 
		caster = glovescaster
	end	
	
	if not pos then pos = target:GetPosition() end
	if not cost then cost = psiCosts[caster.prefab][inst.prefab] end
    if caster.components.sanity.current >= cost then
		if inst:HasTag("psishield") and target.shieldfx then
			if caster == target then
				caster.components.talker:Say("I've got a shield already.")
				return
			end
			caster.components.talker:Say("They've got a shield already.")
			return
		end
        caster.components.sanity:DoDelta(-cost)
		psiAbilities[caster.prefab][inst.prefab](inst, target, caster, pos)
		return true
	else 
		caster.components.talker:Say("I can't concentrate!")
		return false
    end
end


local function createPSI(name, isUseOnTargets, isUseOnCombat, isUseOnPoint, isVeryQuickCast, validUsers, tags)
	local function fn()
		local inst = CreateEntity()
		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		inst.entity:AddNetwork()
		
		MakeInventoryPhysics(inst)
		--inst.AnimState:SetBank("ground_" .. name)
		--inst.AnimState:SetBuild("ground_" .. name)
		inst.AnimState:SetBank("ground_four_d_slip")
		inst.AnimState:SetBuild("ground_four_d_slip")
		inst.AnimState:PlayAnimation("idle")
		if not TheWorld.ismastersim then
			return inst
		end
		inst.entity:SetPristine()
		inst:AddTag("gramtorapsi")
		
		if tags then
			for k, v in pairs(tags) do
				inst:AddTag(v)
			end
		end
		
		inst:AddComponent("spellcaster")	
		inst.components.spellcaster:SetSpellFn(canPsi)
		inst.components.spellcaster.canuseontargets = isUseOnTargets
		inst.components.spellcaster.canonlyuseoncombat = isUseOnCombat
		inst.components.spellcaster.canuseonpoint = isUseOnPoint
		inst.components.spellcaster.veryquickcast = isVeryQuickCast	
		inst.components.spellcaster.longcast = not(isVeryQuickCast)
		
		--By default, the CanCast function will NOT allow the technique to work if both canuseonpoint and canuseontargets is true
		--We can edit that, however
		if isUseOnPoint and isUseOnTargets then
			local old_cancast = inst.components.spellcaster.CanCast
			inst.components.spellcaster.CanCast = function(self, doer, target, pos)
				if self.canuseonpoint then
					if not pos then pos = target:GetPosition() end
					local px, py, pz = pos:Get()
					return TheWorld.Map:IsAboveGroundAtPoint(px, py, pz, self.canuseonpoint_water) and not TheWorld.Map:IsGroundTargetBlocked(pos)
				elseif self.canuseonpoint_water then
					return TheWorld.Map:IsOceanAtPoint(pos:Get()) and not TheWorld.Map:IsGroundTargetBlocked(pos)
				else
					return false
				end
				
				return old_cancast(self, doer, target, pos)
			end
		end
		
		inst:AddComponent("inspectable")
		inst:AddComponent("inventoryitem")
		inst.inventory = inst.components.inventoryitem
		inst.inventory.imagename = "four_d_slip"
		--inst.inventory.atlasname = "images/inventoryimages/" .. name .. ".xml"
		inst.inventory.atlasname = "images/inventoryimages/four_d_slip.xml"		
		inst:AddComponent("equippable")
		
		inst.components.equippable:SetOnEquip( onequip )
		inst.components.equippable:SetOnUnequip( onunequip )
		
		inst.components.inventoryitem.onputininventoryfn = function(inst, player)
			if player.components.inventory then
				local gowner = inst.components.inventoryitem:GetGrandOwner()
				if gowner.components.inventory and not validUsers[player.prefab] then
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
		--May need refactoring in the future
		inst.components.debuff:SetExtendedFn(function(inst, target)
			inst.components.timer:StopTimer("psibuffover")
			inst.components.timer:StartTimer("psibuffover")
		end)
		
        inst.components.debuff.keepondespawn = true

        inst:AddComponent("timer")
        inst.components.timer:StartTimer("shieldover", duration)
        inst:ListenForEvent("timerdone", onTimerDone)

        return inst
	end
	return Prefab(name, fn, nil, prefabs)
end

STRINGS.NAMES.FOUR_D_SLIP = "4D Slip"
STRINGS.NAMES.FOUR_D_SLIP_O = "4D Slip Omega"
STRINGS.NAMES.PSI_SHIELD_NINTEN  = "PSI Shield"
STRINGS.NAMES.POWERSHIELD_NINTEN  = "Powershield"
STRINGS.NAMES.PK_FIRE  = "PK Fire"
STRINGS.NAMES.PK_FIRE_O = "PK Fire Omega"
STRINGS.NAMES.PK_FREEZE = "PK Freeze"
STRINGS.NAMES.PK_FREEZE_O = "PK Freeze Omega"
STRINGS.NAMES.PK_GROUND  = "PK Ground"
STRINGS.NAMES.PK_GROUND_O = "PK Ground Omega"


return createPSI("four_d_slip", true, false, true, true, {["gramninten"] = true}),
	   createPSI("four_d_slip_o", true, false, true, true, {["gramninten"] = true}),
	   makeBuff("buff_four_d_slip_o", onAttachedSlip, removeSlipBuff, 30, 1),
       createPSI("psi_shield_ninten", true, true, false, false, {["gramninten"] = true}, {"psishield"}),
	   createPSI("powershield_ninten", true, true, false, false, {["gramninten"] = true}, {"psishield"}),
	   makeBuff("buff_psi_shield_ninten", onAttachedShield, removeShield, 120, 1, {"shield_fx"}),
	   makeBuff("buff_powershield_ninten", onAttachedPower, removeShield, 300, 1, {"counter_fx"}),
	   createPSI("pk_fire", true, true, false, true, {["gramtora"] = true, ["grampora"] = true}, {"gramtorapsi"}),
	   createPSI("pk_fire_o", true, true, false, true, {["gramtora"] = true, ["grampora"] = true}, {"gramtorapsi"}),
	   createPSI("pk_freeze", true, true, false, false, {["gramtora"] = true, ["grampora"] = true}, {"gramtorapsi"}),
	   createPSI("pk_freeze_o", true, true, false, false, {["gramtora"] = true, ["grampora"] = true}, {"gramtorapsi"}),
	   createPSI("pk_ground", true, true, true, false, {["gramtora"] = true}, {"gramtorapsi"}),
	   createPSI("pk_ground_o", true, true, true, false, {["gramtora"] = true}, {"gramtorapsi"})

