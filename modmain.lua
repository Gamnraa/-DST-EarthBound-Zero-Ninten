PrefabFiles = {
	"gramninten",
	"gramninten_none",
	
	"four_d_slip",
	"psi_shield_ninten",
	"inhaler_ninten",
	"nintens_coat",
	"baseball_cap_ninten",
	"shield_fx",
	"counter_fx"
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/gramninten.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/gramninten.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/gramninten.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/gramninten.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/gramninten_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/gramninten_silho.xml" ),
	
	Asset( "IMAGE", "images/map_icons/gramninten.tex" ),
	Asset( "ATLAS", "images/map_icons/gramninten.xml" ),
	
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
	
	Asset("SOUNDPACKAGE", "sound/gramninten.fev"),
	Asset("SOUND", "sound/gramninten.fsb"),
	Asset("SOUNDPACKAGE", "sound/psishield.fev"),
	Asset("SOUND", "sound/psishield.fsb"),
	
	--Asset("ANIM", "anim/player_groggy.zip"),
}

AddMinimapAtlas("images/map_icons/gramninten.xml")

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local TUNING = GLOBAL.TUNING
local RECIPETABS = GLOBAL.RECIPETABS
local Ingredient = GLOBAL.Ingredient
local TECH = GLOBAL.TECH


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
--STRINGS.CHARACTER_SURVIVABILITY.gramninten = "Grim"

-- Custom speech strings
STRINGS.CHARACTERS.GRAMNINTEN = require "speech_gramninten"

-- The character's name as appears in-game 
STRINGS.NAMES.GRAMNINTEN = "Ninten"
--STRINGS.SKIN_NAMES.gramninten_none = "Ninten"

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
--table.insert(GLOBAL.CHARACTER_GENDERS.MALE, "gramninten")
AddModCharacter("gramninten")

--Spellcasting
local ActionHandler = GLOBAL.ActionHandler
local DSTCASTSPELL = GLOBAL.Action ( {mount_enabled=true},
									  1, --priority
									  false, --instant
									  true, --rmb
									  20) --range
DSTCASTSPELL.id = "DSTCASTSPELL"
DSTCASTSPELL.str = "Cast Spell"
DSTCASTSPELL.crosseswaterboundary = true
DSTCASTSPELL.fn = function(act)
    --For use with magical staffs
	print("Cast spell")
    local staff = act.invobject or act.doer.components.inventory:GetEquippedItem(EQUIPSLOTS.HANDS)
	--local act_pos = act:GetActionPoint()
    if staff and staff.components.betterspellcaster and staff.components.betterspellcaster:CanCast(act.doer, act.target, act.pos) then
        staff.components.betterspellcaster:CastSpell(act.target, act.pos, act.doer)
        return true
    end
end

AddAction(DSTCASTSPELL)

local quickcastspell = GLOBAL.State({
        name = "quickcastspell",
        tags = { "doing", "busy", "canrotate" },

        onenter = function(inst)
            inst.components.locomotor:Stop()
            if inst.components.rider:IsRiding() then
                inst.AnimState:PlayAnimation("player_atk")
                --inst.AnimState:PushAnimation("player_atk", false)
            else
				inst.AnimState:PlayAnimation("atk")
				--inst.AnimState:PushAnimation("atk", false)
            end
            inst.SoundEmitter:PlaySound("dontstarve/wilson/attack_weapon")
        end,
		
        timeline =
        {
            GLOBAL.TimeEvent(9 * GLOBAL.FRAMES, function(inst)
                inst:PerformBufferedAction()
				inst.sg:RemoveStateTag("busy")
				inst.sg:AddStateTag("idle")
            end),
        },

        events =
        {
            GLOBAL.EventHandler("animqueueover", function(inst)
                if inst.AnimState:AnimDone() then
                    inst.sg:GoToState("idle")
                end
            end),
        },
    })
AddStategraphState("wilson", quickcastspell)
AddStategraphState("wilsonboating", quickcastspell)

AddStategraphActionHandler("wilson", GLOBAL.ActionHandler(DSTCASTSPELL, function(inst, action)
	return action.invobject ~= nil
        and (
				(action.invobject:HasTag("quickcast") and "quickcastspell")
			)
		or "castspell"
	end))

AddStategraphActionHandler("wilsonboating", GLOBAL.ActionHandler(DSTCASTSPELL, function(inst, action)
	return action.invobject ~= nil
        and (
				(action.invobject:HasTag("quickcast") and "quickcastspell")
			)
		or "castspell"
	end))
	
--Adding in externaldamagetakenmultipliers
--Won't function exactly the same here, but we don't need it to...
--In fact I'll refactor the name in case someone else attempts the same for that reason
AddComponentPostInit("combat", function(combat)
	combat.externaldamagetakenmultipliersninten = 1
	
	--Save the old GetAttacked function before overwriting it
	local old_getattacked = combat.GetAttacked
	combat.GetAttacked = function(self, attacker, damage, weapon, stimuli)
		--print(damage)
		if combat.inst.components.health and damage and not damagerederecttarget then
			--if self.inst.components.inventory then
			--	damage = self.inst.components.inventory:ApplyDamage(damage, attacker)
			--end
			damage = damage * self.externaldamagetakenmultipliersninten
		end
		if stimuli then
			return old_getattacked(self, attacker, damage, weapon, stimuli)
		else
			return old_getattacked(self, attacker, damage, weapon)
		end
	end
end)


