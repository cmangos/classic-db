REPLACE INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(24228, 309, -11516.1, -1605.31, 41.3, 0);

REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1451501, 'ZG - High Priestess Arlokk Phase 1', 0, 0),
(1451502, 'ZG - High Priestess Arlokk Phase 2', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1451501, 0, 24212, 0, 100, 0, 100, 1, 8000, 8000,15000, 15000, 'High Priestess Arlokk Phase 1 - Shadow Word Pain on Random'),
(1451501, 1, 24210, 0, 100, 0, 100, 1, 5000, 5000,30000, 30000, 'High Priestess Arlokk Phase 1 - Mark of Arlokk on Random'),
(1451501, 2, 12540, 0, 1, 0, 100, 1, 14000, 14000,17000, 27000, 'High Priestess Arlokk Phase 1 - Gouge on Current');

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1451502, 0, 24213, 0, 1, 0, 100, 1, 12000, 12000,10000, 15000, 'High Priestess Arlokk Phase 2 - Ravage on Current'),
(1451502, 1, 3391, 0, 1, 0, 100, 1, 20000, 20000,13000, 15000, 'High Priestess Arlokk Phase 2 - Thrash on Current'),
(1451502, 2, 24236, 0, 0, 0, 100, 1, 15000, 15000,17000, 27000, 'High Priestess Arlokk Phase 2 - Whirlwind on None'),
(1451502, 3, 24223, 0, 0, 0, 100, 1, 5000, 10000,85000, 85000, 'High Priestess Arlokk Phase 2 - Vanish on None');

UPDATE creature_template SET SpellList=1451501 WHERE entry IN(14515);
