local assets =
{
    Asset("ANIM", "anim/boomerang.zip"),
    Asset("ANIM", "anim/swap_boomerang.zip"),
}

local function OnFinished(inst)
    inst.AnimState:PlayAnimation("used")
    inst:ListenForEvent("animover", inst.Remove)
end

local function OnEquip(inst, owner)
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("equipskinneditem", inst:GetSkinName())
        owner.AnimState:OverrideItemSkinSymbol("swap_object", skin_build, "swap_boomerang", inst.GUID, "swap_boomerang")
    else
        owner.AnimState:OverrideSymbol("swap_object", "swap_boomerang", "swap_boomerang")
    end
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local AutoCatchTask = nil

local function OnDropped(inst)
    inst.AnimState:PlayAnimation("idle")
    inst.components.inventoryitem.pushlandedevents = true
    inst:PushEvent("on_landed")
	if AutoCatchTask then 
		AutoCatchTask:Cancel()
		AutoCatchTask = nil
	end
end

local function OnUnequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("unequipskinneditem", inst:GetSkinName())
    end
end

local function OnThrown(inst, owner, target)
    if target ~= owner then
        owner.SoundEmitter:PlaySound("dontstarve/wilson/boomerang_throw")
    end
    inst.AnimState:PlayAnimation("spin_loop", true)
    inst.components.inventoryitem.pushlandedevents = false
end

local function OnCaught(inst, catcher)
    if catcher ~= nil and catcher.components.inventory ~= nil and catcher.components.inventory.isopen then
        if inst.components.equippable ~= nil and not catcher.components.inventory:GetEquippedItem(inst.components.equippable.equipslot) then
            catcher.components.inventory:Equip(inst)
        else
            catcher.components.inventory:GiveItem(inst)
        end
        catcher:PushEvent("catch")
		AutoCatchTask:Cancel()
		AutoCatchTask = nil
    end
end

local function Rehit(inst, owner, target)
	local newSpeed = inst.components.projectile.speed
	newSpeed = math.random(newSpeed - 4, newSpeed - 1)
	inst.components.projectile:SetSpeed(newSpeed)
	inst.Physics:SetMotorVel(0, newSpeed, 0)
	inst:DoTaskInTime(.15, function()
		inst.Physics:SetMotorVel(0, -newSpeed, 0)
		inst:DoTaskInTime(.15, function()
			inst.components.projectile:Throw(owner, target) 
		end)
	end)
end



local function ReturnToOwner(inst, owner)
	local function Accel(inst)
		inst.components.projectile.speed = inst.components.projectile.speed + 1
		inst.Physics:SetMotorVel(inst.components.projectile.speed, 0, 0)
		if inst.components.projectile.speed < 18 then
			inst:DoTaskInTime(40, Accel(inst))
		end
	end
	
    if owner ~= nil and not (inst.components.finiteuses ~= nil and inst.components.finiteuses:GetUses() < 1) then
        owner.SoundEmitter:PlaySound("dontstarve/wilson/boomerang_return")
		inst.components.projectile:SetSpeed(7)
		--Accel(inst)
        inst.components.projectile:Throw(owner, owner)
		inst.components.projectile:SetSpeed(20)
		
		if owner.prefab == "gramninten" then
			AutoCatchTask = owner:DoPeriodicTask(.05, function() 
				local range = owner:GetPhysicsRadius(0) + inst.components.projectile.hitdist + 1
				if distsq(inst:GetPosition(), owner:GetPosition()) < range * range then
					owner.sg:GoToState("catch_pre")
				end
			end)
		end
    end
end

local function ForceCatch(inst, owner, target)
	if owner == target and owner.prefab == "gramninten" then
		owner.sg:GoToState("catch_pre")
	end
end

local function OnHit(inst, owner, target)
    if owner.prefab ~= "gramninten" or owner == target or owner:HasTag("playerghost") then
        OnDropped(inst)
    elseif inst.components.projectile.speed > 10 and not target.components.health:IsDead() then
		Rehit(inst, owner, target)
	else
        ReturnToOwner(inst, owner)
    end
    if target ~= nil and target:IsValid() and target.components.combat then
        local impactfx = SpawnPrefab("impact")
        if impactfx ~= nil then
            local follower = impactfx.entity:AddFollower()
            follower:FollowSymbol(target.GUID, target.components.combat.hiteffectsymbol, 0, 0, 0)
            impactfx:FacePoint(inst.Transform:GetWorldPosition())
        end
    end
end

local function OnMiss(inst, owner, target)
    if owner.prefab ~= "gramninten" or owner == target then
        OnDropped(inst)
    else
        ReturnToOwner(inst, owner)
    end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)
    RemovePhysicsColliders(inst)

    inst.AnimState:SetBank("boomerang")
    inst.AnimState:SetBuild("boomerang")
    inst.AnimState:PlayAnimation("idle")
    inst.AnimState:SetRayTestOnBB(true)

    inst:AddTag("thrown")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    --projectile (from projectile component) added to pristine state for optimization
    inst:AddTag("projectile")

    local swap_data = {sym_build = "swap_boomerang"}
    MakeInventoryFloatable(inst, "small", 0.18, {0.8, 0.9, 0.8}, true, -6, swap_data)

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(18)
    inst.components.weapon:SetRange(20, 21)
    -------

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(50)
    inst.components.finiteuses:SetUses(50)

    inst.components.finiteuses:SetOnFinished(OnFinished)

    inst:AddComponent("inspectable")

    inst:AddComponent("projectile")
    inst.components.projectile:SetSpeed(20)
    inst.components.projectile:SetCanCatch(true)
    inst.components.projectile:SetOnThrownFn(OnThrown)
    inst.components.projectile:SetOnHitFn(OnHit)
    inst.components.projectile:SetOnMissFn(OnMiss)
    inst.components.projectile:SetOnCaughtFn(OnCaught)
	inst.components.projectile:SetOnPreHitFn(ForceCatch)

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem:SetOnDroppedFn(OnDropped)

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(OnEquip)
    inst.components.equippable:SetOnUnequip(OnUnequip)

    MakeHauntableLaunch(inst)

    return inst
end

return Prefab("baseball_ninten", fn, assets)