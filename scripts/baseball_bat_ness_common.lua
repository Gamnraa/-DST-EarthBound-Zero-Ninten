 --Shared baseball bat code originally from Ness' modmain, that Ninten needs if the Ness mod is disabled. 
 --makes for easier maintenance
 local State = GLOBAL.State
 local FRAMES = GLOBAL.FRAMES
 local TimeEvent = GLOBAL.TimeEvent
 local EventHandler = GLOBAL.EventHandler
require "stategraphs/commonstates"
local CommonHandlers = GLOBAL.CommonHandlers
 
 local baseball_swing = State({
    name = "swing_bat",
    tags = { "baseballbat", "attack", "abouttoattack", "notalking", "autopredict" },

    onenter = function(inst)
		if inst.components.combat:InCooldown() then
			inst.sg:RemoveStateTag("abouttoattack")
			inst:ClearBufferedAction()
			inst.sg:GoToState("idle", true)
			return
		end
			
		local buffaction = inst:GetBufferedAction()
		local target = buffaction ~= nil and buffaction.target or nil
        inst.components.combat:SetTarget(target)
        inst.components.combat:StartAttack()
        inst.components.locomotor:Stop()
		inst.AnimState:PlayAnimation("atk_prop_pre")
        inst.AnimState:PushAnimation("atk_prop", false)
        inst.SoundEmitter:PlaySound("dontstarve/wilson/attack_whoosh")

       --[[ if inst.components.playercontroller ~= nil then
            inst.components.playercontroller:RemotePausePrediction()
        end]]
			
		inst.sg:SetTimeout(16 * FRAMES)
		
		if target then
			inst.components.combat:BattleCry()
				
			if target:IsValid() then
				inst:FacePoint(target:GetPosition())
				inst.sg.statemem.attacktarget = target
                inst.sg.statemem.retarget = target
			elseif buffaction and buffaction.pos then
				--Make sure you clear the server side buffered action for clients
				--Otherwise you WILL get desyncs
				inst:ClearBufferedAction()
			end
		end
    end,
    timeline =
    {
        TimeEvent(8 * FRAMES, function(inst)
			inst:PerformBufferedAction()
            inst.sg:RemoveStateTag("abouttoattack")
        end),
    },
		
	ontimeout = function(inst)
		inst.sg:RemoveStateTag("attack")
		inst.sg:AddStateTag("idle")
	end,

    events =
    {
		EventHandler("equip", function(inst) inst.sg:GoToState("idle") end),
        EventHandler("unequip", function(inst) inst.sg:GoToState("idle") end),
        EventHandler("animqueueover", function(inst)
            if inst.AnimState:AnimDone() then
                inst.sg:GoToState("idle")
            end
        end),
    },

    onexit = function(inst)
        inst.components.combat:SetTarget(nil)
        if inst.sg:HasStateTag("abouttoattack") then
            inst.components.combat:CancelAttack()
        end
    end,
})
AddStategraphState("wilson",  baseball_swing)

 local baseball_swing_client = State({
    name = "swing_bat",
    tags = { "baseballbat", "attack", "abouttoattack", "notalking"},

    onenter = function(inst)
		local buffaction = inst:GetBufferedAction()
		
		if inst.replica.combat:InCooldown() then
			inst.sg:RemoveStateTag("abouttoattack")
            inst:ClearBufferedAction()
            inst.sg:GoToState("idle", true)
            return
        end
				
		local target = buffaction ~= nil and buffaction.target or nil
			
		local equip = inst.replica.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
        inst.replica.combat:StartAttack()
			
        inst.components.locomotor:Stop()
		inst.AnimState:PlayAnimation("atk_prop_pre")
        inst.AnimState:PushAnimation("atk_prop", false)
        inst.SoundEmitter:PlaySound("dontstarve/wilson/attack_whoosh")

			
		inst.sg:SetTimeout(16 * FRAMES)
		
		if buffaction then
			inst:PerformPreviewBufferedAction()
			
			if target and target:IsValid() then
				inst:FacePoint(target:GetPosition())
                inst.sg.statemem.attacktarget = target
                inst.sg.statemem.retarget = target
			end
		end
    end,
    timeline =
    {
        TimeEvent(8 * FRAMES, function(inst)
			inst:ClearBufferedAction()
            inst.sg:RemoveStateTag("abouttoattack")
        end),
    },
		
	ontimeout = function(inst)
		inst.sg:RemoveStateTag("attack")
		inst.sg:AddStateTag("idle")
	end,

    events =
    {
        EventHandler("animqueueover", function(inst)
            if inst.AnimState:AnimDone() then
                inst.sg:GoToState("idle")
            end
        end),
    },

    onexit = function(inst)
        if inst.sg:HasStateTag("abouttoattack") then
            inst.replica.combat:CancelAttack()
        end
    end,
})
AddStategraphState("wilson_client",  baseball_swing_client)

