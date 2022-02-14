REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1483401, 'ZG - Hakkar', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1483401, 0, 24324, 0, 0, 0, 100, 1, 90000, 90000,90000, 90000, 'Hakkar - Blood Siphon on None'),
(1483401, 0, 24328, 0, 100, 0, 100, 1, 25000, 25000,30000, 45000, 'Hakkar - Corrupted Blood on Random'),
(1483401, 0, 24327, 0, 7, 0, 100, 1, 17000, 17000,10000, 15000, 'Hakkar - Cause Insanity on Current'),
(1483401, 0, 24178, 0, 101, 0, 100, 1, 17000, 17000,25000, 35000, 'Hakkar - Will of Hakkar on Random non tank'),
(1483401, 0, 24318, 0, 0, 0, 100, 1, 6000000, 6000000,6000000, 6000000, 'Hakkar - Enrage on None'),
(1483401, 0, 24687, 0, 0, 0, 100, 1, 4000, 4000,10000, 14000, 'Hakkar - Aspect of Jeklik on None'),
(1483401, 0, 24688, 0, 0, 0, 100, 1, 7000, 7000,8000, 8000, 'Hakkar - Aspect of Venoxis on None'),
(1483401, 0, 24686, 0, 1, 0, 100, 1, 12000, 12000,10000, 10000, 'Hakkar - Aspect of Marli on Current'),
(1483401, 0, 24689, 0, 0, 0, 100, 1, 8000, 8000,15000, 15000, 'Hakkar - Aspect of Thekal on None'),
(1483401, 0, 24690, 0, 1, 0, 100, 1, 18000, 18000,10000, 15000, 'Hakkar - Aspect of Arlokk on Current');

UPDATE creature_template SET SpellList=1483401 WHERE entry IN(14834);

REPLACE INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, Comments) VALUES
(7, 0, 0, 0, 0, 'Hardcoded - current not alone');
