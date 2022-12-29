local NintenInhaler = Class(function(self, inst)
    self.inst = inst
end)

function NintenInhaler:UseInhaler(doer)
	if not doer.components.health:IsDead() then
		doer.components.asthma:stopAsthmaAttack(doer, true)
	end
	
	if self.inst.components.finiteuses then
		self.inst.components.finiteuses:Use(1)
	end
	
	return true
end

return NintenInhaler
