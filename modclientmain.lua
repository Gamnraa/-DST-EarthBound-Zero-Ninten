PrefabFiles = {
	"gramninten_none",
	"nintens_coat",
	"baseball_cap_ninten",
}

Assets = {
	Asset( "IMAGE", "images/saveslot_portraits/gramninten.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/gramninten.xml" ),

    Asset( "IMAGE", "bigportraits/gramninten.tex" ),
    Asset( "ATLAS", "bigportraits/gramninten.xml" ),
	
	Asset( "IMAGE", "bigportraits/gramninten_none.tex" ),
    Asset( "ATLAS", "bigportraits/gramninten_none.xml" ),
	
	Asset( "IMAGE", "bigportraits/ms_gramninten_summer.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramninten_summer.xml" ),
	
	Asset( "IMAGE", "bigportraits/ms_gramninten_halloween.tex" ),
	Asset( "ATLAS", "bigportraits/ms_gramninten_halloween.xml" ),

    Asset( "IMAGE", "bigportraits/ms_gramninten_ken.tex" ),
    Asset( "ATLAS", "bigportraits/ms_gramninten_ken.xml" ),
	
	Asset( "IMAGE", "images/names_gold_gramninten.tex" ),
    Asset( "ATLAS", "images/names_gold_gramninten.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/four_d_slip.tex" ),
	Asset( "ATLAS", "images/inventoryimages/four_d_slip.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/psi_shield_ninten.tex" ),
	Asset( "ATLAS", "images/inventoryimages/psi_shield_ninten.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/nintens_coat.tex" ),
	Asset( "ATLAS", "images/inventoryimages/nintens_coat.xml" ),
	
	Asset( "IMAGE", "images/inventoryimages/inhaler_ninten.tex" ),
	Asset( "ATLAS", "images/inventoryimages/inhaler_ninten.xml" ),

    Asset( "IMAGE", "images/inventoryimages/ms_nintens_coat_aviator.tex" ),
	Asset( "ATLAS", "images/inventoryimages/ms_nintens_coat_aviator.xml" ),
}

ModdedCurios = {
	ms_ninten_batterbg = {
		type = "loading",
		skin_tags = {"BATTER", "LOADING"},
		rarity = "ModMade",
		assets = {
			Asset("ATLAS", "images/bg_loading_ms_ninten_batterbg.xml"),
			Asset("IMAGE", "images/bg_loading_ms_ninten_batterbg.tex"),
			
			Asset("DYNAMIC_ANIM", "anim/dynamic/ms_ninten_batterbg.zip"),
			Asset("PKGREF", "anim/dynamic/ms_ninten_batterbg.dyn")
		},
	},
}

local STRINGS = GLOBAL.STRINGS
STRINGS.NAMES.NINTENS_COAT  = "Ninten's Coat"

STRINGS.NAMES.GRAMNINTEN = "Ninten"
STRINGS.SKIN_NAMES.gramninten_none = "Ninten"
STRINGS.SKIN_DESCRIPTIONS.gramninten_none = "Ninten's favorite outfit."

STRINGS.SKIN_NAMES.ms_gramninten_summer = "The Laidback"
STRINGS.SKIN_DESCRIPTIONS.ms_gramninten_summer = "He doesn't seem to be taking this all too seriously. Although, when you're someone like Ninten, do you really have to?"
STRINGS.SKIN_QUOTES.ms_gramninten_summer = "\"You see survival. I see a vacation.\""

STRINGS.SKIN_NAMES.ms_gramninten_ken = "The Aviator"
STRINGS.SKIN_DESCRIPTIONS.ms_gramninten_ken = "He may share the title of protagonist with the classic Ninten, just don't get this hothead, Ken, confused with him!"
STRINGS.SKIN_QUOTES.ms_gramninten_ken = "\"Ninten? What an idiotic name. Call me Ken.\""

STRINGS.SKIN_NAMES.ms_nintens_coat_aviator = "Aviation Coat"
STRINGS.SKIN_DESCRIPTIONS.ms_nintens_coat_aviator = "Ken is a bit of a nerd when it comes to Aviation. Just don't let him know I described him that way."
RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/ms_nintens_coat_aviator.xml"), "ms_nintens_coat_aviator.tex")

STRINGS.SKIN_NAMES.ms_gramninten_halloween = "The Undead Gangster"
STRINGS.SKIN_DESCRIPTIONS.ms_gramninten_halloween = "It may just be a costume, but beware, he bites anyways!"
STRINGS.SKIN_QUOTES.ms_gramninten_halloween = "\"All I need is a Chicago Typewriter! Er, y'know, for typing, of course...\""

