UPDATE broadcast_text SET ChatTypeID=2 WHERE Id IN(10453);

REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1134801, 'ZG - Zealot Zath', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1134801, 0, 15581, 0, 1, 0, 100, 1, 8000, 8000,8000, 16000, 'Zealot Zath - Sinister Strike on Current'),
(1134801, 1, 12540, 0, 0, 0, 100, 1, 25000, 25000,17000, 27000, 'Zealot Zath - Gouge on None'),
(1134801, 2, 15614, 0, 102, 0, 100, 1, 18000, 18000,15000, 25000, 'Zealot Zath - Kick on Random Casting'),
(1134801, 3, 21060, 0, 1, 0, 100, 1, 5000, 5000,10000, 20000, 'Zealot Zath - Blind on Current'),
(1134801, 4, 18765, 0, 0, 0, 100, 1, 0, 0,20000, 25000, 'Zealot Zath - Sweeping Strikes on None');

UPDATE creature_template SET SpellList=1134801 WHERE entry IN(11348);

INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, Comments) VALUES
('102', '1', '0', '1', 2 + 32768, 'Attack - random player casting');

REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1134701, 'ZG - Zealot Lorkhan', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1134701, 0, 17201, 0, 3, 0, 100, 1, 0, 0,15000, 20000, 'Zealot Lorkhan - Dispel Magic on Friendly'),
(1134701, 1, 20545, 0, 0, 0, 100, 1, 1000, 1000,61000, 61000, 'Zealot Lorkhan - Lightning Shield on None'),
(1134701, 2, 24208, 0, 200, 0, 100, 1, 32000, 32000,15000, 20000, 'Zealot Lorkhan - Great Heal on Friendly missing health'),
(1134701, 3, 6713, 0, 1, 0, 100, 1, 6000, 6000,15000, 25000, 'Zealot Lorkhan - Disarm on Current');

UPDATE creature_template SET SpellList=1134701 WHERE entry IN(11347);

INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, Comments) VALUES
('200', '2', '10', '1', '1', 'Support - Missing 10% including self');

REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1450901, 'ZG - High Priest Thekal Phase 1', 0, 0),
(1450902, 'ZG - High Priest Thekal Phase 2', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1450901, 0, 22859, 0, 1, 0, 100, 1, 4000, 4000,15000, 20000, 'High Priest Thekal Phase 1 - Mortal Cleave on Current'),
(1450901, 1, 24185, 0, 6, 0, 100, 1, 10000, 15000,20000, 30000, 'High Priest Thekal Phase 1 - Bloodlust on Friendly Missing Buff no self'),
(1450901, 2, 22666, 0, 102, 0, 100, 1, 9000, 9000,20000, 25000, 'High Priest Thekal Phase 1 - Silence on Random Casting');

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1450902, 0, 24408, 0, 100, 0, 100, 1, 12000, 12000,15000, 22000, 'High Priest Thekal Phase 2 - Charge on Random'),
(1450902, 1, 23128, 0, 0, 0, 100, 1, 30000, 30000,30000, 30000, 'High Priest Thekal Phase 2 - Frenzy on None'),
(1450902, 2, 24189, 0, 0, 0, 100, 1, 4000, 4000,16000, 21000, 'High Priest Thekal Phase 2 - Force Punch on None'),
(1450902, 3, 24192, 0, 0, 0, 100, 1, 15000, 20000,20000, 25000, 'High Priest Thekal Phase 2 - Speed Slash on None'),
(1450902, 4, 24183, 0, 0, 0, 100, 1, 25000, 25000,50000, 50000, 'High Priest Thekal Phase 2 - Summon Zulian Guardians on None');

UPDATE creature_template SET SpellList=1450901 WHERE entry IN(14509);
