--This file adds Asthma as a component
--It is mainly meant to be used by Ninten, so I can't promise it will work for other characters
--If for some reason you want them to have asthma too

SEASONS.MILD = SEASONS.MILD or "mild"
SEASONS.WET = SEASONS.WET or "wet"
SEASONS.GREEN = SEASONS.GREEN or "green"
SEASONS.DRY = SEASONS.DRY or "dry"

--Table that contains how much doing actions fills the asthmaVal
--Asthma Threshold is 2000
--Once we're above that threshold Ninten will have a chance of having an asthma attack
--The higher above the threshold the higher the chance gets
--These actions are checked twice per second
--A day cycle lasts 8 minutes or 480 seconds
--So 480 * actionValue * 2 will tell you how much that action would fill asthmaVal
--In a day if you did only that action 

local asthmaActionValues = {
	--In the Fall
	[SEASONS.AUTUMN] = {
		--Wearing nothing
		[0] = {
			["sleeping"] = -8,
			["idle"] = -2,
			["moving"] = 2,
			["working"] = 5,
			["fighting"] = 10 + 5
		},
		--Wearing little insulation / coolant
		[TUNING.INSULATION_SMALL] = {
			["sleeping"] = -8,
			["idle"] = -2,
			["moving"] = 0,
			["working"] = 2 + 2,
			["fighting"] = 6 + 5
		},
		--Wearing decent insulation / coolant
		[TUNING.INSULATION_MED] = {
			["sleeping"] = -8,
			["idle"] = -2,
			["moving"] = 0,
			["working"] = 2 + 1,
			["fighting"] = 5 + 5
		},
		--Wearing very good insulation
		[TUNING.INSULATION_LARGE] = {
			["sleeping"] = -8,
			["idle"] = -2,
			["moving"] = 0,
			["working"] = 1 + 2,
			["fighting"] = 2 + 5
		},
	},

	[SEASONS.WINTER] = {
		[0] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 6,
			["working"] = 12,
			["fighting"] = 20 + 8
		},
		[TUNING.INSULATION_SMALL] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 3,
			["working"] = 7 + 2,
			["fighting"] = 10 + 6
		},
		[TUNING.INSULATION_MED] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 2,
			["working"] = 7 + 2,
			["fighting"] = 10 + 5
		},
		[TUNING.INSULATION_LARGE] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 1,
			["working"] = 4 + 2,
			["fighting"] = 7 + 5
		},
	},
	[SEASONS.SPRING] = {
		[0] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 2,
			["working"] = 4 + 1,
			["fighting"] = 10 + 5
		},
		[TUNING.INSULATION_SMALL] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 0,
			["working"] = 2 + 2,
			["fighting"] = 6 + 5
		},
		[TUNING.INSULATION_MED] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 0,
			["working"] = 1 + 2,
			["fighting"] = 4 + 5
		},
		[TUNING.INSULATION_LARGE] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 0,
			["working"] = 0 + 2,
			["fighting"] = 4 + 5
		},
	},
	
	[SEASONS.SUMMER] = {
		[0] = {
			["sleeping"] = -5,
			["idle"] = -1,
			["moving"] = 6,
			["working"] = 12,
			["fighting"] = 20 + 8
		},
		[TUNING.INSULATION_SMALL] = {
			["sleeping"] = -5,
			["idle"] = -1,
			["moving"] = 4,
			["working"] = 8 + 2,
			["fighting"] = 15 + 6
		},
		[TUNING.INSULATION_MED] = {
			["sleeping"] = -5,
			["idle"] = -1,
			["moving"] = 3,
			["working"] = 5 + 2,
			["fighting"] = 9 + 5
		},
		[TUNING.INSULATION_LARGE] = {
			["sleeping"] = -5,
			["idle"] = -1,
			["moving"] = 1,
			["working"] = 4 + 2,
			["fighting"] = 7 + 5
		},
	},
	--SW
	--Same as Autumn
	[SEASONS.MILD] = {
		[0] = {
			["sleeping"] = -8,
			["idle"] = -2,
			["moving"] = 2,
			["working"] = 5,
			["fighting"] = 10 + 5
		},
		[TUNING.INSULATION_SMALL] = {
			["sleeping"] = -8,
			["idle"] = -2,
			["moving"] = 0,
			["working"] = 2 + 2,
			["fighting"] = 6 + 5
		},
		[TUNING.INSULATION_MED] = {
			["sleeping"] = -8,
			["idle"] = -2,
			["moving"] = 0,
			["working"] = 2 + 1,
			["fighting"] = 5 + 5
		},
		[TUNING.INSULATION_LARGE] = {
			["sleeping"] = -8,
			["idle"] = -2,
			["moving"] = 0,
			["working"] = 1 + 2,
			["fighting"] = 2 + 5
		},
	},
	--Bad like Winter, but not as severe
	[SEASONS.WET] = {
		[0] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 4,
			["working"] = 6,
			["fighting"] = 13
		},
		[TUNING.INSULATION_SMALL] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 2,
			["working"] = 5 + 2,
			["fighting"] = 11
		},
		[TUNING.INSULATION_MED] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 1,
			["working"] = 5 + 2,
			["fighting"] = 10
		},
		[TUNING.INSULATION_LARGE] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 0,
			["working"] = 2 + 2,
			["fighting"] = 6
		},
	},
	--Slightly worse than Spring
	[SEASONS.GREEN] = {
		[0] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 1,
			["working"] = 5,
			["fighting"] = 16
		},
		[TUNING.INSULATION_SMALL] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 1,
			["working"] = 4 + 1,
			["fighting"] = 12
		},
		[TUNING.INSULATION_MED] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 0,
			["working"] = 3 + 1,
			["fighting"] = 10
		},
		[TUNING.INSULATION_LARGE] = {
			["sleeping"] = -8,
			["idle"] = -1,
			["moving"] = 0,
			["working"] = 1 + 2,
			["fighting"] = 7
		},
	},
	--Bad like Summer, but not as severe
	[SEASONS.DRY] = {
		[0] = {
			["sleeping"] = -5,
			["idle"] = -1,
			["moving"] = 3,
			["working"] = 6,
			["fighting"] = 12
		},
		[TUNING.INSULATION_SMALL] = {
			["sleeping"] = -5,
			["idle"] = -1,
			["moving"] = 2,
			["working"] = 6 + 2,
			["fighting"] = 10
		},
		[TUNING.INSULATION_MED] = {
			["sleeping"] = -5,
			["idle"] = -1,
			["moving"] = 1,
			["working"] = 4 + 2,
			["fighting"] = 9
		},
		[TUNING.INSULATION_LARGE] = {
			["sleeping"] = -5,
			["idle"] = -1,
			["moving"] = 1,
			["working"] = 2 + 2,
			["fighting"] = 5
		},
	},
}
asthmaActionValues[SEASONS.AUTUMN][TUNING.INSULATION_MED_LARGE] = asthmaActionValues[SEASONS.AUTUMN][TUNING.INSULATION_MED]
asthmaActionValues[SEASONS.WINTER][TUNING.INSULATION_MED_LARGE] = asthmaActionValues[SEASONS.WINTER][TUNING.INSULATION_MED]
asthmaActionValues[SEASONS.SPRING][TUNING.INSULATION_MED_LARGE] = asthmaActionValues[SEASONS.SPRING][TUNING.INSULATION_MED]
asthmaActionValues[SEASONS.SUMMER][TUNING.INSULATION_MED_LARGE] = asthmaActionValues[SEASONS.SUMMER][TUNING.INSULATION_MED]

