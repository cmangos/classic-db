-- first mask applicable to vanilla, second only to tbc, none to wotlk
UPDATE spell_proc_event SET SpellFamilyMask0=(8192+32768+524288+8388608+33554432) WHERE entry=15268; -- old value 41984016 (16+8192+32768+8388608+33554432)
-- 0x80000 (524288) = Touch of Weakness (Procced Damage Spell) - only mask missing in classicmangos is 524288
-- Mind Flay (this commit, 0x0000000000800000 (8388608)), Vampiric Touch (0x40000000000 (4398046511104) nonexistant in classic)

-- 8129	Mana Burn	6	16 -- https://wowpedia.fandom.com/wiki/Blackout?direction=prev&oldid=1669035 - NOT
-- 8092	Mind Blast	6	8192
-- 589	Shadow Word: Pain	6	32768
-- 2943	Touch of Weakness	6	524288
-- 15407	Mind Flay	6	8388608
-- 2944	Devouring Plague	6	17592219598848 (33554432)
-- 28377	Shadowguard	6	33554432
-- 32379	Shadow Word: Death	6	8589934592 (not classic)
-- 34914	Vampiric Touch	6	4398046511104 (not classic)

-- Feedback? s.6347 - https://wowpedia.fandom.com/wiki/Blackout?direction=prev&oldid=1669035 - NOT

-- Current tbcmask is 4406746062848
-- -4398046511104 = 8699551744 (Vampiric Touch)
-- -8589934592 = 109617152 (Shadow Word: Death)
-- 67108864,33554432,8388608,524288,32768,8192 (67108864 wrong as ToW DMG Component is 524288)

