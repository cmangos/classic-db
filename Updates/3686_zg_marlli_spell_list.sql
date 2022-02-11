DELETE FROM spell_script_target WHERE entry IN(24082);
INSERT INTO spell_script_target(entry, type, targetEntry, inverseEffectMask) VALUES
(24082,0,179985,0);

REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1451001, 'ZG - High Priestess Mar''li Phase 1', 0, 0),
(1451002, 'ZG - High Priestess Mar''li Phase 2', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1451001, 0, 24099, 0, 0, 0, 100, 1, '15000','15000','10000','20000', 'High Priestess Mar''li Phase 1 - Poison Volley on None'),
(1451001, 1, 24300, 0, 100, 0, 100, 1, '30000','30000','20000','50000', 'High Priestess Mar''li Phase 1 - Drain Life on Random'),
(1451001, 2, 24082, 0, 0, 0, 100, 1, '55000','55000','60000','60000', 'High Priestess Mar''li Phase 1 - Spider Egg on None'),
(1451001, 3, 24109, 0, 6, 0, 100, 1, '10000','20000','20000','40000', 'High Priestess Mar''li Phase 1 - Enlarge on Friendly missing buff no Self'),
(1451001, 4, 3391, 0, 1, 0, 100, 1,  '4000', '6000', '10000','20000', 'High Priestess Mar''li Phase 1 - Thrash on Current');

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1451002, 0, 24110, 0, 0, 0, 100, 1, '5000','5000','15000','20000', 'High Priestess Mar''li Phase 2 - Enveloping Webs on None'),
(1451002, 1, 24111, 0, 100, 0, 100, 1, '1000','1000','25000','35000', 'High Priestess Mar''li Phase 2 - Corrosive Poison on Random'),
(1451002, 2, 24112, 0, 100, 0, 100, 1, '5000','10000','10000','15000', 'High Priestess Mar''li Phase 2 - Poison Shock on Random'),
(1451002, 3, 3391, 0, 1, 0, 100, 1, '4000','6000','10000','20000', 'High Priestess Mar''li Phase 2 - Thrash on Current');

UPDATE creature_template SET SpellList=1451001 WHERE entry IN(14510);

REPLACE INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, Comments) VALUES
(5, 0, 0, 0, 0, 'Hardcoded - eligible friendly missing buff'),
(6, 0, 0, 0, 0, 'Hardcoded - eligible friendly missing buff - skip self');