--Inhaler stuff
--AddReplicableComponent("asthma")
local NINTEN_INHALER = GLOBAL.Action ( {},
									  1, --priority
									  nil, --instant
									  true --rmb
									  )
NINTEN_INHALER.fn = function(act)
	if act.doer then
		if act.doer.prefab == "gramninten" then
			if (act.doer.components.asthma.isAsthmaWarning or act.doer.components.asthma.isAsthamaAttack) and act.invobject then
				return act.invobject.components.ninteninhaler:UseInhaler(act.doer)
			else act.doer.components.talker:Say("I don't need my inhaler.")
			end
		end
	end
end

NINTEN_INHALER.id = "NINTEN_INHALER"
NINTEN_INHALER.silent_fail = true
NINTEN_INHALER.str = "Use Inhaler"
AddAction(NINTEN_INHALER)

AddStategraphActionHandler("wilson", ActionHandler(GLOBAL.ACTIONS.NINTEN_INHALER, "dolongaction"))
AddStategraphActionHandler("wilsonboating", ActionHandler(GLOBAL.ACTIONS.NINTEN_INHALER, "dolongaction"))

local asthmaOverlay = require "widgets/asthmaoverlay"
AddClassPostConstruct("widgets/statusdisplays", function(self)
	if self.owner.prefab ~= 'gramninten' or TUNING.ASTHMA_THRESHOLD == true or TUNING.SHOW_ASTHMA_OVERLAY == false then
		 return
	end

	self.owner.asthmaUI = self:AddChild(asthmaOverlay(self.owner, -175, 100))
end)

--DLC Check
TUNING.DLC_ACTIVE = GLOBAL.IsDLCEnabled(1) or GLOBAL.IsDLCEnabled(2) or GLOBAL.IsDLCEnabled(3)
if TUNING.DLC_ACTIVE then
	AddPrefabPostInit("nintens_coat", function(inst)
		inst:AddComponent("waterproofer")
		inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL)
	end)
	
	AddPrefabPostInit("baseball_cap_ninten", function(inst)
		inst:AddComponent("waterproofer")
		inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL)
	end)
end

--Add Inhaler to Hamlet shop
local ninten_antiques = {
	{ "silk",              "oinc", 5  },
    { "gears",             "oinc", 10 },
    { "mandrake",          "oinc", 50 },
    { "wormlight",         "oinc", 20 },
    { "deerclops_eyeball", "oinc", 50 },
    { "walrus_tusk",       "oinc", 50 },
    { "bearger_fur",       "oinc", 40 },
    { "goose_feather",     "oinc", 40 },
    { "dragon_scales",     "oinc", 30 },
    { "houndstooth",       "oinc", 5  },
    { "bamboo",            "oinc", 3  },
    { "horn",              "oinc", 5  },
    { "coontail",          "oinc", 4  },
	{ "inhaler_ninten",    "oinc", 50 },
}
--The way Klei handles shop inventories in Hamlet is actually horrible btw
--Makes trying to add custom items to shops very painful and likely to break with other mods
AddComponentPostInit("shopinterior", function(shopinterior)
	--Modders. PLEASE do this method of saving the old function and calling it after your changes if you're gonna mess with PostInits
	--I'm begging you
	old_getnewproduct = shopinterior.GetNewProduct
	shopinterior.GetNewProduct = function(self, shoptype)
		if GLOBAL.GetPlayer().prefab == "graminten" and shoptype == "pig_shop_antiquities" then
			if GLOBAL.GetAporkalypse() and GLOBAL.GetAporkalypse():GetFiestaActive() and _SHOPTYPES[shoptype.."_fiesta"] then
				return old_getnewproduct
			end
			local itemset = GLOBAL.GetRandomItem(ninten_antiques)
			return itemset
		else
			return old_getnewproduct(self, shoptype)
		end
	end
end)

--I need an event listener that catches ALL forms of door use
--There doesn't seem to be one that catches going from one room to another, at least none that the player can listen to
AddComponentPostInit("interiorspawner", function(interiorspawner)
	old_fadeoutfinished = interiorspawner.FadeOutFinished
	interiorspawner.FadeOutFinished = function(self, dont_fadein)
		GLOBAL.GetPlayer():PushEvent("fadeout")
		return old_fadeoutfinished(self, dont_fadein)
	end
end)

--Need an event listener for going to sleep. Pestilence.
AddComponentPostInit("sleepingbag", function(sleepingbag)
	old_dosleep = sleepingbag.DoSleep
	sleepingbag.DoSleep = function(self, doer)
		doer:PushEvent("gotosleep")
		return old_dosleep(self, doer)
	end
end)
	
STRINGS.RECIPE_DESC.BASEBALL_CAP_NINTEN = "A stylish hat to keep cool under."
STRINGS.RECIPE_DESC.NINTENS_COAT = "A stylish coat to keep you warm."
STRINGS.RECIPE_DESC.INHALER_NINTEN = "Subdues asthma attacks."	
STRINGS.RECIPE_DESC.POWERSHIELD_NINTEN = "PSI Shield, but even better."
STRINGS.RECIPE_DESC.FOUR_D_SLIP_O = "4D Slip, but even better."
STRINGS.RECIPE_DESC.PSI_SHIELD_NINTEN = "Envelop yourself a psychokinetic shield."
STRINGS.RECIPE_DESC.FOUR_D_SLIP = "Travel perpendicular to the 3rd Dimension."