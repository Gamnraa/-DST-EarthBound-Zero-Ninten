local prefabs = {}

table.insert(prefabs, CreatePrefabSkin("gramninten_none", {
	assets = {
		Asset("ANIM", "anim/gramninten.zip"),
		Asset("ANIM", "anim/ghost_gramninten.zip"),
	},
	
	skins = {
		normal_skin = "gramninten",
		ghost_skin = "ghost_gramninten",
	},
	
	base_prefab = "gramninten",
	build_name_override = "gramninten",
	type = "base",
	rarity = "Character",
	skin_tags = {"BASE", "GRAMNINTEN"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_gramninten_summer", {
	assets = {
		Asset("ANIM", "anim/ms_gramninten_summer.zip"),
		Asset("ANIM", "anim/ghost_gramninten.zip"),
	},
	
	skins = {
		normal_skin = "ms_gramninten_summer",
		ghost_skin = "ghost_gramninten",
	},
	
	base_prefab = "gramninten",
	build_name_override = "ms_gramninten_summer",
	type = "base",
	rarity = "ModMade",
	skin_tags = {"BASE", "GRAMNINTEN"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_gramninten_ken", {
	assets = {
		Asset("ANIM", "anim/ms_gramninten_ken.zip"),
		Asset("ANIM", "anim/ghost_gramninten.zip"),
	},
	
	skins = {
		normal_skin = "ms_gramninten_ken",
		ghost_skin = "ghost_gramninten",
	},
	
	base_prefab = "gramninten",
	build_name_override = "ms_gramninten_ken",
	type = "base",
	rarity = "ModMade",
	skin_tags = {"BASE", "GRAMNINTEN"},
}))

table.insert(prefabs, CreatePrefabSkin("ms_gramninten_halloween", {
	assets = {
		Asset("ANIM", "anim/ms_gramninten_halloween.zip"),
		Asset("ANIM", "anim/ghost_gramninten.zip"),
	},
	
	skins = {
		normal_skin = "ms_gramninten_halloween",
		ghost_skin = "ghost_gramninten",
	},
	
	base_prefab = "gramninten",
	build_name_override = "ms_gramninten_halloween",
	type = "base",
	rarity = "ModMade",
	skin_tags = {"BASE", "GRAMNINTEN", "HALLOWED"},
}))


table.insert(prefabs, CreatePrefabSkin("ms_nintens_coat_aviator", { --The ID of our skin
    assets = { --Our assets
        Asset( "ANIM", "anim/ms_nintens_coat_aviator.zip"),
    },
    base_prefab = "nintens_coat", --The prefab of the item/structure we're adding a skin for
    build_name_override = "ms_nintens_coat_aviator",

    type = "item", --We are now creating a modded item/structure! Thus our skin's type is "item" (Note: there aren't different types for modded "structures", to the game there is no difference between skinning an item, a structure, or even a mob! (Yes you could create mob skins if you wanted!)
    rarity = "ModMade",

    skin_tags = {"NINTENSCOAT"}, --Skin tags, you should add a tag matching the original prefab of the item/structure we're adding a skin for in full capitalization
}))

table.insert(prefabs, CreatePrefabSkin("ms_baseball_cap_ninten_halloween", { --The ID of our skin
    assets = { --Our assets
        Asset( "ANIM", "anim/ms_baseball_cap_ninten_halloween.zip"),
    },
    base_prefab = "baseball_cap_ninten", --The prefab of the item/structure we're adding a skin for
    build_name_override = "ms_baseball_cap_ninten_halloween",

    type = "item", --We are now creating a modded item/structure! Thus our skin's type is "item" (Note: there aren't different types for modded "structures", to the game there is no difference between skinning an item, a structure, or even a mob! (Yes you could create mob skins if you wanted!)
    rarity = "ModMade",

    skin_tags = {"BASEBALLCAPNINTEN", "HALLOWED"}, --Skin tags, you should add a tag matching the original prefab of the item/structure we're adding a skin for in full capitalization
}))

return unpack(prefabs)
		