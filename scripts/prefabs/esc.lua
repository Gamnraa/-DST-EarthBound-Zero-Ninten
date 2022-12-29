local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}

-- Your character's stats
TUNING.ESCTEMPLATE_HEALTH = 150
TUNING.ESCTEMPLATE_HUNGER = 150
TUNING.ESCTEMPLATE_SANITY = 200

-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.ESCTEMPLATE = {
	"flint",
	"flint",
	"twigs",
	"twigs",
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.ESCTEMPLATE
end
local prefabs = FlattenTree(start_inv, true)

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "esctemplate_speed_mod", 0)
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
   inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "esctemplate_speed_mod")
end

-- When loading or spawning the character
local function onload(inst)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end


local function ReticuleTargetFn(inst)
		local rotation = inst.Transform:GetRotation()
		local pos = inst:GetPosition()
	
		local ents = TheSim:FindEntities(pos.x, pos.y, pos.z, TUNING.CONTROLLER_BLINKFOCUS_DISTANCE, BLINKFOCUS_MUST_TAGS)
		for _, v in ipairs(ents) do
			local epos = v:GetPosition()
			if distsq(pos, epos) > TUNING.CONTROLLER_BLINKFOCUS_DISTANCESQ_MIN then
				local angletoepos = inst:GetAngleToPoint(epos)
				local angleto = math.abs(anglediff(rotation, angletoepos))
				if angleto < TUNING.CONTROLLER_BLINKFOCUS_ANGLE then
					print("Reticule Target Did A Thing!")
					return epos
				end
			end
		end
		rotation = rotation * DEGREES
	
		pos.y = 0
		for r = 13, 4, -.5 do
			local offset = FindWalkableOffset(pos, rotation, r, 1, false, true, CanBlinkTo)
			if offset ~= nil then
				pos.x = pos.x + offset.x
				pos.z = pos.z + offset.z
				return pos
			end
		end
		for r = 13.5, 16, .5 do
			local offset = FindWalkableOffset(pos, rotation, r, 1, false, true, CanBlinkTo)
			if offset ~= nil then
				pos.x = pos.x + offset.x
				pos.z = pos.z + offset.z
				return pos
			end
		end
		pos.x = pos.x + math.cos(rotation) * 13
		pos.z = pos.z - math.sin(rotation) * 13
		return pos
	end


-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
	
	inst:AddTag("soulstealer")

    --souleater (from souleater component) added to pristine state for optimization
    inst:AddTag("souleater")
	inst.MiniMapEntity:SetIcon( "esctemplate.tex" )
	
	inst:AddComponent("reticule")
    inst.components.reticule.targetfn = ReticuleTargetFn
    inst.components.reticule.ease = true
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- Set starting inventory
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
	-- choose which sounds this character will play
	inst.soundsname = "willow"
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.ESCTEMPLATE_HEALTH)
	inst.components.hunger:SetMax(TUNING.ESCTEMPLATE_HUNGER)
	inst.components.sanity:SetMax(TUNING.ESCTEMPLATE_SANITY)
	
	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = 1
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload
	
	local function ToTryPortalHop(inst, souls, consumeall)
		return true
	end
	
	inst.TryToPortalHop = ToTryPortalHop

	local function CanBlinkTo(pt)
		return (TheWorld.Map:IsAboveGroundAtPoint(pt.x, pt.y, pt.z) or TheWorld.Map:GetPlatformAtPoint(pt.x, pt.z) ~= nil) and not TheWorld.Map:IsGroundTargetBlocked(pt)
	end
	
	local BLINKFOCUS_MUST_TAGS = { "blinkfocus" }
	

	local function GetPointSpecialActions(inst, pos, useitem, right)
		print("GetPointSpecialActions")
		if right and useitem == nil and CanBlinkTo(pos) then
			return { ACTIONS.BLINK }
		end
		print("Get Point Special Actions Did A Thing!")
		return {}
	end
	
	local function OnSetOwner(inst)
		if inst.components.playeractionpicker ~= nil then
			inst.components.playeractionpicker.pointspecialactionsfn = GetPointSpecialActions
			print("On Set Owner Did A Thing!")
		end
	end
	
	inst:ListenForEvent("setowner", OnSetOwner)
end

return MakePlayerCharacter("esctemplate", prefabs, assets, common_postinit, master_postinit, prefabs)
