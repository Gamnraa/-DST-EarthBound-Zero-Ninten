local assets =
{
    Asset("ANIM", "anim/shield_fx.zip")
}

local function killFX(inst)
    inst.AnimState:PlayAnimation("close")
    inst:DoTaskInTime(.6, inst.Remove)
end

local function fn()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()
	inst.entity:AddAnimState()
	inst.AnimState:SetBank("shield_fx")
    inst.AnimState:SetBuild("shield_fx")
	inst.AnimState:PlayAnimation("anim")
    inst.AnimState:PushAnimation("idle_loop", true)
	
	inst:DoTaskInTime(0, function() inst.SoundEmitter:PlaySound("psishield/psishield/shieldhit") end)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
	
	inst.kill_fx = killFX
    return inst
end

return Prefab("shield_fx", fn, assets)