PrefabFiles = {
	"gramninten",
	"gramninten_none",
	
	"four_d_slip",
	"psi_shield_ninten",
	--"psi_techniques",
	"inhaler_ninten",
	"nintens_coat",
	"baseball_cap_ninten",
	"shield_fx",
	"counter_fx",
	"baseball_bat_ness",
	--"baseball_ninten", --shhhhh
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/gramninten.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/gramninten.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/gramninten.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/gramninten.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/gramninten_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/gramninten_silho.xml" ),

    Asset( "IMAGE", "bigportraits/gramninten.tex" ),
    Asset( "ATLAS", "bigportraits/gramninten.xml" ),
	
	Asset( "IMAGE", "bigportraits/gramninten_none.tex" ),
    Asset( "ATLAS", "bigportraits/gramninten_none.xml" ),
	
	Asset( "IMAGE", "bigportraits/ms_gramninten_summer.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramninten_summer.xml" ),

	Asset( "IMAGE", "bigportraits/ms_gramninten_ken.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramninten_ken.xml" ),
	
	Asset( "IMAGE", "images/map_icons/gramninten.tex" ),
	Asset( "ATLAS", "images/map_icons/gramninten.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_gramninten.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_gramninten.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_gramninten.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_gramninten.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_gramninten.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_gramninten.xml" ),
	
	Asset( "IMAGE", "images/names_gramninten.tex" ),
    Asset( "ATLAS", "images/names_gramninten.xml" ),
	
	Asset( "IMAGE", "images/names_gold_gramninten.tex" ),
    Asset( "ATLAS", "images/names_gold_gramninten.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/four_d_slip.tex" ),
	Asset( "ATLAS", "images/inventoryimages/four_d_slip.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/four_d_slip_o.tex" ),
	Asset( "ATLAS", "images/inventoryimages/four_d_slip_o.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/psi_shield_ninten.tex" ),
	Asset( "ATLAS", "images/inventoryimages/psi_shield_ninten.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/powershield_ninten.tex" ),
	Asset( "ATLAS", "images/inventoryimages/powershield_ninten.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/nintens_coat.tex" ),
	Asset( "ATLAS", "images/inventoryimages/nintens_coat.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/baseball_cap_ninten.tex" ),
	Asset( "ATLAS", "images/inventoryimages/baseball_cap_ninten.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/inhaler_ninten.tex" ),
	Asset( "ATLAS", "images/inventoryimages/inhaler_ninten.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/baseball_bat_ness.tex" ),
    Asset( "ATLAS", "images/inventoryimages/baseball_bat_ness.xml" ),

	Asset( "IMAGE", "images/inventoryimages/ms_nintens_coat_aviator.tex" ),
	Asset( "ATLAS", "images/inventoryimages/ms_nintens_coat_aviator.xml" ),
	
	Asset("SOUNDPACKAGE", "sound/gramninten.fev"),
	Asset("SOUND", "sound/gramninten.fsb"),
	Asset("SOUNDPACKAGE", "sound/psishield.fev"),
	Asset("SOUND", "sound/psishield.fsb"),
	
	Asset("ANIM", "anim/anim_gramninten.zip"),
}

