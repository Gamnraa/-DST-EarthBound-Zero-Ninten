local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
}

local prefabs = {
	"four_d_slip",
	"psi_shield_ninten",
	"inhaler_ninten",
	"nintens_coat"
}


-- Custom starting inventory
TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.GRAMNINTEN = {
	"four_d_slip",
	"psi_shield_ninten",
	"inhaler_ninten",
	--"nintens_coat"
}

local start_item_images = {
	four_d_slip = {atlas = "images/inventoryimages/four_d_slip.xml"},
	psi_shield_ninten = {atlas = "images/inventoryimages/psi_shield_ninten.xml"},
	inhaler_ninten = {atlas = "images/inventoryimages/inhaler_ninten.xml"},
	nintens_coat = {atlas = "images/inventoryimages/nintens_coat.xml"},
}

--local nintens_coat = {atlas = "images/inventoryimages/nintens_coat.xml"}

if TUNING.ISLAND_ADVENTURE_ENABLED then
	table.insert(TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.GRAMNINTEN, "raincoat")
else
	table.insert(TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.GRAMNINTEN, "nintens_coat")
	--table.insert(start_item_images, nintens_coat)
end

TUNING.STARTING_ITEM_IMAGE_OVERRIDE = type(TUNING.STARTING_ITEM_IMAGE_OVERRIDE) == "table" and MergeMaps(TUNING.STARTING_ITEM_IMAGE_OVERRIDE, start_item_images) or start_item_images

local armorExemptions = {
	["beehat"] = true
}

local start_inv = {}
for k, v in pairs(TUNING.GAMEMODE_STARTING_ITEMS) do
    start_inv[string.lower(k)] = v.GRAMNINTEN
end


local function OnKill(inst, data)
	if data.victim then
		if math.random(256) == 210 then
			local lootdropper = data.victim.components.lootdropper
			local bat = SpawnPrefab("baseball_bat_ness")
			lootdropper:FlingItem(bat, data.victim:GetPosition())
		end
	end
end

local function OnBecomeKen(inst)
	if inst.components.skinner.skin_name == "ms_gramninten_ken" then
		STRINGS.CHARACTERS.GRAMNINTEN = require "speech_gramken"
	else
		STRINGS.CHARACTERS.GRAMNINTEN = require "speech_gramninten"
	end

	STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.BASEBALL_CAP_NINTEN = "My favorite baseball cap."
	STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.BASEBALL_BAT_NESS = "I'm a bit of a natural when it comes to baseball, heh."
	STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.NINTENS_COAT = "My coat! Pretty stylish, gotta say!"
	STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.INHALER_NINTEN = "My inhaler."
	STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.FOUR_D_SLIP = "I use that to get out of trouble!"
	STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.FOUR_D_SLIP_O = "It gets me out of trouble in a snap!"
	STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.PSI_SHIELD_NINTEN = "It protects me from getting seriously hurt!"
	STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.POWERSHIELD_NINTEN = "It protects me from getting seriously hurt!"
end

-- When the character is revived from human
local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "gramninten_speed_mod", 1)
	inst:DoPeriodicTask(.5, function() 
		inst.components.asthma:loop(inst)
	end)
	
	if TUNING.SHOW_ASTHMA_OVERLAY then
		if inst.asthmaUI then
			inst:DoTaskInTime(.1, function() inst.asthmaUI:Show() end)
		end
	end
end

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
    inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "gramninten_speed_mod")
	inst.components.asthma:stopAsthmaAttack(inst, false)
	
    if TUNING.SHOW_ASTHMA_OVERLAY then
		if inst.asthmaUI then
			inst:DoTaskInTime(.1, function() inst.asthmaUI:Hide() end)
		end
	end
	
end

-- When loading or spawning the character
local function onload(inst, data)
    inst.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED)
	inst.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)
	
	--if inst.components.skinner.skin_name == "ms_gramninten_summer" then
		local equip = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
		if equip and equip.prefab == "baseball_cap_ninten" then
			equip.components.equippable.onequipfn(equip, inst)
		end
		
		equip = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.BODY)
		if equip and equip.prefab == "nintens_coat" then
			equip.components.equippable.onequipfn(equip, inst)
		end
	--end

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end

	--inst:DoTaskInTime(0, function() OnBecomeKen(inst) end)
end

local function UpdateClothingSanity(inst)
	local sanity = 0
	local equip = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
	if equip and not equip.components.armor then
		sanity = .06 --+3.6 sanity per min
	end
	equip = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.BODY)
	if equip and not equip.components.armor then
		sanity = sanity + .06
	end
	return sanity
