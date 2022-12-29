local Widget = require "widgets/widget"
local Text = require "widgets/text"

local WARNING_HIGHEST = "IMMINENT"
local WARNING_HIGH = "High"
local WARNING_MED = "Moderate"
local WARNING_LOW = "Low"

local AsthmaOverlay = Class(Widget, function(self, inst, anchor_x, anchor_y)
	print("AsthmaOverlay")
	self.inst = inst
	self.x = anchor_x
	self.y = anchor_y
	
	Widget._ctor(self, "asthmaoverlay")
	self.title = self:AddChild(Text(BODYTEXTFONT, 33, "Asthma Risk: "))
	self.title:SetPosition(self.x - 100, self.y + 20)
	self.risk = self:AddChild(Text(BODYTEXTFONT, 33))
	self.riskval = 0
  
	--Wait for updates on the asthmaValue of the Asthma component
	inst:ListenForEvent("asthmaupdate", function(inst, data)
		self.riskval = data.newValue
	end)
	
	self:StartUpdating()
 end)
 
 function AsthmaOverlay:OnUpdate(dt)
	if self.riskval >= 1985 and self.risk:GetString() ~= WARNING_HIGHEST then
		self.risk:SetString(WARNING_HIGHEST)
		self.risk:SetColour(127/255, 0, 0, 1)
		self.risk:SetPosition(self.x + 20, self.y + 20)
	elseif self.riskval >= 1800 and self.riskval < 1985 and self.risk:GetString() ~= WARNING_HIGH then
		self.risk:SetString(WARNING_HIGH)
		self.risk:SetColour(255/255, 0, 0, 1)
		self.risk:SetPosition(self.x - 5, self.y + 20)
	elseif self.riskval >= 900 and self.riskval < 1800 and self.risk:GetString() ~= WARNING_MED then
		self.risk:SetString(WARNING_MED)
		self.risk:SetColour(255/255, 255/255, 0, 1)
		self.risk:SetPosition(self.x + 10, self.y + 20)
	elseif self.riskval < 900 and self.risk:GetString() ~= WARNING_LOW then
		self.risk:SetString(WARNING_LOW)
		self.risk:SetColour(0, 222/255, 0, 1)
		self.risk:SetPosition(self.x - 10, self.y + 20)
	end
end
 

function AsthmaOverlay:Show()
	self.title:Show()
	self.risk:Show()
	self:StartUpdating()
end

function AsthmaOverlay:Hide()
	self.title:Hide()
	self.risk:Hide()
	self:StopUpdating()
end

return AsthmaOverlay