AddMinimapAtlas("images/map_icons/gramninten.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local TUNING = GLOBAL.TUNING
local RECIPETABS = GLOBAL.RECIPETABS
local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH

TUNING.ISLAND_ADVENTURE_ENABLED = GLOBAL.KnownModIndex:IsModEnabled("workshop-1467214795")


--if TUNING.GRAMNINTEN_VOICE == "gramninten" then
	RemapSoundEvent( "dontstarve/characters/gramninten/death_voice", "gramninten/characters/gramninten/death_voice" )
	RemapSoundEvent( "dontstarve/characters/gramninten/hurt", "gramninten/characters/gramninten/hurt" )
	RemapSoundEvent( "dontstarve/characters/gramninten/emote", "gramninten/characters/gramninten/emote" )
	RemapSoundEvent( "dontstarve/characters/gramninten/yawn", "gramninten/characters/gramninten/yawn" )
	RemapSoundEvent( "dontstarve/characters/gramninten/pose", "gramninten/characters/gramninten/pose" )
	RemapSoundEvent( "dontstarve/characters/gramninten/ghost_LP", "gramninten/characters/gramninten/ghost_LP" )
	RemapSoundEvent( "dontstarve/characters/gramninten/talk_LP", "gramninten/characters/gramninten/talk_LP" )
	RemapSoundEvent( "dontstarve/characters/gramninten/carol", "gramninten/characters/gramninten/carol" )
	RemapSoundEvent( "dontstarve/characters/gramninten/eye_rub_vo", "gramninten/characters/gramninten/eye_rub_vo" )
	RemapSoundEvent( "dontstarve/characters/gramninten/sinking", "gramninten/characters//gramninten/sinking" )
--end

-- The character select screen lines
STRINGS.CHARACTER_TITLES.gramninten = "The Original"
STRINGS.CHARACTER_NAMES.gramninten = "Ninten"
STRINGS.CHARACTER_DESCRIPTIONS.gramninten = "*Gifted with Powers\n*Dresses with Style\n*Lovable Asthmatic"
STRINGS.CHARACTER_QUOTES.gramninten = "\"Now that the Earth's crisis is over...\""
STRINGS.CHARACTER_SURVIVABILITY.gramninten = "Grim"

STRINGS.SKIN_DESCRIPTIONS.gramninten_none = "Ninten's favorite outfit."

STRINGS.SKIN_NAMES.ms_gramninten_summer = "The Laidback"
STRINGS.SKIN_DESCRIPTIONS.ms_gramninten_summer = "He doesn't seem to be taking this all too seriously. Although, when you're someone like Ninten, do you really have to?"
STRINGS.SKIN_QUOTES.ms_gramninten_summer = "\"You see survival. I see a vacation.\""

STRINGS.SKIN_NAMES.ms_gramninten_ken = "The Aviator"
STRINGS.SKIN_DESCRIPTIONS.ms_gramninten_ken = "He may share the title of protagonist with the classic Ninten, just don't get this hothead confused with him!"
STRINGS.SKIN_QUOTES.ms_gramninten_ken = "\"Ninten? What an idiotic name. Call me Ken.\""

STRINGS.SKIN_NAMES.ms_nintens_coat_aviator = "Aviation Coat"
STRINGS.SKIN_DESCRIPTIONS.ms_nintens_coat_aviator = "Ken is a bit of a nerd when it comes to Aviation. Just don't let him know I described him that way."
RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/ms_nintens_coat_aviator.xml"), "ms_nintens_coat_aviator.tex")


GLOBAL.nintens_coat_init_fn = function(inst, build_name)
    GLOBAL.basic_init_fn(inst, build_name, "nintens_coat" )
end

GLOBAL.nintens_coat_clear_fn = function(inst)
    GLOBAL.basic_clear_fn(inst, "nintens_coat" )
end
-- Custom speech strings
STRINGS.CHARACTERS.GRAMNINTEN = require "speech_gramninten"

-- The character's name as appears in-game 
STRINGS.NAMES.GRAMNINTEN = "Ninten"
STRINGS.SKIN_NAMES.gramninten_none = "Ninten"

TUNING.GRAMNINTEN_HEALTH = GetModConfigData("GRAMNINTEN_HEALTH")
TUNING.GRAMNINTEN_SANITY = GetModConfigData("GRAMNINTEN_SANITY")
TUNING.GRAMNINTEN_HUNGER = GetModConfigData("GRAMNINTEN_HUNGER")

TUNING.ASTHMA_THRESHOLD = GetModConfigData("GRAMNINTEN_ASTHMA") or 2000
TUNING.SHOW_ASTHMA_OVERLAY = GetModConfigData("GRAMNINTEN_ASTHMA_OVERLAY")
TUNING.GRAMNINTEN_4DSLIP_SANITY = GetModConfigData("GRAMNINTEN_4D_SLIP_SANITY")
TUNING.GRAMNINTEN_PSI_SHIELD_SANITY = GetModConfigData("GRAMNINTEN_PSI_SHIELD_SANITY")
TUNING.NINTENS_COAT_PERISHTIME = 30 * 16 * 22 --22 days
TUNING.BASEBALL_CAP_PERISHTIME = 30 * 16 * 12 --12 days

-- The skins shown in the cycle view window on the character select screen.
-- A good place to see what you can put in here is in skinutils.lua, in the function GetSkinModes
local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

-- Add mod character to mod character list. Also specify a gender. Possible genders are MALE, FEMALE, ROBOT, NEUTRAL, and PLURAL.
AddModCharacter("gramninten", "MALE", skin_modes)


RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/nintens_coat.xml"), "nintens_coat.tex")


--Inhaler stuff
AddReplicableComponent("asthma")

local ActionHandler = GLOBAL.ActionHandler
local USE_INHALER = AddAction("NINTEN_INHALER", "Use Inhaler", function(act)
	if act.doer then
		if act.doer.prefab == "gramninten" then
			if (act.doer.components.asthma.isAsthmaWarning or act.doer.components.asthma.isAsthamaAttack) and act.invobject then
				return act.invobject.components.ninteninhaler:UseInhaler(act.doer)
			else act.doer.components.talker:Say("I don't need my inhaler.")
			end
		else
			local line = "I don't need this!"
			if act.doer.prefab == "wx78" then line = "I HAVE NO USE FOR THIS" end
			act.doer.components.talker:Say(line)
		end
	end
end)

USE_INHALER.silent_fail = true
USE_INHALER.mount_valid = true

AddStategraphActionHandler("wilson", ActionHandler(GLOBAL.ACTIONS.NINTEN_INHALER, "dolongaction"))
AddStategraphActionHandler("wilson_client", ActionHandler(GLOBAL.ACTIONS.NINTEN_INHALER, "dolongaction"))

local function canUseInhaler(inst, doer, actions, right) 
	table.insert(actions, GLOBAL.ACTIONS.NINTEN_INHALER)
end
AddComponentAction("INVENTORY", "ninteninhaler", canUseInhaler)

local asthmaOverlay = require "widgets/asthmaoverlay"
AddClassPostConstruct("widgets/statusdisplays", function(self)
	if self.owner.prefab ~= 'gramninten' or TUNING.ASTHMA_THRESHOLD == true or TUNING.SHOW_ASTHMA_OVERLAY == false then
		 return
	end

	self.owner.asthmaUI = self:AddChild(asthmaOverlay(self.owner, -175, 100))
end)

modimport "scripts/baseball_bat_ness_common"

--Recipes
local baseball_cap_recipe = AddRecipe("baseball_cap_ninten",
	{Ingredient("silk", 4)},
	RECIPETABS.DRESS, TECH.SCIENCE_ONE, nil, nil, nil, 1, "nintencraft")

baseball_cap_recipe.atlas= "images/inventoryimages/baseball_cap_ninten.xml"
baseball_cap_recipe.image = "baseball_cap_ninten.tex"	
STRINGS.RECIPE_DESC.BASEBALL_CAP_NINTEN = "A stylish hat to keep cool under."

local nintens_coat_recipe = {}
if TUNING.ISLAND_ADVENTURE_ENABLED then
	nintens_coat_recipe = AddRecipe("nintens_coat",
	{Ingredient("silk", 6),
	 Ingredient("fabric", 4)},
	 RECIPETABS.DRESS, TECH.SCIENCE_ONE, nil, nil, nil, 1, "nintencraft")
else
	nintens_coat_recipe = AddRecipe("nintens_coat",
	{Ingredient("silk", 6),
	Ingredient("beefalowool", 2)},
	RECIPETABS.DRESS, TECH.SCIENCE_ONE, nil, nil, nil, 1, "nintencraft")
end
nintens_coat_recipe.atlas= "images/inventoryimages/nintens_coat.xml"
nintens_coat_recipe.image = "nintens_coat.tex"	
STRINGS.RECIPE_DESC.NINTENS_COAT = "A stylish coat to keep you warm."

local inhaler_ninten_recipe = AddRecipe("inhaler_ninten",
	{Ingredient("nitre", 6),
	 Ingredient("cutreeds", 3),
	 Ingredient("bluegem", 1)},
	 RECIPETABS.SURVIVAL, TECH.MAGIC_TWO, nil, nil, nil, 1, "nintencraft")
inhaler_ninten_recipe.atlas= "images/inventoryimages/inhaler_ninten.xml"
inhaler_ninten_recipe.image = "inhaler_ninten.tex"	
STRINGS.RECIPE_DESC.INHALER_NINTEN = "Subdues asthma attacks."

local powershield_recipe = AddRecipe("powershield_ninten",
	{Ingredient("purplegem", 1),
	 Ingredient("psi_shield_ninten", 1, "images/inventoryimages/psi_shield_ninten.xml", nil, "psi_shield_ninten.tex"),
	 Ingredient(GLOBAL.CHARACTER_INGREDIENT.SANITY, TUNING.GRAMNINTEN_SANITY)},
	 RECIPETABS.MAGIC, TECH.MAGIC_THREE, nil, nil, nil, 1, "nintencraft")
powershield_recipe.atlas= "images/inventoryimages/powershield_ninten.xml"
powershield_recipe.image = "powershield_ninten.tex"	
STRINGS.RECIPE_DESC.POWERSHIELD_NINTEN = "PSI Shield, but even better."

local four_d_slip_o_recipe = AddRecipe("four_d_slip_o",
	{Ingredient("purplegem", 1),
	 Ingredient("four_d_slip", 1, "images/inventoryimages/four_d_slip.xml", nil, "four_d_slip.tex"),
	 Ingredient(GLOBAL.CHARACTER_INGREDIENT.SANITY, TUNING.GRAMNINTEN_SANITY)},
	 RECIPETABS.MAGIC, TECH.MAGIC_THREE, nil, nil, nil, 1, "nintencraft")
four_d_slip_o_recipe.atlas= "images/inventoryimages/four_d_slip_o.xml"
four_d_slip_o_recipe.image = "four_d_slip_o.tex"	
STRINGS.RECIPE_DESC.FOUR_D_SLIP_O = "4D Slip, but even better."

AddCharacterRecipe("psi_shield_ninten",
	{Ingredient("purplegem", 1),
	 Ingredient(GLOBAL.CHARACTER_INGREDIENT.SANITY, 50)},
	GLOBAL.TECH.MAGIC_THREE,
	{
		product = "psi_shield_ninten",
		builder_tag = "nintencraft",
		numtogive = 1,
		atlas = "images/inventoryimages/psi_shield_ninten.xml",
		image = "psi_shield_ninten.tex"
	},
	{
		"MAGIC",
		"ARMOUR",
	})
STRINGS.RECIPE_DESC.PSI_SHIELD_NINTEN = "Envelop yourself with a psychokinetic shield."
AddCharacterRecipe("four_d_slip",
	{Ingredient("purplegem", 1),
	 Ingredient(GLOBAL.CHARACTER_INGREDIENT.SANITY, 50)},
	GLOBAL.TECH.MAGIC_THREE,
	{
		product = "four_d_slip",
		builder_tag = "nintencraft",
		numtogive = 1,
		atlas = "images/inventoryimages/four_d_slip.xml",
		image = "four_d_slip.tex"
	},
	{
		"MAGIC",
	})
STRINGS.RECIPE_DESC.FOUR_D_SLIP = "Travel perpendicular to 3D space."

AddRecipeToFilter("baseball_cap_ninten", "CLOTHING")
AddRecipeToFilter("baseball_cap_ninten", "SUMMER")

AddRecipeToFilter("nintens_coat", "CLOTHING")
AddRecipeToFilter("nintens_coat", "WINTER")

AddRecipeToFilter("powershield_ninten", "MAGIC")
AddRecipeToFilter("powershield_ninten", "ARMOR")

AddRecipeToFilter("four_d_slip_o", "MAGIC")

AddRecipeToFilter("inhaler_ninten", "RESTORATION")

STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.BASEBALL_CAP_NINTEN = "My favorite baseball cap."
STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.BASEBALL_BAT_NESS = "I'm a bit of a natural when it comes to baseball, heh."
STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.NINTENS_COAT = "My coat! Pretty stylish, gotta say!"


local SCRIPT_GRAMNINTEN1 = {
	cast = {"gramninten"},
	lines = {
		{roles = {"gramninten"},	duration ="3.5", line = "Anyone ever tell you guys how I, Ninten, saved the world?"},
		{roles = {"gramninten"},	duration ="3.0", line = "I'm surprised you dweebs don't know me,"},
		{roles = {"gramninten"},	duration ="3.0", line = "I am a bit of a celebrity, after all, heheh."},
		{roles = {"gramninten"},	duration ="3.0", line = "But anywho, it was a normal Spring morning."},
		{roles = {"gramninten"},	duration ="3.0", line = "Or maybe it was closer to early Summer..."},
		{roles = {"gramninten"},	duration ="5.0", line = "And am I sure it was in the morning?"},
		{roles = {"gramninten"},	duration ="2.2", line = "You know what,"},
		{roles = {"gramninten"},	duration ="3.0", line = "Who cares?! Just know that I'm awesome.", anim="ninten_whocares"},
		{roles = {"gramninten"},	duration ="2.0", line = "I'm bored. See ya, nerds!"},
	}
}
AddComponentPostInit("stageactingprop", function(inst)
	inst:AddGeneralScript("GRAMNINTEN1", SCRIPT_GRAMNINTEN1)
end)


--String experimentation
function CreateDictionary(keytable, valuetable)
    local newtable = {}
    for k, v in pairs(valuetable) do
		
        if type(v) == "table" then
            local inner_table = CreateDictionary(v, keytable[k])
            for l, w in pairs(inner_table) do
                newtable[l] = w
            end
        else
        	print(k, v)
        	if keytable[k] then newtable[keytable[k]] = v end
		end

    end
    return newtable
end

GLOBAL.UNIQUE_SKIN_DIALOGUE = {
	["gramninten"] = {
		["ms_gramninten_ken"] = CreateDictionary(require("speech_gramninten"), require("speech_gramken"))
	}
}

AddComponentPostInit("talker", function(talker)
	local old_say = talker.Say
	talker.Say = function(self, script, ...)
		if not self.inst.components.skinner then return old_say(self, script, ...) end
		
		print(script)
		if GLOBAL.UNIQUE_SKIN_DIALOGUE[self.inst.prefab] and GLOBAL.UNIQUE_SKIN_DIALOGUE[self.inst.prefab][self.inst.components.skinner.skin_name] then
			script = GLOBAL.UNIQUE_SKIN_DIALOGUE[self.inst.prefab][self.inst.components.skinner.skin_name][script] or script
		end
		old_say(self, script, ...)
	end
end)