asthmaActionValues[SEASONS.MILD][TUNING.INSULATION_MED_LARGE] = asthmaActionValues[SEASONS.MILD][TUNING.INSULATION_MED]
asthmaActionValues[SEASONS.WET][TUNING.INSULATION_MED_LARGE] = asthmaActionValues[SEASONS.WET][TUNING.INSULATION_MED]
asthmaActionValues[SEASONS.GREEN][TUNING.INSULATION_MED_LARGE] = asthmaActionValues[SEASONS.GREEN][TUNING.INSULATION_MED]
asthmaActionValues[SEASONS.DRY][TUNING.INSULATION_MED_LARGE] = asthmaActionValues[SEASONS.DRY][TUNING.INSULATION_MED]
--asthmaActionValues[SEASONS.AUTUMN][TUNING.INSULATION_MED + TUNING.INSULATION_TINY] = asthmaActionValues[SEASONS.AUTUMN][TUNING.INSULATION_MED]
--asthmaActionValues[SEASONS.WINTER][TUNING.INSULATION_MED + TUNING.INSULATION_TINY] = asthmaActionValues[SEASONS.WINTER][TUNING.INSULATION_MED]
--asthmaActionValues[SEASONS.SPRING][TUNING.INSULATION_MED + TUNING.INSULATION_TINY] = asthmaActionValues[SEASONS.SPRING][TUNING.INSULATION_MED]
--asthmaActionValues[SEASONS.SUMMER][TUNING.INSULATION_MED + TUNING.INSULATION_TINY] = asthmaActionValues[SEASONS.SUMMER][TUNING.INSULATION_MED]
asthmaActionValues[SEASONS.CAVES] = asthmaActionValues[SEASONS.AUTUMN]

