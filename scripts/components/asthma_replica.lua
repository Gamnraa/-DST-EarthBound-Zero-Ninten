local Asthma = Class(function(self, inst)
	self.inst = inst
	self._isasthmaattack = net_bool(inst.GUID, "asthma.isasthmaattack")
	self._isasthmawarning = net_bool(inst.GUID, "asthma.isasthmawarning")
	self._asthmaval = net_ushortint(inst.GUID, "asthma.asthmaval", "asthmavaldirty")
	
end)

function Asthma:SetIsAsthmaAttack(change)
	self._isasthmaattack:set(change)
end

function Asthma:IsAsthmaAttack()
	return self._isasthmaattack:value()
end

function Asthma:SetIsAsthmaWarning(change)
	self._isasthmawarning:set(change)
end

function Asthma:IsAsthmaWarning()
	return self._isasthmawarning:value()
end

function Asthma:SetAsthmaVal(change)
	self._asthmaval:set(change)
end

function Asthma:GetAsthmaVal()
	return self._asthmaval:value()
end


return Asthma

	