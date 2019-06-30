me_damage_resistance = {
[0] = {22, 87, 32431},
[1] = {17, 27, 32436},
[2] = {15, 28, 32434},
[4] = {16, 29, 32433},
[8] = {14, 30, 32428},
[16] = {23, 88, 32429},
[32] = {74, 173, 32437},
[64] = {73, 31, 32435},
[128] = {24, 89, 32432},
[256] = {21, 86, 32430},
[512] = {19, 84, 32438},
[1024] = {20, 85, 32439},
[2048] = {22, 87, 32440}
}
me_damage_resistance_base = {
[0] = 0x475,
[1] = 0x470,
[2] = 0x46E,
[4] = 0x46F,
[8] = 0x46D,
[16] = 0x476,
[128] = 0x477,
[256] = 0x474,
[512] = 0x472,
[1024] = 0x473,
[2048] = 0x475
}

function MEDAMABS(originatingEffectData, effectData, creatureData)
	if EEex_ReadDword(effectData + 0xC) ~= 12 then return false end
	local targetID = EEex_ReadDword(creatureData + 0x34)
	if targetID == 0x0 then return false end
	local damage_method = EEex_ReadWord(effectData + 0x1C, 0x0)
	if damage_method ~= 0 then return false end
	local sourceID = EEex_ReadDword(effectData + 0x10C)
	local dice_number = EEex_ReadDword(effectData + 0x34)
	local dice_size = EEex_ReadDword(effectData + 0x38)
	local damage = EEex_ReadDword(effectData + 0x18)
	local restype = EEex_ReadDword(effectData + 0x8C)
	local parent_resource = EEex_ReadLString(effectData + 0x90, 8)
	local damage_type = EEex_ReadWord(effectData + 0x1E, 0x0)

	if EEex_IsSprite(sourceID) then
		local extradice = EEex_GetActorStat(sourceID, 616)
		if extradice ~= 0 then
			EEex_IterateActorEffects(sourceID, function(eData)
				if EEex_ReadDword(eData + 0x10) == 401 and EEex_ReadDword(eData + 0x48) == 616 then
					local the_extradice = EEex_ReadByte(eData + 0x1C, 0x0)
					local the_flags_a = EEex_ReadByte(eData + 0x1D, 0x0)
					local the_flags_b = EEex_ReadByte(eData + 0x1E, 0x0)
					local the_flags_c = EEex_ReadByte(eData + 0x1F, 0x0)
					local conditionsMet = true
					if bit32.band(the_flags_b, 0x40) ~= 0 and bit32.band(EEex_GetActorAlignment(targetID), the_flags_c) == 0 then
						conditionsMet = false
					end
					if bit32.band(the_flags_b, 0x1) ~= 0 and restype == 0 then
						conditionsMet = false
					elseif bit32.band(the_flags_b, 0x2) ~= 0 and restype == 1 then
						conditionsMet = false
					elseif bit32.band(the_flags_b, 0x4) ~= 0 and restype == 2 then
						conditionsMet = false
					end
					if conditionsMet then
						if bit32.band(the_flags_a, 0x40) ~= 0 then
							damage = damage + the_extradice
							EEex_WriteDword(effectData + 0x18, damage)
						else
							dice_number = dice_number + the_extradice
							EEex_WriteDword(effectData + 0x34, dice_number)
						end
					end
				end
			end)
		end
		local new_damage_type = EEex_GetActorStat(sourceID, 617)
		if new_damage_type ~= 0 and restype == 0 and parent_resource == "" then
			damage_type = new_damage_type - 1
			EEex_WriteWord(effectData + 0x1E, damage_type)
		end
		local minimumDamage = EEex_GetActorStat(sourceID, 621)
		if minimumDamage > 0 and dice_size > 0 then
			if minimumDamage >= dice_size then
				minimumDamage = dice_size - 1
			end
			dice_size = dice_size - minimumDamage
			damage = damage + (dice_number * minimumDamage)
			EEex_WriteDword(effectData + 0x18, damage)
			EEex_WriteDword(effectData + 0x38, dice_size)
		end
	end


	local normal_resistance = EEex_GetActorStat(targetID, me_damage_resistance[damage_type][1])