if TUNING.ISLAND_ADVENTURE_ENABLED then
	asthmaActionValues[SEASONS.AUTUMN] = asthmaActionValues[SEASONS.MILD]
	asthmaActionValues[SEASONS.WINTER] = asthmaActionValues[SEASONS.WET]
	asthmaActionValues[SEASONS.SPRING] = asthmaActionValues[SEASONS.GREEN]
	asthmaActionValues[SEASONS.SUMMER] = asthmaActionValues[SEASONS.DRY]
end
local coughLines = {
	"*Cough* *Cough*",
	"*Wheeze*",
	"*Cough*"
}


local coughUpLungLines = {
	"*Cough* *Cough* *HACK*",
	"I... need... inhaler *wheeze*",
	"*WHEEZE*",
	"*Wheeze* *Wheeze*",
	"Help... *Wheeze* asthma...",
	"*Cough* *Cough*",
	"Need... inhaler...",
}

--For IA
local function isRainstorm()
	--TheWorld.state.israining is deprecated in IA for islandisraining, but it can be still set to true even when it's not raining
	--Well. deprecated unless we're running shards with both. Idk what to do about that just yet though
	--And might I say would it be amibitous to assume people are gonna be running this mod in such scenarios, to put it nicely
	return (TheWorld.state.israining and not TUNING.ISLAND_ADVENTURE_ENABLED) or TheWorld.state.hurricane or TheWorld.state.islandisraining
end

local function getInsulationLevel(gear)
	local season = TheWorld.state.season
	local level = 0
	if gear then
		local waterproofer = gear.components.waterproofer
		gear = gear.components.insulator
		if gear then
			--If the item is a summer item and it's winter
			if ((gear.type == SEASONS.SUMMER and season == SEASONS.WINTER) and not TUNING.ISLAND_ADVENTURE_ENABLED)
				--If the item is a winter item and it's summer
				or (gear.type == SEASONS.WINTER and (season == SEASONS.SUMMER))
				--The item has no insulation, or the insulation level is not listed in asthmaActionValues
				or not (asthmaActionValues[season][gear.insulation]) then	
				level = 0
			else level = gear.insulation
			end
			--If the item is more effective against rain protection and its raining, use that value instead
			if waterproofer and isRainstorm() and TUNING.INSULATION_LARGE * waterproofer.effectiveness > level then
				level = TUNING.INSULATION_LARGE * waterproofer.effectiveness
			end
		elseif waterproofer and isRainstorm() then
			level = TUNING.INSULATION_LARGE * waterproofer.effectiveness
		end
	end
	return level
end