--Add our attack stategraph to the existing attack action handler
AddStategraphPostInit("wilson", function(sg)
	local oldattackhandler = sg.actionhandlers[GLOBAL.ACTIONS.ATTACK]
	sg.actionhandlers[GLOBAL.ACTIONS.ATTACK] = GLOBAL.ActionHandler(GLOBAL.ACTIONS.ATTACK, function(inst, action)
		inst.sg.mem.localchainattack = not action.forced or nil
        if not (inst.sg:HasStateTag("attack") and action.target == inst.sg.statemem.attacktarget or inst.components.health:IsDead()) then
            local weapon = inst.components.combat ~= nil and inst.components.combat:GetWeapon() or nil
			if weapon and weapon.prefab == "baseball_bat_ness" and inst.components.rider and not inst.components.rider:IsRiding() then
				return "swing_bat"
			else return oldattackhandler.deststate(inst, action)
			end
		end
	end)
end)

AddStategraphPostInit("wilson_client", function(sg)
	local oldattackhandler = sg.actionhandlers[GLOBAL.ACTIONS.ATTACK]
	sg.actionhandlers[GLOBAL.ACTIONS.ATTACK] = GLOBAL.ActionHandler(GLOBAL.ACTIONS.ATTACK, function(inst, action)
		inst.sg.mem.localchainattack = not action.forced or nil
        if not (inst.sg:HasStateTag("attack") and action.target == inst.sg.statemem.attacktarget or GLOBAL.IsEntityDead(inst)) then
            local equip = inst.replica.inventory:GetEquippedItem(GLOBAL.EQUIPSLOTS.HANDS)
			if equip and equip.prefab == "baseball_bat_ness" and inst.replica.rider and not inst.replica.rider:IsRiding() then
				return "swing_bat"
			else return oldattackhandler.deststate(inst, action)
			end
		end
	end)
end)


local newAnims = {
	["spider"] = Asset("ANIM", "anim/spiderknockback.zip"),
	["hound"] = Asset("ANIM", "anim/houndknockback.zip"),
	["rabbit"] = Asset("ANIM", "anim/rabbitknockback.zip"),
	["birchnutdrake"] = Asset("ANIM", "anim/treedrakeknockback.zip"),
	["buzzard"] = Asset("ANIM", "anim/buzzardknockback.zip"),
	["catcoon"] = Asset("ANIM", "anim/catcoonknockback.zip"),
	["frog"] = Asset("ANIM", "anim/frogknockback.zip"),
	["fruitdragon"] = Asset("ANIM", "anim/fruitdragonknockback.zip"),
	["grassgekko"] = Asset("ANIM", "anim/grassgeckoknockback.zip"),
	["knight"] = Asset("ANIM", "anim/knightknockback.zip"),
	["lightninggoat"] = Asset("ANIM", "anim/lightninggoatknockback.zip"),
	["powder_monkey"] = Asset("ANIM", "anim/monkeysmallknockback.zip"),
	["mushgnome"] = Asset("ANIM", "anim/mushgnomeknockback.zip"),
	["spider_moon"] = Asset("ANIM", "anim/spidermoonknockback.zip"),
	["penguin"] = Asset("ANIM", "anim/penguinknockback.zip"),
	--["perd"] = Asset("ANIM", "anim/perdknockback.zip"), --Needs to be fixed
	["pigman"] = Asset("ANIM", "anim/ds_pig_elite.zip"),
	["werepig"] = Asset("ANIM", "anim/ds_pig_elite.zip"),
	["walrus"] = Asset("ANIM", "anim/walrusknockback.zip"), 
}

