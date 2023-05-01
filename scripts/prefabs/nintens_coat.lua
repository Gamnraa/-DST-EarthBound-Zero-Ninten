local assets =
{
   --Asset("ANIM", "anim/armor_trunkvest_summer.zip"),
    Asset("ANIM", "anim/nintens_coat.zip"),
	Asset("ANIM", "anim/ground_nintens_coat.zip"),
}

local function onequip(inst, owner)
	if owner.components.skinner and owner.components.skinner.skin_name == "ms_gramninten_summer" then
		owner.AnimState:OverrideSymbol("swap_body", "nintens_coat", "swap_body_alt")
	else
		owner.AnimState:OverrideSymbol("swap_body", "nintens_coat", "swap_body")
	end
    inst.components.fueled:StartConsuming()
end

local function onunequip(inst, owner)
    owner.AnimState:ClearOverrideSymbol("swap_body")
    inst.components.fueled:StopConsuming()
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("ground_nintens_coat")
    inst.AnimState:SetBuild("ground_nintens_coat")
    inst.AnimState:PlayAnimation("anim")

    inst.foleysound = "dontstarve/movement/foley/trunksuit"

    --waterproofer (from waterproofer component) added to pristine state for optimization
    --inst:AddTag("waterproofer")

    MakeInventoryFloatable(inst, "small", 0.1, 0.8)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("tradable")

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.inventory = inst.components.inventoryitem
	inst.inventory.imagename = "nintens_coat"
	inst.inventory.atlasname = "images/inventoryimages/nintens_coat.xml"

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.BODY
    inst.components.equippable.dapperness = TUNING.DAPPERNESS_MED

    inst.components.equippable:SetOnUnequip(onunequip)

    inst:AddComponent("insulator")

    inst:AddComponent("fueled")
    inst.components.fueled.fueltype = FUELTYPE.USAGE
    inst.components.fueled:InitializeFuelLevel(TUNING.NINTENS_COAT_PERISHTIME)
    inst.components.fueled:SetDepletedFn(inst.Remove)

    MakeHauntableLaunch(inst)
	
	inst.components.equippable:SetOnEquip(onequip)

    inst.components.insulator:SetInsulation(TUNING.INSULATION_SMALL)

    --inst:AddComponent("waterproofer")
    --inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL)

    return inst
end

STRINGS.NAMES.NINTENS_COAT  = "Ninten's Coat"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.NINTENS_COAT = "A coat to keep me warm in the winter."
STRINGS.CHARACTERS.WX78.DESCRIBE.NINTENS_COAT = "REFINED TEMPERATURE CONTROL HOUSING"
STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.NINTENS_COAT = "My coat! Pretty stylish, gotta say!"


return Prefab("nintens_coat", fn, assets)