local function nintenActionCheck(inst)
	local whatsHeDoing = "Ninten is "
	local rainPenalty = 0
	local penaltyOffset = 0
	if isRainstorm() then rainPenalty = 3 end
	
	if inst.sg:HasStateTag("sailing") and rainPenalty == 0 then
		--Treat sailing (NOT rowing) as 0 if it is not raining
		return
	end
	
	local asthma = inst.components.asthma
	local headslot = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.HEAD)
	local bodyslot = inst.components.inventory:GetEquippedItem(EQUIPSLOTS.BODY)
	--Logic for rain gear to reduce the rain penalty
	if rainPenalty > 0 then
		if headslot and headslot.components.waterproofer then
			--Waterproofer effectiveness are decimal representatives of percentile effectiveness
			--they range from 0 to 1
			--So we gather the total decimal and then multiply that by the rainpenalty - 1 to get a whole number
			penaltyOffset = headslot.components.waterproofer.effectiveness 
			
		end
		if bodyslot and bodyslot.components.waterproofer then 
			penaltyOffset = (penaltyOffset + bodyslot.components.waterproofer.effectiveness)
		end
		penaltyOffset = penaltyOffset * (rainPenalty - 1)
		rainPenalty = math.ceil(rainPenalty - penaltyOffset)
		if rainPenalty < 0 then rainPenalty = 0 end
	end
	
	local gear = getInsulationLevel(headslot)
	gear = gear + getInsulationLevel(bodyslot)
	if gear > TUNING.INSULATION_LARGE - 30 then
		gear = TUNING.INSULATION_LARGE
	elseif gear >= TUNING.INSULATION_MED then
		gear = TUNING.INSULATION_MED
	elseif gear > TUNING.INSULATION_SMALL - 30 then
		gear = TUNING.INSULATION_SMALL
	else gear = 0
	end

	--Determine what the player is doing at the moment
	if inst.components.rider:IsRiding() and not inst.sg:HasStateTag("attack") then
		if asthma.asthmaVal > 0 then
			asthma.asthmaVal = asthma.asthmaVal + asthmaActionValues[TheWorld.state.season][gear]["idle"]
		end
	elseif inst.sg:HasStateTag("moving") then
		--inst.components.talker:Say(whatsHeDoing .. "moving")
		asthma.asthmaVal = asthma.asthmaVal + asthmaActionValues[TheWorld.state.season][gear]["moving"] + rainPenalty
	elseif inst.sg:HasStateTag("chopping") or inst.sg:HasStateTag("mining") or inst.sg:HasStateTag("hammering") or inst.sg:HasStateTag("digging") or inst.sg:HasStateTag("hacking") then
		--inst.components.talker:Say(whatsHeDoing .. "working")
		asthma.asthmaVal = asthma.asthmaVal + asthmaActionValues[TheWorld.state.season][gear]["working"] + rainPenalty
	elseif inst.sg:HasStateTag("attack") or inst.sg:HasStateTag("hit") then
		--inst.components.talker:Say(whatsHeDoing .. "fighting")
		asthma.asthmaVal = asthma.asthmaVal + asthmaActionValues[TheWorld.state.season][gear]["fighting"] + rainPenalty
	elseif asthma.asthmaVal > 0 then
		--inst.components.talker:Say(whatsHeDoing .. "idle")
		if inst.sg:HasStateTag("sleeping") then
			asthma.asthmaVal = asthma.asthmaVal + asthmaActionValues[TheWorld.state.season][gear]["sleeping"]
		else
			asthma.asthmaVal = asthma.asthmaVal + asthmaActionValues[TheWorld.state.season][gear]["idle"]
		end
	end
	if asthma.asthmaVal < 0 then asthma.asthmaVal = 0 end
end

