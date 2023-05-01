local assets =
{
   Asset("ANIM", "anim/baseball_cap_ninten.zip"),
}


local function equip_ness_check(owner)
	if owner.AnimState:GetCurrentFacing() == 2 then 
		owner.AnimState:OverrideSymbol("swap_hat", "baseball_cap_ninten", "swap_hat_ness_l")
	elseif owner.AnimState:GetCurrentFacing() == 0 then
		owner.AnimState:OverrideSymbol("swap_hat", "baseball_cap_ninten", "swap_hat_ness_r")
	end
end

local function onequip(inst, owner)
	
	if owner.prefab == "gramninten" then
		if owner.components.skinner and owner.components.skinner.skin_name == "ms_gramninten_summer" then
			owner.AnimState:OverrideSymbol("swap_hat", "baseball_cap_ninten", "swap_hat_off_alt")
		else
			owner.AnimState:OverrideSymbol("swap_hat", "baseball_cap_ninten", "swap_hat_off")
		end
	elseif owner.prefab == "gramness" then
		owner.AnimState:OverrideSymbol("swap_hat", "baseball_cap_ninten", "swap_hat_ness_l")
		owner:ListenForEvent("locomote", equip_ness_check)
	else
		owner.AnimState:OverrideSymbol("swap_hat", "baseball_cap_ninten", "swap_hat")
    end

	owner.AnimState:Show("HAT")
    owner.AnimState:Show("HAIR_HAT")
    owner.AnimState:Hide("HAIR_NOHAT")
    owner.AnimState:Hide("HAIR")

    if owner:HasTag("player") then
        owner.AnimState:Hide("HEAD")
        owner.AnimState:Show("HEAD_HAT")
    end

    if inst.components.fueled ~= nil then
        inst.components.fueled:StartConsuming()
    end
end

local function onunequip(inst, owner)
	local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("unequipskinneditem", inst:GetSkinName())
    end

    owner.AnimState:ClearOverrideSymbol("swap_hat")
    owner.AnimState:Hide("HAT")
    owner.AnimState:Hide("HAIR_HAT")
    owner.AnimState:Show("HAIR_NOHAT")
    owner.AnimState:Show("HAIR")

    if owner:HasTag("player") then
       owner.AnimState:Show("HEAD")
       owner.AnimState:Hide("HEAD_HAT")
    end

    if inst.components.fueled ~= nil then
		inst.components.fueled:StopConsuming()
    end
	
	owner:RemoveEventCallback("locomote", equip_ness_check)
end


local function fn()
	local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("minerhat")
    inst.AnimState:SetBuild("baseball_cap_ninten")
    inst.AnimState:PlayAnimation("anim")

    inst:AddTag("hat")
	inst:AddTag("waterproofer")
    MakeInventoryFloatable(inst)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("inventoryitem")
	inst.inventory = inst.components.inventoryitem
	inst.inventory.imagename = "baseball_cap_ninten"
	inst.inventory.atlasname = "images/inventoryimages/baseball_cap_ninten.xml"
    inst:AddComponent("inspectable")

    inst:AddComponent("tradable")

    inst:AddComponent("equippable")
    inst.components.equippable.equipslot = EQUIPSLOTS.HEAD
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    MakeHauntableLaunch(inst)
        

    inst.components.floater:SetSize("med")
    inst.components.floater:SetVerticalOffset(0.1)
    inst.components.floater:SetScale(0.65)

    if not TheWorld.ismastersim then
        return inst
    end

    inst.components.equippable.dapperness = TUNING.DAPPERNESS_MED_LARGE

    inst:AddComponent("fueled")
    inst.components.fueled.fueltype = FUELTYPE.USAGE
    inst.components.fueled:InitializeFuelLevel(30 * 16 * 12) --12 days
    inst.components.fueled:SetDepletedFn(inst.Remove)
	
    inst:AddComponent("waterproofer")
    inst.components.waterproofer:SetEffectiveness(TUNING.WATERPROOFNESS_SMALL)
	
	inst:AddComponent("insulator")
	inst.components.insulator:SetInsulation(TUNING.INSULATION_SMALL)
	inst.components.insulator:SetSummer()
	
	inst.components.equippable.insulated = true
    return inst
end
STRINGS.NAMES.BASEBALL_CAP_NINTEN  = "Baseball Cap"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BASEBALL_CAP_NINTEN = "It keeps the sun out of my eyes."
STRINGS.CHARACTERS.WX78.DESCRIBE.BASEBALL_CAP_NINTEN = "THIS WILL COVER MY PROCESSING UNIT"


return Prefab("baseball_cap_ninten", fn, assets)