--	Infinity_DisplayString("Dice Number: " .. dice_number)
--	Infinity_DisplayString("Dice Size: " .. dice_size)
--	Infinity_DisplayString("Damage: " .. damage)
--	Infinity_DisplayString("Damage Type: " .. damage_type)
--	Infinity_DisplayString("Normal Resistance: " .. normal_resistance)
	if (normal_resistance >= 100 and normal_resistance <= 127) or normal_resistance == -128 then
		local base_resistance = 0
		local timing_level = 0
		if me_damage_resistance_base[damage_type] ~= nil then
			base_resistance = EEex_ReadByte(creatureData + me_damage_resistance_base[damage_type], 0x0)
		end
		local extra_resistance = 0
		EEex_IterateActorEffects(targetID, function(eData)
			local the_opcode = EEex_ReadDword(eData + 0x10)
			if the_opcode == me_damage_resistance[damage_type][2] then
				local the_parameter1 = EEex_ReadDword(eData + 0x1C)
				local the_parameter2 = EEex_ReadDword(eData + 0x20)
				local the_timing = EEex_ReadDword(eData + 0x24)
				if the_parameter2 == 0 then
					extra_resistance = extra_resistance + the_parameter1
				elseif the_timing >= timing_level then
					timing_level = the_timing
					if the_parameter2 == 1 then
						base_resistance = the_parameter1
					elseif the_parameter2 == 2 then
						base_resistance = math.floor(base_resistance * the_parameter1 / 100)
					end
				end
			end
		end)
--		Infinity_DisplayString("Total Resistance: " .. base_resistance + extra_resistance)
		for i = 1, dice_number, 1 do
			damage = damage + math.random(dice_size)
		end
--		Infinity_DisplayString("Total Damage: " .. damage)
		if (normal_resistance >= 100 and normal_resistance <= 127) then
			local healing = math.floor(damage * (base_resistance + extra_resistance - 100) / 100)
			local source_name = ""
			if EEex_IsSprite(sourceID) and targetID ~= sourceID then
				source_name = "@804" .. EEex_GetActorName(sourceID)
			end
	--		Infinity_DisplayString("Healing: " .. healing)
			if healing > 0 then
				Infinity_SetToken("ME_DAMABS", "@802" .. Infinity_FetchString(me_damage_resistance[damage_type][3]) .. "@803" .. source_name .. "@805" .. healing .. "@806")
				EEex_ApplyEffectToActor(targetID, {
	["opcode"] = 17,
	["target"] = 2,
	["parameter1"] = healing,
	["timing"] = 1,
	["source_target"] = targetID,
	["source_id"] = sourceID
	})
				EEex_ApplyEffectToActor(targetID, {
	["opcode"] = 139,
	["target"] = 2,
	["parameter1"] = RESOLVE_STR_REF(@801),
	["timing"] = 1,
	["source_target"] = targetID,
	["source_id"] = sourceID
	})
				local spellRes = EEex_ReadLString(effectData + 0x90, 8)
				EEex_ApplyEffectToActor(targetID, {
	["opcode"] = 318,
	["target"] = 2,
	["timing"] = 0,
	["resource"] = spellRes,
	["source_target"] = targetID,
	["source_id"] = sourceID
	})
			end
			return true
		else
			damage = math.floor(damage * (((base_resistance + extra_resistance - 100) * -1) / 100) / 2.28)
			EEex_WriteDword(effectData + 0x18, damage)
			EEex_WriteDword(effectData + 0x34, 0)
			EEex_WriteDword(effectData + 0x38, 0)
			return false
		end
	end
end