local assets =
{
    Asset("ANIM", "anim/ground_inhaler_ninten.zip"),
}

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("ground_inhaler_ninten")
    inst.AnimState:SetBuild("ground_inhaler_ninten")
    inst.AnimState:PlayAnimation("idle")

    MakeInventoryFloatable(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    ---------------------
	inst:AddComponent("finiteuses")
	inst.components.finiteuses:SetMaxUses(3)
    inst.components.finiteuses:SetUses(3)
	inst.components.finiteuses:SetOnFinished(inst.Remove)
	
	inst:AddComponent("ninteninhaler")

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.inventory = inst.components.inventoryitem
	inst.inventory.imagename = "inhaler_ninten"
	inst.inventory.atlasname = "images/inventoryimages/inhaler_ninten.xml"
	MakeHauntableLaunch(inst)

    return inst
end
STRINGS.NAMES.INHALER_NINTEN  = "Inhaler"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.INHALER_NINTEN = "I have no need for it."
STRINGS.CHARACTERS.WX78.DESCRIBE.INHALER_NINTEN = "A RESPITORY DEVICE FOR PUNY HUMANS"
STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.INHALER_NINTEN = "My inhaler."

return Prefab("inhaler_ninten", fn, assets)