end

local function NintenOnEquip (inst, data)

	local equip = inst.components.inventory:GetEquippedItem(data.eslot)
	
	if equip.components.armor and not armorExemptions[equip.prefab] then
	   --inst.components.inventory:Unequip(equip)
	   inst:DoTaskInTime(.1, function()  inst.components.inventory:GiveItem(data.item) end)
	   inst.components.talker:Say("I wouldn't be caught dead wearing something so tacky.")
	end
end


local function nintenstatus(inst, viewer)
    return (inst:HasTag("playerghost") and "GHOST")
		or (inst.components.asthma.isAsthmaAttack and inst.components.health:GetPercentWithPenalty() > 0.5 and "ASTHMAATTACK")
		or (inst.components.asthma.isAsthmaAttack and inst.components.health:GetPercentWithPenalty() < 0.5 and "ASTHMAATTACKDIRE")
		or (inst.components.asthma.isAsthmaWarning and "ASTHMA")
        or (inst.hasRevivedPlayer and "REVIVER")
        or (inst.hasKilledPlayer and "MURDERER")
        or (inst.hasAttackedPlayer and "ATTACKER")
        or (inst.hasStartedFire and "FIRESTARTER")
        or nil
end

local function battlecrystring(combat, target)
	local weapon = combat.inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
	local body = combat.inst.components.inventory:GetEquippedItem(EQUIPSLOTS.BODY)
	local head = combat.inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
	local pos = combat.inst:GetPosition()
	local spiders = TheSim:FindEntities(pos.x, 0, pos.z, 15, {"spider"}, {"_inlimbo"})

    return target ~= nil
        and target:IsValid()
        and GetString(
            combat.inst,
            "BATTLECRY",
			(GetTableSize(spiders) > 5 and "TOO_MANY_SPIDERS") or
			(target:HasTag("paralyzed") and "TARGET_PARALYZED") or
			(combat.inst.components.sanity.custom_rate_fn(combat.inst) >= .05 and math.random(100) < 50 and "DAPPER") or
			(weapon and weapon:HasTag("nessbat") and  (
				(GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS[target.prefab] and GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS[target.prefab] > 1.5 and "SWING_BAT_SMALL_TARGET") or
				(GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS[target.prefab] and GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS[target.prefab] <= 1.5 and "SWING_BAT_BIG_TARGET") or
				"SWING_BAT_GENERIC")
			) or
            (target:HasTag("prey") and not target:HasTag("hostile") and "PREY") or
            (string.find(target.prefab, "pig") ~= nil and target:HasTag("pig") and not target:HasTag("werepig") and "PIG") or
            target.prefab
        )
        or "GENERIC"
end

-- This initializes for both the server and client. Tags can be added here.
local common_postinit = function(inst) 
	-- Minimap icon
	inst.MiniMapEntity:SetIcon( "gramninten.tex" )
	--inst:ListenForEvent("playeractivated", onPlayerSpawn)
	inst:AddTag("nintencraft")
end

-- This initializes for the server only. Components are added here.
local master_postinit = function(inst)
	-- Set starting inventory
    inst.starting_inventory = start_inv[TheNet:GetServerGameMode()] or start_inv.default
	
	-- choose which sounds this character will play
	inst.soundsname = "gramninten"
	
	-- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"
	
	-- Stats	
	inst.components.health:SetMaxHealth(TUNING.GRAMNINTEN_HEALTH)
	inst.components.hunger:SetMax(TUNING.GRAMNINTEN_HUNGER)
	inst.components.sanity:SetMax(TUNING.GRAMNINTEN_SANITY)
	inst.components.sanity.custom_rate_fn = UpdateClothingSanity
	
	-- Damage multiplier (optional)
    inst.components.combat.damagemultiplier = 1
	
	-- Hunger rate (optional)
	inst.components.hunger.hungerrate = 1 * TUNING.WILSON_HUNGER_RATE
	inst:AddComponent("asthma")
	
	inst.OnLoad = onload
    inst.OnNewSpawn = onload 
	
	inst:ListenForEvent("equip", NintenOnEquip)
	inst:ListenForEvent("killed", OnKill)

	inst.components.inspectable.getstatus = nintenstatus
	inst.components.combat.GetBattleCryString = battlecrystring

	--inst:ListenForEvent("onskinschanged", function() OnBecomeKen(inst) end)
	
	inst.customidleanim = "ninten_idle"
	
end

return MakePlayerCharacter("gramninten", prefabs, assets, common_postinit, master_postinit, start_inv)
