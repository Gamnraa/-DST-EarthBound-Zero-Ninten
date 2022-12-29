local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua"),
	Asset( "ANIM", "anim/gramninten.zip" ),
	Asset( "ANIM", "anim/gramplayer_groggy.zip"),
}

local prefabs = {
	"four_d_slip",
	"psi_shield_ninten",
	"inhaler_ninten",
	"nintens_coat"
}


-- Custom starting inventory
local start_inv = {
	"four_d_slip",
	"psi_shield_ninten", 
	"inhaler_ninten",
	"nintens_coat"
}

--if TUNING.DLC_ACTIVE then
--	table.insert(start_inv, "psi_shield_ninten")
--end
--TUNING.STARTING_ITEM_IMAGE_OVERRIDE = type(TUNING.STARTING_ITEM_IMAGE_OVERRIDE) == "table" and MergeMaps(TUNING.STARTING_ITEM_IMAGE_OVERRIDE, start_item_images) or start_item_images

local armorExemptions = {
	["beehat"] = true
}

-- When the character is revived from human
--[[local function onbecamehuman(inst)
	-- Set speed when not a ghost (optional)
	inst.components.locomotor:SetExternalSpeedMultiplier(inst, "gramninten_speed_mod", 1)
	inst:DoPeriodicTask(.5, function() 
		inst.components.asthma:loop(inst)
	end)
	
	if TUNING.SHOW_ASTHMA_OVERLAY then
		inst:DoTaskInTime(.1, function() inst.asthmaUI:Show() end)
	end
end]]

local function onbecameghost(inst)
	-- Remove speed modifier when becoming a ghost
    inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "gramninten_speed_mod")
	inst.components.asthma:stopAsthmaAttack(inst, false)
	
    if TUNING.SHOW_ASTHMA_OVERLAY then
		inst:DoTaskInTime(.1, function() inst.asthmaUI:Hide() end)
	end
	
end

-- When loading or spawning the character
--[[local function onload(inst, data)
    inst.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED)
	inst.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED)
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end]]


local function UpdateClothingSanity(inst)
	local sanity = 0
	local equip = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
	if equip and not equip.components.armor then
		sanity = .06
	end
	equip = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.BODY)
	if equip and not equip.components.armor then
		sanity = sanity + .06
	end
	return sanity
end

local function NintenOnEquip (inst, data)
	--if data.eslot == EQUIPSLOTS.HANDS then return end
	local equip = inst.components.inventory:GetEquippedItem(data.eslot)
	if equip.components.armor and not armorExemptions[equip.prefab] then
	   --inst.components.inventory:Unequip(equip)
	   inst:DoTaskInTime(.1, function()  inst.components.inventory:GiveItem(data.item) end)
	   inst.components.talker:Say("I wouldn't be caught dead wearing something so tacky.")
	end
end


local function OnUseDoor(inst, data)
	print(data)
	print("usedoor")
	if data.doer.shieldfx then
		data.doer.shieldfx.entity:SetParent(target.entity)
	end
end