--These mobs have smacked animations already
local validAnims = {
	["pig"] = true,
	["pigguard"] = true,
	["moonpig"] = true,
	["werepig"] = true,
	["merm"] = true,
	["spider_warrior"] = true,
	["spider_dropper"] = true,
	["spider_healer"] = true,
	["prime_mate"] = true,
	["knight_nightmare"] = true,
	["icehound"] = true,
	["firehound"] = true,
	["hedgehound"] = true,
	["clayhound"] = true,
	["moonhound"] = true,
	["mutatedhound"] = true,
	["mutated_penguin"] = true,
}

local oldRegisterPrefabsImpl = GLOBAL.RegisterPrefabsImpl
GLOBAL.RegisterPrefabsImpl = function(prefab, ...)
	if newAnims[prefab.name] then
		table.insert(prefab.assets, newAnims[prefab.name])
	end
	oldRegisterPrefabsImpl(prefab, ...)
end


--Copy paste from SGpigelite.lua	
local knockback = State{
        name = "baseballknockback",
        tags = { "baseballknockback", "busy", "nosleep", "nofreeze", "jumping" },

        onenter = function(inst, data)
            inst.components.locomotor:Stop()
			inst.SoundEmitter:PlaySound("dontstarve/creatures/" .. (inst.soundgroup or inst.prefab) .. "/hurt")
			if not inst.components.health:IsDead() then
				if newAnims[inst.prefab] or validAnims[inst.prefab] then
					inst.AnimState:PlayAnimation("smacked")
				else
					inst.AnimState:PlayAnimation("hit")
				end
			end
			
            if data.radius ~= nil and data.knocker ~= nil and data.knocker:IsValid() then
                local x, y, z = data.knocker.Transform:GetWorldPosition()
                local distsq = inst:GetDistanceSqToPoint(x, y, z)
                local rangesq = data.radius * data.radius
                local rot = inst.Transform:GetRotation()
                local rot1 = distsq > 0 and inst:GetAngleToPoint(x, y, z) or data.knocker.Transform:GetRotation() + 180
                local drot = math.abs(rot - rot1)
                while drot > 180 do
                    drot = math.abs(drot - 360)
                end
                local k = distsq < rangesq and .3 * distsq / rangesq - 1 or -.7
                inst.sg.statemem.speed = (data.strengthmult or 1) * 10 * k
				inst.components.locomotor:EnableGroundSpeedMultiplier(false)
				inst.Physics:SetDamping(0)
                inst.sg.statemem.dspeed = 0
                if drot > 90 then
                    inst.sg.statemem.reverse = true
                    inst.Transform:SetRotation(rot1 + 180)
					--inst.Physics:SetVel(-inst.sg.statemem.speed, 0, 0)
                    inst.Physics:SetMotorVelOverride(-inst.sg.statemem.speed, 0, 0)
                else
                    inst.Transform:SetRotation(rot1)
					--inst.Physics:SetVel(inst.sg.statemem.speed, 0, 0)
                    inst.Physics:SetMotorVelOverride(inst.sg.statemem.speed, 0, 0)
                end
			end
        end,

        onupdate = function(inst)
            if inst.sg.statemem.speed ~= nil then
                inst.sg.statemem.speed = inst.sg.statemem.speed + inst.sg.statemem.dspeed
                if inst.sg.statemem.speed < 0 then
                    inst.sg.statemem.dspeed = inst.sg.statemem.dspeed + .075
                    inst.Physics:SetMotorVelOverride(inst.sg.statemem.reverse and -inst.sg.statemem.speed or inst.sg.statemem.speed, inst.sg.statemem.speed, 0)
                else
                    inst.sg.statemem.speed = nil
                    inst.sg.statemem.dspeed = nil
                    inst.Physics:Stop()
                end
            end
        end,

        timeline =
        {
            --TimeEvent(3 * FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve/pig/scream") end),
            TimeEvent(12 * FRAMES, function(inst) inst.SoundEmitter:PlaySound("dontstarve/movement/bodyfall_dirt") end),
            TimeEvent(14 * FRAMES, function(inst)
                inst.sg:RemoveStateTag("nofreeze")
            end),
            TimeEvent(32 * FRAMES, function(inst)
				if inst.components.sleeper then
					inst.components.sleeper:WakeUp()
				end
                inst.sg:RemoveStateTag("nosleep")
            end),
            TimeEvent(35 * FRAMES, function(inst)
                inst.sg:RemoveStateTag("busy")
            end),
        },

        events =
        {
            --CommonHandlers.OnNoSleepAnimOver("idle"),
			 EventHandler("animqueueover", function(inst)
				if inst.AnimState:AnimDone() and not inst.components.health:IsDead() then
					inst.sg:GoToState("idle")
				end
			end)
        },

        onexit = function(inst)
			inst.components.locomotor:EnableGroundSpeedMultiplier(true)
            if inst.sg.statemem.speed ~= nil then
                inst.Physics:Stop()
            end
        end,
    }
	
local function BaseballKnockbackEvent(inst, data)
	if not inst:HasTag("paralyzed") then
		inst.sg:GoToState("baseballknockback", {knocker = data.knocker, radius = data.radius, strengthmult = data.strengthmult})
	end
end

function MassAddStategraphEvent(entityStates, event, eventFunction)
	for k, v in pairs(entityStates) do
		AddStategraphEvent(k, EventHandler(event, function(inst, data)
			eventFunction(inst, data)
		end))
	end
end

--Helps with clutter
--Also key values are used to determine if the mob can be knocked back
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS = {
	["bat"] = 3.3,
	["bee"] = 4.0,
	["SGBeeguard"] = 2.5,
	["birchnutdrake"] = 2.7,
	["bird"] = 3.3,
	["bird_mutant"] = 3.2,
	["pig"] = 1.5,
	["butterfly"] = 5.0,
	["buzzard"] = 1.7, --Will fly away after landing if not engaged in combat
	["catcoon"] = 2.0,
	["dustmoth"] = 2.2,
	["eyeofterror_mini"] = 2.2,
	["frog"] = 2.7,
	["fruit_dragon"] = 2.0,
	["fruitfly"] = 4.0,
	["grassgekko"] = 2.0,
	["hound"] = 1.5,
	["knight"] = 1.1,
	["lavae"] = 2.7,
	["lightcrab"] = 2.0,
	["lightninggoat"] = 1.5,
	["merm"] = 1.5,
	["monkey"] = 1.8,
	["moonpig"] = 1.5,
	["mushgnome"] = 1.9,
	["penguin"] = 2.2,
	["perd"] = 2.0,
	["pigelite"] = 1.5,
	["powdermonkey"] = 1.8,
	["primemate"] = 1.5,
	["rabbit"] = 3.2,
	["slurper"] = 2.5,
	["spider"] = 2.0,
	["walrus"] = 1.5,
	["werepig"] = 1.3,
	["bunnyman"] = 1.4
}

MassAddStategraphEvent(GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS, "baseballknockback", BaseballKnockbackEvent)
for k, v in pairs(GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS) do
	AddStategraphState(k, knockback)
end

--Mobs that share a stategraph but still need a weight defined so our baseball bat can detect them
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["spider_warrior"] = 2.0
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["killerbee"] = 4.0
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["spider_dropper"] = 2.0
--GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["spider_moon"] = 2.0
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["spider_healer"] = 2.0
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["fruitdragon"] = 2.0 --WHY KLEI
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["powder_monkey"] = 1.8 --STOOOOPPP
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["prime_mate"] = 1.5
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["pigguard"] = 1.5
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["pigman"] = 1.5
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["knight_nightmare"] = 1.1
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["icehound"] = 1.5
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["firehound"] = 1.5
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["moonhound"] = 1.5
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["clayhound"] = 1.5
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["mutatedhound"] = 1.5
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["hedgehound"] = 1.5
GLOBAL.GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS["mutated_penguin"] = 2.2