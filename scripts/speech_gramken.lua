-----------------------------------
-- This file is the template for other speech files. Once a new string is added here, simply run PropagateSpeech.bat
-- If you are adding strings that are character specific, or not required by all characters, you will still need to add the strings to speech_wilson.lua,
-- and then add the context string to speech_from_generic.lua. Once you run the PropagateSpeech.bat, you can go into your character's speech file and simply uncomment the new lines.
--
-- There are some caveats about maintaining sane formatting in this file. 
--      -No single line lua tables
--      -Opening and closing brackets should be on their own line
--      -If wilson's speech has X unnamed strings in a table, then all other speech files must have at least X unnamed strings in that context too (example, CHESSPIECE_MOOSEGOOSE has 1 string in wilson, but 2 in wortox), this requirement could be relaxed if required by motifying po_vault.lua) 

return {
	ACTIONFAIL =
	{
		GENERIC =
		{
			ITEMMIMIC = "I'll get you for that one!",
		},
		APPRAISE = 
        {
            NOTNOW = "Will you hurry it up?!",
        },
        REPAIR =
        {
            WRONGPIECE = "That's not quite right, huh?",
        },
        BUILD =
        {
            MOUNTED = "Not gonna happen from up here.",
            HASPET = "One pet's enough for me.",
			TICOON = "One cat's enough for me.",													   
        },
		SHAVE =
		{
			AWAKEBEEFALO = "Don't be stupid, Ken. I'll wait for them to sleep first.",
			GENERIC = "Nah.",
			NOBITS = "What am I supposed to be shaving?",
            REFUSE = "only_used_by_woodie",
            SOMEONEELSESBEEFALO = "Nah, that's someone's beefalo.",
		},
		STORE =
		{
			GENERIC = "No room for it.",
			NOTALLOWED = "Hmmmm, don't think that goes in there.",
			INUSE = "Get outta my way already!",
            NOTMASTERCHEF = "I never do the cooking.",
		},
        CONSTRUCT =
        {
            INUSE = "I'm not needed.",
            NOTALLOWED = "Won't work, damnit!",
            EMPTY = "I got nothing to build with.",
            MISMATCH = "That's not right.",
        },
		RUMMAGE =
		{	
			GENERIC = "Nah.",
			INUSE = "Outta my way!",
            NOTMASTERCHEF = "I never do the cooking.",
		},
		UNLOCK =
        {
        	WRONGKEY = "Dang it, wrong key!",
        },
		USEKLAUSSACKKEY =
        {
        	WRONGKEY = "Damn, wrong key!",
        	KLAUS = "I'd love to, but let's deal with big man first, mkay?",
			QUAGMIRE_WRONGKEY = "Damn, wrong key!",
        },
		ACTIVATE = 	 
		{
			LOCKED_GATE = "Locked.",
			HOSTBUSY = "Jeez, I don't got all day. Hurry it up!",
            CARNIVAL_HOST_HERE = "There you are. Finally!",
            NOCARNIVAL = "He's not gonna show up. Whatever.",						   
		},
		OPEN_CRAFTING =
		{
            PROFESSIONALCHEF = "I never do the cooking.",
			SHADOWMAGIC = "Way over my head.",
		},
        COOK =
        {
            GENERIC = "I got better things to do.",
            INUSE = "I'll let the chump handle it.",
            TOOFAR = "Can't reach.",
        },
        START_CARRAT_RACE =
        {
            NO_RACERS = "I think I'm missing something here.",
        },
        
		DISMANTLE =
		{
			COOKING = "Give it a moment.",
			INUSE = "Hurry up already!",
			NOTEMPTY = "SOMEONE should clean up first.",
        },
        FISH_OCEAN =
		{
			TOODEEP = "This rod wasn't made for deep sea fishing.",
		},
        OCEAN_FISHING_POND =
		{
			WRONGGEAR = "This rod wasn't made for pond fishing.",
		},
        --wickerbottom specific action
        READ =
        {
            GENERIC = "only_used_by_wickerbottom",
            NOBIRDS = "only_used_by_wickerbottom"
        },

        GIVE =
        {
            GENERIC = "Nah.",
            DEAD = "Yeah, I'm sure the dead would take GREAT care of it.",
            SLEEPING = "Too lazy to rely on!",
            BUSY = "Hey, hurry it up! I've got something for you.",
            ABIGAILHEART = "Nah.",
            GHOSTHEART = "Nah.",
            NOTGEM = "Won't do.",
            WRONGGEM = "That's not it... anymore great ideas, genius?",
            NOTSTAFF = "That's the wrong staff.",
            MUSHROOMFARM_NEEDSSHROOM = "I think I need a mushroom.",
            MUSHROOMFARM_NEEDSLOG = "I need those living log things, right?",
            MUSHROOMFARM_NOMOONALLOWED = "They won't grow. Obnoxious...",
            SLOTFULL = "No room and I don't feel like making room.",
            FOODFULL = "No space for it",
            NOTDISH = "That won't pass for a meal.",
            DUPLICATE = "You wasting my time or something? I know this already!",
            NOTSCULPTABLE = "You want me to do WHAT with this junk?",
            NOTATRIUMKEY = "Nope.",
            CANTSHADOWREVIVE = "I can't bring that back.",
            WRONGSHADOWFORM = "That's not right.",
            NOMOON = "No good if the moon's not visible!",
			PIGKINGGAME_MESSY = "SOMEONE should clean up first.",
			PIGKINGGAME_DANGER = "Of course I have to be the one to deal with these baddies...",
			PIGKINGGAME_TOOLATE = "It's too late for that now.",
			CARNIVALGAME_INVALID_ITEM = "Out of tokens already?.",
			CARNIVALGAME_ALREADY_PLAYING = "In use.",
            SPIDERNOHAT = "Not my spider, not my problem.",
            TERRARIUM_REFUSE = "You don't want that? Tch. Picky eater.",
            TERRARIUM_COOLDOWN = "It's out of juice, I'm out of cares to give.",
            NOTAMONKEY = "Sorry, I got better things to do than monkey around.",
            QUEENBUSY = "Even as primates, adults are useless.",																									   
        },
        GIVETOPLAYER =
        {
            FULL = "Hurry up and make room.",
            DEAD = "Yeah, I'm sure the dead would take GREAT care of it",
            SLEEPING = "Tch, too lazy to rely on! ",
            BUSY = "Hey, hurry it up. I don't got time for this.",
        },
        GIVEALLTOPLAYER =
        {
            FULL = "Hurry up and make room.",
            DEAD = "Yeah, I'm sure the dead would take GREAT care of it",
            SLEEPING = "Tch, too lazy to rely on! ",
            BUSY = "Hey, hurry it up. I don't got time for this.",
        },
        WRITE =
        {
            GENERIC = "I think it's fine as is.",
            INUSE = "They'll handle it.",
        },
		REPAIRBOAT = 
		{
			GENERIC = "Looks fine to me.",
		},
        DRAW =
        {
            NOIMAGE = "I'm not an artist. I need a reference!",
        },
        CHANGEIN =
        {
            GENERIC = "The great Ken has better things to do.",
            BURNING = "Hey. Genius. That's on fire.",
            INUSE = "Ugh, hurry it up!",
            NOTENOUGHHAIR = "I need more fur.",
            NOOCCUPANT = "It needs something hitched up.",
        },
        ATTUNE =
        {
            NOHEALTH = "Maybe when I'm not DYING, I dunno, just a thought.",
        },
        MOUNT =
        {
            TARGETINCOMBAT = "I'd rather not get trampled.",
            INUSE = "They took my spot!",
			SLEEPING = "Hey, get up!",
        },
        SADDLE =
        {
            TARGETINCOMBAT = "I'd rather not get trampled.",
        },
        TEACH =
        {
            --Recipes/Teacher
            KNOWN = "I already know that one.",
            CANTLEARN = "I can't learn that one.",

            --MapRecorder/MapExplorer
            WRONGWORLD = "This map was made for some other place.",
			
			--MapSpotRevealer/messagebottle
			MESSAGEBOTTLEMANAGER_NOT_FOUND = "I can't make anything out in this lighting!",--Likely trying to read messagebottle treasure map in caves
			STASH_MAP_NOT_FOUND = "There's no X. What kind of stupid treasure map is this?!",-- Likely trying to read stash map  in world without stash
        },
        WRAPBUNDLE =
        {
            EMPTY = "I need something to wrap.",
        },
        PICKUP =
        {
			RESTRICTION = "Out of my league and I don't care to be frank.",
			INUSE = "Someone's got it covered.",
			NOTMINE_SPIDER = "only_used_by_webber",	
            NOTMINE_YOTC =
            {
                "You're not my Carrat.",
                "OW, it bit me!",
            },
			NO_HEAVY_LIFTING = "only_used_by_wanda",
        },
        SLAUGHTER =
        {
            TOOFAR = "It got away.",
        },
        REPLATE =
        {
            MISMATCH = "It needs another type of dish.", 
            SAMEDISH = "I only need to use one dish.", 
        },
        SAIL =
        {
        	REPAIR = "The sail looks good.",
        },
        ROW_FAIL =
        {
            BAD_TIMING0 = "Damnit Ken, you're better than that!",
            BAD_TIMING1 = "Huh, row in time, come on now!",
            BAD_TIMING2 = "Ugh, you're getting me all wet!",
        },
        LOWER_SAIL_FAIL =
        {
            "Whoops!",
            "Wait, that didn't seem right.",
            "That's not right.",
        },
        BATHBOMB =
        {
            GLASSED = "I can't, the surface is glassed over.",
            ALREADY_BOMBED = "That would be a waste of a bath bomb.",
        },
		GIVE_TACKLESKETCH =
		{
			DUPLICATE = "I'm well aware on how to make that.",
		},
		COMPARE_WEIGHABLE =
		{
            FISH_TOO_SMALL = "What a worthless catch.",
            OVERSIZEDVEGGIES_TOO_SMALL = "That's not heavy enough.",
		},
        BEGIN_QUEST =
        {
            ONEGHOST = "only_used_by_wendy",
        },
		TELLSTORY = 
		{
			GENERIC = "only_used_by_walter",
			NOT_NIGHT = "only_used_by_walter",
			NO_FIRE = "only_used_by_walter",
		},
        SING_FAIL =
        {
            SAMESONG = "only_used_by_wathgrithr",
        },
        PLANTREGISTRY_RESEARCH_FAIL =
        {
            GENERIC = "Sounds boring. I've had enough.",
            FERTILIZER = "I got better things to learn about.",
        },
        FILL_OCEAN =
        {
            UNSUITABLE_FOR_PLANTS = "I'm at the mercy of an imbe-, Can't use salt water for plants! Hellloooo!!!",
        },
        POUR_WATER =
        {
            OUT_OF_WATER = "Tch, out of water.",
        },
        POUR_WATER_GROUNDTILE =
        {
            OUT_OF_WATER = "Tch, out of water.",
        },
        USEITEMON =
        {
            --GENERIC = "I can't use this on that!",

            --construction is PREFABNAME_REASON
            BEEF_BELL_INVALID_TARGET = "That won't work on that, dude.",
            BEEF_BELL_ALREADY_USED = "Nah, that beefalo's tamed.",
            BEEF_BELL_HAS_BEEF_ALREADY = "I have another beefalo.",
        },
        HITCHUP =
        {
            NEEDBEEF = "If I had a bell I could befriend a beefalo.",
            NEEDBEEF_CLOSER = "My beefalo is too far.",
            BEEF_HITCHED = "My beefalo is already hitched up.",
            INMOOD = "No.",
        },
        MARK = 
        {
            ALREADY_MARKED = "I've already made my pick.",
            NOT_PARTICIPANT = "I've got no steak in this contest.",
        },
        YOTB_STARTCONTEST = 
        {
            DOESNTWORK = "I guess they don't support the arts here.",
            ALREADYACTIVE = "He must be busy with another contest somewhere.",
        },
        YOTB_UNLOCKSKIN = 
        {
            ALREADYKNOWN = "I'm seeing a familiar pattern... I've learned this already!",
        },
		CARNIVALGAME_FEED =
        {
            TOO_LATE = "Dang, too late.",
        },
        HERD_FOLLOWERS =
        {
            WEBBERONLY = "I'll let ol' spidey boy handle it.",
        },
        BEDAZZLE =
        {
            BURNING = "only_used_by_webber",
            BURNT = "only_used_by_webber",
            FROZEN = "only_used_by_webber",
            ALREADY_BEDAZZLED = "only_used_by_webber",
        },
        UPGRADE = 
        {
            BEDAZZLED = "only_used_by_webber",
        },
		CAST_POCKETWATCH = 
		{
			GENERIC = "only_used_by_wanda",
			REVIVE_FAILED = "only_used_by_wanda",
			WARP_NO_POINTS_LEFT = "only_used_by_wanda",
			SHARD_UNAVAILABLE = "only_used_by_wanda",
		},
        DISMANTLE_POCKETWATCH =
        {
            ONCOOLDOWN = "only_used_by_wanda",
        },

        ENTER_GYM =
        {
            NOWEIGHT = "only_used_by_wolfang",
            UNBALANCED = "only_used_by_wolfang",
            ONFIRE = "only_used_by_wolfang",
            SMOULDER = "only_used_by_wolfang",
            HUNGRY = "only_used_by_wolfang",
            FULL = "only_used_by_wolfang",
        },			   										
		APPLYMODULE =
        {
            COOLDOWN = "only_used_by_wx78",
            NOTENOUGHSLOTS = "only_used_by_wx78",
        },
        REMOVEMODULES =
        {
            NO_MODULES = "only_used_by_wx78",
        },
        CHARGE_FROM =
        {
            NOT_ENOUGH_CHARGE = "only_used_by_wx78",
            CHARGE_FULL = "only_used_by_wx78",
        },

        HARVEST =
        {
            DOER_ISNT_MODULE_OWNER = "Good, because I'm not interested in helping.",
        },
    },

	ANNOUNCE_CANNOT_BUILD =
	{
		NO_INGREDIENTS = "I don't have what I need. You should do something about that.",
		NO_TECH = "I got better things to do than figure this out.",
		NO_STATION = "You're giving me nothing to work with!",
	},												
	ACTIONFAIL_GENERIC = "Not happening.",
	ANNOUNCE_MAGIC_FAIL = "I can't concentrate!",
	ANNOUNCE_BOAT_LEAK = "Great, a leak.",
	ANNOUNCE_BOAT_SINK = "This is your fault, you hear me?",
	ANNOUNCE_DIG_DISEASE_WARNING = "It looks better already.",
	ANNOUNCE_PICK_DISEASE_WARNING = "Uh, is it supposed to smell like that?",
	ANNOUNCE_ADVENTUREFAIL = "I won't give up that easily!",
    ANNOUNCE_MOUNT_LOWHEALTH = "Just a little more, we can do it!",

    --waxwell and wickerbottom specific strings
    ANNOUNCE_TOOMANYBIRDS = "only_used_by_waxwell_and_wicker",
    ANNOUNCE_WAYTOOMANYBIRDS = "only_used_by_waxwell_and_wicker",

    --wolfgang specific
    ANNOUNCE_NORMALTOMIGHTY = "only_used_by_wolfang",
    ANNOUNCE_NORMALTOWIMPY = "only_used_by_wolfang",
    ANNOUNCE_WIMPYTONORMAL = "only_used_by_wolfang",
    ANNOUNCE_MIGHTYTONORMAL = "only_used_by_wolfang",
	ANNOUNCE_EXITGYM = {
        MIGHTY = "only_used_by_wolfang",
        NORMAL = "only_used_by_wolfang",
        WIMPY = "only_used_by_wolfang",
    },												 			

	ANNOUNCE_BEES = "Pesky bees!",
	ANNOUNCE_BOOMERANG = "Ouch! Come on!",
	ANNOUNCE_CHARLIE = "*Sigh,*",
	ANNOUNCE_CHARLIE_ATTACK = "Ow.",
	ANNOUNCE_CHARLIE_MISSED = "only_used_by_winona", --winona specific 
	ANNOUNCE_COLD = "H-how... does Ana l-live in these c-c-conditions??",
	ANNOUNCE_HOT = "Too... hot...",
	ANNOUNCE_CRAFTING_FAIL = "Great. I'm missing something.",
	ANNOUNCE_DEERCLOPS = "*Sigh,* It's always something...",
	ANNOUNCE_CAVEIN = "Whoa-! Watch out!",
	ANNOUNCE_ANTLION_SINKHOLE = 
	{
		"Earthquake!",
		"Stay calm... it'll pass!",
		"Watch your step!",
	},
	ANNOUNCE_ANTLION_TRIBUTE =
	{
        "I hate you.",
        "Just so we're clear, this doesn't make us friends.",
        "I could do be doing so much instead of dealing with you...",
	},
	ANNOUNCE_SACREDCHEST_YES = "I guess I'm worthy.",
	ANNOUNCE_SACREDCHEST_NO = "It didn't like that.",
    ANNOUNCE_DUSK = "Sundown! Time to relax.",
    
    --wx-78 specific
    ANNOUNCE_CHARGE = "only_used_by_wx78",
	ANNOUNCE_DISCHARGE = "only_used_by_wx78",

	ANNOUNCE_EAT =
	{
		GENERIC = "It's not primed ribs, but it'll do.",
		PAINFUL = "I probably shouldn't have eaten that...",
		SPOILED = "Ughhhhh...",
		STALE = "Well, that wasn't fresh.",
		INVALID = "I can't eat that.",
        YUCKY = "Yeah, I have my limits, buck-o.",
        
        --Warly specific ANNOUNCE_EAT strings
		COOKED = "only_used_by_warly",
		DRIED = "only_used_by_warly",
        PREPARED = "only_used_by_warly",
        RAW = "only_used_by_warly",
		SAME_OLD_1 = "only_used_by_warly",
		SAME_OLD_2 = "only_used_by_warly",
		SAME_OLD_3 = "only_used_by_warly",
		SAME_OLD_4 = "only_used_by_warly",
        SAME_OLD_5 = "only_used_by_warly",
		TASTY = "only_used_by_warly",
    },
    
    ANNOUNCE_ENCUMBERED =
    {
        "*Wheeze*",
        "Come on... Ken...",
        "Nice... and... easy...",
        "It's... heavier than it looks...",
        "*Cough* This probably... isn't good... for my asthma!",
        "This... constitutes... as cruel and unusual punishment...!",
        "I-I think I got it...",
    },
    ANNOUNCE_ATRIUM_DESTABILIZING = 
    {
		"Hey, up there! How about you get me out of here!",
		"Well, I'll be leaving!",
		"Get us OUTTA HERE!!",
	},
    ANNOUNCE_RUINS_RESET = "Really? I did ALL That work for everythng to come back? GOD DAMNIT!!",
    ANNOUNCE_SNARED = "Great, now you've done it. A little help here?!",
    ANNOUNCE_SNARED_IVY = "Great, now you've done it. A little help here?!",
    ANNOUNCE_REPELLED = "I'll get you eventually",
	ANNOUNCE_ENTER_DARK = "Hey. Pal. I can't friggin' see.",
	ANNOUNCE_ENTER_LIGHT = "Imbecile...",
	ANNOUNCE_FREEDOM = "Better luck next time!",
	ANNOUNCE_HIGHRESEARCH = "Not bad, Ken.",
	ANNOUNCE_HOUNDS = "It's always somethng I gotta deal with...",
	ANNOUNCE_WORMS = "It's always something...",
	ANNOUNCE_SHARX = "I can never catch a break...",
	ANNOUNCE_HUNGRY = "Hey, I'm hungry!",
	ANNOUNCE_HUNT_BEAST_NEARBY = "Fresh tracks.",
	ANNOUNCE_HUNT_LOST_TRAIL = "Nice going, you lost the trail.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "I don't know how you expect me to find anything with this rain.",
	ANNOUNCE_HUNT_START_FORK = "That's odd.",
    ANNOUNCE_HUNT_SUCCESSFUL_FORK = "Whatever.",
    ANNOUNCE_HUNT_WRONG_FORK = "I may have been a bit careless.",
    ANNOUNCE_HUNT_AVOID_FORK = "Whatever.",			
	ANNOUNCE_INV_FULL = "I've got enough on my hands.",
	ANNOUNCE_KNOCKEDOUT = "Oof!",
	ANNOUNCE_LOWRESEARCH = "Ugh. Reminds me of school.",
	ANNOUNCE_MOSQUITOS = "Great. Mosquitos!",
    ANNOUNCE_NOWARDROBEONFIRE = "Hey hey hey! I'm trying to change!",
    ANNOUNCE_NODANGERGIFT = "Yeah yeah, hurry up and kill that monster first. I wanna see you get disappointed.",
    ANNOUNCE_NOMOUNTEDGIFT = "Why do you care. It won't be Elegant.",
	ANNOUNCE_NODANGERSLEEP = "I've got bigger problems.",
	ANNOUNCE_NODAYSLEEP = "Naps are for the lazy.",
	ANNOUNCE_NODAYSLEEP_CAVE = "Naps are for the lazy.",
	ANNOUNCE_NOHUNGERSLEEP = "I can't sleep on an empty stomach.",
	ANNOUNCE_NOSLEEPONFIRE = "Uh huh.",
	ANNOUNCE_NOSLEEPHASPERMANENTLIGHT = "only_used_by_wx78",														
	ANNOUNCE_NODANGERSIESTA = "I've got bigger problems",
	ANNOUNCE_NONIGHTSIESTA = "I think I'll just go to bed instead.",
	ANNOUNCE_NONIGHTSIESTA_CAVE = "Yeah uh, how about no.",
	ANNOUNCE_NOHUNGERSIESTA = "I'm hungry.",
	ANNOUNCE_NODANGERAFK = "Bring it!",
	ANNOUNCE_NO_TRAP = "Too easy!",
	ANNOUNCE_PECKED = "You better knock that off!",
	ANNOUNCE_QUAKE = "Whoa-! Watch your head!",
	ANNOUNCE_RESEARCH = "Hm. Guess I learned a thing or two.",
	ANNOUNCE_SHELTER = "Phew, that's better!",
	ANNOUNCE_THORNS = "Ouch!!",
	ANNOUNCE_BURNT = "Jeez, that burns!",
	ANNOUNCE_TORCH_OUT = "Great, my light.",
	ANNOUNCE_THURIBLE_OUT = "It needs more fuel, I guess.",
	ANNOUNCE_FAN_OUT = "This thing's a bunch of junk...",
    ANNOUNCE_COMPASS_OUT = "It's busted. Fantastic.",
	ANNOUNCE_TRAP_WENT_OFF = "Nice...",
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.",
	ANNOUNCE_WORMHOLE = "I did not enjoy that.",
	ANNOUNCE_TOWNPORTALTELEPORT = "Sweet! I love Noel, but I'm not trying to rely on a baby!",
	ANNOUNCE_CANFIX = "\nWant me to fix it?",
	ANNOUNCE_ACCOMPLISHMENT = "Who's awesome? Me!",
	ANNOUNCE_ACCOMPLISHMENT_DONE = "Way to go, Ken!",	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Needs more fertilizer.",
	ANNOUNCE_TOOL_SLIP = "UGH. I can't work in these conditions!",
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Whoa!",
	ANNOUNCE_TOADESCAPING = "The toad is losing interest.",
	ANNOUNCE_TOADESCAPED = "The toad got away.",							
	ANNOUNCE_DAMP = "Rain isn't good for asthmatics, you know.",
	ANNOUNCE_WET = "I should find shelter from the rain.",
	ANNOUNCE_WETTER = "Last thing I need is a cold!",
	ANNOUNCE_SOAKED = "Ugh...!",
	ANNOUNCE_TREASURE = "A treasure map?",
	ANNOUNCE_MORETREASURE = "Nice.",
	ANNOUNCE_OTHER_WORLD_TREASURE = "This map is USELESS. Great...",
	ANNOUNCE_OTHER_WORLD_PLANT = "No way that'll be growing here.",
	ANNOUNCE_MESSAGEBOTTLE = 
	{
		"Nothing to make of it.",
	},
	ANNOUNCE_WASHED_ASHORE = "Great work back there, idiot.\nListen, the stakes are much lower for you, but I'm not trying to die out here.",

    ANNOUNCE_DESPAWN = "See ya, chumps.",
	ANNOUNCE_BECOMEGHOST = "Great, you finally killed me...",
	ANNOUNCE_GHOSTDRAIN = "I'm outta here.",
	ANNOUNCE_PETRIFED_TREES = "I'll give you a reason to scream.",
	ANNOUNCE_KLAUS_ENRAGE = "Good. I needed a better challenge.",
	ANNOUNCE_KLAUS_UNCHAINED = "I'll make you regret getting back up!",
	ANNOUNCE_KLAUS_CALLFORHELP = "Oh? Need a little help dealing with little ol' me? Tch.",

	ANNOUNCE_MOONALTAR_MINE =
	{
		GLASS_MED = "There's something there.",
		GLASS_LOW = "I've almost got it out.",
		GLASS_REVEAL = "There.",
		IDOL_MED = "There's something there.",
		IDOL_LOW = "I've almost got it out.",
		IDOL_REVEAL = "There.",
		SEED_MED = "There's something there.",
		SEED_LOW = "I've almost got it out.",
		SEED_REVEAL = "There.",
	},
	ANNOUNCE_VOLCANO_ERUPT = "That's not good. That's not good!",
	ANNOUNCE_MAPWRAP_WARN = "Hey, uh? Maybe don't?",
	ANNOUNCE_MAPWRAP_LOSECONTROL = "*Sigh*...",
	ANNOUNCE_MAPWRAP_RETURN = "I hate you.",
	ANNOUNCE_CRAB_ESCAPE = "You can't hide forever.",
	ANNOUNCE_TRAWL_FULL = "Filled to the brim.",
	ANNOUNCE_BOAT_DAMAGED = "This boat's seen better days.",
	ANNOUNCE_BOAT_SINKING = "Hey, we've sprung a leak!",
	ANNOUNCE_BOAT_SINKING_IMMINENT = "I'm NOT going down with this ship!",
	ANNOUNCE_WAVE_BOOST = "Woohoo!",

	ANNOUNCE_WHALE_HUNT_BEAST_NEARBY = "I've got you!",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL = "How does one lose a whale.",
	ANNOUNCE_WHALE_HUNT_LOST_TRAIL_SPRING = "Water's too rough to track anything, my dude.",	

	-- PORKLAND SPEECH
	ANNOUCE_UNDERLEAFCANOPY = "Nice and shady.",
	ANNOUCE_ALARMOVER = "Phew, I'm in the clear.",	
	ANNOUCE_BATS = "Oh boy.",
	ANNOUCE_OTHERWORLD_DEED = "Pretty useless without civilization.",
	ANNOUNCE_TOOLCORRODED = "What th-, I was using that!",
	ANNOUNCE_TURFTOOHARD = "This ground's going nowhere.",
	ANNOUNCE_GAS_DAMAGE = "Ack! That's... *HACK* not good... for an asthmatic...",
	ANNOUNCE_GNATS_DIED = "Annoying little pests...",	
	ANNOUNCE_SNEEZE = "AHHH CHOOOO!",	
	ANNOUNCE_HAYFEVER = "I don't feel good...",	
	ANNOUNCE_HAYFEVER_OFF = "Asthma is enough for me to deal with.",	
	ANNOUNCE_PICKPOOP = {"I hate everything.","Grooooss...","I'm gonna puke!","Ugh."},	
	ANNOUNCE_TOO_HUMID = {"This %s makes it... hard to breathe...","This %s is too hot."},	
	ANNOUNCE_DEHUMID = {"My lungs thank you."},	
	ANNOUNCE_PUGALISK_INVULNERABLE = {"I'll break you like a piñata, don't worry!", "Come on, open up!", "It's only a matter of time!"},
	ANNOUNCE_MYSTERY_FOUND = "I'm on to something...",
	ANNOUNCE_MYSTERY_NOREWARD = "Lame. Nothing's here.",
	ANNOUNCE_MYSTERY_DOOR_FOUND = "I found a door! Now to open it.",
	ANNOUNCE_MYSTERY_DOOR_NOT_FOUND = "Lame, there's nothing...",
	ANNOUNCE_TAXDAY = "Heh heh, I could get used to this whole taxes thing.",
	ANNOUNCE_HOUSE_DOOR = "I need some boring paperwork I'm not gonna read to do that.",
	ANNOUNCE_ROOM_STUCK = "A way out would be thoughtful.",
	ANNOUNCE_NOTHING_FOUND = "I'm not sensing anything.",
	ANNOUNCE_SUITUP = "Watch out, world, Ninten is ready!",
    --hallowed nights
    ANNOUNCE_SPOOKED = "EEEK!! You scared me!",
	ANNOUNCE_BRAVERY_POTION = "I'm more than capable now!",
	ANNOUNCE_MOONPOTION_FAILED = "Whoops.",

	--winter's feast
	ANNOUNCE_EATING_NOT_FEASTING = "What's a Christmas dinner by yourself??",
	ANNOUNCE_WINTERS_FEAST_BUFF = "The holiday's got me in a great mood!",
	ANNOUNCE_IS_FEASTING = "Happy Winter's Feast!",
	ANNOUNCE_WINTERS_FEAST_BUFF_OVER = "I miss celebrating Christmas.",

    --lavaarena event
    ANNOUNCE_REVIVING_CORPSE = "I got you, don't worry!",
    ANNOUNCE_REVIVED_OTHER_CORPSE = "There we are!",
    ANNOUNCE_REVIVED_FROM_CORPSE = "Thanks!",

    ANNOUNCE_FLARE_SEEN = "A flare? Tch, no one's helped me...",
	ANNOUNCE_MEGA_FLARE_SEEN = "That's TOO bright.",																
    ANNOUNCE_OCEAN_SILHOUETTE_INCOMING = "Well then.",

    --willow specific
	ANNOUNCE_LIGHTFIRE =
	{
		"only_used_by_willow",
    },

    --winona specific
    ANNOUNCE_HUNGRY_SLOWBUILD = 
    {
	    "only_used_by_winona",
    },
    ANNOUNCE_HUNGRY_FASTBUILD = 
    {
	    "only_used_by_winona",
    },

    --wormwood specific
    ANNOUNCE_KILLEDPLANT = 
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_GROWPLANT = 
    {
        "only_used_by_wormwood",
    },
    ANNOUNCE_BLOOMING = 
    {
        "only_used_by_wormwood",
    },

    --wortox specfic
    ANNOUNCE_SOUL_EMPTY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_FEW =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_MANY =
    {
        "only_used_by_wortox",
    },
    ANNOUNCE_SOUL_OVERLOAD =
    {
        "only_used_by_wortox",
    },

    --walter specfic
	ANNOUNCE_SLINGHSOT_OUT_OF_AMMO =
	{
		"only_used_by_walter",
		"only_used_by_walter",
	},
	ANNOUNCE_STORYTELLING_ABORT_FIREWENTOUT =
	{
        "only_used_by_walter",
	},
	ANNOUNCE_STORYTELLING_ABORT_NOT_NIGHT =
	{
        "only_used_by_walter",
	},

	-- wx specific
    ANNOUNCE_WX_SCANNER_NEW_FOUND = "only_used_by_wx78",
    ANNOUNCE_WX_SCANNER_FOUND_NO_DATA = "only_used_by_wx78",			  
	
    --quagmire event
    QUAGMIRE_ANNOUNCE_NOTRECIPE = "I'm just throwing in ingredients randomly and hope it works, huh?",
    QUAGMIRE_ANNOUNCE_MEALBURNT = "Darnit, I burned my meal!",
    QUAGMIRE_ANNOUNCE_LOSE = "Oh boy.",
    QUAGMIRE_ANNOUNCE_WIN = "Time to go!",

    ANNOUNCE_ROYALTY =
    {
        "Shut up.",
        "Majesty, schmajesty.",
        "Whatever dude.",
    },
	ANNOUNCE_ROYALTY_JOKER =
    {
        "Would you look at the clown. Real shocker coming from you...",
        "Ugh.",
        "Not funny.",
    },									   
    ANNOUNCE_ATTACH_BUFF_ELECTRICATTACK    = "Electrifying!",
    ANNOUNCE_ATTACH_BUFF_ATTACK            = "I'll beat whoever to next week!",
    ANNOUNCE_ATTACH_BUFF_PLAYERABSORPTION  = "Yeah yeah, safety first...",
    ANNOUNCE_ATTACH_BUFF_WORKEFFECTIVENESS = "It's like caffeine!",
    ANNOUNCE_ATTACH_BUFF_MOISTUREIMMUNITY  = "I all dry, awesome!",
    ANNOUNCE_ATTACH_BUFF_SLEEPRESISTANCE   = "Huh. I no longer have the urge to sleep.",
    
    ANNOUNCE_DETACH_BUFF_ELECTRICATTACK    = "The electricity's no more now.",
    ANNOUNCE_DETACH_BUFF_ATTACK            = "Okay that's enough.",
    ANNOUNCE_DETACH_BUFF_PLAYERABSORPTION  = "Tch.",
    ANNOUNCE_DETACH_BUFF_WORKEFFECTIVENESS = "It's really like caffeine...",
    ANNOUNCE_DETACH_BUFF_MOISTUREIMMUNITY  = "Looks like my dry spell is over.",
    ANNOUNCE_DETACH_BUFF_SLEEPRESISTANCE   = "Meh. I'm gonna go take a nap.",
    
	ANNOUNCE_OCEANFISHING_LINESNAP = "My line! Damnit!",
	ANNOUNCE_OCEANFISHING_LINETOOLOOSE = "Eh, eh! Wake up. Reel in the line.",
	ANNOUNCE_OCEANFISHING_GOTAWAY = "Nooooo, my lunch!",
	ANNOUNCE_OCEANFISHING_BADCAST = "Terrible cast. Awful. Shameful! Pitiful. ...Unacceptable.",
	ANNOUNCE_OCEANFISHING_IDLE_QUOTE = 
	{
		"Ughhhhhhhh...",
		"Hey uh. My man. Could we... could we do something interesting?",
		"I'm so bored....",
		"I hate fishing.",
	},

	ANNOUNCE_WEIGHT = "Weight: {weight}",
	ANNOUNCE_WEIGHT_HEAVY  = "Weight: {weight}\nI'm a fishing champ!",


	ANNOUNCE_WINCH_CLAW_MISS = "Come on Ken, it's just like those claw games, you're great at this!",
	ANNOUNCE_WINCH_CLAW_NO_ITEM = "Nothing? Ugh.",

    --Wurt announce strings
    ANNOUNCE_KINGCREATED = "only_used_by_wurt",
    ANNOUNCE_KINGDESTROYED = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_THRONE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_HOUSE = "only_used_by_wurt",
    ANNOUNCE_CANTBUILDHERE_WATCHTOWER = "only_used_by_wurt",
    ANNOUNCE_READ_BOOK = 
    {
        BOOK_SLEEP = "only_used_by_wurt",
        BOOK_BIRDS = "only_used_by_wurt",
        BOOK_TENTACLES =  "only_used_by_wurt",
        BOOK_BRIMSTONE = "only_used_by_wurt",
        BOOK_GARDENING = "only_used_by_wurt",
		BOOK_SILVICULTURE = "only_used_by_wurt",
		BOOK_HORTICULTURE = "only_used_by_wurt",
    },
    ANNOUNCE_WEAK_RAT = "This Carrat is in no shape to be training.",

    ANNOUNCE_CARRAT_START_RACE = "Let the race begin!",

    ANNOUNCE_CARRAT_ERROR_WRONG_WAY = {
        "No, no! You're going the wrong way!",
        "Turn around, white eyes!",
    },
    ANNOUNCE_CARRAT_ERROR_FELL_ASLEEP = "Don't you dare! Wake up, we have a race to win!",    
    ANNOUNCE_CARRAT_ERROR_WALKING = "Don't walk, RUN!",    
    ANNOUNCE_CARRAT_ERROR_STUNNED = "Get up! GO GO!",

    ANNOUNCE_GHOST_QUEST = "only_used_by_wendy",
    ANNOUNCE_GHOST_HINT = "only_used_by_wendy",
    ANNOUNCE_GHOST_TOY_NEAR = {
        "only_used_by_wendy",
    },
	ANNOUNCE_SISTURN_FULL = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_DEATH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_RETRIEVE = "only_used_by_wendy",
	ANNOUNCE_ABIGAIL_LOW_HEALTH = "only_used_by_wendy",
    ANNOUNCE_ABIGAIL_SUMMON = 
	{
		LEVEL1 = "only_used_by_wendy",
		LEVEL2 = "only_used_by_wendy",
		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_GHOSTLYBOND_LEVELUP = 
	{
		LEVEL2 = "only_used_by_wendy",
		LEVEL3 = "only_used_by_wendy",
	},

    ANNOUNCE_NOINSPIRATION = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_TAUNT_BUFF = "only_used_by_wathgrithr",
    ANNOUNCE_BATTLESONG_INSTANT_PANIC_BUFF = "only_used_by_wathgrithr",

	ANNOUNCE_WANDA_YOUNGTONORMAL = "only_used_by_wanda",
    ANNOUNCE_WANDA_NORMALTOOLD = "only_used_by_wanda",
    ANNOUNCE_WANDA_OLDTONORMAL = "only_used_by_wanda",
    ANNOUNCE_WANDA_NORMALTOYOUNG = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_PORTAL = "It's like, 4D Slip, but cooler.",
	
	ANNOUNCE_POCKETWATCH_MARK = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_RECALL = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_OPEN_PORTAL = "only_used_by_wanda",
	ANNOUNCE_POCKETWATCH_OPEN_PORTAL_DIFFERENTSHARD = "only_used_by_wanda",
	
    ANNOUNCE_ARCHIVE_NEW_KNOWLEDGE = "Wow, so interesting!",
    ANNOUNCE_ARCHIVE_OLD_KNOWLEDGE = "I already knew that.",
    ANNOUNCE_ARCHIVE_NO_POWER = "Maybe it needs more juice.",


    ANNOUNCE_PLANT_RESEARCHED =
    {
        "Ah, I understand this plant better!",
    },

    ANNOUNCE_PLANT_RANDOMSEED = "I wonder what it will grow into.",

    ANNOUNCE_FERTILIZER_RESEARCHED = "Interesting, so that's how that works.",

	ANNOUNCE_FIRENETTLE_TOXIN = 
	{
		"Hot hot hot hot!",
		"Make it stop, make it stop!!",
	},
	ANNOUNCE_FIRENETTLE_TOXIN_DONE = "If I find a way outta here... You are so DEAD!",

	ANNOUNCE_TALK_TO_PLANTS = 
	{
        "You better grow so I can eat you.",
        "Sup, future meal?",
		"What a waste of time.",
        "This is embarassing.",
        "I've got better things to do!",					   
	},

	ANNOUNCE_KITCOON_HIDEANDSEEK_START = "3, 2, 1... Ready or not, here I come!",
	ANNOUNCE_KITCOON_HIDEANDSEEK_JOIN = "Aww, they're playing hide and seek.",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND =
	{
		"Found you!",
		"There you are.",
		"I knew you'd be hiding there!",
		"I see you!",
	},
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_ONE_MORE = "Now where's that last one hiding?",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE = "I found the last one!",
	ANNOUNCE_KITCOON_HIDANDSEEK_FOUND_LAST_ONE_TEAM = "{name} found the last one!",
	ANNOUNCE_KITCOON_HIDANDSEEK_TIME_ALMOST_UP = "These little guys must be getting impatient...",
	ANNOUNCE_KITCOON_HIDANDSEEK_LOSEGAME = "I guess they don't want to play any more...",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR = "They probably wouldn't hide this far away, would they?",
	ANNOUNCE_KITCOON_HIDANDSEEK_TOOFAR_RETURN = "The kitcoons should be nearby.",
	ANNOUNCE_KITCOON_FOUND_IN_THE_WILD = "I knew I saw something hiding over here!",

	ANNOUNCE_TICOON_START_TRACKING	= "He's caught the scent!",
	ANNOUNCE_TICOON_NOTHING_TO_TRACK = "Looks like he couldn't find anything.",
	ANNOUNCE_TICOON_WAITING_FOR_LEADER = "I should follow him!",
	ANNOUNCE_TICOON_GET_LEADER_ATTENTION = "He really wants me to follow him.",
	ANNOUNCE_TICOON_NEAR_KITCOON = "He must have found something!",
	ANNOUNCE_TICOON_LOST_KITCOON = "Looks like someone else found what he was looking for.",
	ANNOUNCE_TICOON_ABANDONED = "I'll find those little guys on my own.",
	ANNOUNCE_TICOON_DEAD = "Poor guy... Now where was he leading me?",																		  
    -- YOTB
    ANNOUNCE_CALL_BEEF = "C'mere big guy!",
    ANNOUNCE_CANTBUILDHERE_YOTB_POST = "The judge won't be able to see my beefalo from here.",
    ANNOUNCE_YOTB_LEARN_NEW_PATTERN =  "My mind has been filled with beefalo styling inspiration!",

	-- AE4AE
    ANNOUNCE_EYEOFTERROR_ARRIVE = "Yeah yeah yeah, kill the big monster, typical Ken Tuesday night.",
    ANNOUNCE_EYEOFTERROR_FLYBACK = "This again?",
    ANNOUNCE_EYEOFTERROR_FLYAWAY = "Hey, it was just getting fun!",																		 
	 -- PIRATES
    ANNOUNCE_CANT_ESCAPE_CURSE = "It's never that easy. Tch.",
    ANNOUNCE_MONKEY_CURSE_1 = "Great...",
    ANNOUNCE_MONKEY_CURSE_CHANGE = "Just great...",
    ANNOUNCE_MONKEY_CURSE_CHANGEBACK = "I hated that.",

    ANNOUNCE_PIRATES_ARRIVE = "I can just never have a moment of peace and QUIET.",		  
	ANNOUNCE_BOOK_MOON_DAYTIME = "only_used_by_waxwell_and_wicker",

	ANNOUNCE_OFF_SCRIPT = "Look, I really couldn't care less what my line is, alright?",

    ANNOUNCE_COZY_SLEEP = "Finally, some good shut eye for once!",

	--
	ANNOUNCE_TOOL_TOOWEAK = "Not my fault this tool is a piece of junk.",

    ANNOUNCE_LUNAR_RIFT_MAX = "As if things weren't bad enough.",
    ANNOUNCE_SHADOW_RIFT_MAX = "Things never get easier, do they?",

    ANNOUNCE_SCRAPBOOK_FULL = "Not bad.",

    ANNOUNCE_CHAIR_ON_FIRE = "Oh.",

    ANNOUNCE_HEALINGSALVE_ACIDBUFF_DONE = "Sheesh, that repellant stuff smells... Glad that's over with.",

    ANNOUNCE_COACH = 
    {
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
    },
    ANNOUNCE_WOLFGANG_WIMPY_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_MIGHTY_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_BEGIN_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_END_COACHING = "only_used_by_wolfgang",
    ANNOUNCE_WOLFGANG_NOTEAM = 
    {
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
        "only_used_by_wolfgang",
    },

    ANNOUNCE_YOTD_NOBOATS = "I'd better get my boat closer to the Start Tower.",
    ANNOUNCE_YOTD_NOCHECKPOINTS = "I should set up some checkpoints first.",
    ANNOUNCE_YOTD_NOTENOUGHBOATS = "There isn't enough room for anyone else to join in.",

    ANNOUNCE_OTTERBOAT_OUTOFSHALLOWS = "This doesn't feel safe at all!",
    ANNOUNCE_OTTERBOAT_DENBROKEN = "Great, do you have any idea what salt water is gonna do my hair?!",

    ANNOUNCE_GATHER_MERM = "Yeah yeah, just keep 'em away from the normal people.",

    -- rifts 4
    ANNOUNCE_EXIT_GELBLOB = "ACK! Never. Again.",
	ANNOUNCE_SHADOWTHRALL_STEALTH = "Oh, we're doing this, huh? Just you wait!",
    ANNOUNCE_RABBITKING_AGGRESSIVE = "Oh, uh, I do something wrong?",
    ANNOUNCE_RABBITKING_PASSIVE = "I guess that's a pleasant surprise.",
    ANNOUNCE_RABBITKING_LUCKY = "It must be magical.",
    ANNOUNCE_RABBITKING_LUCKYCAUGHT = "No one outruns me, trust me pal!",
    ANNOUNCE_RABBITKINGHORN_BADSPAWNPOINT = "It won't work here.",

	-- Hallowed Nights 2024
	ANNOUNCE_NOPUMPKINCARVINGONFIRE = "Flaming Pumkpins. Now that's a band name.",

	-- Winter's Feast 2024
	ANNOUNCE_SNOWBALL_TOO_BIG = "Go big or go home!",
	ANNOUNCE_SNOWBALL_NO_SNOW = "Snowball, with what? Don't get stupid on me.",

    --rifts 5
    ANNOUNCE_WENDY_BABYSITTER_SET = "only_used_by_wendy", 
    ANNOUNCE_WENDY_BABYSITTER_STOP = "only_used_by_wendy",

	ANNOUNCE_WORTOX_REVIVER_FAILTELEPORT = "Typical. Can't rely on anyone.",

    ANNOUNCE_NO_ABIGAIL_FLOWER = "only_used_by_wendy",

    ANNOUNCE_ELIXIR_BOOSTED = "Check out my muscles, mhm.",
    ANNOUNCE_ELIXIR_GHOSTVISION = "Whoa, this would have been real good in Spookane!",
    ANNOUNCE_ELIXIR_PLAYER_SPEED = "I get it, Speed Up's not enough.",															   
    ANNOUNCE_ELIXIR_TOO_SUPER = "Now this is overkill!",																																																 
	BATTLECRY =
	{
		GENERIC = {
			"This'll be fun.",
			"Time to put all karate practice to use!",
			"Hoo boy, you're in for it now!",
		},
		PIG = {
			"Oink oink, piggy!",
			"I've had enough you, pig!",
			"Now you're just making me mad!",
		},	   									
		PREY = "Come here!",
		SPIDER = {
			"I'll squash you!",
			"Have fun cleaning my boots with your face!",
			"Stupid spider!",
		},							   
		SPIDER_WARRIOR = {
			"You're no match for me!",
			"You're stronger than a normal pest, I'll give you that.",
			"Okay, bring it on!",
		},			  										 
		DEER = "Take that!",
		TOO_MANY_SPIDERS = {
			"Okay, I'll be the first to admit it: this may be too much.",
			"Oh, that's a lot of spiders...",
			"One too many, maybe. But I won't go down so easily.",
		},
		TARGET_PARALYZED = {
			"About time you pulled your weight, Ness.",
			"I almost feel bad.",
			"What's wrong, lost the will to fight?",
		},
		SWING_BAT_GENERIC = "All muscle in this swing!",
		SWING_BAT_SMALL_TARGET = {
			"Keep still, twerp.",
			"See ya, loser!",
			"Aw, so close, and yet, so far!"
		},
		SWING_BAT_BIG_TARGET = {
			"Back off.",
			"That'll teach ya!",
			"I'm knocked out bigger targets!",
		},
		DAPPER = {
			"Dang, I look good when I'm winning!",
			"I'm a bit of an action hero, looks and all!",
			"My style is too much for you to handle."
		},
	},		   
	COMBAT_QUIT =
	{
		GENERIC = "Too boring.",
		PIG = "*Huff* *Huff* You're lucky I got asthma...",
		PREY = "Hey, come back!",
		SPIDER = "Tactical retreat!!",
		SPIDER_WARRIOR = "Tactical retreat!!",
	},

	DESCRIBE =
	{
		WILDBOREGUARD = "Grumpy.",
		MULTIPLAYER_PORTAL = "What're you looking at?",
        MULTIPLAYER_PORTAL_MOONROCK = "Yeah, you want me to describe that? I'm not your pet: take a hike.",
        MOONROCKIDOL = "Is this some sort of religious thing?",
        CONSTRUCTION_PLANS = "It's something.",

        ANTLION =
        {
            GENERIC = "I hate you.",
            VERYHAPPY = "I'll get you one of these days...",
            UNHAPPY = "Annoying.",
        },
        ANTLIONTRINKET = "Cool!",
        SANDSPIKE = "Nice try.",
        SANDBLOCK = "Playing nice, aren't we?",
        GLASSSPIKE = "Whoa.",
        GLASSBLOCK = "Whoa.",
        ABIGAIL_FLOWER =
        {
            GENERIC ="What sort of flower is this?",
			LEVEL1 = "Hm. Nothing special about it.",
			LEVEL2 = "I can sense your presence, you know.",
			LEVEL3 = "I guess this is where I say something tacky. If I were Ninten.",

			-- deprecated
            LONG = "It hurts my soul to look at that thing.",
            MEDIUM = "It's giving me the creeps.",
            SOON = "Something is up with that flower!",
            HAUNTED_POCKET = "I don't think I should hang on to this.",
            HAUNTED_GROUND = "I'd die to find out what it does.",
        },

        BALLOONS_EMPTY = "Balloons?",
        BALLOON = "What are we, celebrating a birthday? Get this crap outta here!",
		BALLOONPARTY = "BE USEFUL, FOR GOD'S SAKE!",
		BALLOONSPEED =
        {
            DEFLATED = "Useless.",
            GENERIC = "Does everything you do have to be so tacky?",
        },
		BALLOONVEST = "Yeah, I'd rather drown.",
		BALLOONHAT = "It'd be fun to pop.",

        BERNIE_INACTIVE =
        {
            BROKEN = "What a piece of trash.",
            GENERIC = "Useless.",
        },

        BERNIE_ACTIVE = "What the heck?",
        BERNIE_BIG = "What the heck?",

        BOOK_BIRDS = "Birds, huh. Okay...",
        BOOK_TENTACLES = "Yawn.",
        BOOK_GARDENING = "Yawn.",
		BOOK_SILVICULTURE = "Listen lady, keep your boring books away from my things.",
		BOOK_HORTICULTURE = "Listen lady, keep your boring books away from my things.",
        BOOK_SLEEP = "I'm sleepy already! Oh, you didn't start reading?",
        BOOK_BRIMSTONE = "The end is nigh, all right, I'm reading a book.",

        PLAYER =
        {
            GENERIC = "Sup, chump.",
            ATTACKER = "Someone needs anger management.",
            MURDERER = "Say what you want about me, at least I have a moral compass.",
            REVIVER = "Yeesh, %s, couldn't stand to see me dead? Well, thanks.",
            GHOST = "Knew you were a chump.",
            FIRESTARTER = "Whoa, man, careful with the fires.",
        },
		GRAMNINTEN = 
		{
			GENERIC = "Well, well, well, if it isn't my cute little cousin, Ninten.",
            ATTACKER = "Maybe leave the hero stuff to me, little man.",
            MURDERER = "I'd hate to do it, but if someone's gonna beat the snot out of you, might as well be family!",
            REVIVER = "Yeah, yeah, thanks.",
            GHOST = "You would be the type to haunt me.",
            FIRESTARTER = "You're way too old for me to be your babysitter.",
		},
		LUCAS = 
		{
			GENERIC = "It's that loser, Lucas.",
            ATTACKER = "Oh, cry me a river.",
            MURDERER = "Someone oughta put you in your place.",
            REVIVER = "Wow, Lucas. You're pretty useful, actually.",
            GHOST = "I've never seen a happy ghost before.",
            FIRESTARTER = "Whoa, man, careful with the fires.",
		},
		CLAUS =
		{
			GENERIC = "Sup.",
            ATTACKER = "You're obnoxious, but at least it beats being a crybaby.",
            MURDERER = "These people are gonna get me killed...",
            REVIVER = "Couldn't stand to me dead? I get it. Thanks, Claus.",
            GHOST = "He looks almost at peace.",
            FIRESTARTER = "Whoa, man, careful with the fires.",
		},
		NESS =
		{
			GENERIC = "I've met many chumps out here, but you. Take the cake.",
            ATTACKER = "Chump.",
            MURDERER = "He's strong, I'll admit that.",
            REVIVER = "...Thanks.",
            GHOST = "Ugh.",
            FIRESTARTER = "Whoa, man, careful with the fires.",
		},
		GRAMNESS = 
		{
			GENERIC = "I've met many chumps out here, but you. Take the cake.",
            ATTACKER = "Chump.",
            MURDERER = "He's strong, I'll admit that.",
            REVIVER = "...Thanks",
            GHOST = "Ugh.",
            FIRESTARTER = "Whoa, man, careful with the fires.",
		},
        WILSON =
        {
            GENERIC = "Hey, chump.",
            ATTACKER = "Never trust an adult...",
            MURDERER = "Never trust an adult...",
            REVIVER = "Tch.",
            GHOST = "%s's a ghost now. Sweeeet.",
            FIRESTARTER = "Watch the fires, %s.",
        },
        WOLFGANG =
        {
            GENERIC = "Hey, chump.",
            ATTACKER = "Never trust an adult...",
            MURDERER = "Never trust an adult...",
            REVIVER = "Tch.",
            GHOST = "Oh, %s's spirit. Cool.",
            FIRESTARTER = "Careful with those fires, %s!",
        },
        WAXWELL =
        {
            GENERIC = "YOU.",
            ATTACKER = "I knew I shouldn't have trusted you.",
            MURDERER = "I'll get you for all of this!",
            REVIVER = "Tch.",
            GHOST = "Serves you right.",
            FIRESTARTER = "Let's burn you next.",
        },
        WX78 =
        {
            GENERIC = "Sup.",
            ATTACKER = "Did Distorto program you?",
            MURDERER = "I think some wires might be fried on that big head of yours...",
            REVIVER = "Hey. Thanks.",
            GHOST = "%s's a ghost! Didn't even think that was possible.",
            FIRESTARTER = "Sheesh, you start this fire, %s?",
        },
        WILLOW =
        {
            GENERIC = "Sup, chump.",
            ATTACKER = "Never trust an adult...",
            MURDERER = "Never trust an adult...",
            REVIVER = "Tch. Thanks.",
            GHOST = "Go be dead somewhere else.",
            FIRESTARTER = "What a menace.",
        },
        WENDY =
        {
            GENERIC = "Sup.",
            ATTACKER = "D'awww, yo'll give yoselft winkels wiv all dat anger!",
            MURDERER = "...You're not the first girl to try to smack me.",
            REVIVER = "Yeah, yeah thanks.",
            GHOST = "I'm busy, you have someone to keep you company anyways.",
            FIRESTARTER = "I really am just a babysitter out here...",
        },
        WOODIE =
        {
            GENERIC = "Does this place just attract weirdos?",
            ATTACKER = "You know, maybe I'm a weirdo too. This is your fault!",
            MURDERER = "Can I beat him up now?",
            REVIVER = "Tch.",
            GHOST = "Go be dead somewhere else.",
            BEAVER = "This place SUCKS!",
            BEAVERGHOST = "Go be dead somewhere else.",
            MOOSE = "This place SUCKS!",
            MOOSEGHOST = "Go be dead somewhere else.",
            GOOSE = "This place SUCKS!",
            GOOSEGHOST = "Go be dead somewhere else.",
            FIRESTARTER = "Careful with the fires, %s.",
        },
        WICKERBOTTOM =
        {
            GENERIC = "How'd an old bag like you end up out here?",
            ATTACKER = "Look ma'am, I got better things to do than take care of an old lady. So watch it!",
            MURDERER = "Ouch...! Knock it off, %s!",
            REVIVER = "Yeah, yeah, thanks...",
            GHOST = "Great, now I have to fix your mess, %s!",
            FIRESTARTER = "Hey hey hey! What's with the fires, %s?",
        },
        WES =
        {
            GENERIC = "Ugh. %s.",
            ATTACKER = "Creep...",
            MURDERER = "Enough's enough, I'll knock the words into you, punk!",
            REVIVER = "Tch. Thanks.",
            GHOST = "Leave me alone, %s.",
            FIRESTARTER = "I despise you in particular.",
        },
        WEBBER =
        {
            GENERIC = "What's up, spider boy?",
            ATTACKER = "%s! How about you show my little cousin your spiders? He loves spiders!",
            MURDERER = "Hmmmm. %s, let's get your spider friends together!",
            REVIVER = "Thanks.",
            GHOST = "*Sigh,*",
            FIRESTARTER = "Behave.",
        },
        WATHGRITHR =
        {
            GENERIC = "Sup, chump.",
            ATTACKER = "A girlie that can hold her own. That's a change of pace.",
            MURDERER = "...You seem to enjoy fighting more than me!",
            REVIVER = "Thanks %s.",
            GHOST = "Oh, %s is a spirit. Nice.",
            FIRESTARTER = "%s is fond of fire.",
        },
        WINONA =
        {
            GENERIC = "Sup, chump.",
            ATTACKER = "Never trust an adult...",
            MURDERER = "Never trust an adult...",
            REVIVER = "Tch.",
            GHOST = "%s's ghost. Someone ought to do something about that.",
            FIRESTARTER = "Guess we're starting fires.",
        },
        WORTOX =
        {
            GENERIC = "Hey, demon-thing-%s.",
            ATTACKER = "I knew %s couldn't be trusted!",
            MURDERER = "You're just like one of Giygas' goons. I'll have no problem beating you up.",
            REVIVER = "Just couldn't get enough of me? I know, I'm just too cool.",
            GHOST = "%s is dead, huh?",
            FIRESTARTER = "%s sure likes fire.",
        },
        WORMWOOD =
        {
            GENERIC = "Sup.",
            ATTACKER = "Uh? %s?",
            MURDERER = "I knew I shouldn't have trusted the walking fern!",
            REVIVER = "Yeah yeah, thanks.",
            GHOST = "Sup.",
            FIRESTARTER = "I thought you hated fire, %s.",
        },
        WARLY =
        {
            GENERIC = "Yo. I'm hungry!",
            ATTACKER = "Never trust an adult...",
            MURDERER = "Never trust an adult...",
            REVIVER = "Tch. Thanks...",
            GHOST = "%s's spirit. Pay him no mind.",
            FIRESTARTER = "I don't think you need THAT much fire to cook, man.",
        },

        WURT =
        {
            GENERIC = "Sup.",
            ATTACKER = "Hey hey! Let's not get too carried away with that sorta stuff, %s!",
            MURDERER = "I think I'm done babysitting.",
            REVIVER = "Thanks.",
            GHOST = "Not my fault.",
            FIRESTARTER = "Behave.",
        },

        WALTER =
        {
            GENERIC = "Listen up dweeb, that little prancing you do around the woods is different from here: lemmie show how a real man survives.",
            ATTACKER = "%s. Got any stories that don't bore me?",
            MURDERER = "%s is all talk. I'll land one hit and they're be babbling for their mama!",
            REVIVER = "Don't even say it...",
            GHOST = "Great, %s's ghost.",
            FIRESTARTER = "Pretty sure forest fires is totally against everything they teach you.",																					 
        },

		WANDA =
        {
            GENERIC = "Sup, chump.",
            ATTACKER = "Time travel makes you crazy.",
            MURDERER = "Time travel makes you crazy.",
            REVIVER = "Tch.",
            GHOST = "Even with the power of time travel you managed to die. What a loser.",
            FIRESTARTER = "Why is everything on fire %s?",
        },

		WONKEY =
        {
            GENERIC = "Don't care, out of my way.",
            ATTACKER = "Maybe it's gone rampant.",
            MURDERER = "I'll knock the sense into it!",
            REVIVER = "Ugh. I can't believe this...",
            GHOST = "Oh, you died. Sucks.", 
            FIRESTARTER = "*Sigh*",  
        },
		
        MIGRATION_PORTAL =
        {
            GENERIC = "Teleporation for chumps.",
            OPEN = "Wait, without Noel, I'm a chump too.",
            FULL = "There's no room.",
        },
        GLOMMER = 
        {
            GENERIC = "Hey, watch the clothes!",
            SLEEPING = "It's cute for an abomination.",
        },
        GLOMMERFLOWER =
        {
            GENERIC = "Shiny.",
            DEAD = "Huh, guess it's dead.",
        },
        GLOMMERWINGS = "Sweet.",
        GLOMMERFUEL = "Dude.",
        BELL = "Oh, a  bell.",
        STATUEGLOMMER =
        {
            GENERIC = "What a dumb stupid statue.",
            EMPTY = "Broken and dumb and stupid.",
        },

        LAVA_POND_ROCK = "Careful.",
		LAVA_POND_ROCK2 = "Careful.",
		LAVA_POND_ROCK3 = "Careful.",
		LAVA_POND_ROCK4 = "Careful.",
		LAVA_POND_ROCK5 = "Careful.",
		LAVA_POND_ROCK6 = "Careful.",
		LAVA_POND_ROCK7 = "Careful.",

		WEBBERSKULL = "It's like that one play.",
		WORMLIGHT = "What a strange berry.",
		WORMLIGHT_LESSER = "It feels funny.",
		WORM =
		{
		    PLANT = "Some sort of strange... cave berry.",
		    DIRT = "Hm?",
		    WORM = "Oh, bring it on!",
		},
        WORMLIGHT_PLANT = "Some sort of strange... cave berry",
		MOLE =
		{
			HELD = "Stop your squirming, I'm not that cruel.",
			UNDERGROUND = "Huh?",
			ABOVEGROUND = "It's a mole!",
		},
		MOLEHILL = "Moles live there.",
		MOLEHAT = "God that is so TACKY.",

		EEL = "Eel was too fancy for us.",
		EEL_COOKED = "It can't hurt to try.",
		UNAGI = "Eel was too fancy for us.",
		EYETURRET = "Cool stuff.",
		EYETURRET_ITEM = "A whole lot of useless in this state.",
		MINOTAURHORN = "Phew. I was worried this might be a challenge.",
		MINOTAURCHEST = "Come on, open it already.",
		THULECITE_PIECES = "It's like, alien rocks, or something.",
		POND_ALGAE = "Algae.",
		GREENSTAFF = "This will come in handy.",
		GIFT = "Oh boy, Christmas all ready?",
        GIFTWRAP = "How nice!",
		POTTEDFERN = "Some tacky plant.",
        SUCCULENT_POTTED = "Some tacky plant.",
		SUCCULENT_PLANT = "Yucca Desert is full of 'em.",
		SUCCULENT_PICKED = "Yucca.",
		SENTRYWARD = "Keep looking at me and see where it gets you.",
        TOWNPORTAL =
        {
			GENERIC = "Teleportation for chumps.",
			ACTIVE = "Wait, without Noel, I'm a chump too.",
		},
        TOWNPORTALTALISMAN = 
        {
			GENERIC = "Yeah this is so LAME.",
			ACTIVE = "Well. I guess it's slightly better than carrying a baby everywhere you go.",
		},
        WETPAPER = "It's mush.",
        WETPOUCH = "There's something in it.",
        MOONROCK_PIECES = "It's from another world.",
        MOONBASE =
        {
            GENERIC = "I'll have you know, it needs something.",
            BROKEN = "How about you have me fix that? That's a decent idea. Imbecile...",
            STAFFED = "We wait now.",
            WRONGSTAFF = "No no no, idiot, wrong staff!",
            MOONSTAFF = "The stone lit it up?",
        },
        MOONDIAL = 
        {
			GENERIC = "It measures the moon.",
			NIGHT_NEW = "It's a new moon.",
			NIGHT_WAX = "The moon is waxing.",
			NIGHT_FULL = "It's a full moon.",
			NIGHT_WANE = "The moon is waning.",
			CAVE = "Can't see the moon down here.",
			WEREBEAVER = "only_used_by_woodie", --woodie specific
			GLASSED = "Yeah yeah, I see you too.",												   
        },
		THULECITE = "Strange stones.",
		ARMORRUINS = "Not into armor, to be frank with you.",
		ARMORSKELETON = "Okay, that's just weird!",
		SKELETONHAT = "I am NOT putting that on my head.",
		RUINS_BAT = "It's very Aztec in design.",
		RUINSHAT = "Seems pretty tacky to me.",
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "I'm not reading anything.",
            WARN = "My psychic senses are tingling...",
            WAXING = "This power! It's off the charts!",
            STEADY = "Oh God oh God oh God, it's too much to take!",
            WANING = "The power's weakening!",
            DAWN = "Phew... I'm not sensing much left.",
            NOMAGIC = "There's nothing here.",
		},
		BISHOP_NIGHTMARE = "Looks like trouble. My favorite!",
		ROOK_NIGHTMARE = "Try not get me trampled by that thing.",
		KNIGHT_NIGHTMARE = "Doesn't matter what it is, I'll tear it to shreds!",
		MINOTAUR = "Oh. Guess I have to beat the snot outta you.",
		SPIDER_DROPPER = "What the Hell?! You were waiting to pounce on me!",
		NIGHTMARELIGHT = "That light is bad news.",
		NIGHTSTICK = "We're getting medieval, now.",
		GREENGEM = "It's some sort of emerald, I guess.",
		MULTITOOL_AXE_PICKAXE = "It's handy.",
		ORANGESTAFF = "I could just 4D Slip, you know.",
		YELLOWAMULET = "Wonder where the heat is coming from.",
		GREENAMULET = "A lazy American boy's best friend.",
		SLURPERPELT = "What a pest.",	

		SLURPER = "It's some sort of parasite.",
		SLURPER_PELT = "What a pest.",
		ARMORSLURPER = "It feels funny to wear.",
		ORANGEAMULET = "It's handy.",
		YELLOWSTAFF = "The power of the sun on a stick.",
		
		
		YELLOWGEM = "Some yellow gem.",
		ORANGEGEM = "It's a gem, but orange.",
        OPALSTAFF = "I guess I'm a wizard now. How nerdy.",
        OPALPRECIOUSGEM = "This is a pretty sweet looking gem!",
        TELEBASE = 
		{
			VALID = "Looks good to go.",
			GEMS = "It needs more purple gems.",
		},
		GEMSOCKET = 
		{
			VALID = "Looks goods to go.",
			GEMS = "It needs a gem.",
		},
		STAFFLIGHT = "That almost seems too warm.",
        STAFFCOLDLIGHT = "I'm freezing just looking at it!",
		ANCIENT_ALTAR = "Looks like some sort of old ruin.",
		ANCIENT_ALTAR_BROKEN = "What a bunch of junk.",
		ANCIENT_STATUE = "Buncha weirdos.",
		
		LICHEN = "What's this stuff?",
		CUTLICHEN = "Oh, yuck! Why would I eat this?",
		CAVE_BANANA = "It's a buncha bananas",
		CAVE_BANANA_COOKED = "Hm. All mushy.",
		CAVE_BANANA_TREE = "I had no idea bananas could grow down here.",
		ROCKY = "Rock lobsters. Who wrote this.",
		
		COMPASS =
		{
			GENERIC="Man, how do am I supposed to read this?",
			N = "North.",
			S = "South.",
			E = "East.",
			W = "West.",
			NE = "Northeast.",
			SE = "Southeast.",
			NW = "Northwest.",
			SW = "Southwest.",
		},

        HOUNDSTOOTH = "I've been bitten by worse; babysitting is something else.",
        ARMORSNURTLESHELL = "Too tacky.",
        BAT = "Don't make me swat you!",
        BATBAT = "This is not what I meant by bat.",
        BATWING = "Ah. Guess this is pretty cool.",
        BATWING_COOKED = "It can't taste much different from chicken...",
        BATCAVE = "As funny as it would be, I'll leave it be.",
        BEDROLL_FURRY = "Finally, a bit of peace and comfort out here!",
        BUNNYMAN = "A rabbit man. Sup, chump.",
        FLOWER_CAVE = "The underworld is strange.",
		FLOWER_CAVE_DOUBLE="The underworld is strange.",
		FLOWER_CAVE_TRIPLE="The underworld is strange.",
        GUANO = "It's bat poop. What do you want me to say? Jeez.",
        LANTERN = "Light for when you're on the go.",
        LIGHTBULB = "Cool.",
        MANRABBIT_TAIL = "Feels pretty fluffy.",
        MUSHROOMHAT = "Ugh. It smells... you're not gonna make me wear it?",
        MUSHROOM_LIGHT2 =
        {
            ON = "Cool.",
            OFF = "Hmmmm, what color should I make?",
            BURNT = "Unfortunate.",
        },
        MUSHROOM_LIGHT =
        {
            ON = "Cool.",
            OFF = "How exactly does this work?",
            BURNT = "Well it's not lighting anything up now.",
        },
        SLEEPBOMB = "A nap in bomb form.",
        MUSHROOMBOMB = "Seems volatile!",
        SHROOM_SKIN = "It's get a nice texture.",
        TOADSTOOL_CAP =
        {
            EMPTY = "Nothing to see here.",
            INGROUND = "What's that?",
            GENERIC = "Hmmmm.",
        },
        TOADSTOOL =
        {
            GENERIC = "Less jabbering, more killing!",
            RAGE = "You... *huff* want me... *huff* to describe the giant friggin' toad..? I... got a better idea... Just kill it.",
        },
        MUSHROOMSPROUT =
        {
            GENERIC = "Now that's a big shroom!",
            BURNT = "Geez, it reeks!",
        },
        MUSHTREE_TALL =
        {
            GENERIC = "Holy moly, how'd it get so big?",
            BLOOM = "Now that's probably not good for my asthma.",
        },
        MUSHTREE_MEDIUM =
        {
            GENERIC = "That's a big mushroom.",
            BLOOM = "Hey, watch the spores!",
        },
        MUSHTREE_SMALL =
        {
            GENERIC = "A mushroom tree?",
            BLOOM = "Now that's probably not the best for my asthma.",
        },
        MUSHTREE_TALL_WEBBED = "Spiders have been here.",
        SPORE_TALL =
        {
            GENERIC = "I probably don't wanna breathe that in.",
            HELD = "Sweet.",
        },
        SPORE_MEDIUM =
        {
            GENERIC = "No way is that safe for me to breathe in!",
            HELD = "Pretty cool.",
        },
        SPORE_SMALL =
        {
            GENERIC = "Probably don't wanna breathe that in.",
            HELD = "Cool.",
        },
        RABBITHOUSE =
        {
            GENERIC = "No wonder why they live underground with such tacky design interests.",
            BURNT = "Hahaha!",
        },
        SLURTLE = "Half slug, half turtle? Gross, but cool.",
        SLURTLE_SHELLPIECES = "Shell fragment, I guess.",
        SLURTLEHAT = "NO.",
        SLURTLEHOLE = "What the Hell lives there??",
        SLURTLESLIME = "It is indeed, slimey.",
        SNURTLE = "Some sorta half slug, half turtle.",
        SPIDER_HIDER = "I don't got time for these hide and seek games.",
        SPIDER_SPITTER = "Ow! You little-!",
        SPIDERHOLE = "A spider den.",
        SPIDERHOLE_ROCK = "What, you're thinking of smashing it up? I like that idea.",
        STALAGMITE = "A stalagmite. Or cave rocks, I guess.",
		STALAGMITE_FULL= "Cave rocks, I guess.",
		STALAGMITE_LOW= "Cave rocks, I guess.",
		STALAGMITE_MED= "Cave rocks, I guess.",
        STALAGMITE_TALL = "Very rocky.",
		STALAGMITE_TALL_FULL= "Very rocky.",								   
		STALAGMITE_TALL_LOW= "Very rocky.",
		STALAGMITE_TALL_MED= "Very rocky.",
        TURF_CARPETFLOOR = "Some carpet.",				  
        TURF_CHECKERFLOOR = "Not bad.",
        TURF_DIRT = "Just some dirt.",
        TURF_FOREST = "Some earth I got from a forest.",				 
        TURF_GRASS = "It's soft.",
        TURF_MARSH = "Gross.",
        TURF_METEOR = "Space rocks.",
        TURF_PEBBLEBEACH = "Some beach rocks.",
        TURF_ROAD = "I could make my own roads with this.",					 
        TURF_ROCKY = "Just some rocks.",
        TURF_SAVANNA = "I could use some grass.",
        TURF_WOODFLOOR = "Wooden flooring.",

		TURF_CAVE="Wait, this stuff is?",
		TURF_FUNGUS="It's all squishy.",
		TURF_FUNGUS_MOON = "Whoa, this stuff looks out of this world!",
		TURF_ARCHIVE = "Looks kinda cool.",
		TURF_SINKHOLE="Rocky.",
		TURF_UNDERROCK="Cave rocks.",
		TURF_MUD="Mud. Dunno what I need this for to be frank with ya.",

		TURF_DECIDUOUS = "It has a nice color to it.",
		TURF_SANDY = "Sandy.",
		TURF_BADLANDS = "Just some chunk of the earth.",
		TURF_DESERTDIRT = "Some very dry ground.",
		TURF_FUNGUS_GREEN = "Squishy.",
		TURF_FUNGUS_RED = "How squishy.",
		TURF_DRAGONFLY = "It's fireproof",
		TURF_SHELLBEACH = "Sandy.",
        TURF_MONKEY_GROUND = "Sandy.",

		POWCAKE = "No time for junk food. You don't have asthma and stay in shape otherwise.",
        CAVE_ENTRANCE =  
		{
			GENERIC = "I feel something beneath this rock.",
			OPEN = "I'm never one to say no to adventure...",
		},
		CAVE_EXIT = "I can get back out through this.",
        CAVE_ENTRANCE_RUINS = "There's something beneath this.",
       	CAVE_ENTRANCE_OPEN = 
        {
            GENERIC = "Not sure about that one.",
            OPEN = "I'm curious, now.",
            FULL = "Too many people, that's just asking for a cave in.",
        },
        CAVE_EXIT = 
        {
            GENERIC = "I kinda like it down here.",
            OPEN = "That leads back up to the surface.",
            FULL = "I'm gonna stay down here for now.",
        },

		MAXWELLPHONOGRAPH = "Sounds like something my grandparents would listen to.",
		BOOMERANG = "Watch and learn!",
		PIGGUARD = "Annoying chump.",
		ABIGAIL =
		{
            LEVEL1 =
            {
                "She's useful, I'll give you that.",
                "I prefer you over the Rosemarys!",
            },
            LEVEL2 = 
            {
                "She's useful, I'll give you that.",
                "I prefer you over the Rosemarys!",
            },
            LEVEL3 = 
            {
                "She's useful, I'll give you that.",
                "I prefer you over the Rosemarys!",
            },
		},
		ADVENTURE_PORTAL = "If that Maxwell chump made it, expect trouble.",
		AMULET = "With how you're controlling me, we'll be needing a lot of those.",
		ANIMAL_TRACK = "Animal tracks.",
		ARMORGRASS = "I'd rather die.",
		ARMORMARBLE = "How would I even walk in that garbage?",
		ARMORWOOD = "That's just asking for splinters.",
		ARMOR_SANITY = "I shouldn't wear that.",
		ASH =
		{
			GENERIC = "Remains of a fire.",
			REMAINS_GLOMMERFLOWER = "The flower burned up...",
			REMAINS_EYE_BONE = "Dang, it burned it!",
			REMAINS_THINGIE = "I have no idea what this was supposed to be.",
		},
		AXE = "I got a bit of a lumberjack physique. I mean, what's the difference between swinging a bat and an axe?",
		BABYBEEFALO = 
		{
			GENERIC = "It's a baby. Still stinky.",
		    SLEEPING = "Get some rest, little guy.",
        },
        BUNDLE = "You remember what you wrapped in there? I don't.",
        BUNDLEWRAP = "For carrying lots of stuff.",
		BACKPACK = "This piece of- The one day I leave the house without my knapsack!",
		BACONEGGS = "Starts the day right.",
		BANDAGE = "For my cuts.",
		BASALT = "That's a tough boulder.",
		BEARDHAIR = "What a mess.",
		BEARGER = "I've dealt with screaming toddlers that had a better temper than you.",
		BEARGERVEST = "It's like a nice blanket!",
		ICEPACK = "This would be great for long days on the baseball field.",
		BEARGER_FUR = "That's some hefty fur.",
		BEDROLL_STRAW = "I guess it counts as a bed.",
		BEEQUEEN = "Hey, would anyone happen to have a giant oversized fly swatter?",
		BEEQUEENHIVE = 
		{
			GENERIC = "Now we just need a giant bear! ...This place has that, doesn't it?",
			GROWING = "Huh. Don't recall that being there.",
		},
        BEEQUEENHIVEGROWN = "Now we just need a giant bear! ...This place has that, doesn't it?",
        BEEGUARD = "Back! I'll knock you into next week!",
        HIVEHAT = "No thanks.",
        MINISIGN =
        {
            GENERIC = "Hmmm. Not bad.",
            UNDRAWN = "I'm bored, I guess I could draw something.",
        },
        MINISIGN_ITEM = "Where to put, where to put...",
		BEE =
		{
			GENERIC = "Some dumb bee.",
			HELD = "You don't sting me and we'll be cool.",
		},
		BEEBOX =
		{
			READY = "Someone harvest that? I'm busy not getting stung.",
			FULLHONEY = "Someone harvest that? I'm busy not getting stung.",
			GENERIC = "Now we're talkin.'",
			NOHONEY = "There's no honey right now.",
			SOMEHONEY = "Ugh, work faster!",
			BURNT = "This is your fault. You hear me? You.",
		},
		MUSHROOM_FARM =
		{
			STUFFED = "You gonna harvest it, or?",
			LOTS = "You gonna harvest it, or?",
			SOME = "Still growing.",
			EMPTY = "Ready for another bunch.",
			ROTTEN = "This log is no good.",
			BURNT = "Dang it.",
			SNOWCOVERED = "Nothing's gonna grow in the Winter.",
		},
		BEEFALO =
		{
			FOLLOWER = "I'll deal with the smell, it's a useful fella.",
			GENERIC = "Ugh. You smell!",
			NAKED = "Serves you right, smelly.",
			SLEEPING = "Tch. Sleep tight...",
            --Domesticated states:
            DOMESTICATED = "It's tamed. Still smells.",
            ORNERY = "Tough. I like you.",
            RIDER = "I wouldn't mind riding it more if it didn't jumble my insides...",
            PUDGY = "Too spoiled.",
            MYPARTNER = "I'll deal with the smell, it's a useful fella.",
		},

		BEEFALOHAT = "It's not my type, but I guess it beats the cold.",
		BEEFALOWOOL = "Gross.",
		BEEHAT = "This'll help keep me safe from angry bees.",
        BEESWAX = "Beeswax.",
		BEEHIVE = "A beehive. Full of honey and territorial bees.",
		BEEMINE = "A nasty surprise...",
		BEEMINE_MAXWELL = "Oh jeez, definitely don't wanna trigger that.",
		BERRIES = "I'm sure they're fine.",
		BERRIES_COOKED = "Fire makes anything safe, you'd think.",
        BERRIES_JUICY = "They make for a good snack.",
        BERRIES_JUICY_COOKED = "What a nice flavor!",
		BERRYBUSH =
		{
			BARREN = "Damnit, not growing!",
			WITHERED = "Too hot to grow, dude.",
			GENERIC = "Berries.",
			PICKED = "Tch. Nothing left.",
			DISEASED = "Something's wrong with that bush.",
			DISEASING = "That doesn't look good.",
			BURNING = "Fantastic.",
		},
		BERRYBUSH_JUICY =
		{
			BARREN = "Damnit, not growing!",
			WITHERED = "Too hot to grow, dude.",
			GENERIC = "Berries.",
			PICKED = "Tch. Nothing left.",
			DISEASED = "Something's wrong here.",
			DISEASING = "That does not look good.",
			BURNING = "Fantastic.",
		},
		BIGFOOT = "Wow!",
		BIRDCAGE =
		{
			GENERIC = "Useless without a bird, genius.",
			OCCUPIED = "Hello, prisoner.",
			SLEEPING = "Lucky you.",
			HUNGRY = "Ah, you hungry? Me too.",
			STARVING = "Someone oughta feed you.",
			DEAD = "It's dead.",
			SKELETON = "Very much dead.",
		},
		BIRDTRAP = "I'll catch those stupid birds for sure.",
		CAVE_BANANA_BURNT = "It won't be growing anything now.",
		BIRD_EGG = "An egg.",
		BIRD_EGG_COOKED = "Ahhh, breakfast.",
		BISHOP = "Nice cape, dork.",
		BLOWDART_FIRE = "It'll make for a fiery surprise.",
		BLOWDART_SLEEP = "I could use when someone starts annoying me too much.",
		BLOWDART_PIPE = "Looks fun.",
		BLOWDART_YELLOW = "Looks fun!",
		BLUEAMULET = "Perfect for hot Summers. Remind me to take a few when I get outta here!",
		BLUEGEM = "It's freezing!",
		BLUEPRINT = 
		{ 
            COMMON = "Hmmm, what's this?",
            RARE = "Hmmm, what's this? Looks cool.",
        },
		BELL_BLUEPRINT = "Hmmmm, what's this?",
        SKETCH = "I wonder...",
		BLUE_CAP = "Ew.",
		BLUE_CAP_COOKED = "No thanks.",
		BLUE_MUSHROOM =
		{
			GENERIC = "It's a mushroom.",
			INGROUND = "Something's there.",
			PICKED = "Nothing there now.",
		},
		BOARDS = "I'd love to smack you upside the head with one. Don't worry, you're safe behind that screen...",
		BOAT = "That one, was my bad.", --SW
		BONESHARD = "Wonder whose bones these are.",
		BONESTEW = "That's a lot of meat!",
		BUGNET = "What am I, gonna bug catch like I'm 8 years old?",
		BUSHHAT = "It'd be nice to disappear for a bit.",
		BUTTER = "Huh??",
		BUTTERFLY =
		{
			GENERIC = "Tch.",
			HELD = "Hmph. It's fine, I guess...",
		},
		BUTTERFLYMUFFIN = "I love muffins.",
		BUTTERFLYWINGS = "They're kinda cool.",
		BUZZARD = "You better watch yourself.",

		SHADOWDIGGER = "I knew you had some tricks up your sleeve.",

		CACTUS = 
		{
			GENERIC = "Yeah, you'd love me to pick that. I see through you.",
			PICKED = "I hate you.",
		},
		CACTUS_MEAT_COOKED = "It's actually kinda tasty.",
		CACTUS_MEAT = "What exactly do you want me to do with it?",
		CACTUS_FLOWER = "I'd love if Yucca Desert had more flowers like these.",

		COLDFIRE =
		{
			EMBERS = "Fire's just about done for.",
			GENERIC = "Chilly.",
			HIGH = "That's overdoing it!",
			LOW = "Looks pretty low.",
			NORMAL = "How Chilly.",
			OUT = "Yeah, fire's done for.",
		},
		CAMPFIRE =
		{
			EMBERS = "Not much left.",
			GENERIC = "It keeps the darkness away.",
			HIGH = "That's overdoing it dude!",
			LOW = "Maybe I should add some fuel.",
			NORMAL = "Keeps me warm!",
			OUT = "Fire's done for.",
		},
		CANE = "My gramps has something like this.",
		CATCOON = "Probably the worst combination of animals.",
		CATCOONDEN = 
		{
			GENERIC = "Who lives in this dump?",
			EMPTY = "I don't think anything lives there.",
		},
		CATCOONHAT = "Not bad.",
		COONTAIL = "What a nice pelt.",
		CARROT = "Heh heh. How do you think I'm such a natural with baseball?",
		CARROT_COOKED = "Nice and diced.",
		CARROT_PLANTED = "Looks like a carrot.",
		CARROT_SEEDS = "Seeds.",
		CARTOGRAPHYDESK =
		{
			GENERIC = "A nerd desk.",
			BURNING = "Ah, it's burning.",
			BURNT = "Oh, well.",
		},
		WATERMELON_SEEDS = "Seeds.",
		CAVE_FERN = "Ferny.",
		CHARCOAL = "Reminds me of barbeques.",
        CHESSPIECE_PAWN = "YAWN.",
        CHESSPIECE_ROOK =
        {
            GENERIC = "It's a castle thingie.",
            STRUGGLE = "Um, it's moving?!",
        },
        CHESSPIECE_KNIGHT =
        {
            GENERIC = "Well that's a horse, duh.",
            STRUGGLE = "Hey, how's it moving?",
        },
        CHESSPIECE_BISHOP =
        {
            GENERIC = "I have no idea what that piece is to be honest with you.",
            STRUGGLE = "Uh, it's moving?!",
        },
        CHESSPIECE_MUSE = "Need a head for that mask?",
        CHESSPIECE_FORMAL = "King, huh? You uh, missing a few limbs there buddy.",
        CHESSPIECE_HORNUCOPIA = "A feast would be pretty awesome.",
        CHESSPIECE_PIPE = "Seems something gramps would use.",
        CHESSPIECE_DEERCLOPS = "That thing was obnoxious.",
        CHESSPIECE_BEARGER = "What a baby.",
        CHESSPIECE_MOOSEGOOSE =
        {
            "Why?",
        },
        CHESSPIECE_DRAGONFLY = "Looks just as angry in statue form.",
		CHESSPIECE_MINOTAUR = "Too easy.",
        CHESSPIECE_BUTTERFLY = "Meh.",
        CHESSPIECE_ANCHOR = "I've never been an ocean kid, honestly.",
        CHESSPIECE_MOON = "Not bad.",
        CHESSPIECE_CARRAT = "We have a winner!",
        CHESSPIECE_MALBATROSS = "Ugh.",
        CHESSPIECE_CRABKING = "This place SUCKS.",
        CHESSPIECE_TOADSTOOL = "Now why would I want to be reminded of that?",
        CHESSPIECE_STALKER = "That's just creepy.",
        CHESSPIECE_KLAUS = "Sure, I've been a little naughty. But I won, didn't I?",
        CHESSPIECE_BEEQUEEN = "Ughhhhhh...",
        CHESSPIECE_ANTLION = "You immortalized a pest. Congratulations.",
		CHESSPIECE_KITCOON = "I guess kitties are sorta cute.",
		CHESSPIECE_CATCOON = "Meh.",
        CHESSPIECE_GUARDIANPHASE3 = "You know. I prefer saving the Earth from aliens over all this. By a lot.",
        CHESSPIECE_EYEOFTERROR = "Too easy.",
        CHESSPIECE_TWINSOFTERROR = "Menaces.",
        CHESSJUNK1 = "Just some broken chess pieces.",
        CHESSJUNK2 = "It's supposed be chess pieces, but just looks like junk to me.",			 
        CHESSJUNK3 = "Some broken chess pieces.",
		CHESTER = "Strange. Don't get your spit over my things, at least.",
		CHESTER_EYEBONE =
		{
			GENERIC = "Don't you look at me like that.",
			WAITING = "Useless.",
		},
		COOKEDMANDRAKE = "Hope you taste good, at least.",
		COOKEDMEAT = "Mmmmm!",
		COOKEDMONSTERMEAT = "I refuse.",
		COOKEDSMALLMEAT = "This'll make a good snack.",
		COOKPOT =
		{
			COOKING_LONG = "Stupid thing. Work faster!",
			COOKING_SHORT = "I'm dying over hereee!!",
			DONE = "Mine mine mine!",
			EMPTY = "Someone should cook something.",
			BURNT = "Well it's not cooking anything now.",
		},
		CORN = "Tasty corn on the cob.",
		CORN_COOKED = "Now I just need to get two dweebs arguing.",
		CORN_SEEDS = "seeds.",
        CANARY =
		{
			GENERIC = "Not this again!",
			HELD = "Yeah yeah, I know the drill...",
		},
        CANARY_POISONED = "Oops.",

		CRITTERLAB = "There's something in there.",
        CRITTER_GLOMLING = "Whoa, cool!",
        CRITTER_DRAGONLING = "Much cuter at this size.",
		CRITTER_LAMB = "Disgusting.",
        CRITTER_PUPPY = "I love puppies!",
        CRITTER_KITTEN = "Aw, hey there, kitty.",
        CRITTER_PERDLING = "Pet bird? Not bad.",
		CRITTER_LUNARMOTHLING = "It's... something.",

		CROW =
		{
			GENERIC = "Stupid crow.",
			HELD = "Stop trying to peck me, you dumb bird!",
		},
		CUTGRASS = "Smells like the baseball field.",
		CUTREEDS = "What's the plan with these, buster?",
		CUTSTONE = "Some carefully crafted stone.",
		DEADLYFEAST = "Definitely shouldn't eat that.",
		DEER =
		{
			GENERIC = "What're you loo- nevermind.",
			ANTLER = "Watch where you point that antler, pal.",
		},
        DEER_ANTLER = "Thanks for the trinket.",
        DEER_GEMMED = "It's being used by big man!",
		DEERCLOPS = "You want trouble? You've got it!",
		DEERCLOPS_EYEBALL = "That's a big eye ball.",
		EYEBRELLAHAT =	"Kinda tacky.",
		DEPLETED_GRASS =
		{
			GENERIC = "I think it's a tuft of grass.",
		},
        GOGGLESHAT = "I look great in it!",
        DESERTHAT = "Yes, yes! I've been looking for something like these!! Now I just need an airplane!",
		DEVTOOL = "It smells of bacon!",
		DEVTOOL_NODEV = "I'm not strong enough to wield it.",
		DIRTPILE = "Hmmm, wonder what that is.",
		DIVININGROD =
		{
			COLD = "I got nothing.",
			GENERIC = "I think it's some sort of search device.",
			HOT = "Looks like something's close!",
			WARM = "I'm getting a signal.",
			WARMER = "Warmer...",
		},
		DIVININGRODBASE =
		{
			GENERIC = "I wonder what it does.",
			READY = "It looks like it needs a large key.",
			UNLOCKED = "Now the machine can work!",
		},
		DIVININGRODSTART = "I'll take that!",
		DRAGONFLY = "You wanna go? Alright, let's go!",
		ARMORDRAGONFLY = "Way too tacky.",
		DRAGON_SCALES = "I'm the greatest, I know.",
		DRAGONFLYCHEST = "A dragon chest, sweet!",
		DRAGONFLYFURNACE = 
		{
			HAMMERED = "I don't think it's supposed to look like that.",
			GENERIC = "I'll never be cold again with this!", --no gems
			NORMAL = "Is it winking at me?", --one gem
			HIGH = "It's scalding!", --two gems
		},
        
        HUTCH = "Goofy little thing.",
        HUTCH_FISHBOWL =
        {
            GENERIC = "Little Ken was the greatest at caring for goldfish!",
            WAITING = "Ignore that!",
        },
		LAVASPIT = 
		{
			HOT = "Watch that spit!",
			COOL = "It's cooled down now.",
		},
		LAVA_POND = "Careful now, don't get too close.",
		LAVAE = "You singe my clothes and we're gonna have a problem!",
		LAVAE_COCOON = "They're cooled off now.",
		LAVAE_PET = 
		{
			STARVING = "Yeah, yeah, yeah, knock that off and I'll feed you.",
			HUNGRY = "I have no idea what you eat.",
			CONTENT = "Told you, I'm just a natural with kids.",
			GENERIC = "Let Ken take care of 'em.",
		},
		LAVAE_EGG = 
		{
			GENERIC = "It's an egg...",
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "It's too cold.",
			COMFY = "Comfy?",
		},
		LAVAE_TOOTH = "That's your tooth?",	  

		DRAGONFRUIT = "What a strange fruit.",
		DRAGONFRUIT_COOKED = "Smells... nice.",
		DRAGONFRUIT_SEEDS = "Seeds.",
		DRAGONPIE = "Now we're talking.",
		DRUMSTICK = "A yummy drumstick.",
		DRUMSTICK_COOKED = "Mmmm..!",
		DUG_BERRYBUSH = "Don't mind if I take this.",
		DUG_BERRYBUSH_JUICY = "I'll take this with me.",
		DUG_GRASS = "I could use this somewhere else.",
		DUG_MARSH_BUSH = "You're coming with me.",
		DUG_SAPLING = "I'll plant you somehwere nicer.",
		DURIAN = "It smells awful!",
		DURIAN_COOKED = "Ugh, come on! You just made the smell worse!",
		DURIAN_SEEDS = "Seeds.",
		EARMUFFSHAT = "Thanks, my ears are safe from frostbite.",
		EGGPLANT = "An eggplant. What a tacky name.",
		EGGPLANT_COOKED = "You want me to eat that...?",
		EGGPLANT_SEEDS = "Seeds.",
		
		ENDTABLE = 
		{
			BURNT = "Well it was nice while it lasted.",
			GENERIC = "Looks 'nice.' You happy?",
			EMPTY = "Who cares.",
			WILTED = "Oh no. It's dead.",
			FRESHLIGHT = "You did something useful. Good for you.",
			OLDLIGHT = "Needs a change.", -- will be wilted soon, light radius will be very small at this point
		},
		DECIDUOUSTREE = 
		{
			BURNING = "Nice going.",
			BURNT = "Real nice.",
			CHOPPED = "Nothing but a stump now.",
			POISON = "The Hell? Of course there's always a catch here...",
			GENERIC = "I used to climb these all the time back in Podunk.",
		},
		ACORN = 
		{
			GENRIC = "A tree nut.",
			PLANTED = "It's a sapling.",
		},
        ACORN_SAPLING = "It's a sapling.",
		ACORN_COOKED = "Tasty.",
		BIRCHNUTDRAKE = "Hey! Watch the ankles!",
		EVERGREEN =
		{
			BURNING = "Nice going.",
			BURNT = "Real nice.",
			CHOPPED = "I could use this as a seat.",
			GENERIC = "It looks like a pine tree. We have lots of these back home.",
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "Nice going.",
			BURNT = "Real nice.",
			CHOPPED = "Cool, I could use this as a seat.",
			GENERIC = "No pine cones. Whatever.",
		},
		TWIGGYTREE = 
		{
			BURNING = "Nice going.",
			BURNT = "Real nice.",
			CHOPPED = "Just me and a stump. Oh, and a chump.",
			GENERIC = "Sticky.",			
			DISEASED = "Is that tree okay?",
		},
		TWIGGY_NUT_SAPLING = "Some sapling. Moving on.",
        TWIGGY_OLD = "It's an old tree now.",
		TWIGGY_NUT = "What do you want me to do with it?",
		EYEPLANT = "Keep looking at me like that and you'll regret it.",
		INSPECTSELF = "The name's Ken.",
		FARMPLOT =
		{
			GENERIC = "I'm not a farmer.",
			GROWING = "Sigh.",
			NEEDSFERTILIZER = "Not growing. I got better things to do anyways.",
			BURNT = "Good. Now stop bothering about farming.",
		},
		FEATHERHAT = "It's not my style.",
		FEATHER_CROW = "A very dark feather.",
		FEATHER_ROBIN = "A bright red.",
		FEATHER_ROBIN_WINTER = "White as snow.",
		FEATHER_CANARY = "Shocking.",
		FEATHERPENCIL = "Seems tacky to me.",
        COOKBOOK = "If you idiots think it'll help, sure.",
		FEM_PUPPET = "Are you stuck?",
		FIREFLIES =
		{
			GENERIC = "They're nice little creatures.",
			HELD = "Think of me however you want: I miss home...",
		},
		FIREHOUND = "I'll send back to where you belong!",
		FIREPIT =
		{
			EMBERS = "There's not much fire left.",
			GENERIC = "This'll keep me warm.",
			HIGH = "Might have over done it a little.",
			LOW = "Fire's looking a little low.",
			NORMAL = "Ah, so warm and fuzzy.",
			OUT = "Fire's out.",
		},
		COLDFIREPIT =
		{
			EMBERS = "Fire's just about done for.",
			GENERIC = "It keeps the darkness away.",
			HIGH = "That's quite the fire!",
			LOW = "The fire is a little low.",
			NORMAL = "So chilly!",
			OUT = "Fire's out.",
		},
		FIRESTAFF = "'I'm like like a flame wizard' ugh, he is such a NERD!",
		FIRESUPPRESSOR = 
		{	
			ON = "With the people I'm at the mercy of, we'll be needing fire supression.",
			OFF = "Off. Congratulations. You can see.",
			LOWFUEL = "Low fuel. We're soooo proud of you, you've pointed out the obvious.",
		},
		FISH = "Sup, dinner.",
		FISHINGROD = "There's not many places to fish back home.",
		FISHSTICKS = "It's good stuff.",
		FISH_MED = "Sup, dinner.",
		FISH_MED_COOKED = "Less talking, more stuffing my face!",
		FISHTACOS = "Don't mind if I do.",
		FISH_COOKED = "Should be tasty.",
		FISH3 = "Its scales are so shiny.",
		FISH3_COOKED = "Bet it tastes real good.",
		FLINT = "Some sort of rock.",
		FLOWER = 
		{
            GENERIC = "Even if I'm not a girlie, I can appreciate a nice flower.",
            ROSE = "It's a rose.",
        },
        FLOWER_WITHERED = "It's dying.",
		FLOWERHAT = "Hmph. My bandana is cooler.",
		FLOWER_EVIL = "What a dumb flower.",
		FOLIAGE = "Foliage, I guess.",
		FOOTBALLHAT = "Football is for losers.",
        FOSSIL_PIECE = "Whoa, fossils!",
        FOSSIL_STALKER =
        {
			GENERIC = "It's a work in progress.",
			FUNNY = "You got it all wrong! Worthless...",
			COMPLETE = "Whoa.",
        },
        STALKER = "What are you trying to say, you big dummy?",
        STALKER_ATRIUM = "An evil beyond evil. Now, this'll be fun!",
        STALKER_MINION = "Come here, you little squirt!",
        THURIBLE = "It makes that big guy dumb. I've dubbed it the Dumbassatron 5000.",
        ATRIUM_OVERGROWTH = "Huh?",
		FROG =
		{
			DEAD = "Dead as a nail.",
			GENERIC = "I got in trouble for throwing one at my Kindergarten teacher once. Sorry Ms. Davis.",
			SLEEPING = "Sleep tight.",
		},
		FROGGLEBUNWICH = "Disguise that slop as 'food' all you want, I call it like I see it.",
		FROGLEGS = "Is it biology class again?",
		FROGLEGS_COOKED = "Ugh.",
		FRUITMEDLEY = "Looks delicious.",
		FURTUFT = "A whole lot of fur.", 
		GEARS = "It's a bunch of junk.",
		GHOST = "Thanks, but I had enough of these goons in Rosemary Manor.",
		GHOST_SAILOR = "Ah! Shiver me timbers!",
		GOLDENAXE = "It's an axe. Any more stupid observations for me to make?",
		GOLDENPICKAXE = "For smashing. You know.",
		GOLDENPITCHFORK = "Maybe I'll poke YOU.",
		GOLDENSHOVEL = "Does things you'd expect a shovel to do.",
		GOLDNUGGET = "The start of the Ken fortune.",
		GRASS =
		{
			BARREN = "Won't be doing any growing.",
			WITHERED = "Too hot? Too bad.",
			BURNING = "Nice.",
			GENERIC = "Some grass.",
			PICKED = "Not much left now.",				
			DISEASED = "That's not right.",
			DISEASING = "That's not right.",															   
		},
		GRASSGEKKO = 
		{
			GENERIC = "Hey, a gecko!",	
			DISEASED = "Get well soon!",
		},
		GREEN_CAP = "A green mushroom.",
		GREEN_CAP_COOKED = "Ugh? You want me to eat that?",
		GREEN_MUSHROOM =
		{
			GENERIC = "A green mushroom.",
			INGROUND = "Hello, are you there?",
			PICKED = "Nothing there now.",
		},
		GUNPOWDER = "I should make my own firecrackers.",
		HAMBAT = "I guess I can work with this...",
		HAMMER = "A hammer for hammering, of course.",
		HEALINGSALVE = "This'll help with cuts and bruises.",
		HEATROCK =									 
		{
			FROZEN = "I can barely hold it, it's so cold!",
			COLD = "Pretty chilly.",
			GENERIC = "Don't know how it works, but it stores temperatures.",
			WARM = "Nice and warm.",
			HOT = "Ah! That's hot!",
		},
		HOME = "Home is what you make of it.",
		HOMESIGN =
		{
			GENERIC = "It says \"You are here\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",										
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",										
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says \"Thataway\".",
            UNWRITTEN = "The sign is currently blank.",
			BURNT = "\"Don't play with matches.\"",
		},
		HONEY = "Mm mm mm.",
		HONEYCOMB = "It comes from beehives.",
		HONEYHAM = "You're gonna fatten me up at this rate.",
		HONEYNUGGETS = "No, I will not be sharing.",
		HORN = "They're pretty cool to blow into!",
		HOUND = "A pack of wolves? Hah! Bring it on.",
		HOUNDCORPSE =
		{
			GENERIC = "Too easy.",
			BURNING = "Yeesh.",
			REVIVING = "...Huh?",
		},
		HOUNDBONE = "Someone wasn't lucky.",
		HOUNDMOUND = "Those beasts live there.",
		ICEBOX = "Nice, I'll be needing a fridge!",
		ICEHAT = "You know what, I don't even care if I look tacky, it's too damn hot out!",
		ICEHOUND = "Bring it, you mutt!",
		INSANITYROCK =
		{
			ACTIVE = "Giygas' influence is strong...",
			INACTIVE = "I will not submit.",
		},
		JAMMYPRESERVES = "A quarter of the way to PB&J.",
		KABOBS = "Not bad, not bad.",
		KILLERBEE =				
		{
			GENERIC = "Hey! I'll swat you!",
			HELD = "You're a nuissance.",
		},
		KNIGHT = "You looking at me? You think you can take me on?",
		KOALEFANT_SUMMER = "Sup.",
		KOALEFANT_WINTER = "Sup.",
		KRAMPUS = "Yeah yeah, Ken's a big jerk. How about you put my things down before you regret it.",
		KRAMPUS_SACK = "Thanks for the sack, chump!",
		LEIF = "You speak for the trees? So do I, give me your wood.",
		LEIF_SPARSE = "You speak for the trees? So do I, give me your wood.",
		LIGHTER  = "Someone's lighter.",
		LIGHTNING_ROD =
		{
			CHARGED = "It's doing its job.",
			GENERIC = "Good, electrocution is not on my todo list.",
		},
		LIGHTNINGGOAT = 			
		{
			GENERIC = "Sup.",
			CHARGED = "Hey, back off!",				
		},
		LIGHTNINGGOATHORN = "It's shaped like a lightning bolt.",
		GOATMILK = "Milk? What am I, an infant?",
		LITTLE_WALRUS = "I'm not one to hit a child. Even if I really want to.",
		LIVINGLOG = "Whatcha lookin' at? You had it coming, buster.",
		LOCKEDWES = "I would love to help, but unfortunately, I'm lying. I would not.",
		LOG =
		{
			BURNING = "Good job.",
			GENERIC = "A log. Any more genius observations you need?",										
		},
		LUCY = "It's got a mind of its own. An obnoxious, bratty one at that.",
		LUREPLANT = "Some stupid alien plant.",
		LUREPLANTBULB = "I wonder if I should plant this thing.",
		MALE_PUPPET = "Are you stuck?",
		MANDRAKE = 
		{
			DEAD = "Good. Riddance.",
			GENERIC = "Whoa, that's a weird plant.",
			PICKED = "Gah, shut up!",
		},
		MANDRAKE_ACTIVE = "Gah, shut up!",
		MANDRAKE_PLANTED = "Whoa, that's a weird plant.",
		MANDRAKE = "Good riddance.",

        MANDRAKESOUP = "Let's eat.",
        MANDRAKE_COOKED = "Nice and quiet.",
        MAPSCROLL = "Just a blank scroll.",
        MARBLE = "Just some chunk of marble.",
        MARBLEBEAN = "A marble bean? So I plant this, and?",
        MARBLEBEAN_SAPLING = "I swear if you're just trying to make me look dumb.",
        MARBLESHRUB = "Huh.",
        MARBLEPILLAR = "It's a pillar.",
        MARBLETREE = "It's solid rock!",
        MARSH_BUSH =
        {
			BURNT = "Real nice.",
            BURNING = "Nice going.",
            GENERIC = "I bet you could fashion a decent weapon with those spines.",
            PICKED = "Ow!",
        },
        BURNT_MARSH_BUSH = "Real nice.",
        MARSH_PLANT = "Some swamp plants.",
        MARSH_TREE =
        {
            BURNING = "Nice going.",
            BURNT = "Real nice.",
            CHOPPED = "Just a stump now.",
            GENERIC = "Bet I could dare some chump into hugging it.",
        },
        MAXWELL = "Never trust an adult!",
        MAXWELLHEAD = "I can see into his pores.",
        MAXWELLLIGHT = "It's got some sort of motion sensor, I think.",
        MAXWELLLOCK = "Looks almost like a key hole.",
        MAXWELLTHRONE = "What... have I gotten into?",
        MEAT = "Meat.",
        MEATBALLS = "Get me some pasta and we can talk.",
        MEATRACK =
        {
            DONE = "It's done.",
            DRYING = "*Sigh*",
            DRYINGINRAIN = "Are you. Friggin.' Serious.",
            GENERIC = "We drying meat, or?",
            BURNT = "Ughhhhh...",
            DONE_NOTMEAT = "It's done.",
            DRYING_NOTMEAT = "*Sigh*",
            DRYINGINRAIN_NOTMEAT = "Are you. Friggin.' Serious.",
        },
        MEAT_DRIED = "What boy doesn't like jerky?",
        MERM = "Wipe that stupid look off your face.",
        MERMHEAD =
        {
            GENERIC = "Savages.",
            BURNT = "That's terrible.",
        },
        MERMHOUSE =
        {
            GENERIC = "What a DUMP.",
            BURNT = "Hey, that's actually an improvement!",
        },
        MINERHAT = "Now this'll be useful.",
        MONKEY = "Sup.",
        MONKEYBARREL = "Those monkeys live there.",
        MONSTERLASAGNA = "Yuck.",
        FLOWERSALAD = "I think that counts as a salad.",
        ICECREAM = "You can never go wrong with ice cream.",
        WATERMELONICLE = "I could use a snack.",
        TRAILMIX = "A great snack on the baseball field.",
        HOTCHILI = "Sets my mouth on fire!",
        GUACAMOLE = "Tasty.",
        MONSTERMEAT = "That doesn't seem safe to eat.",
        MONSTERMEAT_DRIED = "You cannot make me eat that.",
        MOOSE = "What a terrble combination of animals.",
        MOOSE_NESTING_GROUND = "A big nest for a big bird.",
        MOOSEEGG = "That's a big egg!",
        MOSSLING = "Sup.",
        FEATHERFAN = "It works wonders!",
        MINIFAN = "I'm too old for something so tacky.",
		TROPICALFAN = "Now we're talking paradise.",
        GOOSE_FEATHER = "It's so soft.",
        STAFF_TORNADO = "It has the power to summon cyclones.",
        MOSQUITO =
        {
            GENERIC = "Ugh. Mosquitos.",
            HELD = "I should just squash you right now.",
        },
        MOSQUITOSACK = "Nasty.",
        MOUND =
        {
            DUG = "Jeez, you really made me do that? Awful.",
            GENERIC = "Someone's final resting place.",
        },
        NIGHTLIGHT = "Hey, turn that off please?",
        NIGHTMAREFUEL = "Violence, hatred, fear, all whispering to me.",
        NIGHTSWORD = "The will of terrible people, made tangle. In my hands.",
        NITRE = "I'm not really sure what this stuff is.",
        ONEMANBAND = "Too... flashy.",
        OASISLAKE =
		{
			GENERIC = "Water!",
			EMPTY = "No water...",
		},
        PANDORASCHEST = "Hm. Wonder what's in there.",
        PANFLUTE = "I'm not really sure how to play it.",
        PAPYRUS = "Paper.",
        WAXPAPER = "Waxy paper.",
        PENGUIN = "Sup?",
        PERD = "Bet you taste great.",
        PEROGIES = "I wonder if it's good.",
        PETALS = "Some picked flowers.",
        PETALS_EVIL = "You give me a bad feeling.",
        PHLEGM = "When you babysit, you deal with your fair share of snotty kids.",
        PICKAXE = "For smashing rocks.",
        PIGGYBACK = "Even for me, it's a bit heavy.",
        PIGHEAD =
        {
            GENERIC = "Savages.",
            BURNT = "Smells... um, yeah.",
        },
        PIGHOUSE =
        {
            FULL = "Occupied.",
            GENERIC = "A bit cramped, if you ask me.",
            LIGHTSOUT = "Oh, now you're just being a jerk!",
            BURNT = "Hah.",
        },
        PIGKING = "Yeesh, someone needs a shower.",
        PIGMAN =
        {
            DEAD = "Rest in peace.",
            FOLLOWER = "Come on, dum dum, I need your help.",
            GENERIC = "Sup, stinky.",
            GUARD = "He's a bit of jerk.",
            WEREPIG = "Oh, you think you can mess with me? I'll show you!",
        },
        PIGSKIN = "Skinned pig.",
        PIGTENT = "Smells like bacon.",
        PIGTORCH = "That's some nice decor you got there.",
        PINECONE = 
		{
			GENERIC = "A pinecone.",
			PLANTED = "A sapling.",
		},
        PINECONE_SAPLING = "A sapling.",
        LUMPY_SAPLING = "A sapling.",
        PITCHFORK = "For moving around hay. Or poking badies.",
        PLANTMEAT = "It's plant... meat?",
        PLANTMEAT_COOKED = "I dunno, man.",
        PLANT_NORMAL =
        {
            GENERIC = "Some stupid plant.",
            GROWING = "What am I, a farmer? Who cares.",
            READY = "Yeah, yeah, yeah.",
            WITHERED = "I feel ya on the heat, buddy.",
        },
        POMEGRANATE = "Some sorta fruit.",
        POMEGRANATE_COOKED = "How's it taste?",
        POMEGRANATE_SEEDS = "Seeds.",
        POND = "It's a small pond.",
        POOP = "Oh, gross.",
        FERTILIZER = "It helps plants grow, somehow.",
        PUMPKIN = "Fall is a favorite season of mine.",
        PUMPKINCOOKIE = "I'm so spoiled...",
        PUMPKIN_COOKED = "Yummy!",
        PUMPKIN_LANTERN = "I love Hallowween.",
        PUMPKIN_SEEDS = "I love pumpkin seeds.",
        PURPLEAMULET = "Terrible thing. Don't make me wear it!",
        PURPLEGEM = "It's full of evil.",
        RABBIT =
        {
            GENERIC = "Sup, little man.",
            HELD = "Rabbits get stressed easily. Handle them with care!",
        },
        RABBITHOLE =
        {
            GENERIC = "A little man lives there.",
            SPRING = "Not home.",
        },
        RAINOMETER =
        {
            GENERIC = "I guess it's nice to know the weather.",
            BURNT = "Nice. Real nice.",
        },
        RAINCOAT = "I'll be needing one, thanks.",
        RAINHAT = "Rain and asthma don't mix, believe it or not.",
        RATATOUILLE = "I've never had anything like this before.",
        RAZOR = "I have no use for this junk.",
        REDGEM = "A gem. It's red.",
        RED_CAP = "What's the deal with this mushroom?",
        RED_CAP_COOKED = "Hmmm...",
        RED_MUSHROOM =
        {
            GENERIC = "A red mushroom.",
            INGROUND = "What's that?",
            PICKED = "Nothing's to see here.",
        },
        REEDS =
        {
            BURNING = "Nice going.",
            GENERIC = "Some reeds.",
            PICKED = "What, you want me to claw at the ground for scraps? Get real.",
        },
        RELIC = 
		{
			GENERIC = "Just a bunch of dusty furniture.",
			BROKEN = "Nothing but junk."
		},
        RUINS_RUBBLE = "Nothing but a buncha rocks.",
        RUBBLE = "Just a buncha rocks.",
        RESEARCHLAB =
        {
            GENERIC = "Don't ask me like I know.",
            BURNT = "Useless is what it is.",
        },
        RESEARCHLAB2 =
        {
            GENERIC = "Do I look like a dweeb? Thought not. Stop asking about it.",
            BURNT = "What a bunch of junk.",
        },
        RESEARCHLAB3 =
        {
            GENERIC = "The bad side of PSI.",
            BURNT = "Well, I guess that's good.",
        },
        RESEARCHLAB4 =
        {
            GENERIC = "Seems... tacky.",
            BURNT = "Well that's an improvement.",
        },
        RESURRECTIONSTATUE =
        {
            GENERIC = "That's raw.",
            BURNT = "Awwww...",
        },
        RESURRECTIONSTONE = "It's been loaded with Super Healing.",
        ROBIN =
        {
            GENERIC = "How lucky you are to fly.",
            HELD = "Teach me your secrets, avion.",
        },
        ROBIN_WINTER =
        {
            GENERIC = "I wish I could take to the skies...",
            HELD = "Teach me your secrets, little bird.",
        },
        ROBOT_PUPPET = "You stuck?",
        ROCK_LIGHT =
        {
            GENERIC = "A crusted over lava pit.",
            OUT = "Looks fragile.",
            LOW = "The lava's crusting over.",
            NORMAL = "Nice and comfy.",
        },
        CAVEIN_BOULDER =
        {
            GENERIC = "Stupid boulder...",
            RAISED = "Nah.",
        },
        ROCK = "Some dumb rock.",
        PETRIFIED_TREE = "That's pretty cool.",
        ROCK_PETRIFIED_TREE = "That's pretty cool.",
        ROCK_PETRIFIED_TREE_OLD = "That's pretty cool.",
        ROCK_ICE =
        {
            GENERIC = "Some ice chunks.",
            MELTED = "Who cares.",
        },
        ROCK_ICE_MELTED = "Who cares.",
        ICE = "Great during the Summer.",
        ROCKS = "I could them to practice my pitching.",
        ROOK = "I thought my temper was bad.",
        ROPE = "What does it look it? Jeeeeez, I swear with you...",
        ROTTENEGG = "Yeesh. That smells.",
        ROYAL_JELLY = "Mmmmmm...!",
        JELLYBEAN = "Delicious!",
        SADDLE_BASIC = "What a stupid, dumb, waste of an idea.",
        SADDLE_RACE = "That's what yo- I hate you.",
        SADDLE_WAR = "It's... cool looking, at least...",
        SADDLEHORN = "For those tacky saddles.",
        SALTLICK = "It's a giant block of salt. The Hell do you think it tastes like?",
        BRUSH = "Sorry, but this is outside my paygrade.",
		SANITYROCK =
		{
			ACTIVE = "This thing gives me the heeby-jeebies...",
			INACTIVE = "Hm? Where'd it go?",
		},
		SAPLING =
		{
			BURNING = "Nice going.",
			WITHERED = "Too hot, huh?",
			GENERIC = "Some shrub.",
			PICKED = "What a whimpy tree.",
			DISEASED = "You okay?",
			DISEASING = "That doesn't look good.",
		},
   		SCARECROW = 
   		{
			GENERIC = "That'll keep the birds away.",
			BURNING = "My scarecrow!!",
			BURNT = "Nice. Real nice.",
   		},
   		SCULPTINGTABLE=
   		{
			EMPTY = "Seems stupid.",
			BLOCK = "I've got better things to do.",
			SCULPTURE = "Tch.",
			BURNT = "Good riddance.",
   		},
        SCULPTURE_KNIGHTHEAD = "It's missing something.",
		SCULPTURE_KNIGHTBODY = 
		{
			COVERED = "What a dumb statue.",
			UNCOVERED = "Hm.",
			FINISHED = "There we are.",
			READY = "It's moving?",
		},
        SCULPTURE_BISHOPHEAD = "What's that?",
		SCULPTURE_BISHOPBODY = 
		{
			COVERED = "It's some stupid statue.",
			UNCOVERED = "What do we have here?",
			FINISHED = "There we go!",
			READY = "It's moving!",
		},
        SCULPTURE_ROOKNOSE = "I wonder what that's supposed to be",
		SCULPTURE_ROOKBODY = 
		{
			COVERED = "It's a statue",
			UNCOVERED = "Ah, I see.",
			FINISHED = "Done.",
			READY = "It's moving...",
		},
        GARGOYLE_HOUND = "Something's wrong here.",
        GARGOYLE_WEREPIG = "This isn't good.",
		SEEDS = "Some seeds. Maybe if I pretend it's a delicious 5-course meal, it'll fill me up.",
		SEEDS_COOKED = "It's nice to absent-mindedly chew on them.",
		SEWING_KIT = "My mom uses it all the time, I'm sure I can figure it out.",
		SEWING_TAPE = "It won't fix Ninten being a dork.",
		SHOVEL = "For digging. Or beating over the head. Up to you.",
		SILK = "Silky.",
		SKELETON = "You'd have to be a real chump to die out here.",
		SCORCHED_SKELETON = "What a chump.",
		SKELETON_PLAYER = "Even Ken is fallible.",
		SKULLCHEST = "That's a creepy chest.",
		SMALLBIRD =
		{
			GENERIC = "I guess I'm its caretaker.",
			HUNGRY = "I didn't sign up for this, you know.",
			STARVING = "Yeah, yeah, I'm feeding you.",
			SLEEPING = "Finally, some peace and quiet...",
		},
		SMALLMEAT = "Tiny meat.",
		SMALLMEAT_DRIED = "Pocket jerky.",
		SPAT = "You snotty little bastard.",
		SPEAR = "For stabbing things that annoy me.",
		SPEAR_WATHGRITHR = "Nice spear you got.",
		WATHGRITHRHAT = "No thanks.",
		SPIDER =
		{
			DEAD = "It's dead, I think.",
			GENERIC = "You're a bit TOO big.",
			SLEEPING = "Disgusting little monster.",
		},
		SPIDERDEN = "Great, an infestation.",
		SPIDEREGGSACK = "Absolutely disgusting. Get it away from me.",
		SPIDERGLAND = "Ugh.",
		SPIDERHAT = "Cool, I guess.",
		SPIDERQUEEN = "You think you scare me? I'll show you scary!",
		SPIDER_WARRIOR =
		{
			DEAD = "Got it!",
			GENERIC = "Ow! That hurt, you jerk!",
			SLEEPING = "Disgusting little monster.",
		},
		SPOILED_FOOD = "What a waste.",
        STAGEHAND =
        {
			AWAKE = "Watch that hand, I won't hesistate!",
			HIDING = "It's not an ordinary table.",
        },
        STATUE_MARBLE = 
        {
            GENERIC = "It's a fancy marble statue.",
            TYPE1 = "Don't lose your head now!",
            TYPE2 = "Statuesque.",
            TYPE3 = "I wonder who the artist is.", --bird bath type statue
        },
		STATUEHARP = "Cool.",
		STATUEMAXWELL = "I'm gonna mess you up one of these days.",
		STEAMEDHAMSANDWICH = "Nothing wrong with a good burger.",
		STEELWOOL = "My mom uses this stuff.",
		STINGER = "A stinger.",
		STRAWHAT = "Style is what you make of it.",
		STUFFEDEGGPLANT = "Not bad for veggies.",
		SWEATERVEST = "My aviator's coat is way cooler.",
		REFLECTIVEVEST = "I can't say I'm a fan of the colors.",
		HAWAIIANSHIRT = "I'll have to keep for that trip to Hawaii.",
		TAFFY = "No thanks, taffy is for brats.",
		TALLBIRD = "What a stuck up attitude. You'll get what's coming to you.",
		TALLBIRDEGG = "That dumb bird's dumb egg.",
		TALLBIRDEGG_COOKED = "Yum yum.",
		TALLBIRDEGG_CRACKED =
		{
			COLD = "It needs heat.",
			GENERIC = "There.",
			HOT = "You're starting to annoy me.",
			LONG = "Nothing to do but wait.",
			SHORT = "Ughhhhh hurry up!",
		},
		TALLBIRDNEST =
		{
			GENERIC = "I don't care about your stupid egg, you pest. Back off.",
			PICKED = "What a stupid nest.",
		},
		TEENBIRD =
		{
			GENERIC = "Ahhhh, this was a mistake.",
			HUNGRY = "You can wait.",
			STARVING = "You better knock that off!",
			SLEEPING = "Ugh.",								
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "Why not just 4D slip?",
			GENERIC = "There's another world on the other side.",
			LOCKED = "It needs something.",
			PARTIAL = "Almost there.",
		},
		TELEPORTATO_BOX = "What with this junk?",
		TELEPORTATO_CRANK = "Some crank.",
		TELEPORTATO_POTATO = "It's a fake potato.",
		TELEPORTATO_RING = "A ring for that thingy. You know.",
		TELESTAFF = "4D Slip on a stick.",
		TENT = 
		{
			GENERIC = "It's about time I get some shelter.",
			BURNT = "Are you friggin' serious.",
		},
		SIESTAHUT = 
		{
			GENERIC = "Looks comfy.",
			BURNT = "Are you friggin' serious.",
		},
		TENTACLE = "What the-!?",
		TENTACLESPIKE = "I hate you.",
		TENTACLESPOTS = "Grooooooss.",
		TENTACLE_PILLAR = "That. Is actually a bit terrifying...",
        TENTACLE_PILLAR_HOLE = "Dude...",
		TENTACLE_PILLAR_ARM = "Hey!",
		TENTACLE_GARDEN = "Watch the hair, man.",
		TOPHAT = "What am I, from the 20's?? Buncha dweebs.",
		TORCH = "A torch.",
		TRANSISTOR = "How should I know. Or care.",
		TRAP = "I'll get my next meal with this.",
		TRAP_TEETH = "Now we're thinking logistics!",
		TRAP_TEETH_MAXWELL = "Heh, you think I'm dumb enough to fall for that?",
		TREASURECHEST = 
		{
			GENERIC = "Keeps my junk safe.",
			BURNT = "Fantastic work. Imbecile...",
		},
		TREASURECHEST_TRAP = "What do we have here!",
		SACRED_CHEST = 
		{
			GENERIC = "Hm? What do you need?",
			LOCKED = "What do you think?",
		},
		TREECLUMP = "Where in the world did this come from?",															
		TRINKET_1 = "Oh, cool.", --Melted Marbles
		TRINKET_2 = "Dang, it doesn't work.", --Fake Kazoo
		TRINKET_3 = "Just use a knife, dummies!", --Gord's Knot
		TRINKET_4 = "How tacky.", --Gnome
		TRINKET_5 = "Space is so cool.", --Toy Rocketship
		TRINKET_6 = "A bunch of useless crap.", --Frazzled Wires
		TRINKET_7 = "What a dumb toy.", --Ball and Cup
		TRINKET_8 = "Not gonna do me any good without a tub.", --Rubber Bung
		TRINKET_9 = "Might be useful for sewing.", --Mismatched Buttons
		TRINKET_10 = "Someone lose their teeth?", --Dentures
		TRINKET_11 = "Never trust a robot.", --Lying Robot
		TRINKET_12 = "Oh.", --Dessicated Tentacle
		TRINKET_13 = "You stay in the garden.", --Gnomette
		TRINKET_14 = "I've never had tea.", --Leaky Teacup
		TRINKET_15 = "Chess is lame.", --Pawn
		TRINKET_16 = "Chess is lame.", --Pawn
		TRINKET_17 = "Reminds me of when I found out about my powers.", --Bent Spork
		TRINKET_18 = "A toy horse. I bet my sisters would love it!", --Trojan Horse
		TRINKET_19 = "What the- It doesn't work! Lame.", --Unbalanced Top
		TRINKET_20 = "What'd I'd need this for?", --Backscratcher
		TRINKET_21 = "I've never been a cook.", --Egg Beater
		TRINKET_22 = "It's so soft.", --Frayed Yarn
		TRINKET_23 = "What's this?", --Shoehorn
		TRINKET_24 = "I'm a dog guy, but not bad.", --Lucky Cat Jar
		TRINKET_25 = "It's no good. Must  be old.", --Air Unfreshener
		TRINKET_26 = "Yeah, how about I just use a cup.", --Potato Cup
		TRINKET_27 = "I could use for inventing, or something. I dunno.", --Coat Hanger
		TRINKET_28 = "Yawn.", --Rook
        TRINKET_29 = "Yawn.", --Rook
        TRINKET_30 = "I don't like chess.", --Knight
        TRINKET_31 = "I don't like chess.", --Knight
        TRINKET_32 = "What even is it?", --Cubic Zirconia Ball
        TRINKET_33 = "Cool.", --Spider Ring
        TRINKET_34 = "It's good luck, apparently.", --Monkey Paw
        TRINKET_35 = "For potions!", --Empty Elixir
        TRINKET_36 = "Tacky.", --Faux fangs
        TRINKET_37 = "Not gonna do any good against vampires in that state.", --Broken Stake
        TRINKET_38 = "This'll be useful!", -- Binoculars Griftlands trinket
        TRINKET_39 = "Well this isn't going to do me any good in this state.", -- Lone Glove Griftlands trinket
        TRINKET_40 = "I kinda like the design.", -- Snail Scale Griftlands trinket
        TRINKET_41 = "I wish I had a lava lamp for my room.", -- Goop Canister Hot Lava trinket
        TRINKET_42 = "Reminds me of kindergarten.", -- Toy Cobra Hot Lava trinket
        TRINKET_43 = "Reminds me of kindergarten.", -- Crocodile Toy Hot Lava trinket
        TRINKET_44 = "It's like some sort of snowglobe but without the snow.", -- Broken Terrarium ONI trinket						 
        TRINKET_45 = "What's with this radio?", -- Odd Radio ONI trinket
        TRINKET_46 = "A hairdryer. It doesn't work.", -- Hairdryer ONI trinket
        -- The numbers align with the trinket numbers above.
        LOST_TOY_1  = "Huh?",
        LOST_TOY_2  = "Huh?",
        LOST_TOY_7  = "Huh?",
        LOST_TOY_10 = "Huh?",
        LOST_TOY_11 = "Huh?",
        LOST_TOY_14 = "Huh?",
        LOST_TOY_18 = "Huh?",
        LOST_TOY_19 = "Huh?",
        LOST_TOY_42 = "Huh?",
        LOST_TOY_43 = "Huh?",
        
        HALLOWEENCANDY_1 = "You'd have to be a real jerk to give this out.", --Candy Apple
        HALLOWEENCANDY_2 = "These are all right, I guess.", --Candy Corn
        HALLOWEENCANDY_3 = "Oh. Lame!", --Not-So-Candy Corn
        HALLOWEENCANDY_4 = "Gummies are pretty good.", --Gummy Spider
        HALLOWEENCANDY_5 = "Mm, sweet!", --Catcoon Candy
        HALLOWEENCANDY_6 = "You're not tricking me with that.", --"Raisins"
        HALLOWEENCANDY_7 = "It's not candy, but they're all right.", --Raisins
        HALLOWEENCANDY_8 = "I guess it's fine.", --Ghost Pop
        HALLOWEENCANDY_9 = "I love gummy worms!", --Jelly Worm
        HALLOWEENCANDY_10 = "I'm sure I loved it when I was like, 5.", --Tentacle Lolli
        HALLOWEENCANDY_11 = "Tch. Who doesn't like chocolate?", --Choco Pigs
        HALLOWEENCANDY_12 = "Oh, gross.", --ONI meal lice candy
        HALLOWEENCANDY_13 = "Man, I never liked these things.", --Griftlands themed candy
        HALLOWEENCANDY_14 = "I can take it!", --Hot Lava pepper candy
        CANDYBAG = "Trick or treat!",
		HALLOWEEN_ORNAMENT_1 = "A little poltergeist. Nothing but trouble.", --Ghost Decoration
		HALLOWEEN_ORNAMENT_2 = "It's a little bat.", --Bat Decoration
		HALLOWEEN_ORNAMENT_3 = "An itsy spider.", --Spider Decoration
		HALLOWEEN_ORNAMENT_4 = "Some nice decor to lighten the mood.", --Tentacle Decoration
		HALLOWEEN_ORNAMENT_5 = "I'm fine with them in toy form.", --Dangling Depth Dweller Decoration
		HALLOWEEN_ORNAMENT_6 = "A crow, perfect for Halloween!", --Crow Decoration 																 

		HALLOWEENPOTION_DRINKS_WEAK = "Mmmmmm. Needs something more.",
		HALLOWEENPOTION_DRINKS_POTENT = "Now this, this is a potion.",
        HALLOWEENPOTION_BRAVERY = "Stow your fear!", --Brew of Phobic Abatement
		HALLOWEENPOTION_MOON = "I dunno how it works, but it seems to transform things", --Steep Lunar Essence
		HALLOWEENPOTION_FIRE_FX = "When your fire isn't cool enough.", --Sulfuric Crystals of Lime
		MADSCIENCE_LAB = "Mad scientists are some cool, crazy nerds.",
		LIVINGTREE_ROOT = "Something's in there! I'll have to root it out.", 
		LIVINGTREE_SAPLING = "Just as scary as a baby.",

        DRAGONHEADHAT = "Tacky!",
        DRAGONBODYHAT = "Being the body is so lame.",
        DRAGONTAILHAT = "I hate this.",								
        PERDSHRINE =													 
				  
        {
            GENERIC = "It needs an offering.",
            EMPTY = "What do you want?",
            BURNT = "Guess not, then.",
        },
        REDLANTERN = "Now this is pretty sweet!",
        LUCKY_GOLDNUGGET = "I should hold on to this.",
        FIRECRACKERS = "I love playing with these! Hopefully mom never finds out.",
        PERDFAN = "This'll keep me nice and cool.",
        REDPOUCH = "What do we have here?",
        WARGSHRINE = 
        {
            GENERIC = "A cute little shrine.",
            EMPTY = "Let's get you a torch.",
            BURNING = "I should make something fun.", --for willow to override
            BURNT = "Whoops.",
        },
        CLAYWARG = 
        {
        	GENERIC = "Just as mean as the real deal!",
        	STATUE = "I don't trust that statue.",
        },
        CLAYHOUND = 
        {
        	GENERIC = "H-hey, stay back!",
        	STATUE = "Are you sure this thing's just a statue.",
        },
        HOUNDWHISTLE = "Dog whistles seem so cruel.",
        CHESSPIECE_CLAYHOUND = "Such detail!",
        CHESSPIECE_CLAYWARG = "Memories of the time I almost got mauled by a dog.",

		PIGSHRINE =
		{
            GENERIC = "Pig worship?",
            EMPTY = "I feed this thing meat??",
            BURNT = "Well that's done for.",
		},
		PIG_TOKEN = "I'll take that.",
		PIG_COIN = "It's some sort of money.",
		YOTP_FOOD1 = "Looks delicious!",
		YOTP_FOOD2 = "A meal fit for pigs.",
		YOTP_FOOD3 = "It's food I guess.",
		PIGELITE1 = "What are you looking at?", --BLUE
		PIGELITE2 = "Bring it on!", --RED
		PIGELITE3 = "I can take you!", --WHITE
		PIGELITE4 = "You want some?!", --GREEN

		PIGELITEFIGHTER1 = "What are you looking at?", --BLUE
		PIGELITEFIGHTER2 = "Bring it on!", --RED
		PIGELITEFIGHTER3 = "I can take you!", --WHITE
		PIGELITEFIGHTER4 = "You want some?!", --GREEN

		CARRAT_GHOSTRACER = "That's...",

        YOTC_CARRAT_RACE_START = "It's a good enough place to start.",
        YOTC_CARRAT_RACE_CHECKPOINT = "You've made your point.",
        YOTC_CARRAT_RACE_FINISH =
        {
            GENERIC = "It's really more of a finish circle than a line.",
            BURNT = "It's all gone up in flames!",
            I_WON = "Heh, heh, what can I say, I'm just great at everything, I guess!",
            SOMEONE_ELSE_WON = "This loss is only motivation for next time, {winner}!",
        },						
		YOTC_CARRAT_RACE_START_ITEM = "Well, it's a start.",
        YOTC_CARRAT_RACE_CHECKPOINT_ITEM = "That checks out.",
		YOTC_CARRAT_RACE_FINISH_ITEM = "The end's in sight.",
		YOTC_SEEDPACKET = "Looks pretty seedy, if you ask me.",
		YOTC_SEEDPACKET_RARE = "Hey there, fancy-plants!",
		MINIBOATLANTERN = "It's a latern.",
        YOTC_CARRATSHRINE =
        {
            GENERIC = "We're really worshipping rodents, now, huh.",
            EMPTY = "What do you even want from me?",
            BURNT = "Yeah it's for the best.",										
        },
        YOTC_CARRAT_GYM_DIRECTION = 		  
        {
            GENERIC = "This'll get things moving in the right direction.",
            RAT = "That way!",
            BURNT = "Well then.",
        },
        YOTC_CARRAT_GYM_SPEED = 			   
        {
            GENERIC = "I'll make you a star!",
            RAT = "Give it your all!",
            BURNT = "I may have overdone it.",
							 
        },
        YOTC_CARRAT_GYM_REACTION = 
														 
					   
        {
            GENERIC = "There's more training to do!",
            RAT = "Think fast!",
            BURNT = "No good, no good.",
        },
        YOTC_CARRAT_GYM_STAMINA = 
        {
            GENERIC = "Let's work that cardio!",
            RAT = "Keep going, you got it!",
            BURNT = "Oops.",
        }, 

        YOTC_CARRAT_GYM_DIRECTION_ITEM = "Let's get training.",
        YOTC_CARRAT_GYM_SPEED_ITEM = "This'll get you up to speed.",
        YOTC_CARRAT_GYM_STAMINA_ITEM = "This'll help your stamina.",
        YOTC_CARRAT_GYM_REACTION_ITEM = "This'll help your reaction. Just need to put it together.",

        YOTC_CARRAT_SCALE_ITEM = "I can find out how good my rat is.",           
        YOTC_CARRAT_SCALE = 
        {
            GENERIC = "Let's see how we're doing.",
            CARRAT = "Meh. Needs work.",
            CARRAT_GOOD = "We're ready.",
            BURNT = "Well.",
        },                

        YOTB_BEEFALOSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "What do beefalo like?",
            BURNT = "It's a bunch of nothing now.",
        },

        BEEFALO_GROOMER =
        {
            GENERIC = "Now I just need a beefalo.",
            OCCUPIED = "I've never been the ranching type... Let's see how this goes.",
            BURNT = "It's not grooming anything now.",
        },
        BEEFALO_GROOMER_ITEM = "Let's set up shop.",

		BISHOP_CHARGE_HIT = "Ow ow ow!",
		TRUNKVEST_SUMMER = "My aviator's coat is just cooler. Sorry.",
		TRUNKVEST_WINTER = "I'll stick with my aviator's coat.",
		TRUNK_COOKED = "I guess food is food.",
		TRUNK_SUMMER = "It's a trunk. Why I have it, I'm not sure.",
		TRUNK_WINTER = "It feels so rough.",
		TUMBLEWEED = "It really is Yucca Desert all over again.",
		TURKEYDINNER = "I'm so spoiled.",
		TWIGS = "They're nice to chew on when I don't have a toothpick.",
		UMBRELLA = "It'll keep me dry.",
		GRASS_UMBRELLA = "This'll do.",
		PALMLEAF_UMBRELLA = "Well, it works.",
		UNIMPLEMENTED = "Needs work.",
		WAFFLES = "You can never go wrong with waffles.",
		WALL_HAY = 
		{	
			GENERIC = "A waste of time is all this is.",
			BURNT = "Yep.",
		},
		WALL_HAY_ITEM = "Useless.",
		WALL_STONE = "Nice and sturdy.",
		WALL_STONE_ITEM = "A proper wall, I'll give you that.",
		WALL_RUINS = "A very old wall.",
		WALL_RUINS_ITEM = "It's very old.",
		WALL_WOOD = 
		{
			GENERIC = "Okay, we're getting somewhere now.",
			BURNT = "Well I don't what I should have expected.",
		},
		WALL_WOOD_ITEM = "Wooden walls.",
		WALL_MOONROCK = "They're from out of this world.",
		WALL_MOONROCK_ITEM = "Light but sturdy.",
		FENCE = "It's a fence.",
        FENCE_ITEM = "It's about time we put up a fence.",
        FENCE_GATE = "It's a gate.",
        FENCE_GATE_ITEM = "It's a gate.",
		WALRUS = "He's just jealous of me. I get it.",
		WALRUSHAT = "I'd always wanted an Air Force beret, so this'll have to do!",
		WALRUS_CAMP =
		{
			EMPTY = "Whoever was here is long gone.",
			GENERIC = "The homeowners are massive wads.",
		},
		WALRUS_TUSK = "Cool, a tusk.",
		WARDROBE = 
		{
			GENERIC = "Even in the wild, a variety of dress is a must.",
            BURNING = "Good going, idiots.",
			BURNT = "It's not holding anything now.",
		},
		WARG = "You're one ugly mutt.",
		WASPHIVE = "Aah! Wasps!!",
		WATERBALLOON = "Who doesn't enjoy a good old water balloon fight?",
		WATERMELON = "It's get a thicker skull than Lloyd.",
		WATERMELON_COOKED = "Good stuff.",
		WATERMELONHAT = "Are you. Serious.",
		WAXWELLJOURNAL = "Mine now, chump!",
		WETGOOP = "Ew.",
        WHIP = "Eh. Star Wars is cooler.",
		WINTERHAT = "Boy's gotta keep his head warm.",
		WINTEROMETER = 
		{
			GENERIC = "Knowing the weather is important.",
			BURNT = "Nice going.",
		},

        WINTER_TREE =
        {
            BURNT = "YOU ANIMALS!!",
            BURNING = "*Sigh*",
            CANDECORATE = "Something everyone can enjoy!",
            YOUNG = "I can't wait!",
        },
		WINTER_TREESTAND = 
		{
			GENERIC = "Now I just need a tree.",
            BURNT = "*Sigh...*",
		},
        WINTER_ORNAMENT = "I love hanging ornaments.",
        WINTER_ORNAMENTLIGHT = "What's a Christmas tree without lights?",
        WINTER_ORNAMENTBOSS = "Tch. Too easy.",
		WINTER_ORNAMENTFORGE = "I should hang this one over a fire.",
		WINTER_ORNAMENTGORGE = "For some reason it makes me hungry.",

        WINTER_FOOD1 = "Mom made the best gingerbread houses.", --gingerbread cookie
        WINTER_FOOD2 = "I love these.", --sugar cookie
        WINTER_FOOD3 = "Don't mind if I do.", --candy cane
        WINTER_FOOD4 = "Not even YOU can make me eat this.", --fruitcake
        WINTER_FOOD5 = "Not bad.", --yule log cake
        WINTER_FOOD6 = "You can never go wrong with pudding.", --plum pudding
        WINTER_FOOD7 = "Apple cider, oh boy!", --apple cider
        WINTER_FOOD8 = "I miss home.", --hot cocoa
        WINTER_FOOD9 = "Eggnog's good.", --eggnog

		WINTERSFEASTOVEN =
		{
			GENERIC = "Let's cook!",
			COOKING = "It's cooking.",
			ALMOST_DONE_COOKING = "I can smell the deliciousness!",
			DISH_READY = "Yum!",
		},
		BERRYSAUCE = "Some delicious sauce.",
		BIBINGKA = "Soft and spongy.",
		CABBAGEROLLS = "Hmmm.",
		FESTIVEFISH = "Seafood?",
		GRAVY = "It's all gravy.",
		LATKES = "Not bad.",
		LUTEFISK = "What's this stuff?",
		MULLEDDRINK = "Punch, huh?",
		PANETTONE = "This Yuletide bread really rose to the occasion.",
		PAVLOVA = "I love good Pavlova.",
		PICKLEDHERRING = "Pickles are alright, I guess.",
		POLISHCOOKIE = "I'll polish off this whole plate!",
		PUMPKINPIE = "It tastes great!",
		ROASTTURKEY = "I see a big juicy drumstick with my name on it.",
		STUFFING = "That's the good stuff!",
		SWEETPOTATO = "Yes please!",
		TAMALES = "If I eat much more I'm going to start feeling a bit husky.",
		TOURTIERE = "Pleased to eat you.",

		TABLE_WINTERS_FEAST = 
		{
			GENERIC = "A feastival table.",
			HAS_FOOD = "Time to eat!",
			WRONG_TYPE = "It's not the season for that.",
			BURNT = "Who would do such a thing?",
		},

		GINGERBREADWARG = "I'ma eat ya!", 
		GINGERBREADHOUSE = "Cool.", 
		GINGERBREADPIG = "Go bother someone who cares.",
		CRUMBS = "Those Hansel and Gretel twerps were pretty smart with this idea.",
		WINTERSFEASTFUEL = "The spirit of the season!",

        KLAUS = "You think you can take me on, big man? Let's dance.",
        KLAUS_SACK = "I bet there's all sorts of cool stuff inside.",
		KLAUSSACKKEY = "Hurry up and open the sack!",
		WORMHOLE =
		{
			GENERIC = "What sorta weird alien crap is this?",
			OPEN = "Don't tell me...",
		},
		WORMHOLE_LIMITED = "I dunno, dude.",
		ACCOMPLISHMENT_SHRINE = "Ken, future Air Force pilot!",        
		LIVINGTREE = "Oh get over it, it's just some stupid tree...",
		ICESTAFF = "I'll freeze anything that gets in my way!",
		REVIVER = "Feels funny.",
		SHADOWHEART = "Creepy.",
        ATRIUM_RUBBLE = 
        {
			LINE_1 = "This gives me a bad feeling.",
			LINE_2 = "I can't tell what this is.",
			LINE_3 = "I don't like the looks of that.",
			LINE_4 = "Oh gosh! What are they doing?",
			LINE_5 = "It's a city from the future. Or past, I guess? I dunno.",
		},
        ATRIUM_STATUE = "These creep me out.",
        ATRIUM_LIGHT = 
        {
			ON = "I really don't wanna be down here anymore...",
			OFF = "What's this?",
		},
        ATRIUM_GATE =
        {
			ON = "It's on.",
			OFF = "It's not doing a whole lot.",
			CHARGING = "What's it doing?",
			DESTABILIZING = "Hang on to something!",
			COOLDOWN = "...Christ...",
        },
        ATRIUM_KEY = "This looks useful.",
		LIFEINJECTOR = "This'll get anyone in tip-top shape!",
		SKELETON_PLAYER =
		{
			MALE = "What a chump.",
			FEMALE = "What a chump.",
			ROBOT = "What a chump.",
			DEFAULT = "What a chump.",
		},
		HUMANMEAT = "Oh God...",
		HUMANMEAT_COOKED = "I've heard all sorts of military horror stories, but...",
		HUMANMEAT_DRIED = "I can't...",
		ROCK_MOON = "From another world.",
		MOONROCKNUGGET = "I wonder what it's like on the moon.",
		MOONROCKCRATER = "It's a crater.",
		MOONROCKSEED = "Huh.",

        REDMOONEYE = "What do you want? Shut up.",
        PURPLEMOONEYE = "What do you want? Shut up.",
        GREENMOONEYE = "My PSI allows me to know where it always is.",
        ORANGEMOONEYE = "My PSI allows me to know where it always is.",
        YELLOWMOONEYE = "What do you want? Shut up.",
        BLUEMOONEYE = "What do you want? Shut up.",
		
		FLOTSAM = "I wonder if there's any sunken goodies in there.",
		
		SUNKEN_BOAT = 
		{
			GENERIC = "I can't believe people think you're cool.",
			ABANDONDED = "Rude.",
		},
		SUNKEN_BOAT_BURNT = "You'd have to be a real loser to pull that off.",
   		SUNKEN_BOAT_TRINKET_1 = "Yuck, looks like something we'd use in geometry.", --sextant
		SUNKEN_BOAT_TRINKET_2 = "Model planes are cooler.", --toy boat
		SUNKEN_BOAT_TRINKET_3 = "Won't be much use now.", --candle
		SUNKEN_BOAT_TRINKET_4 = "It's like some alien... thing. I dunno.", --sea worther
		SUNKEN_BOAT_TRINKET_5 = "My boots are better.", --boot
		
		--- CAPY DLC ------------------------------------------------------------------------------------------------
		
		--STUFFEDEGGPLANT = "I'll be stuffed after eating this!",
		SUNKBOAT = "Not my fault.",
		--BANANAPOP = "No, not brain freeze! I need that for science!",
		--BISQUE = "Cooking that sure kept me bisque-y!",
		--CEVICHE = "Can I get a bigger bowl? This one looks a little shrimpy.",
		--SEAFOODGUMBO = "It's a jumbo seafood gumbo.",
		--SURFNTURF = "It's perf!",
		SHARKFINSOUP = "I've heard of this stuff before, but to try it...!",
		--LOBSTERDINNER = "If I eat it in the morning is it still dinner?",
		--LOBSTERBISQUE = "Could use more salt, but that's none of my bisque-ness.",
		JELLYOPOP = "Yum!",
		--SWEATERVEST = "This vest is dapper as all get-out.",
		--REFLECTIVEVEST = "Keep off, evil sun!",
		--HAWAIIANSHIRT = "It's not lab safe!",
		--TAFFY = "My dentist'd get mad if I ate this... but I don't have one.",

		ANTIVENOM = "Ugh. That's bitter, in the good way.",
		VENOMGLAND = "My survival instincts say to hold on to that.",
		BLOWDART_POISON = "The weakling's answer to problems.",
		OBSIDIANMACHETE = "Swish, swash! I'm looking outfitted now.",
		SPEARGUN_POISON = "Careful, the tip has an extra surprise.",
		OBSIDIANSPEARGUN = "Now we're talking.",
		LUGGAGECHEST = "We got one of these in the cellar back home.",
		PIRATIHATITATOR =
		{
			GENERIC = "Very... thematic.",
			BURNT = "Oh well.",
		},
		COFFEEBEANS = "I found coffee beans!",
		COFFEE = "Bleh! Why do adults love this crap?",
		COFFEEBEANS_COOKED = "Roasted coffee beans.",
		COFFEEBUSH =
		{
			BARREN = "Not growing.",
			WITHERED = "It's not liking this heat.",
			GENERIC = "Hm. Looks like coffee beans.",
			PICKED = "They'll grow back.",
		},
		COFFEEBOT = "Some dumb coffee machine.",
		MUSSEL = "Shellfish? Don't mind if I do.",
		MUSSEL_FARM =
		{
			 GENERIC = "There's a lotta clams down there.",
			 STICKPLANTED = "We're eating good tonight!"
		},

		MUSSEL_STICK = "Time to fish me some mussel.",
		LOBSTER = "It's a real lobster!",
		LOBSTERHOLE = "A home for lobsters.",
		SEATRAP = "Time to find me some dinner.",
		SAND_CASTLE =
		{
			SAND = "Minnie and Mimmie make great sand castles. With big bro Ken's help, of course!",
			GENERIC = "Minnie and Mimmie make great sand castles. With big bro Ken's help, of course!"
		},
		BOATREPAIRKIT = "Always keep your craft in tip-top shape!",

		BALLPHIN = "It's sorta cute.",
		BOATCANNON = "Time to create my battleship!",
		BOTTLELANTERN = "Good, finally something useful!",
		BURIEDTREASURE = "Let's see what goodies you have for ol' Ken.",
		BUSH_VINE =
		{
			BURNING = "Nice. Real nice.",
			BURNT = "Good going.",
			CHOPPED = "I chopped it good.",
			GENERIC = "They're just waiting to trip me, I know it.",
		},
		CAPTAINHAT = "Yawn, pilots are way cooler.",
		COCONADE =
		{
			BURNING = "This'll be fun.",
			GENERIC = "Gunpowder is deadly because of its expansive properties when lit. I'll be honest, this is a genius idea.",
		},
		CORAL = "Cool!",
		CORALREEF = "That's nice.",
		CRABHOLE = "I know you're in there.",
		CUTLASS = "I'd prefer my old, trusty bat.",
		DUBLOON = "It's gotta be worth something, even out here.",
		FABRIC = "It feels nice to touch.",
		FISHINHOLE = "Plenty of sea life.",
		GOLDENMACHETE = "Should be useful in these jungles.",
		JELLYFISH = "Brainless.",
		JELLYFISH_DEAD = "That sucks.",
		JELLYFISH_COOKED = "It's... mushy.",
		JELLYFISH_PLANTED = "Excuse me?",
		JELLYJERKY = "Well, mom says never to waste food...",

		LIMPETROCK =
		{
			GENERIC = "Look at all the snails!",
			PICKED = "There's nothing left.",
		},
		LOGRAFT = "Anything to get me off this island.",
		MACHETE = "Any survivialist would appreciate one.",
		MESSAGEBOTTLEEMPTY = "My dad and I were working on a ship in a bottle before... all this.",
		MOSQUITO_POISON = "Those aren't normal mosquitos...",
		OBSIDIANCOCONADE = "My own frag grenade. I'm a bit of a genius.",
		OBSIDIANFIREPIT =
		{
			EMBERS = "Fire's about done.",
			GENERIC = "It's very warm.",
			HIGH = "I can feel the heat from so far away!",
			LOW = "It's a little low.",
			NORMAL = "So cozy.",
			OUT = "Fire's out.",
		},
		OX = "Sup, smelly.",
		PIRATEHAT = "I guess I'd make a good captain.",
		RAFT = "Well it floats, at least.",
		ROWBOAT = "I guess boats aren't TOO far from aircraft.",
		SAIL = "Good, I'm tired of rowing.",
		SANDBAG_ITEM = "It'll help with flooding.",
		SANDBAG = "It'll help with flooding.",
		SEASACK = "Perfect, I'm always on the move!",
		SEASHELL_BEACHED = "This one's all white.",
		SEAWEED = "Seaweed.",

		SEAWEED_PLANTED = "It's very useful for wrapping sushi, you know.",
		SLOTMACHINE = "Mom doesn't like me messing with them.",
		SNAKE_POISON = "I'm not scared of you!",
		SNAKESKIN = "Serves you right.",
		SNAKESKINHAT = "Hm. Fashionable.",
		SOLOFISH = "Now that's just silly.",
		SPEARGUN = "Pew pew pew!",
		--SPOILED_FISH = "I'm not terribly curious about the smell.",
		SWORDFISH = "Does everything here have to have the worst attitude??",
		TRIDENT = "Not bad.",
		--TRINKET_13 = "What is this substance?",
		--TRINKET_14 = "This thing gives me the creeps...",
		--TRINKET_15 = "Incredible! This guitar has undergone shrinkification!",
		--TRINKET_16 = "How did this get all the way out here?",
		--TRINKET_17 = "Where's the other one?",
		--TRINKET_18 = "A relic of a bygone era!",
		--TRINKET_19 = "Clouding of the brain. Never heard of it...",
		TURBINE_BLADES = "Don't remind me of that twerp.",
		TURF_BEACH = "Take paradise with you.",
		TURF_JUNGLE = "It's very tropical.",
		VOLCANO_ALTAR =
		{
			GENERIC = "Of course this place has something absolutely crazy to it.",
			OPEN = "Hey, I worked hard for my food, and you think you're owed a piece?!",
		},
		VOLCANO_ALTAR_BROKEN = "And I thought Ana's meltdowns were bad.",
		WHALE_BLUE = "Why so sad?",
		WHALE_CARCASS_BLUE = "Dude...",
		WHALE_CARCASS_WHITE = "Dude...",

		ARMOR_SNAKESKIN = "Fashionable.",
		CLOTHSAIL = "Good, I'm tired of rowing.",
		DUG_COFFEEBUSH = "Where to plant, where to plant...",
		LAVAPOOL = "Careful.",
		BAMBOO = "I can could probably thwack something good with this!",
		AERODYNAMICHAT = "It's not quite my style.",
		POISONHOLE = "That looks dangerous.",
		BOAT_LANTERN = "Seems important, wouldn't you think?",
		DEAD_SWORDFISH = "No one bests Ken.",
		LIMPETS = "What exactly are we doing with them?",
		OBSIDIANAXE = "Nice.",
		COCONUT = 
		{
		    GENERIC = "Harder headed than me, yeah, yeah, very funny.",
		    PLANTED = "It'll grow into a nice palm tree.",
		},
		COCONUT_COOKED = "It's very sweet!",
		BERMUDATRIANGLE = "What in the world?",
		SNAKE = "Don't mess with me I don't mess with you.",
		SNAKEOIL = "What a bunch of baloney.",
		ARMORSEASHELL = "No. Thanks.",
		SNAKE_FIRE = "Is that snake smoldering?", --idk if this is implemented
		MUSSEL_COOKED = "Roasted it real nice.",

		PACKIM_FISHBONE = "Ew.",
		PACKIM = "Weird.",

		ARMORLIMESTONE = "I'd rather drop dead.",
		TIGERSHARK = "This. This is why air planes will always be cooler!!",
		WOODLEGS_KEY1 = "Now I just need a lock.",
		WOODLEGS_KEY2 = "Some stupid key.",
		WOODLEGS_KEY3 = "Who cares.",
		WOODLEGS_CAGE = "Hey, I got an idea. He's probably locked up for a good reason. Leave it be.",
		OBSIDIAN_WORKBENCH = "I can make all sorts of cool things here.",

		NEEDLESPEAR = "JEEEEEZ that's a big needle!",
		LIMESTONE = "It's surprisingly soft.",
		DRAGOON = "Nothing but trouble.",

		ICEMAKER = 
		{
			OUT = "Outta juice.",
			VERYLOW = "Aw, just a little longer?",
			LOW = "It doesn't have much energy left.",
			NORMAL = "Look at it go!",
			HIGH = "Wow, look at it go!",
		},

		DUG_BAMBOOTREE = "I should plant this.",
		BAMBOOTREE =
		{
			BURNING = "Someone should do something about that.",
			BURNT = "Nice. Real nice.",
			CHOPPED = "I got all the bamboo I can carry!",
			GENERIC = "Bamboo.",
		},
		JUNGLETREE =
		{
			BURNING = "Good going.",
			BURNT = "Nice. Real nice.",
			CHOPPED = "I'm pretty strong, heh heh.",
			GENERIC = "I've dreamed of getting to see such vibrant wildlife...",
		},
		SHARK_GILLS = "Fish need them to breathe.",
		TREEGUARD = "Oh get over yourself, it's the circle of life, bub.",
		OBSIDIAN = "I think this comes from lava.",
		BABYOX = "Aw!",
		STUNGRAY = "If it's anything like normal skunks, I'll be staying away.",
		SHARK_FIN = "Cool.",
		FROG_POISON = "I should be careful with these frogs.",
		ARMOUREDBOAT = "My very own dreadnought.",
		ARMOROBSIDIAN = "Way too heavy.",
		BIOLUMINESCENCE = "Huh.",
		SPEAR_POISON = "Just stabbing things wasn't enough.",
		SPEAR_OBSIDIAN = "It's much stronger.",
		SNAKEDEN =
		{
			BURNING = "Nice. Real nice.",
			BURNT = "Good going.",
			CHOPPED = "I chopped it good.",
			GENERIC = "They're just waiting to trip me, I know it.",
		},
		TOUCAN = "Sup.",
		--MESSAGEBOTTLE = "Maybe it's a treasure map!",
		SAND = "It always gets places you don't want it.",
		SANDHILL = "Sand, sand...",
		PEACOCK = "Aren't you pretty?",
		VINE = "Sturdy.",
		SUPERTELESCOPE = "Should be useful.",
		SEAGULL = "Ugh. Stay in Ellay!",
		SEAGULL_WATER = "Ugh. Stay in Ellay!",
		PARROT = "Oh stop your yapping.",
		ARMOR_LIFEJACKET = "About time you considered my livelihood.",
		WHALE_BUBBLES = "Is something down there?",
		EARRING = "Mom says I can't get my ears pierced if I wanna be a professional baseball player.",
		ARMOR_WINDBREAKER = "It's certainly a style.",
		SEAWEED_COOKED = "If only I had sushi.",
		CARGOBOAT = "It has lots of storage.",
		GASHAT = "My lungs will love this.",
		ELEPHANTCACTUS = "It's a big cactus.",
		DUG_ELEPHANTCACTUS = "I know just the spot for you.",
		ELEPHANTCACTUS_ACTIVE = "I'll keep my distance.",
		ELEPHANTCACTUS_STUMP = "All the needles are gone.",
		FEATHERSAIL = "It's so light, but so fast!",
		WALL_LIMESTONE_ITEM = "I should place these.",
		JUNGLETREESEED =
        {
            GENERIC = "Don't let the size fool you.",
            PLANTED = "A sapling.",
        },
		VOLCANO = "You want me to climb that? Of course you do.",
		IRONWIND = "Now we're talkin.",
		SEAWEED_DRIED = "I dried it nice!",
		TELESCOPE = "It'll be useful at sea.",
		
		DOYDOY = "You dum dums are a danger to yourselves.",
		DOYDOYBABY = "You're lucky you're sorta cute.",
		DOYDOYEGG = "It's still alive.",
		DOYDOYEGG_CRACKED = "Oops...",
		DOYDOYFEATHER = "It's so pretty, almost makes me- ACHOO!",

		PALMTREE =
		{
			BURNING = "Nice going.",
			BURNT = "Nice. Real nice.",
			CHOPPED = "All chopped.",
			GENERIC = "We don't have trees like these back home.",
		},
		PALMLEAF = "I could probably use them for somethn.",
		CHIMINEA = "We could use of this in our backyard in Podunk.",
		DOUBLE_UMBRELLAHAT = "Fancy!",
		CRAB = 
		{
			GENERIC = "Better hope I don't get hungry.",
			HIDDEN = "I know you're there.",
		},
		TRAWLNET = "This should be useful.",
		TRAWLNETDROPPED = 
		{
			SOON = "Well then.",
			SOONISH = "Hey, my net!",
			GENERIC = "Let's see here...",
		},
		VOLCANO_EXIT = "That leads to outside.",
		SHARX = "All bite! I'll show you!",
		SEASHELL = "She sells sea shells.",
		WHALE_BUBBLES = "I think something's down there.",
		MAGMAROCK = "A bunch of shiny rocks.",
		MAGMAROCK_GOLD = "Is that... gold?",
		CORAL_BRAIN_ROCK = "Strange.",
		CORAL_BRAIN = "I could totally use this for school!",
		SHARKITTEN = "They're cute now, but just you wait.",
		SHARKITTENSPAWNER = 
		{
			GENERIC = "Home to kitties.",
			INACTIVE = "Nothing's there right now.",
		},
		LIVINGJUNGLETREE = "Sup, dude?",
		WALLYINTRO_DEBRIS = "That one... is my bad.",
		MERMFISHER = "What're you looking at, ugly?",
        PRIMEAPE = "Bastards just want my stuff.",
        PRIMEAPEBARREL = "A home for some up to no good monkeys ",
        REDBARREL = "Looks explosive.",
        PORTAL_SHIPWRECKED = "It's broken.",
		MARSH_PLANT_TROPICAL = "It's very tropical.",
		TELEPORTATO_SW_POTATO = "It's a fake potato.",
		PIKE_SKULL = "Oh, jeez...",
		PALMLEAF_HUT = "Just 5 minutes to relax. That's all I ask.",
		FISH_RAW_SMALL_COOKED = "More a snack than a meal.",
		LOBSTER_DEAD = "We were never fancy enough.",
		MERMHOUSE_FISHER = "What a dump.",
		WILDBORE = "Are yo- UGH, I didn't you could SMELL any worse!",
		PIRATEPACK = "It prints money!",
		TUNACAN = "Yeesh. That desperate, huh?",
		MOSQUITOSACK_YELLOW = "Gross.",
		SANDBAGSMALL = "It'll help with flooding.",
		FLUP = "I hate you.",
		OCTOPUSKING = "Sup.",
		OCTOPUSCHEST = "I know, I'm great, huh.",
		GRASS_WATER = "It seems to like the water.",
		WILDBOREHOUSE = "Probably a mess inside.",
		FISH_RAW_SMALL = "Tiny bite-sized fish.",
		TURF_SWAMP = "It's all... gross.",
		FLAMEGEYSER = "Ah! Careful.",
		KNIGHTBOAT = "Bring it on!",
		MANGROVETREE_BURNT = "That's unfortuanate.",
		TIDAL_PLANT = "It's a plant.",
		WALL_LIMESTONE = "Nice and strong.",
		FISH_RAW = "A nice piece of fish meat.",
		LOBSTER_DEAD_COOKED = "Looks tasty!",
		BLUBBERSUIT = "That's. GROSS.",
		BLOWDART_FLUP = "Weird.",
		TURF_MEADOW = "Turf.",
		TURF_VOLCANO = "It's very black.",
		SWEET_POTATO = "Sweet potato. Self-explanatory.",
		SWEET_POTATO_COOKED = "It's not bad.",
		SWEET_POTATO_PLANTED = "What does it like to you, genius?",
		SWEET_POTATO_SEEDS = "Seeds.",
		BLUBBER = "Gross.",
		TELEPORTATO_SW_RING = "A ring for that thingy. You know.",
		TELEPORTATO_SW_BOX = "What's with this junk?",
		TELEPORTATO_SW_CRANK = "Some crank.",
		TELEPORTATO_SW_BASE = "It's missing something.",
		VOLCANOSTAFF = "You shouldn't trust me with such power.",
		THATCHPACK = "It'll store some stuff. Not much though.",
		TURF_DESERTDIRT = "Dirty turf.",
		SHARK_TEETHHAT = "It's pretty nice.",
		TURF_ASH = "Ashy.",
		TURF_FUNGUS_GREEN = "It's all green and fungusy",
		BOAT_TORCH = "Finally, something useful.",
		MANGROVETREE = "Water trees.",
		HAIL_ICE = "Hail? Oh jeez.",
		TROPICAL_FISH = "Tropical fish.",
		TIDALPOOL = "A lot of fish down there.",
		WHALE_WHITE = "Looks like a challenge. I like that.",
		VOLCANO_SHRUB = "It's covered in ash.",
		ROCK_OBSIDIAN = "It's.",
		ROCK_CHARCOAL = "Imagine how many barbeques you could have with that thing!",
		DRAGOONDEN = "A reptilian home.",
		WILBUR_UNLOCK = "Don't think your getup makes you any more civilized.",
		WILBUR_CROWN = "What a dinky piece of junk.",
		TWISTER = "Of course. It's always something trying to piss me off!",
		TWISTER_SEAL = "You. Are NOT out of the clear for that...",
		MAGIC_SEAL = "It's brimming with power.",
		SAIL_STICK = "I control the winds, ME!!",
		WIND_CONCH = "The winds are calling.",
		DRAGOONEGG = "Jeeeez.",
		BUOY = "Cool. I don't care.", 
		TURF_SNAKESKINFLOOR = "Cool.",
        DOYDOYNEST = "A dumb nest for dumb birds.",
		ARMORCACTUS = "No friggin' thanks.",
		BIGFISHINGROD = "I'll show you how the pros do it.",
		BRAINJELLYHAT = "I could use this for school!",
		COCONUT_HALVED = "They'd make for fitting cups.",
		CRATE = "All sorts of cargo.",
		DEPLETED_BAMBOOTREE = "It'll grow back!",
		DEPLETED_BUSH_VINE = "It'll grow back eventually.",
		DEPLETED_GRASS_WATER = "Maybe it'll grow back.",
		DOYDOYEGG_COOKED = "Nice and scrambled.",
		DRAGOONHEART = "Hahaha! I win, I win!!",
		DRAGOONSPIT = "Hey! You watch it!",
		DUG_BUSH_VINE = "I can take it with me.",
		--FRESHFRUITCREPES = "Sugary fruit! Part of a balanced breakfast.",
		KRAKEN = "*Siiiiigghhh...*",
		KRAKENCHEST = "Too easy.",
		KRAKEN_TENTACLE = "Ah!",
		MAGMAROCK_FULL = "A bunch of shiny rocks.",
		MAGMAROCK_GOLD_FULL = "Is that... gold?",
		MONKEYBALL = "It's a nice distraction!",
		--MONSTERTARTARE = "There's got to be something else to eat around here.",
		MUSSELBOUILLABAISE = "Soupy.",
		MYSTERYMEAT = "It makes ME wanna hurl.",
		OXHAT = "Not even you can force me to wear it.",
		OX_FLUTE = "Seems... useful.",
		OX_HORN = "I'll hold on to your horn, at least.",
		PARROT_PIRATE = "Obnoxious little brat.",
		PEG_LEG = "Meh. I can use to bash some skulls in.",
		PIRATEGHOST = "Yaaar...?",
		SANDBAGSMALL_ITEM = "I'll keep the waters at bay all by myself!",
		SHADOWSKITTISH_WATER = "I'll crush you like the bug you are.",
		SHIPWRECKED_ENTRANCE = "Adventure awaits!",
		SHIPWRECKED_EXIT = "I've had enough paradise.",
		SNAKESKINSAIL = "Nice. I was tired of rowing.",
		SPEAR_LAUNCHER = "Awesome!!",
		SWEETPOTATOSOUFFLE = "Grandma made something like this once.",
		SWIMMINGHORROR = "I'm going crazy...",
		TIGEREYE = "You put up a good fight. I'm just stronger.",
		--TRINKET_20 = "I'm not sure what it is, but it makes me feel smarter!",
		--TRINKET_21 = "I ought to measure it to ensure it's to scale.",
		--TRINKET_22 = "I'm sure someone would like this.",
		TURF_FUNGUS_RED = "Half red, half fungus.",
		TURF_MAGMAFIELD = "Do I trust this flooring?",
		TURF_TIDALMARSH = "It's all soggy...",
		VOLCANO_ALTAR_TOWER = "Oh, man what am I getting myself into...",
		WATERYGRAVE = "Someone should be more careful.",
		WHALE_TRACK = "I'm on your trail!",
		WILDBOREHEAD = "Savages.",
		WOODLEGSBOAT = "Nice dreadnought.",
		WOODLEGSHAT = "It's nice, I guess.",
		WOODLEGSSAIL = "Nice, I was getted tired of rowing.",
		WRECK = "Someone wasn't careful.",
		INVENTORYGRAVE = "Who does this belong to?",
        INVENTORYMOUND = "Who does this belong to?",
		LIMPETS_COOKED = "I'd still rather not.",
		RAWLING = "I guess I have been pretty lonely...",
		--CALIFORNIAROLL = "But I don't have chopsticks.",



	--- 5C DLC ------------------------------------------------------------------------------------------------

        ENCRUSTEDBOAT = "My very own dauntless.",
        BABYOX = "A little smelly.",
        BALLPHINHOUSE = "Not bad.",
        DORSALFIN = "Circle of life.",
        NUBBIN = "I wonder if I could make my own reef.",
        CORALLARVE = "They're so tiny.",
        RAINBOWJELLYFISH = "Nice.",
        RAINBOWJELLYFISH_PLANTED = "Huh?",
        RAINBOWJELLYFISH_DEAD = "Sucks.",
        RAINBOWJELLYFISH_COOKED = "I don't think I wanna try it.",
        RAINBOWJELLYJERKY = "Well, it's never right to waste food...",
        WALL_ENFORCEDLIMESTONE = "It's extra strong.",
        WALL_ENFORCEDLIMESTONE_ITEM = "It's extra strong.",
        CROCODOG = "I'm so tired of you.",
        POISONCROCODOG = "I'll show you venomous.",
        WATERCROCODOG = "Yeah, yeah, come here and drop dead already.",
        QUACKENBEAK = "Too easy.",
        QUACKERINGRAM = "This looks like it'll be fun.",
    
    --- DLC ------------------------------------------------------------------------------------------------    

        CAVIAR = "EW.",
        CORMORANT = "Sup, bird?",

        --FISH3 = "Surf and turf, hold the turf.",
        FISH4 = "I love the colors.", --Pierrot Fish
        FISH5 = "So bright and vibrant!", --Neon Quattro

        FISH3_COOKED = "I cooked it good.",
        FISH4_COOKED = "Niced and grilled.",
        FISH5_COOKED = "I think it's good to eat.",

        FISH_FARM = 
        {
        	EMPTY = "I need fish eggs first.",
			STOCKED = "Ugh. More waiting.",
			ONEFISH = "The eggs are hatching, about time!",
			TWOFISH = "There's so much fish now!",
			REDFISH = "Holy moly, look at all the fish!",
			BLUEFISH  = "Awesome, now to harvest!",
        },

        ROE = "Fish eggs.",
        ROE_COOKED = "I think it's edible.",
        
        SEA_YARD =
       	{
            ON = "It'll keep my boat in great condition.",
            OFF = "It's off now.",
            LOWFUEL = "It's running out of fuel.",
        },

        SEA_CHIMINEA = 
        {
            EMBERS = "Fire's about done.",
			GENERIC = "It's very warm.",
			HIGH = "I can feel the heat from so far away!",
			LOW = "It's a little low.",
			NORMAL = "So cozy.",
			OUT = "Fire's out.",
        }, 

        TAR = "Ugh, it's all... sticky!",
        TAR_EXTRACTOR =
        {
            ON = "Look at it go!",
            OFF = "It needs fuel.",
            LOWFUEL = "Not much juice left.",
        },
        TAR_POOL = "I wonder if I could get that tar.",

        TARLAMP = "A proper lamp!",
        TARSUIT = "It's tough to move in, that's for sure.",
        TAR_TRAP = "Heh heh. A nasty suprise.",

        TROPICALBOUILLABAISSE = "Fancy soup.",

        RESEARCHLAB5 = "I've never really done anything like this before.",
        WATERCHEST = "It'll keep my things nice and dry.",

		--PORKLAND SPEECH STARTS HERE

		PIG_PALACE = "I'd make a cool prince.",
		PIGMAN_QUEEN = "She's no Queen Mary.",
        PIG_SCEPTER = "It's very royal.",
        PIGCROWNHAT = "Prince Ninten, at your service.",
		PIGMAN_BEAUTICIAN = 
		{
			GENERIC = "Getting hair styled as nice as mine takes talent!",
			SLEEPING = "I'll bother them later.",
		},
		PIGMAN_ROYALGUARD = 
		{
			GENERIC = "Ye olde copper.",
			SLEEPING = "Sleeping on the job.",
		},
		PIGMAN_COLLECTOR = 
		{
			GENERIC = "Got anything cool?",
			SLEEPING = "I'll bother them later.",
		},
		PIGMAN_MAYOR = 
		{
			GENERIC = "Saving zoos and lost children is at the top of my resume, between you and me, heh.",
			SLEEPING = "Telling other people to do your job gets tiring.",
		},
		PIGMAN_BANKER = 
		{
			GENERIC = "He is very rich.",
			SLEEPING = "Hope your money is secured dude.",
		},
		PIGMAN_MINER = 
		{
			GENERIC = "Looking for truffles?",
			SLEEPING = "They look tired.",
		},
		PIGMAN_MECHANIC = 
		{
			GENERIC = "Hello!",
			SLEEPING = "I'll bother them another time.",
		},
		PIGMAN_FARMER = 
		{
			GENERIC = "Looking forward to good harvests!",
			SLEEPING = "Must be hard work.",
		},
		PIGMAN_FLORIST = 
		{
			GENERIC = "Hey, hey, flower-gal!",
			SLEEPING = "Ah, good night...",
		},
		PIGMAN_STOREOWNER = 
		{
			GENERIC = "Sup?",
			SLEEPING = "I'll leave them alone.",
		},
		PIGMAN_ERUDITE = 
		{
			GENERIC = "I'm not quite in my goth phase yet.",
			SLEEPING = "Don't let the bed bugs bite.",
		},
		PIGMAN_HATMAKER = 
		{
			GENERIC = "Note quite as cool as my baseball cap.",
			SLEEPING = "Someone should get you a sleeping cap.",
		},
		PIGMAN_PROFESSOR = 
		{
			GENERIC = "Ugh. I thought I escaped school...",
			SLEEPING = "I'll leave them alone.",
		},
		PIGMAN_HUNTER =
		{
			GENERIC = "Happy hunting!",
			SLEEPING = "Night night.",
		},
		RECONSTRUCTION_PROJECT = 
		{
			SCAFFOLD = "We're building something tubular, just you wait!",
			RUBBLE = "What a dump.",
		},
		PIG_SHOP_FLORIST = 
		{
			GENERIC = "Perfect for Mother's Day.",
			BURNING = "This place needs a fire department!",
		},
        PIG_SHOP_GENERAL = 
        {
        	GENERIC = "It's kinda like convenience strores of the time.",
        	BURNING = "This place needs a fire department!",
		},
        PIG_SHOP_HOOFSPA = 
        {
        	GENERIC = "I've never been to a spa before.",
        	BURNING = "Well that's not good.",
		},
        PIG_SHOP_PRODUCE = 
        {
        	GENERIC = "It's like a department store.",
        	BURNING = "Oh boy.",
		},
        PIG_SHOP_ARCANE = 
        {
        	GENERIC = "My PSI is bit like the occult, I think.",
        	BURNING = "Looks like someone put out a hex.",
        },
        PIG_SHOP_WEAPONS = 
        {
        	GENERIC = "A baseball bat is all I need.",
        	BURNING = "We could really use a fire department.",
        },
        PIG_SHOP_HATSHOP = 
        {
        	GENERIC = "Let's see if there's anything fashionable.",
        	BURNING = "Well that's not good.",
        },
        PIG_SHOP_ACADEMY = 
        {
        	GENERIC = "Ugh. Learning...",
        	BURNING = "Oh nooooo, it's on fire...",
        },
        TREE_PILLAR = "It's like that one story with the beans!",
        PIGHOUSE_CITY = 
        {
        	GENERIC = "Very homely.",
        	BURNING = "Oh no!",
		},
        PIGHOUSE_FARM = 
        {
        	GENERIC = "I've never been the farmer type, despite my rural upbringing.",
        	BURNING = "That's not good!",
		},
		PIGHOUSE_MINE = 
        {
        	GENERIC = "Hopefully we dig up some gold!",
        	BURNING = "We really oughta invest in a fire department...",
		},
        PIG_GUARD_TOWER = 
        {
        	GENERIC = "Think of it like a police station.",   
        	BURNING = "We're under siege!",
		},     
        CITY_LAMP = 
        {
        	GENERIC = "Gets the job done.",
        	ON = "Gets the job done.", --off
    	},
        DUNGBEETLE = 
        {
        	GENERIC = "Oh, I've heard of these guys before.",
        	UNDUNGED = "It's missing something...",
        	SLEEPING = "It's asleep.",
        	DEAD = "Circle of life my dude.",
        },
        DUNGBALL = "Gross.",
        DUNGPILE = 
		{
			GENERIC = "Yuck.",
			PICKED = "Okay, why'd I do that?",
		},
        PIGEON = 
        {
        	GENERIC = "Ah, a city bird.",
        	SLEEPING = "It's sleeping.",
        	DEAD = "It's sleeping forever.",
        },
        SPIDER_MONKEY = 
        {
        	GENERIC = "NOPE.",
        	SLEEPING = "Eh heh heh, get me out of heeeere duuuuuude!!",
        	DEAD = "Please be dead...",
        },

        SPIDER_MONKEY_TREE = "It's those thing's now, and they can keep it!",
        SPIDER_MONKEY_NEST = "I'll keep my distance, thanks.",
        TOPIARY = "Fancy.",
        LAWNORNAMENT = 
        {
        	GENERIC = "It makes your lawn feel special.",
        	BURNING = "Well that seems a little much.",
        	BURNT = "I guess charred is in.",
        },
        HEDGE = 
        {
        	GENERIC = "Nature's wall.",
        	SHAVEABLE = "We both could use a haircut.",
        	BURNING = "Oh that's on fire.",
        	BURNT = "So it's a no on hedges? Noted.",
        },
        RAINFORESTTREE = 
        {
        	GENERIC = "It's so vibrant!",
        	CHOPPED = "I chopped it.",
        	BURNING = "Someone should do something about that.",
        	BURNT = "Fire's out.",
        },
        RAINFORESTTREE_ROT = "Must be the poison.",
        
        FLOWER_RAINFOREST = "Ah... my allergies... don't like thaa-choo!",
        HALBERD = "Seems dangerous.",
        CHICKEN = 
        {
        	GENERIC = "Baak baak baaaak!",
        	SLEEPING = "Sleep tight.",
        	DEAD = "Well. Anyone for dinner?",
        },
        RUIN_GIANT_HEAD = "Someone let their ego get to them.",
        RUINS_ARTICHOKE = "...Why?",
        PIG_RUINS_ENTRANCE = 
        {
        	GENERIC = "Only one way to find out what waits.",
        	LOCKED = "I wonder what's inside",
        },
        PIG_RUINS_EXIT = "Freedom!",
        PIG_COIN = "Money.",
        GRASS_TALL = 
        {
        	GENERIC = "My hands are too stubby to pick this.",
        	PICKED = "There we go.",
        	BURNING = "Well.",
        },
        GLOWFLY = 
        {
        	GENERIC = "Whoa.",
        	SLEEPING = "Even bugs need sleep.",
        	DEAD = "Aw.",
        },
        GLOWFLY_COCOON = "It's turning into something horrible.",
        CHITIN = "It's bug skin.",
        HANGING_VINE = "I wanna swing on it!",
        GRABBING_VINE = "I wanna swing on it!",
        VENUS_STALK = "What can I do with this?",
        WALKINGSTICK = "It makes for a very nice cane. My gramps would love it.",
        ADULT_FLYTRAP = 
        {
        	GENERIC = "What big teeth you have!",
        	SLEEPING = "Better asleep.",
        	DEAD = "Much better dead.",
        },
        MEAN_FLYTRAP = 
        {
        	GENERIC = "Stay away, stay away, I don't wanna be your next meal!",
        	SLEEPING = "Let's not disturb it.",
        	DEAD = "Thank God...",
        },
        SNAPDRAGON = 
        {
        	GENERIC = "It looks like it hates human boys!",
        	SLEEPING = "I should be careful not to disturb.",
        	DEAD = "It's better that way.",
        },
        LILYPAD = "Pretty neat.",

        ZEB = 
        {
        	GENERIC = "Oh, hello!",
        	SLEEPING = "Sleep well.",
        	DEAD = "Oh, I'm sorry.",
        },
        SCORPION = 
        {
        	GENERIC = "Hey man, what the stinger!",
        	SLEEPING = "As long as it's not trying to kill me, we're cool.",
        	DEAD = "I think I got it.",
        },

        PEAGAWK = 
        {
        	GENERIC = "Um, hi! It's looking at me. A lot.", 
        	SLEEPING = "So long as it's not staring, we're cool.",
        	DEAD = "Dead.",
        },
        PEEKHEN = 
        {
        	GENERIC = "Um, hi! It's looking at me. A lot.", 
        	SLEEPING = "So long as it's not staring, we're cool.",
        	DEAD = "Dead.",
        }, 
        PEAGAWKFEATHERHAT = "Now I have extra eyesight!",
        PEAGAWK_BUSH = "Weird...",
        PEAGAWKFEATHER = "What're you looking at?",
        PEAGAWKFEATHER_PRISM = "What're you looking at?",
        ANTMAN = 
        {
        	GENERIC = "Man, what do they feed this things out here!",
        	SLEEPING = "Good night.",
        	DEAD = "Sorry, no pests.",
        },
        ANTHILL = "A giant ant's home.",
        ANTMASKHAT = "I am NOT putting that on my face.",
        ANTSUIT = "Nah, I don't desperately need to be a bug.",
        ANTMAN_WARRIOR = "This one is extra mean.",
 		ANTCHEST = "It's feeling to the brim with delicous honey!",
 		NECTAR_POD = "I wonder if I could make honey out of this.",
        
        PHEROMONESTONE = "I can understand those ant guys with this.",
        PIKO = 
        {
        	GENERIC = "Hey little squirrel guy.",
        	SLEEPING = "Sleep tight.",
        	DEAD = "Oh...",
        },
        
        RELIC_1 = {
        	GENERIC = "It's some sort of old relic.",
        	SUNKEN = "Old junk.",
        },
        RELIC_2 = {
        	GENERIC = "I'm like an archaeologist!",
        	SUNKEN = "There's something there.",
        },
        RELIC_3 = {
         	GENERIC = "It belongs in a museum.",
         	SUNKEN = "What's down there?",
        },
        RELIC_4 = {
        	GENERIC = "Looks old, but fancy.",
        	SUNKEN = "What's this?",
        },
        RELIC_5 = {
         	GENERIC = "Old  treasure, I think.",
         	SUNKEN = "I got something!",
        },

        REEDS_WATER = "Reeds.",
        LOTUS = "It's in bloom!", 

		LOTUS_FLOWER ="Pretty.",
        LOTUS_FLOWER_COOKED ="I wonder how it tastes.",

        VAMPIREBAT = 
        {
        	GENERIC = "First zombies, now vampires?!",
        	SLEEPING = "Please stay alseep.",
        	DEAD = "Phew.",
        },
        VAMPIREBATCAVE = "I'd like to stay human, thanks.",  

        FROGLEGS_POISON = "Cool, they're twitching still.",
        FROGLEGS_POISON_COOKED = "I probably shouldn't eat this.",
		FROG_POISON =
		{
        	GENERIC = "Hmmm, bright colors are usually bad, right?",
        	SLEEPING = "Sleeping.",
        	DEAD = "It's dead.",
        },

        PIG_RUINS_TORCH_WALL = "Very ancient looking.",
        PIG_RUINS_TORCH = "Very ancient looking.",
        PIG_RUINS_HEAD = "I could climb it no problem!",
        PIG_RUINS_ARTICHOKE = "...Intersting.",

        OINC = "Money.",
        OINC10 = "I could probably buy something nice!",
        OINC100 = "I'm a bit of an entrepreneur.",

        RABID_BEETLE = 
		{
        	GENERIC = "I should probably stay away.",
        	SLEEPING = "Let's not test it.",
        	DEAD = "A good bug is a dead bug.",
        },

        PARROT_BLUE = 
		{
        	GENERIC = "Hello blue bird.",
        	SLEEPING = "Get some rest.",
        	DEAD = "Poor thing.",
        },
        KINGFISHER = 
		{
        	GENERIC = "That could poke an eye out!",
        	SLEEPING = "It's asleep.",
        	DEAD = "Poor thing.",
        },

        BURR = "It's a jungle tree seed.",   
        BURR_SAPLING = "Grow, you can do it!",
        {
			BURNING = "Oops!",
			WITHERED = "It doesn't look right.",
			GENERIC = "Grow!",
			PICKED = "A boy has needs, sorry.",
		},        	

        PIG_LATIN_1 = "It says \"Ightlay iresfay\"", -- light fires in pig latin

		DECO_RUINS_BEAM_ROOM ="Looks like foundation.",
		DECO_CAVE_BEAM_ROOM = "Looks like foundation.",
        DECO_CAVE_BAT_BURROW = "I'd prefer the bats of South Cemetary over this.",
        DECO_RUINS_BEAM_ROOM_BLUE = "Looks like foundation.",        		

        SMASHINGPOT = "I'll break it good!",

        HIPPOPOTAMOOSE ="Nice antlers you got.",
		PIGGHOST = "Ah! Sorry about all the times I've had bacon!",        

        ANTCOMBHOME = "Bugs live here.",        
        SECURITYCONTRACT = "I can use it to hire some guards!",
        
        PLAYERHOUSE_CITY = {
        	BURNT = "Well looks like I'm homeless.",
        	FORSALE = "Looks like it's for sale.",
        	SOLD = "Homeowner at 12. Not bad, Ninten."
        },

        JELLYBUG = "Time to never eat jellybeans again.",
        JELLYBUG_COOKED = "I really don't want to.",
        SLUGBUG = "Ewwww...",
        SLUGBUG_COOKED = "Is living worth it if it comes to this?",

        PLAYER_HOUSE_COTTAGE_CRAFT = "I could make a cozy little cottage with this.",
        PLAYER_HOUSE_VILLA_CRAFT = "Supplies for a villa.",           
		PLAYER_HOUSE_TUDOR_CRAFT = "I could build a decent home now.",
        PLAYER_HOUSE_GOTHIC_CRAFT = "It's very European.",           
		PLAYER_HOUSE_TURRET_CRAFT = "Supplies for a home.",
        PLAYER_HOUSE_BRICK_CRAFT = "Supplies for a brick home.",
		PLAYER_HOUSE_MANOR_CRAFT = "Now we're talking.",        

        CLIPPINGS = "Remains of shaved hedge. Someone should take care of that.",

        CUTNETTLE = "It keeps my sinuses clear.",

        NETTLE =
        {
        	WITHERED = "It's not going great.",
        	MOIST = "Nice and nurished.",
        	EMPTY = "It'll grow back.",
        	DEFAULT = "It helps with allergies.",
        },

        DECO_RUINS_FOUNTAIN = "Make a wish!", -- this is a "wishing well". You throw coins in it and it might randomly heal you. 
        PUGALISK = "Oh. That's not good.",        
        SNAKE_BONE = "Snake remains.", 
        SNAKEBONESOUP = "Ooh, fancy.", 

        BANDITMAP = "Stupid bandit. Now I know where your goodies are!", 
        BANDITTREASURE = "YES! It's mine, all mine!", 

        BLUNDERBUSS = "It packs a punch!", 

        PUGALISK_FOUNTAIN = "Fancy.", 
        PUGALISK_RUINS_PILLAR = "What waits inside?", 
        PUGALISK_TRAP_DOOR = "I don't trust that.",  

        TEA = "I've never really had tea before!",      
        TEATREE = "It grows tea!",    
        TEATREE_SAPLING = "Grow!!",    
        TEATREE_NUT = "I can make more tea trees now.",    

        WALL_PIG_RUINS = "It's an old wall.", 

        PIG_RUINS_DART_TRAP = "That's not cool, dude.", 
        PIG_RUINS_SPEAR_TRAP = "Yeah that's not suspicious.", 
        PIG_RUINS_SPEAR_TRAP_TRIGGERED = "I knew it!", 
        PIG_RUINS_SPEAR_TRAP_BROKEN = "No more traps here!", 
        PIG_RUINS_PRESSURE_PLATE = "Wouldn't be fullfilling my Indiana Jones fantasy without booby traps...",
        PIG_RUINS_DART_STATUE = "You're not fooling me.",                                           
        
        DISARMING_KIT = "I can take apart those stupid booby traps now!", 

        BALLPEIN_HAMMER = "For hammering.",

        GOLD_DUST = "My asthma doesn't like it.",

        ALOE = "It's more useful than it looks.", 
        ALOE_COOKED = "I'll be honest: I have no idea what do with it.", 
        ALOE_PLANTED = "I've heard of these.",

        --ASPARAGUS = "A vegetable.", 
        --ASPARAGUS_COOKED = "Science says it's good for me.", 
        --ASPARAGUS_PLANTED = "I should pick those!", 

        RADISH = "A radish.", 
        RADISH_COOKED = "Still bitter.",
        RADISH_PLANTED = "It's a radish.", 

        SNAKE_AMPHIBIOUS = "Don't even think about biting me!", 
        
        GASMASKHAT = "This'll come in handy!",
        PITHHAT = "Now I can be an explorer!", 
        
        BILL = 
        {
        	GENERIC = "It's adorable. Just watch those spines, buddy.",
        	SLEEPING = "Sleep well.",
        	DEAD = "It's dead.",
        },
        
        ROCK_ANTCAVE = "It's some sort of rock.",
        ANT_CAVE_LANTERN = "Useful for planting lights.",
        PROP_DOOR = "Doors, doors.",

        PIKO_ORANGE = "A cute little squirrel.",

        TURF_PIGRUINS = "Old rock.",
        TURF_RAINFOREST = "It comes from the rainforest.",
        TURF_DEEPRAINFOREST = "It comes from the rainforest.",
        TURF_LAWN = "Get off my lawn!",
        TURF_GASJUNGLE = "It comes from the rainforest.",
        TURF_MOSS = "It's mossy.",
        TURF_FIELDS = "It's a chunk of ground.",
        TURF_FOUNDATION = "Nice foundation.",
        TURF_COBBLEROAD = "Makes for good roads.",

        MANDRAKEMAN = "Gah, shut up!",
        MANDRAKEHOUSE = "Great, they're civilizing.",

         -- HOME DECO ITEMS
        INTERIOR_FLOOR_MARBLE = "Fancy fancy.",
        INTERIOR_FLOOR_CHECK = "I'm not normally into this sort of deco.",
        INTERIOR_FLOOR_PLAID_TILE = "Fancy fancy.",
        INTERIOR_FLOOR_SHEET_METAL = "Not the most comfortable.",
        INTERIOR_FLOOR_WOOD = "You can never go wrong with hardwood.",
        INTERIOR_FLOOR_GARDENSTONE = "It's not exactly home-y.",        
        INTERIOR_FLOOR_GEOMETRICTILES = "It has personality.",
        INTERIOR_FLOOR_SHAG_CARPET = "Just like home.",
        INTERIOR_FLOOR_TRANSITIONAL = "Needs finish.",
        INTERIOR_FLOOR_WOODPANELS = "You can never go wrong with hardwood.",
        INTERIOR_FLOOR_HERRINGBONE = "It's cold.",
        INTERIOR_FLOOR_HEXAGON = "It has personality.",
        INTERIOR_FLOOR_HOOF_CURVY = "Fancy fancy.",
        INTERIOR_FLOOR_OCTAGON = "It has personality.",

        INTERIOR_WALL_WOOD = "It's basic, but basic is good.",
        INTERIOR_WALL_CHECKERED = "Looks like a fast food joint.",
        INTERIOR_WALL_FLORAL = "It's not my taste.",
        INTERIOR_WALL_SUNFLOWER = "It's not my taste.",
        INTERIOR_WALL_HARLEQUIN = "It's not my taste.",
        INTERIOR_WALL_PEAGAWK = "It's not my taste.",
        INTERIOR_WALL_PLAIN_DS = "You can never go wrong with simple.",
        INTERIOR_WALL_PLAIN_ROG = "You can never go wrong with simple.",
        INTERIOR_WALL_ROPE = "Intersting.",
        INTERIOR_WALL_CIRCLES = "Fancy fancy.",
        INTERIOR_WALL_MARBLE = "'Fancy fancy.",
        INTERIOR_WALL_MAYORSOFFICE = "It's has that bureaucratic feel to it.",
        INTERIOR_WALL_FULLWALL_MOULDING = "It'll do.",
        INTERIOR_WALL_UPHOLSTERED = "It's a wall.",   

        DECO_CHAIR_CLASSIC = "Just a chair.",
        DECO_CHAIR_CORNER = "Just a chair.",
        DECO_CHAIR_BENCH = "It's a bench.",
        DECO_CHAIR_HORNED = "It has personality.",
        DECO_CHAIR_FOOTREST = "Ah, kick back... and relax.",
        DECO_CHAIR_LOUNGE = "Looks comfy.",
        DECO_CHAIR_MASSAGER = "I've seen this in malls before.",
        DECO_CHAIR_STUFFED = "I could totally chillax to some tunes in this.",
        DECO_CHAIR_ROCKING = "Gramps has one of these!",
        DECO_CHAIR_OTTOMAN = "Pretty nice.",

        DECO_LAMP_FRINGE = "Fancy fancy.",
        DECO_LAMP_STAINGLASS = "Ooooh, I like this.",
        DECO_LAMP_DOWNBRIDGE = "Fancy fancy.",
        DECO_LAMP_2EMBROIDERED = "Fancy fancy.",
        DECO_LAMP_CERAMIC = "Made from hardend clay.",
        DECO_LAMP_GLASS = "Oooh, classy glassy.",
        DECO_LAMP_2FRINGES = "Very fancy.",
        DECO_LAMP_CANDELABRA = "Fancy fancy.",
        DECO_LAMP_ELIZABETHAN = "It has personality.",
        DECO_LAMP_GOTHIC = "It has personality.",
        DECO_LAMP_ORB = "Fancy fancy.",
        DECO_LAMP_BELLSHADE = "A nice little lamp.",
        DECO_LAMP_CRYSTALS = "Cool.",
        DECO_LAMP_UPTURN = "Fancy fancy.",
        DECO_LAMP_2UPTURNS = "Nice and fancy.",
        DECO_LAMP_SPOOL = "A little plain.",
        DECO_LAMP_EDISON = "Primitive.",
        DECO_LAMP_ADJUSTABLE = "It has utility.",
        DECO_LAMP_RIGHTANGLES = "Fancy fancy.",
        DECO_LAMP_HOOFSPA = "Fancy fancy.",

        DECO_CHAISE = "It's nice.",

        DECO_PLANTHOLDER_BASIC = "Plants spice up the room.",
        DECO_PLANTHOLDER_WIP = "Not quite ready.",
        DECO_PLANTHOLDER_FANCY = "Fancy fancy.",
        DECO_PLANTHOLDER_BONSAI = "Ah, reminds me of my trap of Japan.",
        DECO_PLANTHOLDER_DISHGARDEN = "Plants always spice up the room.",
        DECO_PLANTHOLDER_PHILODENDRON = "Fancy fancy.",
        DECO_PLANTHOLDER_ORCHID = "It colors up the room.",
        DECO_PLANTHOLDER_DRACEANA = "Fancy fancy.",
        DECO_PLANTHOLDER_XEROGRAPHICA = "Fancy fancy.",
        DECO_PLANTHOLDER_BIRDCAGE = "It has personality.",
        DECO_PLANTHOLDER_PALM = "Tropical!",
        DECO_PLANTHOLDER_ZZ = "A holder for a fancy plant.",
        DECO_PLANTHOLDER_FERNSTAND = "You can never go wrong with ferns.",
        DECO_PLANTHOLDER_FERN = "You can never go wrong with ferns.",
        DECO_PLANTHOLDER_TERRARIUM = "Exotic.",
        DECO_PLANTHOLDER_PLANTPET = "Better than pet rocks.",
        DECO_PLANTHOLDER_TRAPS = "Cool!",
        DECO_PLANTHOLDER_PITCHERS = "Fancy fancy.",
        DECO_PLANTHOLDER_MARBLE = "Fancy fancy.",

        DECO_PLANTHOLDER_WINTERFEASTTREEOFSADNESS = "That's depressing.",  
        DECO_PLANTHOLDER_WINTERFEASTTREE = "I miss Christmas...",

        DECO_TABLE_ROUND = "A table.",
        DECO_TABLE_BANKER = "It's a good studying desk.",
        DECO_TABLE_DIY = "Simple enough.",
        DECO_TABLE_RAW = "Well, it's a table.",
        DECO_TABLE_CRATE = "It works I guess.",
        DECO_TABLE_CHESS = "I've never been good at chess.",

        DECO_ANTIQUITIES_WALLFISH = "Seems like something dad would like.",        
        DECO_ANTIQUITIES_BEEFALO = "Creepy.",
        DECO_WALLORNAMENT_PHOTO = "Too bad I don't have photos out here.",
        DECO_WALLORNAMENT_FULLLENGTH_MIRROR = "Lookin' handsome.",
        DECO_WALLORNAMENT_EMBROIDERY_HOOP = "Cozy.",
        DECO_WALLORNAMENT_MOSAIC = "It makes me almost forget about all of this.",
        DECO_WALLORNAMENT_WREATH = "It looks good.",
        DECO_WALLORNAMENT_AXE = "I've never been the lumberjack type, but doesn't hurt to give that impression.",
        DECO_WALLORNAMENT_HUNT = "Well, it adds personality.",
        DECO_WALLORNAMENT_PERIODIC_TABLE = "Ugh. No thanks...",
        DECO_WALLORNAMENT_GEARS_ART = "Mmph.",
        DECO_WALLORNAMENT_CAPE = "Cool.",
        DECO_WALLORNAMENT_NO_SMOKING = "Now that wouldn't be good for my asthma.",
        DECO_WALLORNAMENT_BLACK_CAT = "I'm more of a dog person?",

        WINDOW_ROUND_CURTAINS_NAILS = "Looks nice.",
        WINDOW_ROUND_BURLAP = "It lets me see the outside world.",
        WINDOW_SMALL_PEAKED = "It's not the best view.",
        WINDOW_LARGE_SQUARE = "It doesn't offer the best view, but it'll do.",
        WINDOW_TALL = "It offers a great view!",
        WINDOW_LARGE_SQUARE_CURTAIN = "Privacy when I want it, good views when I don't.",
        WINDOW_TALL_CURTAIN = "It offers a great view!",
        WINDOW_SMALL_PEAKED_CURTAIN = "Nice and cozy.",
        WINDOW_GREENHOUSE = "I could get used to this.",
        WINDOW_ROUND = "I can't say no to a good view.",

        DECO_WOOD_CORNERBEAM = "It keeps the house stable.",
        DECO_MARBLE_CORNERBEAM = "Fancy fancy.",
        DECO_WOOD       = "It keeps the house stable.",
        DECO_MILLINERY  = "It keeps the house stable.",
        DECO_ROUND      = "It keeps the house stable.",
        DECO_MARBLE     = "Fancy fancy.",

        SWINGING_LIGHT_BASIC_BULB = "A light bulb.",
        SWINGING_LIGHT_FLORAL_BLOOMER = "Fancy fancy.",
        SWINGING_LIGHT_CHANDALIER_CANDLES = "Fancy fancy.",
        SWINGING_LIGHT_ROPE_1 = "It gives me light.",
        SWINGING_LIGHT_ROPE_2 = "It gives me light.",
        SWINGING_LIGHT_FLORAL_BULB = "Looks cool.",
        SWINGING_LIGHT_PENDANT_CHERRIES = "Fancy fancy.",
        SWINGING_LIGHT_FLORAL_SCALLOP = "Cool.",
        SWINGING_LIGHT_FLORAL_BLOOMER = "Cool.",
        SWINGING_LIGHT_BASIC_METAL = "Looks good.",
        SWINGING_LIGHT_TOPHAT = "Huh.",
        SWINGING_LIGHT_DERBY = "Huh.",
        SWINGING_LIGHT1 = "Good enough.",

        RUG_ROUND = "It gives a more home-y feel.",
        RUG_SQUARE = "It helps bring the room together.",
        RUG_OVAL = "Nothing special.",
        RUG_RECTANGLE = "Just your normal rug.",
        RUG_FUR = "It's so soft.",
        RUG_HEDGEHOG = "That feels nice!",
        RUG_PORCUPUSS = "It has a nice feel to it.",
        RUG_HOOFPRINT = "Stylish.",
        RUG_OCTAGON = "Just your normal rug.",
        RUG_SWIRL = "It really brings the room together.",
        RUG_CATCOON = "It's so soft.",
        RUG_RUBBERMAT = "I'm not a fan.",
        RUG_WEB = "Silky.",
        RUG_METAL = "Well that's not very comfy.",
        RUG_WORMHOLE = "Why'd I do this?",
        RUG_BRAID = "It's got a stylish texture.",
        RUG_BEARD = "Gross!",
        RUG_NAILBED = "Well... it's unique.",
        RUG_CRIME = "I dunno what I was thinking.",
        RUG_TILES = "Fancy fancy.",

        SHELVES_WOOD = "It's a shelf.",
        SHELVES_CINDERBLOCKS = "I never claimed to be good at this stuff.",
        SHELVES_MARBLE = "Real fancy, for a shelf.",
        SHELVES_MIDCENTURY = "A shelf.",
        SHELVES_GLASS = "Careful, it's fragile.",
        SHELVES_LADDER = "Well I mean. That works.",
        SHELVES_HUTCH = "A shelf.",
        SHELVES_INDUSTRIAL = "Totally clashes with my style, but a shelf is a shelf.",
        SHELVES_ADJUSTABLE = "Now ol' five foot Ninten can reach!",
        SHELVES_WALLMOUNT = "Goes on the wall, holds my stuff. Simple.",
        SHELVES_AFRAME = "It's a shelf.",
        SHELVES_CRATES = "Well, I tried.",
        SHELVES_FRIDGE = "That's not right.",
        SHELVES_HOOKS = "Someone to keep my baseball cap safe.",
        SHELVES_PIPE = "Well. It does hang stuff.",
        SHELVES_HATTREE = "If only I had my baseball cap collection.",
        SHELVES_PALLET = "Looks tacky.",
        SHELVES_BASIC = "It holds things.",
        SHELVES_FLOATING = "A place to put stuff.",
        SHELVES_METAL = "It's a shelf.",

        WOOD_DOOR = "A door.",
		STONE_DOOR = "Heavy.",
		ORGANIC_DOOR = "Hmmmm.",
		IRON_DOOR = "Very clinical.",
		PILLAR_DOOR = "Weird.",
		CURTAIN_DOOR = "It's a bit of a statement.",
		ROUND_DOOR = "Weird.",
		PLATE_DOOR = "A door.",

        ROCK_FLIPPABLE = "I used to love flipping rocks when I was little.",

        PLAYER_HOUSE_COTTAGE = "I could make a cozy little cottage with this.",
        PLAYER_HOUSE_VILLA = "Supplies for a villa.",  
        PLAYER_HOUSE_TUDOR = "I could build a decent home now.",
        PLAYER_HOUSE_MANOR = "Now we're talking.",              
        PLAYER_HOUSE_GOTHIC = "It's very European",                
        PLAYER_HOUSE_BRICK = "Supplies for a brick home.",  
        PLAYER_HOUSE_TURRET = "Supplies for a home.",
        
        BRAMBLESPIKE = "Those thorns look painful.",

		SUNKEN_RELIC = "It's belongs to the fish now, I guess.",  

        IRON = "Raw iron? What do I do with this?",
        
        CLAWPALMTREE = "It looks like hands.",  
        DUG_NETTLE = "I should plant it.", 

        THUNDERBIRD = "Don't worry, I'll be keeping my distance.", 
        THUNDERBIRDNEST = "Those bird, electric... thingies live here.",

        FEATHER_THUNDER = "The static messes with my hair.", 
        THUNDERHAT = "Pretty cool!",

        WEEVOLE = "Hey, watch it!",
        WEEVOLE_CARAPACE = "Whoa.",
        ARMOR_WEEVOLE = "No thanks.",
        
        TUBERTREE = "What kind of tree is this?",
        CORK = "If only I had a bottle.",

        CANDLEHAT = "Not bad. Just hopefully it doesn't get my hair all ashy.", 
        CORK_BAT = "Batter up!",

        LEATHER = "You can use leather for all sorts of stuff.",
        BAT_HIDE = "I don't know what I'm doing with it.",

        ANCIENT_ROBOT_RIBS = "Whoa.",
        ANCIENT_ROBOT_CLAW = "Who built you?",
        ANCIENT_ROBOT_LEG = "This isn't my first rodeo with robots!",    
        ANCIENT_ROBOT_HEAD = "Reminds me of EVE.", 

        TEATREE_NUT_COOKED = "A nice little snack",

        DEED = "Officially a landowner! I'm pretty talented, I know, heh heh.",
        CONSTRUCTION_PERMIT = "Time to build a home!",
        DEMOLITION_PERMIT = "Destruction sounds like fun!",
		
		CLAWPALMTREE_SAPLING = "It's groing.",

        CORKBOAT = "Cork is pretty floaty, after all.",
        CORKCHEST = "It keeps my stuff extra safe.",

        BANDITHAT = "I look like an old school gangster in it.",
        PIGBANDIT = "I don't the way you're eyeing my pockets.",

        PIG_RUINS_CREEPING_VINES = "That's a lot of vines.", 

        MAGNIFYING_GLASS = "I'm a detective!",

        SEDIMENTPUDDLE = "Sparkly.",
        GOLDPAN = "Now I can be a prospector!",

        PORKLAND_ENTRANCE = "Looks like fun.",
        PORKLAND_EXIT = "Looks like fun.",

        POG = 
        {
        	GENERIC = "Awwwww, it's so cute!",
        	FOLLOWER = "You remind me of Mick.",
        	SLEEPING = "Sleep well little guy.",
        	APORKALYPSE = "Not cute, not cute!",
        },

        PANGOLDEN = "It eats gold.",

        ROC_LEG = "It's massive!",
        ROC_HEAD = "Creepy!",
        ROC_TAIL = "How'd you get so big?",

        GNATMOUND = "Gnats...",
        GNAT = "Gnats...",
        
        PORKLAND_INTRO = "Whatever, jerk.",

        ROC_NEST_TREE1 = "It's a little tree.",
        ROC_NEST_TREE2 = "Just a small tree.",
        ROC_NEST_BUSH = "It's a bush.",
        ROC_NEST_BRANCH1 = "Might be useful. Might not be.",
        ROC_NEST_BRANCH2 = "Looks brittle.",
        ROC_NEST_TRUNK = "Something tore this tree clean out.",
        ROC_NEST_HOUSE = "Creepy...",
        ROC_NEST_RUSTY_LAMP = "It's been here a while.",

        ROC_NEST_EGG1 = "Is this... rock?",
        ROC_NEST_EGG2 = "Is this... rock?",
        ROC_NEST_EGG3 = "Is this... rock?",
        ROC_NEST_EGG4 = "Is this... rock?",

        ROC_ROBIN_EGG = "It's very durable.",

        TUBER_CROP = "Doesn't look apetizing.",
        TUBER_BLOOM_CROP = "Not very apetizing, but safe to eat at least.",
        TUBER_CROP_COOKED = "I don't think I should.",
        TUBER_BLOOM_CROP_COOKED = "Nice and roasted.",

        ALLOY = "It's an ingot, and... heavy... too!",

        ARMOR_METALPLATE = "What am I, the Tin Man?",
        METALPLATEHAT = "Way too heavy and it'll mess up my hair. No thank you.",

        SMELTER = "Sup?",

        BUGREPELLENT = "I'll be needing for sure.",
        
        HOGUSPORKUSATOR = "Pigs and magic. Sounds like an awful idea.",

        GASCLOUD = "Definitely don't want to breathe that in.",

        SHEARS = "A gardener's best friend.",
    	BATHAT = "The things I do to survive.",
    	
    	WATERDROP = "This is no ordinary water.",

    	LIFEPLANT = "It's kinda like literal life insurance.",

    	TRINKET_GIFTSHOP_1 = "Eh, what's this? Whatever.",
    	TRINKET_GIFTSHOP_3 = "Cool. Ana would like it.",        

	    KEY_TO_CITY = "Heh, yeah, yeah, I'm a hero, no need to gloat.",

    	PEDESTAL_KEY = "It's very important.",

    	ROYAL_GALLERY = "Looks... er... boring.",

    	APORKALYPSE_CLOCK = "That's concerning.",
    	ANCIENT_HERALD = "What do you want from me?!",

    	--ASPARAGUSSOUP = "Smells like it tastes.",
    	SPICYVEGSTINGER = "It's got a nice kick to it.",
    	FEIJOADA = "Is this really all we have?",
    	HARDSHELL_TACOS = "Yup. Totally tacos... heh heh... gross...",
    	GUMMY_CAKE = "Well... food is food.",
    	STEAMEDHAMSANDWICH = "I haven't had a burger in forever... Don't mind if I do!",

    	ROC_NEST_DEBRIS1 = "Looks really brittle.",
    	ROC_NEST_DEBRIS2 = "I could snap it no problem.",
    	ROC_NEST_DEBRIS3 = "It's a stick.",
    	ROC_NEST_DEBRIS4 = "It's a stick.",

    	ANTQUEEN = "That must be the queen.",
    	ANTQUEEN_CHAMBERS = "The queen resides here.",
    	ANTQUEEN_THRONE = "For royalty. Bug royalty.",
    	ANTMAN_WARRIOR_EGG = "I'd better leave those alone.",
		
		PIG_SHOP_DELI =
        {
            GENERIC = "I could get a nice meal here.",
            BURNING = "Someone call the fire department!",
        },

        PIG_SHOP_CITYHALL =
         {
            GENERIC = "City hall.",
            BURNING = "Well that might be a problem.",
        },
        PIG_SHOP_CITYHALL_PLAYER = 
         {
            GENERIC = "Mayor Ninten. I like the sound of that.",
            BURNING = "My power! Up in smokes!",
        },
        PIG_GUARD_TOWER_PALACE =
        {
            GENERIC = "The royal guards stay here.",   
            BURNING = "Well!",
        },

        PIG_RUINS_PIG = "This one looks a lot harder to climb.",
        PIG_RUINS_IDOL = "Coooool.",
        PIG_RUINS_PLAQUE = "It's got some markings on it. I can't really make it out.",

        BASEFAN = "It helps with the fevers.",
        SPRINKLER = "Summer memories.",

        NETTLELOSANGE = "A snack that helps my sinuses. Win win.",

        ICEDTEA = "I love iced tea!",

        TRINKET_GIFTSHOP_4 = "It's fun when you're not the one cleaning up the mess.",

        WALLCRACK_RUINS = "Hmmmm, what's this?",

        DEFLATED_BALLOON = "It's not gonna be useful anytime soon.",
		DEFLATED_BALLOON_BASKET = "It's just a stupid basket now.",

		--SNAKE_FIRE = "Ugh! Stay away!",

		DISGUISEHAT = "It tricks the pigs.",

		ALOE_SEEDS = "It's an aloe seed.",
		--ASPARAGUS_SEEDS = "It's asparagus seeds.",
		RADISH_SEEDS = "It's a radish seed.",

		CAVE_EXIT_ROC = "There's something behind this.",

        PORKLAND_INTRO_BASKET = "It's just a stupid basket now.",
        PORKLAND_INTRO_BALLOON = "It's doing a whole lot of nothing now.",
        PORKLAND_INTRO_TRUNK = "Stupid trunk...",
        PORKLAND_INTRO_SUITCASE = "Stupid suitcase!",
        PORKLAND_INTRO_FLAGS = "Stupid everything!",
        PORKLAND_INTRO_SANDBAG = "Ugh.",

        TURF_BEARD_HAIR = "Why??", 

        HIPPO_ANTLER = "I'll hold to it, don't worry.",
        BILL_QUILL = "So sharp yet so delicate!",

        ANTLER = "Birds seem to like it.",

        PUGALISK_SKULL = "Man.",
        PUGALISK_CORPSE = "I did not enjoy that.",
        BONESTAFF = "Now I'm a wizard!",
        CITY_HAMMER = "Order in the court!",
        TURF_PAINTED = "It's a chunk of ground.", 
		TURF_PLAINS = "It's a chunk of ground.", 

		PIG_SHOP_BANK = 
        {
          GENERIC = "We keep the money there.",
          BURNING = "We kept the money there.",
        },
 	    PIGMAN_USHER = 
        {
          GENERIC = "What's up pig guy?",
          SLEEPING = "What's he dreaming about?.",
        },
        PIGMAN_ROYALGUARD_2 = 
        {
          GENERIC = "Ye olde copper.",
          SLEEPING = "Lazy.",
        },
        PIG_SHOP_ANTIQUITIES = 
        {
          GENERIC = "An antique store. You know. For grandmas.",
          BURNING = "Someone should do something about that.",
        },

        PIG_RUINS_ENTRANCE2 = "It's screaming to be explored.",
        PIG_RUINS_EXIT2 = "Don't forget the way out now.",
        PIG_RUINS_ENTRANCE3 = "Adventure awaits.",   
        PIG_RUINS_ENTRANCE4 = "Should I take a look?",           
        PIG_RUINS_EXIT4 = "This is the way out.",
        PIG_RUINS_ENTRANCE5 = "I wonder wait goodies await.",           
        PIG_RUINS_ENTRANCE_SMALL = "Seems safe for a small child.",

        RO_BIN = "It's kinda cute.",
        RO_BIN_GIZZARD_STONE = "That bird thing seems to follow it.",
        GIANTGRUB = "That is some nightmare fuel!",
        MUSSEL_BED = "Mussels grow here.",
        SEAWEED_STALK = "I can plant seaweed now.",
        HARPOON = "Man the harpoons!",

		DECO_RUINS_ENDSWELL = "I don't like the looks of that.",
		QUACKENDRILL = "It might be useful for drilling tar.",
		-------rewards update-------

		TURF_DEEPRAINFOREST_NOCANOPY = "It's a chunk of ground.",

		BRAMBLE_CORE = "Don't let its looks deceive you.",
        BRAMBLE_BULB = "You're mine now.",
        ROOTTRUNK_CHILD = "It's connected to other roots. That's pretty neat.",

		PIG_SHOP_TINKER =
        {
            GENERIC = "Get tinkering!",
            BURNING = "That is not tinkering, in fact.",
        },
        ARMORVORTEXCLOAK = "Too... emo.",    
        ANCIENT_REMNANT = "Mine now.",

        GOGGLESNORMALHAT = "I tried on Lloyd's glasses before. They don't work for me.",
        GOGGLESHEATHAT = "I didn't wanna wear them, glasses are for nerds anyways!",
        GOGGLESARMORHAT = "Tackyyyyyyy.",
        GOGGLESSHOOTHAT = "I don't need them.",     
        THUMPER = "It's a little earthquake machine.",
        TELEBRELLA = "Looks useful. If you're not Ninten, HAH!",
        TELIPAD = "4D slip for normies.",
        TRUSTY_SHOOTER = "I dunno how it works but thank God it does.",
        WHEELER_TRACKER = "It's great for finding things you all ready have. Wait.",

        ANCIENT_HULK = "It is NOT friendly!",
        ROCK_BASALT = "Basalt.",
        LIVING_ARTIFACT = "I'm like Iron Man with it!",
        INFUSED_IRON = "Looks very alien.",

        TELEPORTATO_HAMLET_POTATO = "It's a fake potato.",
        TELEPORTATO_HAMLET_RING = "A ring for that thingy. You know.",
        TELEPORTATO_HAMLET_BOX = "What's with this junk?",
        TELEPORTATO_HAMLET_CRANK = "Some crank.",
        TELEPORTATO_HAMLET_BASE = "There's a world on the other side.",

        ANCIENT_ROBOTS_ASSEMBLY = "Build-your-own-robot kit patent pending.",

        HEDGE_BLOCK_ITEM = "For hedges.",
        HEDGE_CONE_ITEM = "Topiary, huh?",
        HEDGE_LAYERED_ITEM = "Where to plant?",
        --Arena Event
		--Lol skipping
        LAVAARENA_BOARLORD = "That's the guy in charge here.",
        BOARRIOR = "You sure are big!",
        BOARON = "I can take him!",
        PEGHOOK = "That spit is corrosive!",
        TRAILS = "He's got a strong arm on him.",
        TURTILLUS = "Its shell is so spiky!",
        SNAPPER = "This one's got bite.",
		RHINODRILL = "He's got a nose for this kind of work.",
		BEETLETAUR = "I can smell him from here!",

        LAVAARENA_PORTAL = 
        {
            ON = "I'll just be going now.",
            GENERIC = "That's how we got here. Hopefully how we get back, too.",
        },
        LAVAARENA_KEYHOLE = "It needs a key.",
		LAVAARENA_KEYHOLE_FULL = "That should do it.",
        LAVAARENA_BATTLESTANDARD = "Everyone, break the Battle Standard!",
        LAVAARENA_SPAWNER = "This is where those enemies are coming from.",

        HEALINGSTAFF = "It conducts regenerative energy.",
        FIREBALLSTAFF = "It calls a meteor from above.",
        HAMMER_MJOLNIR = "It's a heavy hammer for hitting things.",
        SPEAR_GUNGNIR = "I could do a quick charge with that.",
        BLOWDART_LAVA = "That's a weapon I could use from range.",
        BLOWDART_LAVA2 = "It uses a strong blast of air to propel a projectile.",
        LAVAARENA_LUCY = "That weapon's for throwing.",
        WEBBER_SPIDER_MINION = "I guess they're fighting for us.",
        BOOK_FOSSIL = "This'll keep those monsters held for a little while.",
		LAVAARENA_BERNIE = "He might make a good distraction for us.",
		SPEAR_LANCE = "It gets to the point.",
		BOOK_ELEMENTAL = "I can't make out the text.",
		LAVAARENA_ELEMENTAL = "It's a rock monster!",

   		LAVAARENA_ARMORLIGHT = "Light, but not very durable.",
		LAVAARENA_ARMORLIGHTSPEED = "Lightweight and designed for mobility.",
		LAVAARENA_ARMORMEDIUM = "It offers a decent amount of protection.",
		LAVAARENA_ARMORMEDIUMDAMAGER = "That could help me hit a little harder.",
		LAVAARENA_ARMORMEDIUMRECHARGER = "I'd have energy for a few more stunts wearing that.",
		LAVAARENA_ARMORHEAVY = "That's as good as it gets.",
		LAVAARENA_ARMOREXTRAHEAVY = "This armor has been petrified for maximum protection.",

		LAVAARENA_FEATHERCROWNHAT = "Those fluffy feathers make me want to run!",
        LAVAARENA_HEALINGFLOWERHAT = "The blossom interacts well with healing magic.",
        LAVAARENA_LIGHTDAMAGERHAT = "My strikes would hurt a little more wearing that.",
        LAVAARENA_STRONGDAMAGERHAT = "It looks like it packs a wallop.",
        LAVAARENA_TIARAFLOWERPETALSHAT = "Looks like it amplifies healing expertise.",
        LAVAARENA_EYECIRCLETHAT = "It has a gaze full of science.",
        LAVAARENA_RECHARGERHAT = "Those crystals will quicken my abilities.",
        LAVAARENA_HEALINGGARLANDHAT = "This garland will restore a bit of my vitality.",
        LAVAARENA_CROWNDAMAGERHAT = "That could cause some major destruction.",

		LAVAARENA_ARMOR_HP = "That should keep me safe.",

		LAVAARENA_FIREBOMB = "It smells like brimstone.",
		LAVAARENA_HEAVYBLADE = "A sharp looking instrument.",

        --Quagmire
		--No
        QUAGMIRE_ALTAR = 
        {
        	GENERIC = "We'd better start cooking some offerings.",
        	FULL = "It's in the process of digestinating.",
    	},
		QUAGMIRE_ALTAR_STATUE1 = "It's an old statue.",
		QUAGMIRE_PARK_FOUNTAIN = "Been a long time since it was hooked up to water.",
		
        QUAGMIRE_HOE = "It's a farming instrument.",
        
        QUAGMIRE_TURNIP = "It's a raw turnip.",
        QUAGMIRE_TURNIP_COOKED = "Cooking is science in practice.",
        QUAGMIRE_TURNIP_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_GARLIC = "The number one breath enhancer.",
        QUAGMIRE_GARLIC_COOKED = "Perfectly browned.",
        QUAGMIRE_GARLIC_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_ONION = "Looks crunchy.",
        QUAGMIRE_ONION_COOKED = "A successful chemical reaction.",
        QUAGMIRE_ONION_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_POTATO = "The apples of the earth.",
        QUAGMIRE_POTATO_COOKED = "A successful temperature experiment.",
        QUAGMIRE_POTATO_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_TOMATO = "It's red because it's full of science.",
        QUAGMIRE_TOMATO_COOKED = "Cooking's easy if you understand chemistry.",
        QUAGMIRE_TOMATO_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_FLOUR = "Ready for baking.",
        QUAGMIRE_WHEAT = "It looks a bit grainy.",
        QUAGMIRE_WHEAT_SEEDS = "A handful of odd seeds.",
        --NOTE: raw/cooked carrot uses regular carrot strings
        QUAGMIRE_CARROT_SEEDS = "A handful of odd seeds.",
        
        QUAGMIRE_ROTTEN_CROP = "I don't think the altar will want that.",
        
		QUAGMIRE_SALMON = "Mm, fresh fish.",
		QUAGMIRE_SALMON_COOKED = "Ready for the dinner table.",
		QUAGMIRE_CRABMEAT = "No imitations here.",
		QUAGMIRE_CRABMEAT_COOKED = "I can put a meal together in a pinch.",
		QUAGMIRE_SUGARWOODTREE = 
		{
			GENERIC = "It's full of delicious, delicious sap.",
			STUMP = "Where'd the tree go? I'm stumped.",
			TAPPED_EMPTY = "Here sappy, sappy, sap.",
			TAPPED_READY = "Sweet golden sap.",
			TAPPED_BUGS = "That's how you get ants.",
			WOUNDED = "It looks ill.",
		},
		QUAGMIRE_SPOTSPICE_SHRUB = 
		{
			GENERIC = "It reminds me of those tentacle monsters.",
			PICKED = "I can't get anymore out of that shrub.",
		},
		QUAGMIRE_SPOTSPICE_SPRIG = "I could grind it up to make a spice.",
		QUAGMIRE_SPOTSPICE_GROUND = "Flavorful.",
		QUAGMIRE_SAPBUCKET = "We can use it to gather sap from the trees.",
		QUAGMIRE_SAP = "It tastes sweet.",
		QUAGMIRE_SALT_RACK =
		{
			READY = "Salt has gathered on the rope.",
			GENERIC = "Science takes time.",
		},
		
		QUAGMIRE_POND_SALT = "A little salty spring.",
		QUAGMIRE_SALT_RACK_ITEM = "For harvesting salt from the pond.",

		QUAGMIRE_SAFE = 
		{
			GENERIC = "It's a safe. For keeping things safe.",
			LOCKED = "It won't open without the key.",
		},

		QUAGMIRE_KEY = "Safe bet this'll come in handy.",
		QUAGMIRE_KEY_PARK = "I'll park it in my pocket until I get to the park.",
        QUAGMIRE_PORTAL_KEY = "This looks science-y.",

		
		QUAGMIRE_MUSHROOMSTUMP =
		{
			GENERIC = "Are those mushrooms? I'm stumped.",
			PICKED = "I don't think it's growing back.",
		},
		QUAGMIRE_MUSHROOMS = "These are edible mushrooms.",
        QUAGMIRE_MEALINGSTONE = "The daily grind.",
		QUAGMIRE_PEBBLECRAB = "That rock's alive!",

		
		QUAGMIRE_RUBBLE_CARRIAGE = "On the road to nowhere.",
        QUAGMIRE_RUBBLE_CLOCK = "Someone beat the clock. Literally.",
        QUAGMIRE_RUBBLE_CATHEDRAL = "Preyed upon.",
        QUAGMIRE_RUBBLE_PUBDOOR = "No longer a-door-able.",
        QUAGMIRE_RUBBLE_ROOF = "Someone hit the roof.",
        QUAGMIRE_RUBBLE_CLOCKTOWER = "That clock's been punched.",
        QUAGMIRE_RUBBLE_BIKE = "Must have mis-spoke.",
        QUAGMIRE_RUBBLE_HOUSE =
        {
            "No one's here.",
            "Something destroyed this town.",
            "I wonder who they angered.",
        },
        QUAGMIRE_RUBBLE_CHIMNEY = "Something put a damper on that chimney.",
        QUAGMIRE_RUBBLE_CHIMNEY2 = "Something put a damper on that chimney.",
        QUAGMIRE_MERMHOUSE = "What an ugly little house.",
        QUAGMIRE_SWAMPIG_HOUSE = "It's seen better days.",
        QUAGMIRE_SWAMPIG_HOUSE_RUBBLE = "Some pig's house was ruined.",
        QUAGMIRE_SWAMPIGELDER =
        {
            GENERIC = "I guess you're in charge around here?",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_SWAMPIG = "It's a super hairy pig.",
        
        QUAGMIRE_PORTAL = "Another dead end.",
        QUAGMIRE_SALTROCK = "Salt. The tastiest mineral.",
        QUAGMIRE_SALT = "It's full of salt.",
        --food--
        QUAGMIRE_FOOD_BURNT = "That one was an experiment.",
        QUAGMIRE_FOOD =
        {
        	GENERIC = "I should offer it on the Altar of Gnaw.",
            MISMATCH = "That's not what it wants.",
            MATCH = "Science says this will appease the sky God.",
            MATCH_BUT_SNACK = "It's more of a light snack, really.",
        },
        
        QUAGMIRE_FERN = "Probably chock full of vitamins.",
        QUAGMIRE_FOLIAGE_COOKED = "We cooked the foliage.",
        QUAGMIRE_COIN1 = "I'd like more than a penny for my thoughts.",
        QUAGMIRE_COIN2 = "A decent amount of coin.",
        QUAGMIRE_COIN3 = "Seems valuable.",
        QUAGMIRE_COIN4 = "We can use these to reopen the Gateway.",
        QUAGMIRE_GOATMILK = "Good if you don't think about where it came from.",
        QUAGMIRE_SYRUP = "Adds sweetness to the mixture.",
        QUAGMIRE_SAP_SPOILED = "Might as well toss it on the fire.",
        QUAGMIRE_SEEDPACKET = "Sow what?",
        
        QUAGMIRE_POT = "This pot holds more ingredients.",
        QUAGMIRE_POT_SMALL = "Let's get cooking!",
        QUAGMIRE_POT_SYRUP = "I need to sweeten this pot.",
        QUAGMIRE_POT_HANGER = "It has hang-ups.",
        QUAGMIRE_POT_HANGER_ITEM = "For suspension-based cookery.",
        QUAGMIRE_GRILL = "Now all I need is a backyard to put it in.",
        QUAGMIRE_GRILL_ITEM = "I'll have to grill someone about this.",
        QUAGMIRE_GRILL_SMALL = "Barbecurious.",
        QUAGMIRE_GRILL_SMALL_ITEM = "For grilling small meats.",
        QUAGMIRE_OVEN = "It needs ingredients to make the science work.",
        QUAGMIRE_OVEN_ITEM = "For scientifically burning things.",
        QUAGMIRE_CASSEROLEDISH = "A dish for all seasonings.",
        QUAGMIRE_CASSEROLEDISH_SMALL = "For making minuscule motleys.",
        QUAGMIRE_PLATE_SILVER = "A silver plated plate.",
        QUAGMIRE_BOWL_SILVER = "A bright bowl.",
        QUAGMIRE_CRATE = "Kitchen stuff.",
        
        QUAGMIRE_MERM_CART1 = "Any science in there?", --sammy's wagon
        QUAGMIRE_MERM_CART2 = "I could use some stuff.", --pipton's cart
        QUAGMIRE_PARK_ANGEL = "Take that, creature!",
        QUAGMIRE_PARK_ANGEL2 = "So lifelike.",
        QUAGMIRE_PARK_URN = "Ashes to ashes.",
        QUAGMIRE_PARK_OBELISK = "A monumental monument.",
        QUAGMIRE_PARK_GATE =
        {
            GENERIC = "Turns out a key was the key to getting in.",
            LOCKED = "Locked tight.",
        },
        QUAGMIRE_PARKSPIKE = "The scientific term is: \"Sharp pointy thing\".",
        QUAGMIRE_CRABTRAP = "A crabby trap.",
        QUAGMIRE_TRADER_MERM = "Maybe they'd be willing to trade.",
        QUAGMIRE_TRADER_MERM2 = "Maybe they'd be willing to trade.",
        
        QUAGMIRE_GOATMUM = "Reminds me of my old nanny.",
        QUAGMIRE_GOATKID = "This goat's much smaller.",
        QUAGMIRE_PIGEON =
        {
            DEAD = "They're dead.",
            GENERIC = "He's just winging it.",
            SLEEPING = "It's sleeping, for now.",
        },
        QUAGMIRE_LAMP_POST = "Huh. Reminds me of home.",

        QUAGMIRE_BEEFALO = "Science says it should have died by now.",
        QUAGMIRE_SLAUGHTERTOOL = "Laboratory tools for surgical butchery.",

        QUAGMIRE_SAPLING = "I can't get anything else out of that.",
        QUAGMIRE_BERRYBUSH = "Those berries are all gone.",

        QUAGMIRE_ALTAR_STATUE2 = "What are you looking at?",
        QUAGMIRE_ALTAR_QUEEN = "A monumental monument.",
        QUAGMIRE_ALTAR_BOLLARD = "As far as posts go, this one is adequate.",
        QUAGMIRE_ALTAR_IVY = "Kind of clingy.",

        QUAGMIRE_LAMP_SHORT = "Enlightening.",

        --v2 Winona
        WINONA_CATAPULT = 
        {
        	GENERIC = "Can I try it?",
        	OFF = "Hey, why isn't it working?",
        	BURNING = "Well it's on fire.",
        	BURNT = "Sorry about that.",
        },
        WINONA_SPOTLIGHT = 
        {
        	GENERIC = "Nice, it lets us see in the dark!",
        	OFF = "No power.",
        	BURNING = "I don't think the fire is necessary",
        	BURNT = "Oh, I should have done something to put that out I guess.",
        },
        WINONA_BATTERY_LOW = 
        {
        	GENERIC = "It provides us with power. Good, getting tired of this wilderness stuff.",
        	LOWPOWER = "It's running out of juice.",
        	OFF = "Let's turn it on.",
        	BURNING = "Well that's probably not good.",
        	BURNT = "Well.",
        },
        WINONA_BATTERY_HIGH = 
        {
        	GENERIC = "I don't know how it works, but thank God it does!",
        	LOWPOWER = "We need to get it power.",
        	OFF = "It's doing us no good now.",
        	BURNING = "Don't think it's supposed to be on fire.",
        	BURNT = "Oh, you wanted me to put it out? Oh!",
        },

        --Wormwood
        COMPOSTWRAP = "Absolutely disgusting, get away from me.",
        ARMOR_BRAMBLE = "No thanks.",
        TRAP_BRAMBLE = "Now we're talking logistics.",

        BOATFRAGMENT03 = "You better not get me killed out here, chump.",
        BOATFRAGMENT04 = "You better not get me killed out here, chump.",
        BOATFRAGMENT05 = "You better not get me killed out here, chump.",
		BOAT_LEAK = "Hey. Dum dum. Fix the leak!",
        MAST = "That should make a good sail.",
        SEASTACK = "Hey, hey! Pay attention.",
        FISHINGNET = "Now we're talking.",
        ANTCHOVIES = "Anchovies are fine, I guess.",
        STEERINGWHEEL = "Self-explanatory. Oh wait, you're an idiot: that's the steering wheeeeeel, it steeeeers!",
        ANCHOR = "The anchor.",
        BOATPATCH = "We'll be needed that a lot considering who's controlling me.",
        DRIFTWOOD_TREE = 
        {
            BURNING = "Ah, it's on fire.",
            BURNT = "Fire's out.",
            CHOPPED = "Chopped up.",
            GENERIC = "Your journey has ended, it seems.",
        },

        DRIFTWOOD_LOG = "It's on a journey.",

        MOON_TREE = 
        {
            BURNING = "Nice going.",
            BURNT = "Nice. Real nice.",
            CHOPPED = "Phew, finally chopped it all down.",
            GENERIC = "Strange tree...",
        },
		MOON_TREE_BLOSSOM = "Hmph.",

        MOONBUTTERFLY = 
        {
        	GENERIC = "Uhyuck, a moth.",
        	HELD = "Keep your dust to yourself, buster.",
        },
		MOONBUTTERFLYWINGS = "I'm not trying to get that dust up in my lungs, thanks.",
        MOONBUTTERFLY_SAPLING = "Um. What?",
        ROCK_AVOCADO_FRUIT = "No fruit is too strong for me!",
        ROCK_AVOCADO_FRUIT_RIPE = "What do I do with this??",
        ROCK_AVOCADO_FRUIT_RIPE_COOKED = "I guess I can eat it now.",
        ROCK_AVOCADO_FRUIT_SPROUT = "There's nothing to take right now.",
        ROCK_AVOCADO_BUSH = 
        {
        	BARREN = "It's not gonna grow anything.",
			WITHERED = "Way too hot for this.",
			GENERIC = "What kind of fruit is this?",
			PICKED = "Just gotta wait, I guess.",
			DISEASED = "It looks pretty sick.",
            DISEASING = "Err, something's not right.",
			BURNING = "Good going.",
		},
        DEAD_SEA_BONES = "Glad to not be you.",
        HOTSPRING = 
        {
        	GENERIC = "A hotspring does sound nice right now...",
        	BOMBED = "Sweet.",
        	GLASS = "Glass?",
			EMPTY = "It's empty now.",
        },
        MOONGLASS = "Glass shards.",
		MOONGLASS_CHARGED = "Ah! That shocked me! The Hell?! ",
        MOONGLASS_ROCK = "It's a big chunk of glass.",
        BATHBOMB = "It should create an... interesting chemical reaction.",											   
        TRAP_STARFISH =
        {
            GENERIC = "I'm not falling for that.",
            CLOSED = "Tch. Knew it.",
        },
        DUG_TRAP_STARFISH = "I could get into all sorts of fun with you.",
        SPIDER_MOON = 
        {
        	GENERIC = "Well aren't you cool.",
        	SLEEPING = "Now's my chance to ambush.",
        	DEAD = "Too easy.",
        },
        MOONSPIDERDEN = "Strange.",
		FRUITDRAGON =
		{
			GENERIC = "Lizards are pretty sweet.",
			RIPE = "Whoa, cool.",
			SLEEPING = "Rest up.",
		},
        PUFFIN =
        {
            GENERIC = "A sea bird.",
            HELD = "I wish I could fly like you.",
            SLEEPING = "Sleep well.",
        },

		MOONGLASSAXE = "It'll get the job done.",
		GLASSCUTTER = "Hack and slash, baby!",

        ICEBERG =
        {
            GENERIC = "Careful.",
            MELTED = "Nothing left of it.",
        },
        ICEBERG_MELTED = "Nothing left of it.",

        MINIFLARE = "Maybe a pilot will see it!",

		MOON_FISSURE = 
		{
			GENERIC = "Huh? You're making my brain all fuzzy... knock that off!", 
			NOLIGHT = "Much better.",
		},
        MOON_ALTAR =
        {
            MOON_ALTAR_WIP = "What do you need from me?",
            GENERIC = "The voices teach me so much...",
        },

        MOON_ALTAR_IDOL = "So you've heard of 'ol Ken? I'm curious, do you understand this world more than me?",
        MOON_ALTAR_GLASS = "It's... knowledgeable.",
        MOON_ALTAR_SEED = "It's on to me.",

        MOON_ALTAR_ROCK_IDOL = "Hmmmm.",
        MOON_ALTAR_ROCK_GLASS = "I see something in the rock.",
        MOON_ALTAR_ROCK_SEED = "Oh stop your yapping.",

        MOON_ALTAR_CROWN = "Shut up, you're so annoyinnnng!",
        MOON_ALTAR_COSMIC = "Stop it stop it stop it!",

        MOON_ALTAR_ASTRAL = "...",
        MOON_ALTAR_ICON = "This. Is your fault.",
        MOON_ALTAR_WARD = "I will resist!",        

        SEAFARING_PROTOTYPER =
        {
            GENERIC = "Booooo, I won't to study aviation!",
            BURNT = "Serves you right.",
        },
        BOAT_ITEM = "Meh.",
		BOAT_GRASS_ITEM = "This is a dumb idea.",											 
        STEERINGWHEEL_ITEM = "Who cares.",
        ANCHOR_ITEM = "Tch.",
        MAST_ITEM = "Whatever.",
        MUTATEDHOUND = 
        {
        	DEAD = "Better luck the 3rd time.",
        	GENERIC = "What th-? Oh, bring it on!",
        	SLEEPING = "Terrible mutt.",
        },

        MUTATED_PENGUIN = 
        {
			DEAD = "Yeesh...",
			GENERIC = "That's awful.",
			SLEEPING = "...",
		},
        CARRAT = 
        {
        	DEAD = "Poor thing.",
        	GENERIC = "Hey that carrot is... moving?",
        	HELD = "I wonder if it tastes like carrots...",
        	SLEEPING = "Hmph.",
        },

		BULLKELP_PLANT = 
        {
            GENERIC = "Seaweed.",
            PICKED = "Not much left now.",
        },
		BULLKELP_ROOT = "I guess I could plant this somewhere deep.",
        KELPHAT = "And what was wrong with my baseball cap??",
		KELP = "A bunch of seaweed. It's edible.",
		KELP_COOKED = "It's not too bad.",
		KELP_DRIED = "It's not my favorite snack but it'll do.",

		GESTALT = "Chump.",
        GESTALT_GUARD = "You're a little brat, you hear me?!",

		COOKIECUTTER = "Obnoxious brats. Get away from my boat!",
		COOKIECUTTERSHELL = "Good riddance.",
		COOKIECUTTERHAT = "I'm not wearing that.",
		SALTSTACK =
		{
			GENERIC = "It's salt.",
			MINED_OUT = "There's nothing left.",
			GROWING = "There's a bit of salt to take.",
		},
		SALTROCK = "It's salt. Dimwit.",
		SALTBOX = "It'll keep things fresh.",

		TACKLESTATION = "Any fisherman needs a place to store their tackle.",
		TACKLESKETCH = "I could probably make this.",

        MALBATROSS = "Hey, watch it! Stupid bird...",
        MALBATROSS_FEATHER = "It's massive.",
        MALBATROSS_BEAK = "Now what am I gonna do with this??",
        MAST_MALBATROSS_ITEM = "Meh.",
        MAST_MALBATROSS = "Let's sail!",
		MALBATROSS_FEATHERED_WEAVE = "For such a big bird, these feathers are surprisingly light!",

        GNARWAIL =
        {
            GENERIC = "Hey dude.",
            BROKENHORN = "You snooze you lose.",
            FOLLOWER = "Tch. Stay close, I guess.",
            BROKENHORN_FOLLOWER = "My bad.",
        },
        GNARWAIL_HORN = "It's like a lance!",

        WALKINGPLANK = "For when it's time to abandon this floating casket.",
        OAR = "Ugh. Seems like too much work.",
		OAR_DRIFTWOOD = "Too much work for me.",

		OCEANFISHINGROD = "I've never been sea fishing!",
		OCEANFISHINGBOBBER_NONE = "I need a bobber.",
        OCEANFISHINGBOBBER_BALL = "This'll do.",
        OCEANFISHINGBOBBER_OVAL = "This'll do.",
		OCEANFISHINGBOBBER_CROW = "Now we're talking.",
		OCEANFISHINGBOBBER_ROBIN = "Now we're talking.",
		OCEANFISHINGBOBBER_ROBIN_WINTER = "Let's fish.",
		OCEANFISHINGBOBBER_CANARY = "Not bad.",
		OCEANFISHINGBOBBER_GOOSE = "Let's fish.",
		OCEANFISHINGBOBBER_MALBATROSS = "Not bad.",

		OCEANFISHINGLURE_SPINNER_RED = "Those dumb fish won't know what hit 'em.",
		OCEANFISHINGLURE_SPINNER_GREEN = "Those dumb fish won't know what hit 'em.",
		OCEANFISHINGLURE_SPINNER_BLUE = "Those dumb fish won't know what hit 'em.",
		OCEANFISHINGLURE_SPOON_RED = "It's for smaller fish.",
		OCEANFISHINGLURE_SPOON_GREEN = "It's for smaller fish.",
		OCEANFISHINGLURE_SPOON_BLUE = "It's for smaller fish.",
		OCEANFISHINGLURE_HERMIT_RAIN = "For a rainy day.",
		OCEANFISHINGLURE_HERMIT_SNOW = "It works great in the Winter!",
		OCEANFISHINGLURE_HERMIT_DROWSY = "Let's see it work.",
		OCEANFISHINGLURE_HERMIT_HEAVY = "Let's see it work.",

		OCEANFISH_SMALL_1 = "Little guy was no match for me!", --Runty Guppy
		OCEANFISH_SMALL_2 = "What nose you have!", --Needlenosed Squirt
		OCEANFISH_SMALL_3 = "Tch. All that work for such a small catch?", --Bitty Baitfish
		OCEANFISH_SMALL_4 = "It's tiny.", --Smolt Fry
		OCEANFISH_SMALL_5 = "It's made of popcorn?", --Popperfish
		OCEANFISH_SMALL_6 = "It's half plant.", --Fallounder
		OCEANFISH_SMALL_7 = "I like your scales!", --Bloomfin Tuna
		OCEANFISH_SMALL_8 = "So bright!", --Scorching Sunfish
        OCEANFISH_SMALL_9 = "Hey hey, watch it with the water!", --Spittlefish

		OCEANFISH_MEDIUM_1 = "It's a bottom feeder.", --Mudfish
		OCEANFISH_MEDIUM_2 = "I caught it, yes!", --Deep Bass
		OCEANFISH_MEDIUM_3 = "Hey big guy.", --Dandy Lionfish
		OCEANFISH_MEDIUM_4 = "You were a real pain to catch, you know that?", --Black Catfish
		OCEANFISH_MEDIUM_5 = "It's made of corn!", --Corn Cod
		OCEANFISH_MEDIUM_6 = "Very pretty scales you have!", --Dappled Koi
		OCEANFISH_MEDIUM_7 = "Very pretty scales you have!", --Golden Koi
		OCEANFISH_MEDIUM_8 = "It's so cold.", --Ice Bream
		OCEANFISH_MEDIUM_9 = "Wait, the candy?? Grossss...",																			

		PONDFISH = "Too easy.",
		PONDEEL = "An eel.",

        FISHMEAT = "Some raw fish.",
        FISHMEAT_COOKED = "Ready to eat.",
        FISHMEAT_SMALL = "Tiny fish pieces.",
        FISHMEAT_SMALL_COOKED = "Now it's safe to eat.",
		SPOILED_FISH = "Ugh, that smells awful!",

		FISH_BOX = "I can keep my catches here.",
        POCKET_SCALE = "Good for weighing things.",

		TACKLECONTAINER = "It holds tackle.",
		SUPERTACKLECONTAINER = "Now this is a keeper.",

		TROPHYSCALE_FISH =
		{
			GENERIC = "How obnoxious.",
			HAS_ITEM = "Weight: {weight}\nCaught by: {owner}",
			HAS_ITEM_HEAVY = "Weight: {weight}\nCaught by: {owner}\nTch.",
			BURNING = "Who cares.",
			BURNT = "Well then.",
			OWNER = "\nWeight: {weight}\nCaught by: {owner}\nWhatever.",
			OWNER_HEAVY = "Weight: {weight}\nCaught by: {owner}\nIt really wasn't that hard.",
		},

		OCEANFISHABLEFLOTSAM = "Just some muddy grass.",
		CALIFORNIAROLL = "Not quite the real deal.",
		SEAFOODGUMBO = "Yum!",
		SURFNTURF = "Yum!",
        WOBSTER_SHELLER = "Oh, a lobster!", 
        WOBSTER_DEN = "I'll get you guys one of these days.",
        WOBSTER_SHELLER_DEAD = "We were never fancy enough.",
        WOBSTER_SHELLER_DEAD_COOKED = "Must be tasty, right?",

        LOBSTERBISQUE = "Looks good.",
        LOBSTERDINNER = "Looks good.",

        WOBSTER_MOONGLASS = "Whoa, that's cool.",
        MOONGLASS_WOBSTER_DEN = "It's a glass home.",

		TRIDENT = "Nice.",
		
		WINCH =
		{
			GENERIC = "Better be useful.",
			RETRIEVING_ITEM = "Hurry it up!",
			HOLDING_ITEM = "Let's have a look.",
		},

        HERMITHOUSE = {
            GENERIC = "That mean old lady's home.",
            BUILTUP = "I'm counting this as 5 year's worth community service.",
        }, 
        
        SHELL_CLUSTER = "Some stupid shells.",
        --
		SINGINGSHELL_OCTAVE3 =
		{
			GENERIC = "Annoying.",
		},
		SINGINGSHELL_OCTAVE4 =
		{
			GENERIC = "Annoying.",
		},
		SINGINGSHELL_OCTAVE5 =
		{
			GENERIC = "Annoying.",
        },

        CHUM = "Ugh. Seriously?",

        SUNKENCHEST =
        {
            GENERIC = "This better be good.",
            LOCKED = "Of course there's a catch...",
        },
        
        HERMIT_BUNDLE = "Yeah, yeah, whatever.",
        HERMIT_BUNDLE_SHELLS = "Yeah, yeah, whatever.",

        RESKIN_TOOL = "I can have all sorts of fun with this!",
        MOON_FISSURE_PLUGGED = "What's with the plugs?",


		----------------------- ROT STRINGS GO ABOVE HERE ------------------

		-- Walter
        WOBYBIG = 
        {
            "What are they FEEDING you?",
            "JEEZ.",
        },
        WOBYSMALL = 
        {
            "Who doesn't love dogs?",
            "Who's a good girl?",
        },
		WALTERHAT = "Wow you kids are tacky.",
		SLINGSHOT = "Hah, guess it's fine, if you're a weakling.",
		SLINGSHOTAMMO_ROCK = "Slingshot ammo.",		
		SLINGSHOTAMMO_MARBLE = "Slingshot ammo",		
		SLINGSHOTAMMO_THULECITE = "Slingshot ammo.",	
        SLINGSHOTAMMO_GOLD = "Slingshot ammo.",
        SLINGSHOTAMMO_SLOW = "Slingshot ammo.",
        SLINGSHOTAMMO_FREEZE = "Slingshot ammo.",
		SLINGSHOTAMMO_POOP = "Ew.",
        PORTABLETENT = "I call dibs.",
        PORTABLETENT_ITEM = "Camping on the go.",

        -- Wigfrid
        BATTLESONG_DURABILITY = "The only singing I do is in the shower.",
        BATTLESONG_HEALTHGAIN = "The only singing I do is in the shower.",
        BATTLESONG_SANITYGAIN = "The only singing I do is in the shower.",																							
        BATTLESONG_SANITYAURA = "Take a melody!",
        BATTLESONG_FIRERESISTANCE = "Simple as can be!",
        BATTLESONG_INSTANT_TAUNT = "Give it some words, and,",
        BATTLESONG_INSTANT_PANIC = "Sweet harmony.",
        
        -- Webber
        MUTATOR_WARRIOR = "Thanks, spider boy, but I'm full.",
        MUTATOR_DROPPER = "That's very nice of you! How about you give them to Ninten?",
        MUTATOR_HIDER = "No thanks.",
        MUTATOR_SPITTER = "Sorry spider boy, not hungry.",
        MUTATOR_MOON = "No Thanks.",
        MUTATOR_HEALER = "Sorry spider boy, not hungry.",
        SPIDER_WHISTLE = "I'll leave it to the spider whisperer.",
        SPIDERDEN_BEDAZZLER = "We can decorate some other time, little man.",
        SPIDER_HEALER = "You're one ugly mother-",
        SPIDER_REPELLENT = "I'll make good use of this.",
        SPIDER_HEALER_ITEM = "Huh. I guess it's not a bad idea if they're gonna be helping out.",		
		
		-- Wendy
		GHOSTLYELIXIR_SLOWREGEN = "Let's not mess with that.",
		GHOSTLYELIXIR_FASTREGEN = "Let's not mess with that.",
		GHOSTLYELIXIR_SHIELD = "Let's not mess with that.",
		GHOSTLYELIXIR_ATTACK = "Let's not mess with that.",
		GHOSTLYELIXIR_SPEED = "Let's not mess with that.",
		GHOSTLYELIXIR_RETALIATION = "Let's not mess with that.",
		SISTURN =
		{
			GENERIC = "Meh.",
			SOME_FLOWERS = "You do it if it matters to you.",
			LOTS_OF_FLOWERS = "Whatever.",
		},

        --Wortox
        WORTOX_SOUL = "only_used_by_wortox", --only wortox can inspect souls

        PORTABLECOOKPOT_ITEM =
        {
            GENERIC = "Hurry up and set it up.",
            DONE = "Finally!",

			COOKING_LONG = "Hurry up!",
			COOKING_SHORT = "Ughhhhhh....",
			EMPTY = "Get cooking already!",
        },
        
        PORTABLEBLENDER_ITEM = "It's a blender!",
        PORTABLESPICER_ITEM =
        {
            GENERIC = "For spices.",
            DONE = "Mmmmm, spicy.",
        },
        SPICEPACK = "Better be good.",
        SPICE_GARLIC = "Don't mind if I do.",
        SPICE_SUGAR = "Sugar.",
        SPICE_CHILI = "Don't mind if I do.",
        SPICE_SALT = "Some salt'll never hurt you.",
        MONSTERTARTARE = "Yeesh. And you call yourself a chef?",
        FRESHFRUITCREPES = "Fancy doesn't make it good.",
        FROGFISHBOWL = "Absolute weirdo.",
        POTATOTORNADO = "Meh.",
        DRAGONCHILISALAD = "Not bad.",
        GLOWBERRYMOUSSE = "I guess it's fine.",
        VOLTGOATJELLY = "Jelly is jelly.",
        NIGHTMAREPIE = "Stop trying to be unique, it's only pretentious.",
        BONESOUP = "Meh.",
        MASHEDPOTATOES = "Hard to mess this up.",
        POTATOSOUFFLE = "Okay, this is pretty good, actually.",
        MOQUECA = "It's fine.",
        GAZPACHO = "Not bad.",
        ASPARAGUSSOUP = "Gross.",
        VEGSTINGER = "Stings just right.",
        BANANAPOP = "Not bad.",
        CEVICHE = "Meh.",
        SALSA = "Hard to mess up salsa!",
        PEPPERPOPPER = "They look delicious!",
		
        TURNIP = "It's a turnip.",
        TURNIP_COOKED = "I roasted it.",
        TURNIP_SEEDS = "Some turnip seeds.",
        
        GARLIC = "It's an acquired taste.",
        GARLIC_COOKED = "Taste acquired.",
        GARLIC_SEEDS = "Garlic seeds.",
        
        ONION = "Raw onion.",
        ONION_COOKED = "Yeesh, that's strong...",
        ONION_SEEDS = "I can make more onions now.",
        
        POTATO = "You're a potato.",
        POTATO_COOKED = "Cooked.",
        POTATO_SEEDS = "Potato seeds.",
        
        TOMATO = "Great for chucking.",
        TOMATO_COOKED = "Mushy.",
        TOMATO_SEEDS = "More tomatos when I need them.",

        ASPARAGUS = "Yuck.", 
        ASPARAGUS_COOKED = "Ugh...",
        ASPARAGUS_SEEDS = "It's some asparagus seeds.",

        PEPPER = "I could use a little spice.",
        PEPPER_COOKED = "Mmph.",
        PEPPER_SEEDS = "I got some pepper seeds.",

        WEREITEM_BEAVER = "What a weirdo.",
        WEREITEM_GOOSE = "What a weirdo.",
        WEREITEM_MOOSE = "What a weirdo.",

        MERMHAT = "It might be the tackiest thing I've ever seen, but it'll stop those dumb fish people from attacking me.",						   
        MERMTHRONE =
        {
            GENERIC = "Tacky.",
            BURNT = "Well you tried.",
        },        
        MERMTHRONE_CONSTRUCTION =
        {
            GENERIC = "What're you up to.",
            BURNT = "Hah.",
        },        
        MERMHOUSE_CRAFTED = 
        {
            GENERIC = "Hey, not bad.",
            BURNT = "Happens.",
        },

        MERMWATCHTOWER_REGULAR = "They get on my nerves.",
        MERMWATCHTOWER_NOKING = "No king? Too bad.",
        MERMKING = "Does everyone here have to SMELL?",
        MERMGUARD = "Smells awful.",
        MERM_PRINCE = "I hate you.",

        SQUID = "Hey, it's a squid!",

		GHOSTFLOWER = "A gift from a ghostly friend.",
        SMALLGHOST = "Boo hoo, you're dead. Not my problem.",

        CRABKING = 
        {
            GENERIC = "It's always somethin...'",
            INERT = "Seems suspicious...",
        },
		CRABKING_CLAW = "That's might be an issue.",
		
		MESSAGEBOTTLE = "What do we have here?",
		MESSAGEBOTTLEEMPTY = "It's a bottle.",

        MEATRACK_HERMIT =
        {
            DONE = "It's done.",
            DRYING = "*Sigh*",
            DRYINGINRAIN = "Are you. Friggin.' Serious.",
            GENERIC = "We drying meat, or?",
            BURNT = "Ughhhhh...",
            DONE_NOTMEAT = "It's done.",
            DRYING_NOTMEAT = "*Sigh*",
            DRYINGINRAIN_NOTMEAT = "Are you. Friggin.' Serious.",
        },
        BEEBOX_HERMIT =
        {
			READY = "Someone harvest that? I'm busy not getting stung.",
			FULLHONEY = "Someone harvest that? I'm busy not getting stung.",
			GENERIC = "Now we're talkin.'",
			NOHONEY = "There's no honey right now.",
			SOMEHONEY = "Ugh, work faster!",
			BURNT = "This is your fault. You hear me? You.",
        },

        HERMITCRAB = "'Respect your elders,' tch. Why should I if it's not reciprocated?",

        HERMIT_PEARL = "Whatever.",
        HERMIT_CRACKED_PEARL = "Not my problem.",

        -- DSEAS
        WATERPLANT = "What in the world?",
        WATERPLANT_BOMB = "Terrible for my asthma.",
        WATERPLANT_BABY = "It's still growing.",
        WATERPLANT_PLANTER = "They like sea rocks.",

        SHARK = "Just try and take a bite out of my boat.",

        MASTUPGRADE_LAMP_ITEM = "This'll be great for the dark.",
        MASTUPGRADE_LIGHTNINGROD_ITEM = "Yeah, yeah...",

        WATERPUMP = "I guess it's useful.",

        BARNACLE = "Oh that's disgusting.",
        BARNACLE_COOKED = "Disgusting!",

        BARNACLEPITA = "I hate you.",
        BARNACLESUSHI = "I refuse.",
        BARNACLINGUINE = "Don't think you're safe behind that screen.",
        BARNACLESTUFFEDFISHHEAD = "What is wrong with you people.",

        LEAFLOAF = "That doesn't look apetizing.",
        LEAFYMEATBURGER = "Tastes just like a burger.",
        LEAFYMEATSOUFFLE = "I'm not that hungry.",
        MEATYSALAD = "It's salad I guess.",

        -- GROTTO

		MOLEBAT = "Big enough nose, ugly?",
        MOLEBATHILL = "Tch. What a stupid den.",

        BATNOSE = "Gross, dude.",
        BATNOSE_COOKED = "I. Will remember this...",
        BATNOSEHAT = "Too tacky for me.",

        MUSHGNOME = "What do you want, dum dum?",

        SPORE_MOON = "Watch out!",

        MOON_CAP = "It makes you sleepy.",
        MOON_CAP_COOKED = "Is this safe?",

        MUSHTREE_MOON = "Huh.",

        LIGHTFLIER = "Cool.",

        GROTTO_POOL_BIG = "This'd make amazing decor.",
        GROTTO_POOL_SMALL = "This'd make amazing decor.",

        DUSTMOTH = "Keep your stupid dust away from my clothes.",

        DUSTMOTHDEN = "A moth home.",

        ARCHIVE_LOCKBOX = "Just gotta pry it open.",
        ARCHIVE_CENTIPEDE = "*Sigh*",
        ARCHIVE_CENTIPEDE_HUSK = "I wouldn't so pissed if you weren't so bad at your job.",

        ARCHIVE_COOKPOT =
        {
			COOKING_LONG = "Stupid thing. Work faster!",
			COOKING_SHORT = "I'm dying over hereee!!",
			DONE = "Mine mine mine!",
			EMPTY = "Someone should cook something.",
			BURNT = "Well it's not cooking anything now.",
        },

        ARCHIVE_MOON_STATUE = "Dumb statue.",
        ARCHIVE_RUNE_STATUE = 
        {
            LINE_1 = "I have no idea what it says.",
            LINE_2 = "Who cares.",
            LINE_3 = "No clue what it says.",
            LINE_4 = "Who cares.",
            LINE_5 = "Stop asking.",
        },        

        ARCHIVE_RESONATOR = {
            GENERIC = "Yeah, yeah, yeah, I'm going.",
            IDLE = "Stupid thing! Are you broken, or what?",
        },
        
        ARCHIVE_RESONATOR_ITEM = "Some sorta junk.",

        ARCHIVE_LOCKBOX_DISPENCER = {
          POWEROFF = "Stupid piece of crap! Turn on!",
          GENERIC =  "It works.",
        },

        ARCHIVE_SECURITY_DESK = {
            POWEROFF = "No power. This place stinks.",
            GENERIC = "Huh.",
        },

        ARCHIVE_SECURITY_PULSE = "Great.",

        ARCHIVE_SWITCH = {
            VALID = "Now we're talking!",
            GEMS = "Must take another of those gems.",
        },

        ARCHIVE_PORTAL = {
            POWEROFF = "Piece of junk needs power.",
            GENERIC = "What th- stupid thing, turn on! What a scam.",
        },

        WALL_STONE_2 = "Some old wall.",
        WALL_RUINS_2 = "Nothing special.",

        REFINED_DUST = "Ugh, keep that stuff away from me.",
        DUSTMERINGUE = "Ugh, keep that stuff away from me.",

        SHROOMCAKE = "I hate it.",

        NIGHTMAREGROWTH = "Seems... problematic. Maybe do something about it.",

        TURFCRAFTINGSTATION = "Ugh. WHO CARES?!",

        MOON_ALTAR_LINK = "It's... doing something...",

        -- FARMING
        COMPOSTINGBIN =
        {
            GENERIC = "I can't believe you're really making me do this.",
            WET = "It's a little on the wet side.",
            DRY = "Too dry.",
            BALANCED = "Just right. Happy?",
            BURNT = "Whatever.",
        },
        COMPOST = "Compost.",
        SOIL_AMENDER = 
		{ 
			GENERIC = "What exactly do you want me to do with this?",
			STALE = "Oh...",
			SPOILED = "JEEZ, that's smells terrible!",
		},

		SOIL_AMENDER_FERMENTED = "Keep that crap away from me.",

        WATERINGCAN = 
        {
            GENERIC = "What you want me to water them too?! So damn needy...",
            EMPTY = "Ugh. Fine, I'll find some water.",
        },
        PREMIUMWATERINGCAN =
        {
            GENERIC = "Find someone who cares.",
            EMPTY = "That is so tacky.",
        },

		FARM_PLOW = "Well would you look at that.",
		FARM_PLOW_ITEM = "Interesting... contraption you got there.",
		FARM_HOE = "I'm not a farmer.",
		GOLDEN_FARM_HOE = "No thanks.",
		NUTRIENTSGOGGLESHAT = "Ugh.",
		PLANTREGISTRYHAT = "That is so LAME!",

        FARM_SOIL_DEBRIS = "I already hate this so much.",

		FIRENETTLES = "Ow, that's hot!",
		FORGETMELOTS = "What's this?",
		SWEETTEA = "I don't think I've ever had tea.",
		TILLWEED = "Ugh. Weeds.",
		TILLWEEDSALVE = "Guess it's useful for old people, or something.",
		WEED_IVY = "Weeds...",
        IVY_SNARE = "Hey!",										  								

		TROPHYSCALE_OVERSIZEDVEGGIES =
		{
			GENERIC = "What are we running a grocery store now? Lame.",
			HAS_ITEM = "Weight: {weight}\nHarvested on day: {day}\nWhatever.",
			HAS_ITEM_HEAVY = "Weight: {weight}\nHarvested on day: {day}\nTch. Not bad.",
            HAS_ITEM_LIGHT = "Oh cool, it's not working.",
			BURNING = "Oh no, a fire. What will I do.",
			BURNT = "I got rid of the lame.",
        },
        
        CARROT_OVERSIZED = "Huh.",
        CORN_OVERSIZED = "Whoa.",
        PUMPKIN_OVERSIZED = "Now we're talkin.'",
        EGGPLANT_OVERSIZED = "It's massive.",
        DURIAN_OVERSIZED = "Ughhhhh.",
        POMEGRANATE_OVERSIZED = "It's massive.",
        DRAGONFRUIT_OVERSIZED = "Whoa-kay, nice job, actually!",
        WATERMELON_OVERSIZED = "Wow that's massive.",						 
        TOMATO_OVERSIZED = "Now we just need a big enough catapult.",
        POTATO_OVERSIZED = "You'll feed villages, big guy.",
        ASPARAGUS_OVERSIZED = "That is so gross!",
        ONION_OVERSIZED = "Seriously?",
        GARLIC_OVERSIZED = "Okay then.",
        PEPPER_OVERSIZED = "Might be a little too spicy!",
        
        VEGGIE_OVERSIZED_ROTTEN = "Idiot.",

		FARM_PLANT =
		{
			GENERIC = "I'm gonna die waiting.",
			SEED = "I'm bored.",
			GROWING = "This is taking FOREVER.",
			FULL = "About damn time...",
			ROTTEN = "It's no good now.",
			FULL_OVERSIZED = "Huh.",
			ROTTEN_OVERSIZED = "Lame.",
			FULL_WEED = "Out! Useless weeds...",

			BURNING = "Nice. Real nice.",
		},
        FRUITFLY = "Ugh! Get away from me!",
        LORDFRUITFLY = "Oh, I'll enjoy swatting you!",
        FRIENDLYFRUITFLY = "You can stay, I guess.",
        FRUITFLYFRUIT = "Dumb thing seems to love it.",

        SEEDPOUCH = "A safe place to store my seeds.",
		-- Crow Carnival
		CARNIVAL_HOST = "I love carnivals.",
		CARNIVAL_CROWKID = "Sup.",
		CARNIVAL_GAMETOKEN = "Lemmie show you dweebs how a master plays.",
		CARNIVAL_PRIZETICKET =
		{
			GENERIC = "That's the ticket.",
			GENERIC_SMALLSTACK = "Not bad.",
			GENERIC_LARGESTACK = "Told you: I'm just that good.",
		},

		CARNIVALGAME_FEEDCHICKS_NEST = "It's a little trapdoor.",
		CARNIVALGAME_FEEDCHICKS_STATION =
		{
			GENERIC = "Get me a token, dweeb.",
			PLAYING = "Outta my way!",
		},
		CARNIVALGAME_FEEDCHICKS_KIT = "Now, where shall we put this?",
		CARNIVALGAME_FEEDCHICKS_FOOD = "This is kinda tacky, but I'll cool with it.",

		CARNIVALGAME_MEMORY_KIT = "Now, where shall we put this?",
		CARNIVALGAME_MEMORY_STATION =
		{
			GENERIC = "Get me a token, dweeb.",
			PLAYING = "Watch and learn.",
		},
		CARNIVALGAME_MEMORY_CARD =
		{
			GENERIC = "It's a little trapdoor.",
			PLAYING = "C'mon, big man, you know where it is or not?",
		},

		CARNIVALGAME_HERDING_KIT = "Now, where shall we put this?",
		CARNIVALGAME_HERDING_STATION =
		{
			GENERIC = "Need a token, idiot.",
			PLAYING = "This one is pretty fun.",											 
		},
		CARNIVALGAME_HERDING_CHICK = "Get back here!",
		
		CARNIVALGAME_SHOOTING_KIT = "Now, where shall we put this?",
		CARNIVALGAME_SHOOTING_STATION =
		{
			GENERIC = "Need a token, idiot.",
			PLAYING = "Heh, I'm a bit of a natural at these types of games. Watch.",
		},
		CARNIVALGAME_SHOOTING_TARGET =
		{
			GENERIC = "It's a little trapdoor.",
			PLAYING = "Too easy!",
		},

		CARNIVALGAME_SHOOTING_BUTTON =
		{
			GENERIC = "Get me a token, dweeb.",
			PLAYING = "This is how the master does it.",
		},

		CARNIVALGAME_WHEELSPIN_KIT = "Now, where shall we put this?",
		CARNIVALGAME_WHEELSPIN_STATION =
		{
			GENERIC = "Get me a token, dweeb.",
			PLAYING = "This game stinks.",
		},

		CARNIVALGAME_PUCKDROP_KIT = "Now, where shall we put this?",
		CARNIVALGAME_PUCKDROP_STATION =
		{
			GENERIC = "Hey, someone get me a token!",
			PLAYING = "It's all in the finess.",
		},
		
		CARNIVAL_PRIZEBOOTH_KIT = "Prizes not included.",
		CARNIVAL_PRIZEBOOTH =
		{
			GENERIC = "Just you sit and watch. I'll empty out this carnival.",
		},

		CARNIVALCANNON_KIT = "Confetti, huh?",
		CARNIVALCANNON =
		{
			GENERIC = "Looks fun.",
			COOLDOWN = "That was nice.",
		},

		CARNIVAL_PLAZA_KIT = "Gonna set that up?",
		CARNIVAL_PLAZA =
		{
			GENERIC = "Boooooring.",
			LEVEL_2 = "We're getting there.",
			LEVEL_3 = "Fun.",
		},

		CARNIVALDECOR_EGGRIDE_KIT = "Hm.",
		CARNIVALDECOR_EGGRIDE = "It'd be more fun if it was human size.",

		CARNIVALDECOR_LAMP_KIT = "It sets the mood.",
		CARNIVALDECOR_LAMP = "Ah.",
		CARNIVALDECOR_PLANT_KIT = "Set it up already.",											  
		CARNIVALDECOR_PLANT = "Nice.",
		CARNIVALDECOR_BANNER_KIT = "This'll spice things up.",
		CARNIVALDECOR_BANNER = "Yep, nice and spicy.",

		CARNIVALDECOR_FIGURE =
		{
			RARE = "Sweet!",
			UNCOMMON = "Hmmm, could be better.",
			GENERIC = "Ugh. Just the same thing, over and over again.",
		},
		CARNIVALDECOR_FIGURE_KIT = "I wonder what it'll be?",
		CARNIVALDECOR_FIGURE_KIT_SEASON2 = "I wonder what it'll be?",														

        CARNIVAL_BALL = "It's genius in its simplicity.", --unimplemented
		CARNIVAL_SEEDPACKET = "Eh, it's not sunflower seeds, but it'll do.",
		CARNIVALFOOD_CORNTEA = "What kind of freak would enjoy this?",
        CARNIVAL_VEST_A = "Pretty stylish... for a bunch of leaves.",
        CARNIVAL_VEST_B = "I'd rather not wear it.",
        CARNIVAL_VEST_C = "Do I have to wear this?",		  
        -- YOTB
        YOTB_SEWINGMACHINE = "Sewing can't be that hard... can it?",
        YOTB_SEWINGMACHINE_ITEM = "There looks to be a bit of assembly required.",
        YOTB_STAGE = "Strange, I never see him enter or leave...",
        YOTB_POST =  "This contest is going to go off without a hitch! Well, figuratively speaking.",
        YOTB_STAGE_ITEM = "It looks like a bit of building is in order.",
        YOTB_POST_ITEM =  "I'd better get that set up.",


        YOTB_PATTERN_FRAGMENT_1 = "If I put some of these together, I bet I could make a beefalo costume.",
        YOTB_PATTERN_FRAGMENT_2 = "If I put some of these together, I bet I could make a beefalo costume.",
        YOTB_PATTERN_FRAGMENT_3 = "If I put some of these together, I bet I could make a beefalo costume.",

        YOTB_BEEFALO_DOLL_WAR = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_DOLL = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_FESTIVE = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_NATURE = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_ROBOT = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_ICE = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_FORMAL = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_VICTORIAN = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },
        YOTB_BEEFALO_DOLL_BEAST = {
            GENERIC = "Scientifically formulated for maximum huggableness.",
            YOTB = "I wonder what the Judge would say about this?",
        },


        WAR_BLUEPRINT = "How ferocious!",
        DOLL_BLUEPRINT = "My beefalo will look as cute as a button!",
        FESTIVE_BLUEPRINT = "This is just the occasion for some festivity!",
        ROBOT_BLUEPRINT = "This requires a suspicious amount of welding for a sewing project.",
        NATURE_BLUEPRINT = "You really can't go wrong with flowers.",
        FORMAL_BLUEPRINT = "This is a costume for some Grade A beefalo.",
        VICTORIAN_BLUEPRINT = "I think my grandmother wore something similar.",
        ICE_BLUEPRINT = "I usually like my beefalo fresh, not frozen.",
        BEAST_BLUEPRINT = "I'm feeling lucky about this one!",

        BEEF_BELL = "Those beefalo things seem to like it.",
		-- YOT Catcoon
		KITCOONDEN =
		{
			GENERIC = "You'd have to be pretty small to fit in there.",
            BURNT = "NOOOO!",
			PLAYING_HIDEANDSEEK = "Now where could they be...",
			PLAYING_HIDEANDSEEK_TIME_ALMOST_UP = "Not much time left! Where are they?!",
		},

		KITCOONDEN_KIT = "The whole kit and caboodle.",

		TICOON =
		{
			GENERIC = "He looks like he knows what he's doing!",
			ABANDONED = "I'm sure I can find them on my own.",
			SUCCESS = "Hey, he found one!",
			LOST_TRACK = "Someone else found them first.",
			NEARBY = "Looks like there's something nearby.",
			TRACKING = "I should follow his lead.",
			TRACKING_NOT_MINE = "He's leading the way for someone else.",
			NOTHING_TO_TRACK = "It doesn't look like there's anything left to find.",
			TARGET_TOO_FAR_AWAY = "They might be too far away for him to sniff out.",
		},

		YOT_CATCOONSHRINE =
        {
            GENERIC = "What to make...",
            EMPTY = "Maybe it would like a feather to play with...",
            BURNT = "Smells like scorched fur.",
        },

		KITCOON_FOREST = "Aren't you the cutest little cat thing!",
		KITCOON_SAVANNA = "Aren't you the cutest little cat thing!",
		KITCOON_MARSH = "I must collect more... for research!",
		KITCOON_DECIDUOUS = "Aren't you the cutest little cat thing!",
		KITCOON_GRASS = "Aren't you the cutest little cat thing!",
		KITCOON_ROCKY = "I must collect more... for research!",
		KITCOON_DESERT = "I must collect more... for research!",
		KITCOON_MOON = "I must collect more... for research!",
		KITCOON_YOT = "I must collect more... for research!",		
		-- Moon Storm
        ALTERGUARDIAN_PHASE1 = {
            GENERIC = "Watch out!",
            DEAD = "Is it... dead?",
        },
        ALTERGUARDIAN_PHASE2 = {
            GENERIC = "Not dead, not dead!",
            DEAD = "Phew...",
        },
        ALTERGUARDIAN_PHASE2SPIKE = "Ah! That almost hit me!",
        ALTERGUARDIAN_PHASE3 = "AH!! Help me help me help me!!",
        ALTERGUARDIAN_PHASE3TRAP = "Makes me sleepy.",
        ALTERGUARDIAN_PHASE3DEADORB = "Ugh...",
        ALTERGUARDIAN_PHASE3DEAD = "Ugh...",

        ALTERGUARDIANHAT = "Whoa... I understand, like, everything, now.",
        ALTERGUARDIANHATSHARD = "Teach me what you know.",

        MOONSTORM_GLASS = {
            GENERIC = "It's glassy.",
            INFUSED =  "This energy is from another world!"
        },

        MOONSTORM_STATIC = "Eh eh, watch the hair!",
        MOONSTORM_STATIC_ITEM = "It's like rubbing balloons in your hair.",
        MOONSTORM_SPARK = "Careful, Ninten.",

        BIRD_MUTANT = "Ah! What happened to you?!",
        BIRD_MUTANT_SPITTER = "Weird.",

        WAGSTAFF_NPC = "Another mad scientist, just what I needed.",
        ALTERGUARDIAN_CONTAINED = "So, what exactly are we using this energy for?",

        WAGSTAFF_TOOL_1 = "I don't even know what is. Whatever, just gotta get it back to the old man.",
        WAGSTAFF_TOOL_2 = "I don't even know what is. Whatever, just gotta get it back to the old man.",
        WAGSTAFF_TOOL_3 = "I didn't think books could get any lamer.",
        WAGSTAFF_TOOL_4 = "Dude. This is just a multitoo- you know what, NEVERMIND!",
        WAGSTAFF_TOOL_5 = "Whatever.",

        MOONSTORM_GOGGLESHAT = "I look ridiculous with this.",

        MOON_DEVICE = {
            GENERIC = "All this Moon stuff gives me the heeby-jeebies!",
            CONSTRUCTION1 = "It's not quite ready.",
            CONSTRUCTION2 = "We're getting somewhere now!",
        },

		-- Wanda
        POCKETWATCH_HEAL = {
			GENERIC = "What in the world? You're messing with nature, lady, and I don't like it!",
			RECHARGING = "It's doing a whole lot of nothing now.",
		},

        POCKETWATCH_REVIVE = {
			GENERIC = "You can break back the dead with that? Creepy! But also cool.",
			RECHARGING = "It ain't doing anything now.",
		},

        POCKETWATCH_WARP = {
			GENERIC = "How does it work?",
			RECHARGING = "Just a watch, for now.",
		},

        POCKETWATCH_RECALL = {
			GENERIC = "How does it work?",
			RECHARGING = "Just a watch now.",
			UNMARKED = "only_used_by_wanda",
			MARKED_SAMESHARD = "only_used_by_wanda",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda",
		},

        POCKETWATCH_PORTAL = {
			GENERIC = "How does it work?",
			RECHARGING = "Nothing but your standard watch now.",
			UNMARKED = "only_used_by_wanda unmarked",
			MARKED_SAMESHARD = "only_used_by_wanda same shard",
			MARKED_DIFFERENTSHARD = "only_used_by_wanda other shard",
		},

        POCKETWATCH_WEAPON = {
			GENERIC = "Just don't use it on me and we're cool.",
			DEPLETED = "only_used_by_wanda",
		},

        POCKETWATCH_PARTS = "Just a bunch of junk that old, er, young, er... lady uses.",
        POCKETWATCH_DISMANTLER = "Think my dad has some of these tools in the garage somewhere.",

        POCKETWATCH_PORTAL_ENTRANCE = 
		{
			GENERIC = "Whooooa!",
			DIFFERENTSHARD = "Whooooa!",
		},
        POCKETWATCH_PORTAL_EXIT = "Hopefully I don't get trapped in time or something equally horrible...",

        -- Waterlog
        WATERTREE_PILLAR = "That's tree is huge, dude!",
        OCEANTREE = "Trees? In the ocean?",
        OCEANTREENUT = "Maybe I can make more water trees with this.",
        WATERTREE_ROOT = "I wonder how deep they go.",

        OCEANTREE_PILLAR = "Boy, you've sure grown a lot!",
        
        OCEANVINE = "Bet you I could climb my way to the top!",
        FIG = "Sometimes we'd have these for Christmas. I was never really a fan.",
        FIG_COOKED = "Yeah, I'm still not a fan.",

        SPIDER_WATER = "Get awaaaaay get awaaaaay!!",
        MUTATOR_WATER = "Dude. Why.",
        OCEANVINE_COCOON = "I'd rather not, you know.",
        OCEANVINE_COCOON_BURNT = "Whoops. Oh well.",

        GRASSGATOR = "What kind of animal are you?",

        TREEGROWTHSOLUTION = "It seems to help trees grow!",

        FIGATONI = "Ugh. Just give me raw veggies, dude.",
        FIGKABAB = "It's not bad, actually.",
        KOALEFIG_TRUNK = "Do I have to?",
        FROGNEWTON = "Well, it was the frog or me. I guess.",

        -- The Terrorarium
        TERRARIUM = {
            GENERIC = "That thing gives me a bad feeling.",
            CRIMSON = "I really don't trust this.",
            ENABLED = "I did something?",
			WAITING_FOR_DARK = "Something tell me I won't be getting much sleep tonight.",
			COOLDOWN = "It's doing a whole lot of nothing.",
			SPAWN_DISABLED = "Huh. Think I broke it.",
        },

        -- Wolfgang
        MIGHTY_GYM = 
        {
            GENERIC = "I don't need to work out.",
            BURNT = "Well.",
        },

        DUMBBELL = "Too heavy for me!",
        DUMBBELL_GOLDEN = "I wonder if I could pawn that once I get out of here.",
		DUMBBELL_MARBLE = "I'm way too small for that.",
        DUMBBELL_GEM = "Looks more like a murder weapon than for exercise!",																						
        POTATOSACK = "Some sort of potato sack.",


        TERRARIUMCHEST = 
		{
			GENERIC = "I wonder what's inside.",
			BURNT = "Nothing's inside it now.",
			SHIMMER = "That seems a bit out of place...",
		},
		EYEMASKHAT = "Looks painful. No thanks.",

        EYEOFTERROR = "That is some nightmare fuel!",
        EYEOFTERROR_MINI = "I don't like how it's staring at me.",
        EYEOFTERROR_MINI_GROUNDED = "I don't trust that.",
														 
        FROZENBANANADAIQUIRI = "Looks yummy!",
        BUNNYSTEW = "Stew is alright, I guess.",
        MILKYWHITES = "Yuck.",

        CRITTER_EYEOFTERROR = "What are you looking at?",

        SHIELDOFTERROR ="It's a weapon, it's a shield, what more could you want?",
        TWINOFTERROR1 = "Are you one of Giygas' robots?",
        TWINOFTERROR2 = "Are you one of Giygas' robots?",			 						
	
	-- Year of the Catcoon
        CATTOY_MOUSE = "Mice with wheels, what will science think up next?",
        KITCOON_NAMETAG = "I should think of some names! Let's see, Wilson Jr., Wilson Jr. 2...",

		KITCOONDECOR1 =
        {
            GENERIC = "It's not a real bird, but the kits don't know that.",
            BURNT = "Combustion!",
        },
		KITCOONDECOR2 =
        {
            GENERIC = "Those kits are so easily distracted. Now what was I doing again?",
            BURNT = "It went up in flames.",
        },

		KITCOONDECOR1_KIT = "It looks like there's some assembly required.",
		KITCOONDECOR2_KIT = "It doesn't look too hard to build.",

        -- WX78
        WX78MODULE_MAXHEALTH = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_MAXSANITY1 = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_MAXSANITY = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_MOVESPEED = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_MOVESPEED2 = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_HEAT = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_NIGHTVISION = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_COLD = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_TASER = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_LIGHT = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_MAXHUNGER1 = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_MAXHUNGER = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_MUSIC = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_BEE = "Great Grandpa probably understands this junk better than me.",
        WX78MODULE_MAXHEALTH2 = "Great Grandpa probably understands this junk better than me.",

        WX78_SCANNER =
        {
            GENERIC ="Robots are weird.",
            HUNTING = "It's looking for something.",
            SCANNING = "Whatcha scanning?",
        },

        WX78_SCANNER_ITEM = "This thing's scans are harmless, right?",
        WX78_SCANNER_SUCCEEDED = "It found something!",

        WX78_MODULEREMOVER = "Looks like junk.",

        SCANDATA = "Mumbo-jumbo.",

        -- Pirates
        BOAT_ROTATOR = "Heh, hold on to your hats...",
        BOAT_ROTATOR_KIT = "For spinning. Duh.",
        BOAT_BUMPER_KELP = "Anyone for a little game of bumper-boats?",
        BOAT_BUMPER_KELP_KIT = "It probably works like a car's.",
        BOAT_BUMPER_SHELL = "I'm unstoppable!",
        BOAT_BUMPER_SHELL_KIT = "It probably works like a car's.",
        BOAT_CANNON = {
            GENERIC = "No ammo, but at least it's intimidating!",
            AMMOLOADED = "Now we're talkin'.",
			GENERIC = "No ammo, but at least it's intimidating!",														   
        },
        BOAT_CANNON_KIT = "Now I just need a boat.",
        CANNONBALL_ROCK_ITEM = "I'll use it for a cannon.",

        OCEAN_TRAWLER = {
            GENERIC = "I'll caught lots of seafood now.",
            LOWERED = "Hopefully I found something.",
            CAUGHT = "Gotcha!",
            ESCAPED = "Good going...",
            FIXED = "You won't escape this time.",
        },
        OCEAN_TRAWLER_KIT = "Here fishy fishies!",

        BOAT_MAGNET =
        {
            GENERIC = "I think it's a magnet.",
            ACTIVATED = "Doing magnet things.",
        },
        BOAT_MAGNET_KIT = "I don't what I'm doing with it.",

        BOAT_MAGNET_BEACON =
        {
            GENERIC = "It attracts magnets!",
            ACTIVATED = "Look at it go!",
        },
        DOCK_KIT = "About time we got a dock.",
        DOCK_WOODPOSTS_ITEM = "Yeah, supports seemed important.",

        MONKEYHUT = "Tropical.",
        POWDER_MONKEY = "You're gonna get it one of these days.",
        PRIME_MATE = "Must be their leader.",
		LIGHTCRAB = "Whoa!",
        CUTLESS = "Seems like a child's toy.",
        CURSED_MONKEY_TOKEN = "Great, just great.",
        OAR_MONKEY = "One of these days I'll get my hands an actual bat.",
        BANANABUSH = "I thought they grew on trees.",
        DUG_BANANABUSH = "Where to put you?",
        PALMCONETREE = "Never seen a palm tree quite like it.",
        PALMCONE_SEED = "I should plant it.",
        PALMCONE_SAPLING = "Grow!!",
        PALMCONE_SCALE = "It's sturdy.",
        MONKEYTAIL = "The things I do to survive.",
        DUG_MONKEYTAIL = "The things I do to survive.",

        MONKEY_MEDIUMHAT = "I knew I'd be an awesome captain.",
        MONKEY_SMALLHAT = "It'll keep my hair dry.",
        POLLY_ROGERSHAT = "I look. Awesome.",
        POLLY_ROGERS = "Ninten sucks!",

        MONKEYISLAND_PORTAL = "Looks like trouble.",
        MONKEYISLAND_PORTAL_DEBRIS = "I don't know what that scientist dude is up to, but I don't like it.",
        MONKEYQUEEN = "Smelliest of them all.",
        MONKEYPILLAR = "Pretty.",
        PIRATE_FLAG_POLE = "No monkeying around...",

        BLACKFLAG = "Pirates, huh? I'm down.",
        PIRATE_STASH = "Treasure!",
        STASH_MAP = "A treasure map!",
        BANANAJUICE = "I prefer OJ to be honest.",
		
		FENCE_ROTATOR = "Enguarde, nerds!",
		
		CHARLIE_STAGE_POST = "I got better things to do than play dress up.",
        CHARLIE_LECTURN = "...I am not putting on your dumb play.",
		CHARLIE_HECKLER = "Just you wait.",
        PLAYBILL_THE_DOLL = "Cool, don't care.",
        STATUEHARP_HEDGESPAWNER = "That's seems a bit too thorny.",
        HEDGEHOUND = "You'll gonna pay for that!",
        HEDGEHOUND_BUSH = "It seems off.",

        MASK_DOLLHAT = "It's a doll mask.",
        MASK_DOLLBROKENHAT = "It's a cracked doll mask.",
        MASK_DOLLREPAIREDHAT = "It was a doll mask at one point.",
        MASK_BLACKSMITHHAT = "It's a blacksmith mask.",
        MASK_MIRRORHAT = "It's a mask, but it looks like a mirror.",
        MASK_QUEENHAT = "It's a Queen mask.",
        MASK_KINGHAT = "It's a King mask.",
        MASK_TREEHAT = "It's a tree mask.",
        MASK_FOOLHAT = "It's a fool's mask.",

        COSTUME_DOLL_BODY = "It's a doll costume.",
        COSTUME_QUEEN_BODY = "It's a Queen costume.",
        COSTUME_KING_BODY = "It's a King costume.",
        COSTUME_BLACKSMITH_BODY = "It's a blacksmith costume.",
        COSTUME_MIRROR_BODY = "It's a costume.",
        COSTUME_TREE_BODY = "It's a tree costume.",
        COSTUME_FOOL_BODY = "It's a fool's costume.",

        STAGEUSHER =
        {
            STANDING = "Keep to yourself, bub.",
            SITTING = "What?",
        },
        SEWING_MANNEQUIN =
        {
            GENERIC = "All dressed up and nowhere to go.",
            BURNT = "All burnt up and nowhere to go.",
        },														   
		-- Waxwell
		MAGICIAN_CHEST = "Who knows what secrets it holds.",
		TOPHAT_MAGICIAN = "Not bad.",										 
		 -- Year of the Rabbit
        YOTR_FIGHTRING_KIT = "It must be built, for science!",
        YOTR_FIGHTRING_BELL =
        {
            GENERIC = "It's peaceful, for now.",
            PLAYING = "I think we've all learned a lot here today.",
        },

        YOTR_DECOR_1 = {
            GENERAL = "That rabbit can really light up a room.",
            OUT = "That rabbit isn't lighting up anything.",
        },
        YOTR_DECOR_2 = {
            GENERAL = "That rabbit can really light up a room.",
            OUT = "That rabbit isn't lighting up anything.",
        },

        HAREBALL = "At this point... I've eaten worse things.",
        YOTR_DECOR_1_ITEM = "I know just the place for it.",
        YOTR_DECOR_2_ITEM = "I know just the place for it.",

		--
		DREADSTONE = "That stuff is bad news.",
		HORRORFUEL = "It's beyond terrible.",
		DAYWALKER =
		{
			GENERIC = "Sheesh. You're welcome, you know...",
			IMPRISONED = "He looks dangerous.",
		},
		DAYWALKER_PILLAR =
		{
			GENERIC = "There's something off about this.",
			EXPOSED = "I knew it!",
		},
		DAYWALKER2 =
		{
			GENERIC = "We're chill, right?",
			BURIED = "You always seem to find trouble.",
			HOSTILE = "This is the last time I stick my neck out for you!",
		},
		ARMORDREADSTONE = "You dum-dums do whatever you want with that stuff, I'll be here and sane.",
		DREADSTONEHAT = "The last thing I'd want to do is put that garbage anywhere near my head",

        -- Rifts 1
        LUNARRIFT_PORTAL = "Where the heck does that lead?",
        LUNARRIFT_CRYSTAL = "Whoa.",

        LUNARTHRALL_PLANT = "You're a real pest, you know that?!",
        LUNARTHRALL_PLANT_VINE_END = "You better knock that off!",

		LUNAR_GRAZER = "Ohhhh, aren't you scary. Tch.",

        PUREBRILLIANCE = "It holds many secrets.",
        LUNARPLANT_HUSK = "Scrapped ya good.",

		LUNAR_FORGE = "This looks like it belongs in a futuristic lab.",
		LUNAR_FORGE_KIT = "Well, what to do with this?",

		LUNARPLANT_KIT = "It's useful for maintenance.",
		ARMOR_LUNARPLANT = "No thanks.",
		LUNARPLANTHAT = "No thanks.",
		BOMB_LUNARPLANT = "Fire in the hole!",
		STAFF_LUNARPLANT = "Watch out, evil-doers!",
		SWORD_LUNARPLANT = "Now we're talkin'!",
		PICKAXE_LUNARPLANT = "I'll smash anything that looks at me funny!",
		SHOVEL_LUNARPLANT = "It's rather fancy for a shovel.",

		BROKEN_FORGEDITEM = "It's as good as junk now.",

        PUNCHINGBAG = "I've thought about picking up boxing. Don't tell mom!",

        -- Rifts 2
        SHADOWRIFT_PORTAL = "You know what, I think I'm good on portals for the rest of my life.",

		SHADOW_FORGE = "Pretty handy.",
		SHADOW_FORGE_KIT = "What am I supposed to do with this?",

        FUSED_SHADELING = "Keep your filthy shadowy claws to yourself!",
        FUSED_SHADELING_BOMB = "Fire in the hole!",

		VOIDCLOTH = "What am I supposed to do with this?",
		VOIDCLOTH_KIT = "I'm not a seamstress, dude.",
		VOIDCLOTHHAT = "Absolutely not.",
		ARMOR_VOIDCLOTH = "Absolutely not.",

        VOIDCLOTH_UMBRELLA = "Don't want to ruin my skin with all that acid rain!",
        VOIDCLOTH_SCYTHE = "Do me a favor and keep your mouth shut?",

		SHADOWTHRALL_HANDS = "Keep your claws to yourself!",
		SHADOWTHRALL_HORNS = "Don't even try it.",
		SHADOWTHRALL_WINGS = "Get back here!",
		SHADOWTHRALL_MOUTH = "Oh, you're gonna pay?",

        CHARLIE_NPC = "Huh? What do you want?",
        CHARLIE_HAND = "Oh?",

        NITRE_FORMATION = "Some weird sorta rock.",
        DREADSTONE_STACK = "It's not any normal stone, that's for sure.",
        
        SCRAPBOOK_PAGE = "What's this?",

        LEIF_IDOL = "That dude is WEIRD.",
        WOODCARVEDHAT = "No thanks.",
        WALKING_STICK = "Wouldn't any stick do?",

        IPECACSYRUP = "Isn't this stuff dangerous?",
        BOMB_LUNARPLANT_WORMWOOD = "Our friend seems to be getting more in touch with his lunar roots.", -- Unused
        WORMWOOD_MUTANTPROXY_CARRAT =
        {
        	DEAD = "Dang.",
        	GENERIC = "Weird.",
        	HELD = "Don't look at me like that.",
        	SLEEPING = "Very weird.",
        },
        WORMWOOD_MUTANTPROXY_LIGHTFLIER = "I'm faster than air!",
		WORMWOOD_MUTANTPROXY_FRUITDRAGON =
		{
			GENERIC = "Uh, hi.",
			RIPE = "Oh.",
			SLEEPING = "Huh.",
		},

        SUPPORT_PILLAR_SCAFFOLD = "Well, it's a start.",
        SUPPORT_PILLAR = "It's coming together.",
        SUPPORT_PILLAR_COMPLETE = "There. I'm awesome, I know.",
        SUPPORT_PILLAR_BROKEN = "Well darn.",

		SUPPORT_PILLAR_DREADSTONE_SCAFFOLD = "Well, it's a start",
		SUPPORT_PILLAR_DREADSTONE = "It's coming together.",
		SUPPORT_PILLAR_DREADSTONE_COMPLETE = "I can't say I approve.",
		SUPPORT_PILLAR_DREADSTONE_BROKEN = "Whoops.",

        WOLFGANG_WHISTLE = "Ugh. Gym class.",

        -- Rifts 3

        MUTATEDDEERCLOPS = "I'm having second thoughts about this moon guy.",
        MUTATEDWARG = "Ugh, your ever heard of a mint?!",
        MUTATEDBEARGER = "You think you're having a bad day?! Try me, pal!",

        LUNARFROG = "Quit staring.",

        DEERCLOPSCORPSE =
        {
            GENERIC  = "Too easy.",
            BURNING  = "What can I say, better you than me.",
            REVIVING = "Huh?",
        },

        WARGCORPSE =
        {
            GENERIC  = "Talk about a pushover.",
            BURNING  = "Sorry, but that's just how it is!",
            REVIVING = "Wait, what?",
        },

        BEARGERCORPSE =
        {
            GENERIC  = "Give me a real challenge.",
            BURNING  = "Nice try.",
            REVIVING = "I was being sarcastic!",
        },

        BEARGERFUR_SACK = "Sheesh, that's cold!",
        HOUNDSTOOTH_BLOWPIPE = "It'll be a real nuissance to anyone that gets on my nerves!",
        DEERCLOPSEYEBALL_SENTRYWARD =
        {
            GENERIC = "Quit looking at me.",    -- Enabled.
            NOEYEBALL = "Hmph.",  -- Disabled.
        },
        DEERCLOPSEYEBALL_SENTRYWARD_KIT = "Guess I should set you up.",

        SECURITY_PULSE_CAGE = "Now what?",
        SECURITY_PULSE_CAGE_FULL = "I got it?",

		CARPENTRY_STATION =
        {
            GENERIC = "It makes furniture.",
            BURNT = "It doesn't make furniture anymore.",
        },

        WOOD_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "A table.",
            HAS_ITEM = "A table.",
            BURNT = "Oops!",
        },
		--Refuse out of protest
        WOOD_CHAIR =
        {
            GENERIC = "I'd like to sit on that!",
            OCCUPIED = "Somebody else is sitting on that.",
            BURNT = "I wouldn't like to sit on that.",
        },

        DECOR_CENTERPIECE = "Fancy fancy.",
        DECOR_LAMP = "A lamp.",
        DECOR_FLOWERVASE =
        {
            GENERIC = "Not bad, I guess.",
            EMPTY = "A vase.",
            WILTED = "It doesn't look too good.",
            FRESHLIGHT = "Nice and bright.",
            OLDLIGHT = "Ugh, bulb's dead.",
        },
        DECOR_PICTUREFRAME =
        {
            GENERIC = "Yawn.",
            UNDRAWN = "Super yawn.",
        },
        DECOR_PORTRAITFRAME = "Meh.",

        PHONOGRAPH = "Oh, that tune again?",
        RECORD = "Anyone get any rock records?!",
        RECORD_CREEPYFOREST = "Anyone get any rock records?!",
        RECORD_DANGER = "Anyone get any rock records?!", -- Unused.
        RECORD_DAWN = "Anyone get any rock records?!", -- Unused.
        RECORD_DRSTYLE = "Anyone get any rock records?!",
        RECORD_DUSK = "Anyone get any rock records?!", -- Unused.
        RECORD_EFS = "Anyone get any rock records?!",
        RECORD_END = "Anyone get any rock records?!", -- Unused.
        RECORD_MAIN = "Anyone get any rock records?!", -- Unused.
        RECORD_WORKTOBEDONE = "Anyone get any rock records?!", -- Unused.
        RECORD_HALLOWEDNIGHTS = "Anyone get any rock records?!",
        RECORD_BALATRO = "Anyone get any rock records?!",

        ARCHIVE_ORCHESTRINA_MAIN = "Ugh, these ancient dudes are such turbo-nerds!",

        WAGPUNKHAT = "I'd look ridiculous.",
        ARMORWAGPUNK = "Thanks but no thanks.",
        WAGSTAFF_MACHINERY = "It belongs in a lab.",
        WAGPUNK_BITS = "Just what are you up to?",
        WAGPUNKBITS_KIT = "Buncha... stuff...",

        WAGSTAFF_MUTATIONS_NOTE = "Yeah I'm not reading all that.",

        -- Meta 3

        BATTLESONG_INSTANT_REVIVE = "Alright, I'm impressed.",

        WATHGRITHR_IMPROVEDHAT = "Sorry, but I'm a BOY. Not interested in your dumb hat.",
        SPEAR_WATHGRITHR_LIGHTNING = "Hm, could be fun.",

        BATTLESONG_CONTAINER = "I'll just leave it be.",

        SADDLE_WATHGRITHR = "I guess it's useful.",

        WATHGRITHR_SHIELD = "That'll just weigh me down.",

        BATTLESONG_SHADOWALIGNED = "The only singing I do is in the shower.",
        BATTLESONG_LUNARALIGNED = "The only singing I do is in the shower.",

		SHARKBOI = "It's Jaws all over again!!",
        BOOTLEG = "What th-",
        OCEANWHIRLPORTAL = "I'm not so sure about that.",

        EMBERLIGHT = "Not a bad trick.",
        WILLOW_EMBER = "only_used_by_willow",

        -- Year of the Dragon
        YOTD_DRAGONSHRINE =
        {
            GENERIC = "I'm burning with curiosity to see what's on offer.",
            EMPTY = "It might like a piece of charcoal.",
            BURNT = "Things got a little heated.",
        },

        DRAGONBOAT_KIT = "I'd better stop dragon my feet and build it.",
        DRAGONBOAT_PACK = "Boat building made easy!",

        BOATRACE_CHECKPOINT = "There's the checkpoint!",
        BOATRACE_CHECKPOINT_THROWABLE_DEPLOYKIT = "One more thing to check off my list.",
        BOATRACE_START = "You have to start somewhere.",
        BOATRACE_START_THROWABLE_DEPLOYKIT = "Where to start?",

        BOATRACE_PRIMEMATE = "Someone's shadowing me!",
        BOATRACE_SPECTATOR_DRAGONLING = "Its support is getting me all fired up!",

        YOTD_STEERINGWHEEL = "That'll steer me in the right direction. And the left direction.",
        YOTD_STEERINGWHEEL_ITEM = "That's going to be the steering wheel.",
        YOTD_OAR = "It's a really handy paddle.",
        YOTD_ANCHOR = "I wouldn't want my boat to fly away.",
        YOTD_ANCHOR_ITEM = "Now I can build an anchor.",
        MAST_YOTD = "That's one scaly sail.",
        MAST_YOTD_ITEM = "Now I can build a mast.",
        BOAT_BUMPER_YOTD = "When you mess with a dragon boat, you get the horns!",
        BOAT_BUMPER_YOTD_KIT = "A soon-to-be boat bumper.",
        BOATRACE_SEASTACK = "Buoy oh buoy!",
        BOATRACE_SEASTACK_THROWABLE_DEPLOYKIT = "Buoy oh buoy!",
        BOATRACE_SEASTACK_MONKEY = "Buoy oh buoy!",
        BOATRACE_SEASTACK_MONKEY_THROWABLE_DEPLOYKIT = "Buoy oh buoy!",
        MASTUPGRADE_LAMP_YOTD = "Aww, just look how its eyes light up when it sees me!",
        MASTUPGRADE_LAMP_ITEM_YOTD = "I'm full of bright ideas.",
        WALKINGPLANK_YOTD = "Dressing it up doesn't make me feel better about using it.",
        CHESSPIECE_YOTD = "Just the sight of it gets my heart racing!",

        -- Rifts / Meta QoL

        HEALINGSALVE_ACID = "The stinging means it's working.",

        BEESWAX_SPRAY = "Guarantee that Ness kid will eat it if I tell him it's spray-on butter.",
        WAXED_PLANT = "Now all it needs is a sad office.", -- Used for all waxed plants, from farm plants to trees.

        STORAGE_ROBOT = {
            GENERIC = "My room could use this!",
            BROKEN = "Dangit.",
        },

        SCRAP_MONOCLEHAT = "Dude, this is not my style.",
        SCRAPHAT = "Well I guess it's ueseful.",

        FENCE_JUNK = "They got tetanus shots out here, right?",
        JUNK_PILE = "Me digging around a scrapyard? Who do you take me for!",
        JUNK_PILE_BIG = "Last thing I need is some hunk of junk falling and squishing me like a pancake!",

        ARMOR_LUNARPLANT_HUSK = "Looks painful.",

        -- Meta 4 / Ocean QoL

        OTTER = "I know that look. It's the 'I want your stuff look...'",
        OTTERDEN = {
            GENERIC = "Anyone home?",
            HAS_LOOT = "I wonder if I snag something...",
        },
        OTTERDEN_DEAD = "Well, that's my bad.",

        BOAT_ANCIENT_ITEM = "Now this is a boat.",
        BOAT_ANCIENT_CONTAINER = "Now this is a cargo ship!",
        WALKINGPLANK_ANCIENT = "Walking plank, diving board, tomato tomato.",

        ANCIENTTREE_SEED = "I think it's a seed?",

        ANCIENTTREE_GEM = {
            GENERIC = "I guess it's a plant.",
            STUMP = "I guess it's a stump.",
        },

        ANCIENTTREE_SAPLING_ITEM = "Now to find the right soil.",

        ANCIENTTREE_SAPLING = {
            GENERIC = "There.",
            WRONG_TILE = "That's not right.",
            WRONG_SEASON = "It's not gonna grow in these conditions.",
        },
 
        ANCIENTTREE_NIGHTVISION = {
            GENERIC = "I guess it's a plant.",
            STUMP = "I guess it's a stump.",
        },

        ANCIENTFRUIT_GEM = "I guess I eat this?",
        ANCIENTFRUIT_NIGHTVISION = "Gross.",
        ANCIENTFRUIT_NIGHTVISION_COOKED = "Um, I think I can eat it.",

        BOATPATCH_KELP = "It'll help in a pinch.",

        CRABKING_MOB = "Bring it on, crabby!",
        CRABKING_MOB_KNIGHT = "I'll show you!",
        CRABKING_CANNONTOWER = "We may need to hit the deck.",
        CRABKING_ICEWALL = "You're gonna learn not to mess with me!",

        SALTLICK_IMPROVED = "I guess it's an improvement",

        OFFERING_POT =
        {
            GENERIC = "It wants kelp?",
            SOME_KELP = "More?",
            LOTS_OF_KELP = "That better be enough!",
        },

        OFFERING_POT_UPGRADED =
        {
            GENERIC = "It wants kelp?",
            SOME_KELP = "More ugh?",
            LOTS_OF_KELP = "I couldn't possibly stuff anymore!",
        },

        MERM_ARMORY = "Whatever you 'merm-folk' are up to, I want no part.",
        MERM_ARMORY_UPGRADED = "Whatever you 'merm-folk' are up to, I want no part.",
        MERM_TOOLSHED = "As leaky as ever.",
        MERM_TOOLSHED_UPGRADED = "As leaky as ever.",
        MERMARMORHAT = "I've seen a lot of tacky things out here, but this takes the cake.",
        MERMARMORUPGRADEDHAT = "I've seen a lot of tacky things out here, but this takes the cake.",
        MERM_TOOL = "Haha, this thing's useless!",
        MERM_TOOL_UPGRADED = "Can you make something where I won't have to shower for even looking at it??",

        WURT_SWAMPITEM_SHADOW = "It's not even gone off and already I think I need a shower.",
        WURT_SWAMPITEM_LUNAR = "At least it doesn't smell.",

        MERM_SHADOW = "Yeah okay.",
        MERMGUARD_SHADOW = "Yeah okay.",

        MERM_LUNAR = "Sure.",
        MERMGUARD_LUNAR = "Sure.",

        -- Rifts 4

        SHADOW_BEEF_BELL = "That isn't a normal bell.",
        SADDLE_SHADOW = "What am I getting into now...",
        SHADOW_BATTLEAXE = "Don't worry, I'll be careful.",
        VOIDCLOTH_BOOMERANG = "I'm a natural, don't worry.",
		ROPE_BRIDGE_KIT = "What's the worst that could happen?",
		GELBLOB =
		{
			GENERIC = "Damn it, look at what you've done!",
			HAS_ITEM = "Put that down!",
			HAS_CHARACTER = "Uh, on second thought, gotta go!",
		},
        RABBITKING_AGGRESSIVE = "Pfft- I can't take this seriously, sorry, haha!",
        RABBITKING_PASSIVE = "Sup.",
        RABBITKING_LUCKY = "Sup.",
        RABBITKINGMINION_BUNNYMAN = "HAAAHHHH-HAH-HAAAAHH-...erm, bring it, pft!",
        ARMOR_CARROTLURE = "Not worth it.",
        RABBITKINGHORN = "Now we're talking!",
        RABBITKINGHORN_CHEST = "Better not lose anything..",
        RABBITKINGSPEAR = "This will give a good thumpin'.",
        RABBITHAT = "I'd look STUPID...",
        WORM_BOSS = "Nope nope nope nope!!",

        STONE_TABLE = -- Shared between the round and square tables.
        {
            GENERIC = "I use tables periodically.",
            HAS_ITEM = "I use tables periodically.",
        },

        STONE_CHAIR =
        {
            GENERIC = "I'd like to sit on that... rockin' chair!",
            OCCUPIED = "Somebody else is sitting on that.",
        },

        CARPENTRY_BLADE_MOONGLASS = "Yeah yeah, I'll be fine.",

        CHEST_MIMIC_REVEALED = "I hate you.",

        GELBLOB_STORAGE = {
            GENERIC  = "You sure about that thing?",
            FULL = "Hm.",
        },
        GELBLOB_STORAGE_KIT = "Now what do you expect me to do with THIS?",
        GELBLOB_BOTTLE = "Icky.",

        PLAYER_HOSTED =
        {
            GENERIC = "You sure are acting strange.",
            ME = "See, I KNEW I had an evil twin!",
        },

        MASK_SAGEHAT = "Looking sharp.",
        MASK_HALFWITHAT = "Seems a bit dull.",
        MASK_TOADYHAT = "Should I just play along?",

        SHADOWTHRALL_PARASITE = "Keep your distance, you pest.",

        PUMPKINCARVER = "I carve a mean pumpkin.",
		SNOWMAN =
		{
			GENERIC = "Perfect.",
			SNOWBALL = "I'm working on it.",
		},
        SNOWBALL_ITEM = "Snowball fights are always a fun time!",

        -- Year of the Snake
        YOTS_SNAKESHRINE =
        {
            GENERIC = "It's bursting with promise!",
            EMPTY = "It has a monstrous appetite.",
            BURNT = "Willow!",
        },
        YOTS_WORM = "It comes from lesser depths.",
        YOTS_LANTERN_POST = 
        {
            GENERIC = "It's post to be there.",
            BURNT = "It's post post",
        },
        YOTS_LANTERN_POST_ITEM = "Where's it post to go?",
        CHESSPIECE_DEPTHWORM  = "It's a worm, figures.",

        -- Meta 5
        GHOSTLYELIXIR_LUNAR = "Let's not mess with that.",
        GHOSTLYELIXIR_SHADOW = "Let's not mess with that.",						
		SLINGSHOTMODKIT = "What's this about?",
		SLINGSHOT_BAND_PIGSKIN = "Give it to 'em!",
		SLINGSHOT_BAND_TENTACLE = "Give it to 'em!",
		SLINGSHOT_BAND_MIMIC = "Give it to 'em!",
		SLINGSHOT_FRAME_BONE = "Give it to 'em!",
		SLINGSHOT_FRAME_GEMS = "Give it to 'em!",
		SLINGSHOT_FRAME_WAGPUNK_0 = "Give it to 'em!",
		SLINGSHOT_FRAME_WAGPUNK = "Give it to 'em!",
		SLINGSHOT_HANDLE_STICKY = "Give it to 'em!",
		SLINGSHOT_HANDLE_JELLY = "Give it to 'em!",
		SLINGSHOT_HANDLE_SILK = "Give it to 'em!",
		SLINGSHOT_HANDLE_VOIDCLOTH = "Give it to 'em!",

		WOBY_TREAT = "D'aw, how nice.",
		BANDAGE_BUTTERFLYWINGS = "I don't know how but it works.",
		PORTABLEFIREPIT_ITEM = "Sweet.",
        SLINGSHOTAMMO_CONTAINER = "About time you picked up all that junk!",
									  

        ELIXIR_CONTAINER = "Yeah, keep that stuff away please.",
        GHOSTFLOWERHAT = "I don't feel the need for it.",
        WENDY_RESURRECTIONGRAVE = "Oh!",
        GRAVEURN =
        {
            GENERIC = "An urn.",
            HAS_SPIRIT = "Enjoy your stay.",
        },

        SHALLOW_GRAVE = "Yikes.",
        THULECITEBUGNET = "Are you kidding me.",

        -- Deck of Cards
        DECK_OF_CARDS = "I got a few games I know. Easy to keep brats busy.",
        PLAYING_CARD = "A playing card.",
        BALATRO_MACHINE = "Looks tacky, but I guess it's better than nothing.",														 
		-- Rifts 5
		GESTALT_CAGE =
		{
			GENERIC = "This old man is getting on my last nerve.",
			FILLED = "Pipe down, I'm not excited about this either.",
		},
		WAGBOSS_ROBOT_SECRET = "Keeping secrets? I'd expect as much from you.",
        WAGBOSS_ROBOT = "Hoo boy.",
        WAGBOSS_ROBOT_POSSESSED = "Hey, when I die: don't revive me this time.",
		WAGBOSS_ROBOT_LEG = "You've got some nerve.",
		ALTERGUARDIAN_PHASE1_LUNARRIFT = "You know what, I'm gonna say it: this place is so LAME.",
		ALTERGUARDIAN_PHASE1_LUNARRIFT_GESTALT = "This one seems special.",
        ALTERGUARDIAN_PHASE4_LUNARRIFT = "Alright Kenneth, let's blow this pop stand.",
		WAGDRONE_ROLLING =
        {
            GENERIC = "Hey, watch it!",
            INACTIVE = "Not doing anything now.",
            DAMAGED = "Bunch of junk.",
            FRIENDLY = "Pretty cool when they're not trying to kill you.",
        },
        WAGDRONE_FLYING =
        {
            GENERIC = "Come here and you'll regret it!",
            INACTIVE = "Not doing anything now.",
            DAMAGED = "It won't be doing much now!",
        },
		WAGDRONE_PARTS = "Robot junk.",
		WAGDRONE_BEACON = "That beeping is gonna get on my nerves.",

        WAGPUNK_WORKSTATION = "What a mess.",
        WAGPUNK_LEVER = "Hey, the 'pull this if you're a loser' lever. Alright, Ninten, looks like you're the man for the job!",
        WAGPUNK_FLOOR_KIT = "Yeah, yeah. whatever.",
        WAGPUNK_CAGEWALL = "...I wonder what great grandpa would think.",

		WAGSTAFF_ITEM_1 = "Not mine, not my problem.",
		WAGSTAFF_ITEM_2 = "Don't care.",

        HERMITCRAB_RELOCATION_KIT = "Getting a child to do your dirty work, hm?",

        WANDERINGTRADER =
        {
            REVEALED = "Is the getup really necessary?",
            GENERIC = "Huh?",
        },

        GESTALT_GUARD_EVOLVED = "What're you looking at.",
        FLOTATIONCUSHION = "The ocean's dangerous, man.",
        LUNAR_SEED = "I don't appreciate being around it.",																		   
    },

    DESCRIBE_GENERIC = "Er, what's that?",
    DESCRIBE_TOODARK = "What am I, an owl? I can't see it!",
    DESCRIBE_SMOLDERING = "That's a fire hazard!",

    DESCRIBE_PLANTHAPPY = "It's happy.",
    DESCRIBE_PLANTVERYSTRESSED = "What's stressing it out so much?",
    DESCRIBE_PLANTSTRESSED = "Something has it upset.",
    DESCRIBE_PLANTSTRESSORKILLJOYS = "I need to do something about those weeds, huh?",
    DESCRIBE_PLANTSTRESSORFAMILY = "It needs other plants of the same type.",
    DESCRIBE_PLANTSTRESSOROVERCROWDING = "There's not enough nutrients to go around.",
    DESCRIBE_PLANTSTRESSORSEASON = "I guess this is a bad season to grow these.",
    DESCRIBE_PLANTSTRESSORMOISTURE = "I need to water my plants.",
    DESCRIBE_PLANTSTRESSORNUTRIENTS = "Some fertilzer might help.",
    DESCRIBE_PLANTSTRESSORHAPPINESS = "I should encourage it.",

    EAT_FOOD =
    {
        TALLBIRDEGG_CRACKED = "Sorry little guy, it was me or you...",
		WINTERSFEASTFUEL = "Mmmmmmm...",
    },
}
