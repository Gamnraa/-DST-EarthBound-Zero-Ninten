local assets =
{
    Asset("ANIM", "anim/counter_fx.zip")
}

local function killFX(inst)
    inst.AnimState:PlayAnimation("close")
    inst:DoTaskInTime(.6, inst.Remove)
end

local function fn()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
	inst.entity:AddSoundEmitter()
	inst.entity:AddAnimState()
	inst.AnimState:SetBank("counter_fx")
    inst.AnimState:SetBuild("counter_fx")
	inst.AnimState:PlayAnimation("anim")
    inst.AnimState:PushAnimation("idle_loop", true)
	inst:AddTag("FX")

	inst:DoTaskInTime(0, function() inst.SoundEmitter:PlaySound("psishield/psishield/counterhit") end)
	
	inst.kill_fx = killFX
    return inst
end

return Prefab("counter_fx", fn, assets)