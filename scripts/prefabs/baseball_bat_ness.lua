local assets =
{
    Asset("ANIM", "anim/swap_baseball_bat_ness.zip"),
	Asset("ANIM", "anim/ground_baseball_bat_ness.zip"),
}

--If Ness is not enabled then BASEBALL_BAT_NESS_DAMAGE will be undefined
local DAMAGE = TUNING.BASEBALL_BAT_NESS_DAMAGE or 24

local function onattack(inst, attacker, target)
	if attacker.components.homesickness then
		local roll = math.random(100)
		print("rolled a " .. roll)

		local isdead = target.components.health:IsDead()
	
		if roll < attacker.components.homesickness.guts then
			target.components.health:DoDelta(-(TUNING.BASEBALL_BAT_NESS_DAMAGE * 4))
			local fx = SpawnPrefab("crit_fx")
			local pos = target:GetPosition()
			fx.Transform:SetPosition(pos.x, pos.y, pos.z)
			fx:kill_fx()
			
			if not isdead then isdead = target.components.health:IsDead() end
			if isdead then
				if target:HasTag("epic") then
					print("killed a boss with a critical hit, extra special drop")
					local lootdropper = target.components.lootdropper
					--if math.random(2) == 1 then
						local baseball = SpawnPrefab("baseball_cap_ninten")
						lootdropper:FlingItem(baseball)
					--end
					if GRAMNESS_SPECIALDROPS[data.target.prefab] then
						local index = math.random(#GRAMNESS_SPECIALDROPS[data.target.prefab])
						local loot = SpawnPrefab(GRAMNESS_SPECIALDROPS[data.target.prefab][index])
						lootdropper:FlingItem(loot)	
					end
				end
				print("TO THE MOON!")
				--inst.Physics:SetVel(50 * math.cos(angle), 10, 50 * math.sin(angle))
				attacker:PushEvent("killed", {victim = target})
				target:PushEvent("baseballknockback", {knocker = attacker, radius = 1.7, strengthmult = 8})
				return
			end
		end	
	end
	
	if target.sg then
		target.sg:AddStateTag("baseballknockback")
		if GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS[target.prefab] then
			target:PushEvent("baseballknockback", {knocker = attacker, radius = 1.7, strengthmult = GRAMNESS_BASEBALL_KNOCKBACK_WEIGHTS[target.prefab]})
		end
	end

	
end

local function onequip(inst, owner)
	owner:AddTag("homerunner")
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("equipskinneditem", inst:GetSkinName())
        owner.AnimState:OverrideItemSkinSymbol("swap_object", skin_build, "swap_baseball_bat_ness", inst.GUID, "swap_baseball_bat_ness")
    else
        owner.AnimState:OverrideSymbol("swap_object", "swap_baseball_bat_ness", "swap_baseball_bat_ness")
    end
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
	if owner.components.homesickness then
		owner:PushEvent("sanitydelta", {oldpercent = owner.components.sanity:GetPercent(), newpercent = owner.components.sanity:GetPercent()})
	end
	
	if owner.prefab == "gramninten" then
		inst.components.weapon:SetDamage(DAMAGE + 30)
	end
end

local function onunequip(inst, owner)
	owner:RemoveTag("homerunner")
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
    local skin_build = inst:GetSkinBuild()
    if skin_build ~= nil then
        owner:PushEvent("unequipskinneditem", inst:GetSkinName())
    end
	
	if owner.components.homesickness then
		owner:PushEvent("sanitydelta", {oldpercent = owner.components.sanity:GetPercent(), newpercent = owner.components.sanity:GetPercent()})
	end
	
	inst.components.weapon:SetDamage(DAMAGE)
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("ground_baseball_bat_ness")
    inst.AnimState:SetBuild("ground_baseball_bat_ness")
    inst.AnimState:PlayAnimation("idle")
	-- inst:AddTag("propweapon")

    --weapon (from weapon component) added to pristine state for optimization
    inst:AddTag("weapon")

    MakeInventoryFloatable(inst, "med", 0.1, {0.7, 0.5, 0.7})

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(DAMAGE)
	inst.components.weapon:SetOnAttack(onattack)

    -------

    inst:AddComponent("finiteuses")
    inst.components.finiteuses:SetMaxUses(80)
    inst.components.finiteuses:SetUses(80)
    inst.components.finiteuses:SetOnFinished(inst.Remove)

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.inventory = inst.components.inventoryitem
	inst.inventory.imagename = "baseball_bat_ness"
	inst.inventory.atlasname = "images/inventoryimages/baseball_bat_ness.xml"

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(onequip)
    inst.components.equippable:SetOnUnequip(onunequip)

    MakeHauntableLaunch(inst)

    return inst
end

STRINGS.NAMES.BASEBALL_BAT_NESS = "Baseball Bat"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.BASEBALL_BAT_NESS = "Well a weapon is a weapon."
STRINGS.CHARACTERS.WX78.DESCRIBE.BASEBALL_BAT_NESS = "I HAVE NO USE FOR HUMAN RECREATION INSTRUMENTS"

return Prefab("baseball_bat_ness", fn, assets)