local fn = function(inst)
	-- Set starting inventory
    --inst.starting_inventory = start_inv
	
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
	
	--inst.OnLoad = onload
    --inst.OnNewSpawn = onload
	
	inst:ListenForEvent("equip", NintenOnEquip)
	
	-- Minimap icon
	local minimap = inst.entity:AddMiniMapEntity()
	minimap:SetIcon( "gramninten.tex" )
	--inst:ListenForEvent("playeractivated", onPlayerSpawn)
	inst:AddTag("nintencraft")
	
	inst:DoPeriodicTask(.5, function() 
		inst.components.asthma:loop(inst)
	end)
	
	inst:ListenForEvent("sneeze", function(inst, data)
		if not inst.components.asthma.asthmaCooldown then
			inst.components.asthma.asthmaVal = inst.components.asthma.asthmaVal + 150
		end
	end)
	
	inst:ListenForEvent("gotosleep", function(inst, data)
		if inst.components.asthma then
			print("Ninten went to sleep, reset asthma")
			inst.components.asthma.asthmaVal = 0
		end
	end)
	
	--inst:ListenForEvent("usedoor", function(inst, data) OnUseDoor(inst, data) end)
	
	--Recipes
	--NOTE: NumToGive is the 9th field in DS, but in DST it is the 8th!
	--Make sure you update your recipes to reflect the difference
	local baseball_cap_recipe = Recipe("baseball_cap_ninten",
		{Ingredient("silk", 4)},
		RECIPETABS.DRESS, TECH.SCIENCE_ONE)
	baseball_cap_recipe.atlas= "images/inventoryimages/baseball_cap_ninten.xml"
	--baseball_cap_recipe.image = "baseball_cap_ninten.tex"
		
	local nintens_coat_recipe = Recipe("nintens_coat",
		{Ingredient("silk", 6),
		Ingredient("beefalowool", 2)},
		RECIPETABS.DRESS, TECH.SCIENCE_ONE, {RECIPE_GAME_TYPE.VANILLA, RECIPE_GAME_TYPE.ROG, RECIPE_GAME_TYPE.HAMLET}, nil, nil, nil, 1)
	nintens_coat_recipe.atlas= "images/inventoryimages/nintens_coat.xml"
	
	local nintens_coat_recipe_sw = Recipe("nintens_coat",
		{Ingredient("silk", 6),
		Ingredient("fabric", 4)},
		RECIPETABS.DRESS, TECH.SCIENCE_ONE, {RECIPE_GAME_TYPE.SHIPWRECKED}, nil, nil, nil, 1)
	nintens_coat_recipe_sw.atlas= "images/inventoryimages/nintens_coat.xml"
	--nintens_coat_recipe.image = "nintens_coat.tex"	


	local inhaler_ninten_recipe = Recipe("inhaler_ninten",
		{Ingredient("nitre", 6),
		Ingredient("cutreeds", 3),
		Ingredient("bluegem", 1)},
		RECIPETABS.SURVIVAL, TECH.MAGIC_TWO, nil, nil, nil, nil, 1)
	inhaler_ninten_recipe.atlas= "images/inventoryimages/inhaler_ninten.xml"
	--inhaler_ninten_recipe.image = "inhaler_ninten.tex"	

	local powershield_recipe = Recipe("powershield_ninten",
		{Ingredient("purplegem", 2),
		Ingredient("psi_shield_ninten", 1, "images/inventoryimages/psi_shield_ninten.xml", nil, "psi_shield_ninten.tex"),
		--[[Ingredient(GLOBAL.CHARACTER_INGREDIENT.SANITY, TUNING.GRAMNINTEN_SANITY)]]},
		RECIPETABS.MAGIC, TECH.MAGIC_THREE, nil, nil, nil, nil, 1)
	powershield_recipe.atlas= "images/inventoryimages/powershield_ninten.xml"
	--powershield_recipe.image = "powershield_ninten.tex"	


	local four_d_slip_o_recipe = Recipe("four_d_slip_o",
		{Ingredient("purplegem", 2),
		Ingredient("four_d_slip", 1, "images/inventoryimages/four_d_slip.xml", nil, "four_d_slip.tex"),
		--[[Ingredient(GLOBAL.CHARACTER_INGREDIENT.SANITY, TUNING.GRAMNINTEN_SANITY)]]},
		RECIPETABS.MAGIC, TECH.MAGIC_THREE, nil, nil, nil, nil, 1)
	four_d_slip_o_recipe.atlas= "images/inventoryimages/four_d_slip_o.xml"
	--four_d_slip_o_recipe.image = "four_d_slip_o.tex"	
	
	
	local psi_shield_recipe = Recipe("psi_shield_ninten",
		{Ingredient("purplegem", 1)},
		RECIPETABS.MAGIC, TECH.MAGIC_THREE, nil, nil, nil, nil, 1)
	powershield_recipe.atlas= "images/inventoryimages/powershield_ninten.xml"
	
	
	local four_d_slip_recipe = Recipe("four_d_slip",
		{Ingredient("purplegem", 1)},
		RECIPETABS.MAGIC, TECH.MAGIC_THREE, nil, nil, nil, nil, 1)
	powershield_recipe.atlas= "images/inventoryimages/four_d_slip.xml"
		
	
	--Groggy is only implemented in the Hamlet version of the stategraph so we have to add it manually
	--To older dlcs
	local sg = inst.sg.sg
	local old_idleenter = sg.states["idle"].onenter
	sg.states["idle"].onenter = function(inst, pushanim)
		
		if inst:HasTag("groggy") then
			local anims = {}
			inst.components.locomotor:Stop()
			--Tried importing the groggy animations but they don't seem to want to cooperate...
			--table.insert(anims, "idle_groggy_pre")
            --table.insert(anims, "idle_groggy")
			if TUNING.DLC_ACTIVE then
				table.insert(anims, "idle_hot_pre")
				table.insert(anims, "idle_hot_loop")
			else
				table.insert(anims, "idle_shiver_pre")
				table.insert(anims, "idle_shiver_loop")
			end
			
			if pushanim then
				for k, v in pairs(anims) do
					inst.AnimState:PushAnimation(v, k == #anims)
				end
			else
				inst.AnimState:PlayAnimation(anims[1], #anims == 1)
                for k, v in pairs(anims) do
                    if k > 1 then
                        inst.AnimState:PushAnimation(v, k == #anims)
                    end
                end
			end
		else
			old_idleenter(inst, pushanim)
		end
	end
	
	local old_funnyidleenter = sg.states["funnyidle"].onenter
	sg.states["funnyidle"].onenter = function(inst)
		if inst:HasTag("groggy") then
			inst.AnimState:PlayAnimation("idle_groggy01_pre")
            inst.AnimState:PushAnimation("idle_groggy01_loop")
            inst.AnimState:PushAnimation("idle_groggy01_pst", false)
		else
			old_funnyidleenter(inst)
		end
	end
	
	local old_run_startenter = sg.states["run_start"].onenter
	sg.states["run_start"].onenter = function(inst)
		if inst:HasTag("groggy") then
			inst.components.locomotor:RunForward()
			inst.AnimState:PlayAnimation("idle_walk")
			inst.sg.mem.foosteps = 0
		else
			old_run_startenter(inst)
		end
	end
	
	local old_runenter = sg.states["run"] .onenter
	sg.states["run"].onenter = function(inst)
		if inst:HasTag("groggy") then
			inst.components.locomotor:RunForward()
			inst.AnimState:PlayAnimation("idle_walk")
		else
			old_runenter(inst)
		end
	end
		
end



return MakePlayerCharacter("gramninten", prefabs, assets, fn, start_inv)
