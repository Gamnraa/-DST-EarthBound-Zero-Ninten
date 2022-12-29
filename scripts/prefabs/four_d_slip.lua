local assets =
{
    Asset("ANIM", "anim/ground_four_d_slip.zip"),
    Asset("ANIM", "anim/swap_four_d_slip.zip"),
	Asset("ANIM", "anim/ground_four_d_slip_o.zip"),
    Asset("ANIM", "anim/swap_four_d_slip_o.zip"),
}

local slipLines = {
  "Now you see me...",
  "See ya!",
  "4D Slip!",
  "I'm outta here!",
  "Later!"
}

local slipBuffTime = 0
local slipBuffTask = nil

local function onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_" .. inst.prefab, "swap_" .. inst.prefab)
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end

local function onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end

----------------------------------------
-- Function that is called when the player successfully performs a 4D Slip
-- inst - the object instance (The 4D Slip item)
-- target - the target the player is casting the spell on
-- pos - in this context, the Vector3 (x, y, z) position of where the spell is being cast
----------------------------------------
local function doSlip(inst, target, pos) 
	local caster = inst.components.inventoryitem.owner
	caster.Transform:SetPosition(pos.x, pos.y, pos.z)
	
	if inst.prefab == "four_d_slip_o" then
		caster.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED * 1.5)
		caster.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED * 1.5)
		--For time stacking
		if slipBuffTime > 0 then
			slipBuffTime = GetTaskRemaining(slipBuffTask)
			slipBuffTask:Cancel()
		end
		slipBuffTime = slipBuffTime + 30
		slipBuffTask = caster:DoTaskInTime(slipBuffTime, function()
			slipBuffTime = 0
			caster.components.locomotor.walkspeed = (TUNING.WILSON_WALK_SPEED)
			caster.components.locomotor.runspeed = (TUNING.WILSON_RUN_SPEED)
		end)
	end
end

-----------------------------------------
-- Function that calls when the player attempts to cast a spell with 4D Slip
-- inst - the object instance (The 4D Slip item)
-- target - the target the player is casting the spell on
-- pos - in this context, the Vector3 (x, y, z) position of where the spell is being cast
-----------------------------------------
local function canSlip(inst, target, pos)
	local caster = inst.components.inventoryitem.owner	
	local water = nil
	if TUNING.ISLAND_ADVENTURE_ENABLED then water = IsWater(TheWorld.Map:GetTileAtPoint(pos.x, pos.y, pos.z)) end
	if caster.components.sailor and water and caster.components.sailor:IsSailing() == false then
		caster.components.talker:Say("I'd rather not just throw myself into the ocean.")
		return
	elseif caster.components.sailor and not water and caster.components.sailor:IsSailing() then
		--todo figure out if we can disembark before teleporting so the boat isn't lost
		caster.components.talker:Say("That'd beach my boat!")
	end

    if caster.components.sanity.current >= TUNING.GRAMNINTEN_4DSLIP_SANITY then
        caster.components.sanity:DoDelta(-TUNING.GRAMNINTEN_4DSLIP_SANITY)
		caster.components.talker:Say(slipLines[math.random(#slipLines)])
		doSlip(inst, target, pos)
	else 
		caster.components.talker:Say("I can't concentrate!")	  
    end
 
end 

local function createSlip(name)
	local function fn()
		local inst = CreateEntity()
		inst.entity:AddTransform()
		inst.entity:AddAnimState()
		inst.entity:AddNetwork()
		
		MakeInventoryPhysics(inst)
		inst.AnimState:SetBank("ground_" .. name)
		inst.AnimState:SetBuild("ground_" .. name)
		inst.AnimState:PlayAnimation("idle")
		if not TheWorld.ismastersim then
			return inst
		end
		inst.entity:SetPristine()
		
		inst:AddComponent("spellcaster")	
		inst.components.spellcaster:SetSpellFn(canSlip)
		inst.components.spellcaster.canuseonpoint = true
		inst.components.spellcaster.canuseonpoint_water = true
		inst.components.spellcaster.veryquickcast = true
		
		inst:AddComponent("inspectable")
		inst:AddComponent("inventoryitem")
		inst.inventory = inst.components.inventoryitem
		inst.inventory.imagename = name
		inst.inventory.atlasname = "images/inventoryimages/" .. name .. ".xml"		
		inst:AddComponent("equippable")
		
		inst.components.equippable:SetOnEquip( onequip )
		inst.components.equippable:SetOnUnequip( onunequip )
		
		inst.components.inventoryitem.onputininventoryfn = function(inst, player)
			if player.components.inventory then
				local gowner = inst.components.inventoryitem:GetGrandOwner()
				if gowner.components.inventory and gowner.prefab ~= "gramninten" then
					inst:DoTaskInTime(0.1, function()
						gowner.components.inventory:DropItem(inst)
						if gowner:HasTag("player") then
							gowner.components.talker:Say("I can't use this!")
						end
					end)
				end
			end
		end
		return inst
	end
	return Prefab(name, fn, assets)
end
STRINGS.NAMES.FOUR_D_SLIP  = "4D Slip"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FOUR_D_SLIP = "I don't even know what that could be."
STRINGS.CHARACTERS.WX78.DESCRIBE.FOUR_D_SLIP = "ERROR. UNDEFINED OBJECT"
STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.FOUR_D_SLIP = "I use that to get out of trouble!"

STRINGS.NAMES.FOUR_D_SLIP_O = "4D Slip Omega"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.FOUR_D_SLIP_O = "I don't even know what that could be."
STRINGS.CHARACTERS.WX78.DESCRIBE.FOUR_D_SLIP_O = "ERROR. UNDEFINED OBJECT"
STRINGS.CHARACTERS.GRAMNINTEN.DESCRIBE.FOUR_D_SLIP_O = "It gets me out of trouble in a snap!"

return createSlip("four_d_slip"),
	   createSlip("four_d_slip_o")

