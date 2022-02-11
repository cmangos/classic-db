REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1498701, 'ZG - Powerful Healing Ward - totem template', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1498701, 0, 24684, 0, 100, 0, 101, 1, 4000, 10000,8000, 16000, 'Powerful Healing Ward - passive spell Powerful Healing Ward');

UPDATE creature_template SET SpellList=1498701 WHERE entry IN(14987);

INSERT INTO spell_target_position(id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(24466, 309, -11582.9, -1251.15, 90, 5.0417852);

UPDATE broadcast_text SET ChatTypeID=1 WHERE Id = 10449;

INSERT INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, Comments) VALUES
('101', '1', '0', '1', '2', 'Attack - random player non tank');

REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1138001, 'ZG - Jin''do the Hexxer', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1138001, 0, 24306, 0, 101, 0, 100, 1, 10000, 15000,4000, 12000, 'Jin''do the Hexxer - Delusions of Jindo on Random non tank'),
(1138001, 1, 24053, 0, 1, 0, 100, 1, 8000, 12000,12000, 20000, 'Jin''do the Hexxer - Hex on Current'),
(1138001, 2, 24309, 0, 0, 0, 100, 1, 16000, 16000,60000, 90000, 'Jin''do the Hexxer - Powerful Healing Ward on None'),
(1138001, 3, 24262, 0, 0, 0, 100, 1, 20000, 22000,18000, 26000, 'Jin''do the Hexxer - Summon Brain Wash Totem on None'),
(1138001, 4, 24466, 0, 100, 0, 100, 1, 5000, 10000,15000, 23000, 'Jin''do the Hexxer - Banish on Random');

UPDATE creature_template SET SpellList=1138001 WHERE entry IN(11380);
-- make sacrified trolls use dynguid
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00100000 WHERE entry IN(14826);

UPDATE creature SET spawntimesecsmin=20, spawntimesecsmax=20 WHERE id=14826;