local function doAsthmaAttack(parent)
	if math.random(4) == 3 then
		parent.components.talker:Say(coughUpLungLines[math.random(#coughUpLungLines)])
	end
	parent.components.health:DoDelta(-5)
end



local function onasthmaattack(self)
	self.inst.replica.asthma:SetIsAsthmaAttack(self.isAsthmaAttack)
end

local function onasthmawarning(self)
	self.inst.replica.asthma:SetIsAsthmaWarning(self.isAsthmaWarning)
end

local function onupdateasthmaval(self)
	self.inst.replica.asthma:SetAsthmaVal(self.asthmaVal)
end


local Asthma = Class(function(self, inst)
	self.inst = inst
	self.asthmaVal = 0
	self.isAsthmaAttack = false
	self.isAsthmaWarning = false
	self.asthmaAttack = nil
	self.asthmaCooldown = nil
end,
nil,
	{
		isAsthmaAttack = onasthmaattack,
		isAsthmaWarning = onasthmawarning,
		asthmaval = onupdateasthmaval
	}
	
)

function Asthma:OnSave()
    return
    {
        asthmaVal = self.asthmaVal,
        isAsthmaAttack = self.isAsthmaAttack,
		isAsthmaWarning = self.isAsthmaWarning,
		asthmaCooldown = GetTaskRemaining(self.asthmaCooldown)
    }
end

function Asthma:OnLoad(data)
	self.asthmaVal = data.asthmaVal or 0
	self.isAsthmaAttack = data.isAsthmaAttack or false
	self.isAsthmaWarning = data.isAsthmaWarning or false
	self.asthmaCooldown = data.asthmaCooldown
	if self.asthmaCooldown then
		self.asthmaCooldown = self.inst:DoTaskInTime(self.asthmaCooldown, function() self.asthmaCooldown = nil end)
	end
end

function Asthma:stopAsthmaAttack(parent, usedInhaler)
	parent:RemoveTag("groggy")
	parent.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED)
	parent.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED)
	self.asthmaVal = 0
	onupdateasthmaval(self)
	self.isAsthmaAttack = false
	onasthmaattack(self)
	self.isAsthmaWarning = false
	onasthmawarning(self)
	
	if self.asthmaAttack then self.asthmaAttack:Cancel() end
	--Basically if usedInhaler is false
	--Then Ninten died lol
	if usedInhaler then	
		parent.components.talker:Say("Finally, I can breathe!")
		self.asthmaCooldown = parent:DoTaskInTime(420, function() self.asthmaCooldown = nil end)
	end
end


function Asthma:loop(parent)
	--Mod configuration check, if true then the Asthma system will be disabled
	if TUNING.ASTHMA_THRESHOLD == true or self.asthmaCooldown or parent:HasTag("playerghost") then return end
	
	if not self.isAsthmaAttack then
		nintenActionCheck(parent)
		onupdateasthmaval(self)
	end
	
	if not self.isAsthmaAttack and self.asthmaVal > TUNING.ASTHMA_THRESHOLD then
		if not self.isAsthmaWarning then
			parent.components.talker:Say("My asthma is starting to act up...")
			self.isAsthmaWarning = true
			onasthmawarning(self)
		elseif(math.random(100) > 95 and self.isAsthmaWarning) then
			parent.components.talker:Say(coughLines[math.random(#coughLines)])
		end
		local range = self.asthmaVal - TUNING.ASTHMA_THRESHOLD
		--As the player's Asthma Value continues to grow, this pool of potential numbers grows larger
		local asthmaRoll = math.random(self.asthmaVal - TUNING.ASTHMA_THRESHOLD)
		--print("Rolled a " .. asthmaRoll)
		--Meanwhile this one grows smaller!
		--We do +90 because we don't want the player to IMMEDIATELY have an asthma attack after getting the warning
		local roll = math.random(911 - range) + 90 
		--print("Compare to " .. roll)
		if asthmaRoll > roll then
			parent:AddTag("groggy")
			parent.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED * .85)
			parent.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED * .85)
			parent.components.talker:Say("*Cough* *Cough* Asthma... *HACK*")
			self.isAsthmaAttack = true
			self.asthmaAttack = parent:DoPeriodicTask(2, function() doAsthmaAttack(parent) end)
			onasthmaattack(self)
		end
	--Do -100 so the player doesn't get spammed with the Asthma Warning message
	elseif self.asthmaVal <= TUNING.ASTHMA_THRESHOLD - 100 and self.isAsthmaWarning then
		if(math.random(100) > 97 and self.isAsthmaWarning) then
			parent.components.talker:Say(coughLines[math.random(#coughLines)])
		end
		self.isAsthmaWarning = false
		onasthmawarning(self)
		self.asthmaVal = self.asthmaVal - 400
		parent.components.talker:Say("My asthma is getting better.")
	
	elseif self.isAsthmaAttack and not self.asthmaAttack then
		self.asthmaAttack = parent:DoPeriodicTask(2, function() doAsthmaAttack(parent) end)
	end
end

return Asthma
	