STRINGS.SKIN_NAMES.ms_baseball_cap_ninten_halloween = "Tattered Fedora"
STRINGS.SKIN_DESCRIPTIONS.ms_baseball_cap_ninten_halloween = "Any drab getup isn't complete without its complimentary fedora."
RegisterInventoryItemAtlas(GLOBAL.resolvefilepath("images/inventoryimages/ms_baseball_cap_ninten_halloween.xml"), "ms_baseball_cap_ninten_halloween.tex")

STRINGS.SKIN_NAMES.ms_ninten_batterbg = "Ninten and his Baseball"
STRINGS.SKIN_DESCRIPTIONS.ms_ninten_batterbg = "Another day of playing his favorite sport awaits..."

GLOBAL.nintens_coat_init_fn = function(inst, build_name)
    GLOBAL.basic_init_fn(inst, build_name, "nintens_coat" )
end

GLOBAL.nintens_coat_clear_fn = function(inst)
    GLOBAL.basic_clear_fn(inst, "nintens_coat" )
end


GLOBAL.baseball_cap_ninten_init_fn = function(inst, build_name)
    GLOBAL.basic_init_fn(inst, build_name, "baseball_cap_ninten" )
end

GLOBAL.baseball_cap_ninten_clear_fn = function(inst)
    GLOBAL.basic_clear_fn(inst, "baseball_cap_ninten" )
end

STRINGS.CHARACTER_SURVIVABILITY.gramninten = "Grim"

STRINGS.CHARACTER_TITLES.gramninten = "The Original"
STRINGS.CHARACTER_NAMES.gramninten = "Ninten"
STRINGS.CHARACTER_DESCRIPTIONS.gramninten = "*Gifted with Powers\n*Dresses with Style\n*Lovable Asthmatic"
STRINGS.CHARACTER_QUOTES.gramninten = "\"Now that the Earth's crisis is over...\""
STRINGS.CHARACTER_ABOUTME.gramninten = "Ninten is a young boy with great physic powers he doesn't fully understand, although he believes the answer to be tied to his great grandparents' disappearance many years ago..."
STRINGS.CHARACTER_BIOS.gramninten = {
 { title = "Birthday", desc = "Februrary 10" },
 { title = "Favorite Food", desc = "Prime Ribs" },
 --I need to think about lore and how Ninten could potentially end up in the constant.
 --Maybe investigating his Great Grandpa's lab after the events of Zero?
 { title = "His past...", desc = "Is yet to be revealed."},
}

TUNING.GRAMNINTEN_HEALTH = GetModConfigData("GRAMNINTEN_HEALTH")
TUNING.GRAMNINTEN_SANITY = GetModConfigData("GRAMNINTEN_SANITY")
TUNING.GRAMNINTEN_HUNGER = GetModConfigData("GRAMNINTEN_HUNGER")
--Ness makes use of the baseball cap, so we want its data to be loaded from the menu
--Should the player have Ninten enabled in MiM, but not enabled on the server
TUNING.BASEBALL_CAP_PERISHTIME = 30 * 16 * 12 --12 days

local skin_modes = {
    { 
        type = "ghost_skin",
        anim_bank = "ghost",
        idle_anim = "idle", 
        scale = 0.75, 
        offset = { 0, -25 } 
    },
}

TUNING.GAMEMODE_STARTING_ITEMS.DEFAULT.GRAMNINTEN = { "four_d_slip", "psi_shield_ninten", "inhaler_ninten", "nintens_coat" }
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["four_d_slip"] = {
    atlas = "images/inventoryimages/four_d_slip.xml",
    image = "four_d_slip.tex",
}
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["psi_shield_ninten"] = {
    atlas = "images/inventoryimages/psi_shield_ninten.xml",
    image = "psi_shield_ninten.tex",
}

TUNING.STARTING_ITEM_IMAGE_OVERRIDE["inhaler_ninten"] = {
    atlas = "images/inventoryimages/inhaler_ninten.xml",
    image = "inhaler_ninten.tex",
}
TUNING.STARTING_ITEM_IMAGE_OVERRIDE["nintens_coat"] = {
    atlas = "images/inventoryimages/nintens_coat.xml",
    image = "nintens_coat.tex",
}

AddModCharacter("gramninten", "MALE", skin_modes)