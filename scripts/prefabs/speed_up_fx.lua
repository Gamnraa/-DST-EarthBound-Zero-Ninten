local assets =
{
    Asset("ANIM", "anim/offense_up_fx.zip")
}

local function fn()
    local inst = CreateEntity()
	
    inst.entity:AddTransform()
    inst.entity:AddNetwork()
	inst.entity:AddSoundEmitter()
	inst.entity:AddAnimState()
	inst.AnimState:SetBank("offense_up_fx")
    inst.AnimState:SetBuild("offense_up_fx")
	inst:DoTaskInTime(0, function() inst.SoundEmitter:PlaySound("psisfx/psisfx/offenseup") end)
	inst.AnimState:PlayAnimation("anim")
    inst.AnimState:SetAddColour(1/255, 175/255, 251/255, 0)
    inst:AddTag("FX")

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end
	
    return inst
end

return Prefab("speed_up_fx", fn, assets)