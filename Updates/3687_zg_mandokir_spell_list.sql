REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1138201, 'ZG - Bloodlord Mandokir', 0, 0);

UPDATE creature_template SET SpellList=1138201 WHERE entry IN(11382);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1138201, 0, 24314, 0, 100, 0, 100, 1, '30000','35000','20000','25000', 'Bloodlord Mandokir - Threatening Gaze on Random'),
(1138201, 1, 24408, 0, 100, 0, 100, 1, '25000','30000','25000','35000', 'Bloodlord Mandokir - Charge on Random'),
(1138201, 2, 16856, 0, 1, 0, 100, 1, '5000','10000','15000','15000', 'Bloodlord Mandokir - Mortal Strike on Current'),
(1138201, 3, 13736, 0, 1, 0, 100, 1, '20000','20000','20000','20000', 'Bloodlord Mandokir - Whirlwind on Current'),
(1138201, 4, 29321, 0, 0, 0, 100, 1, '10000','15000','20000','25000', 'Bloodlord Mandokir - Intimidating Shout on None'),
(1138201, 5, 24407, 0, 1, 0, 100, 1, '5000','10000','15000','15000', 'Bloodlord Mandokir - Overpower on Current');
