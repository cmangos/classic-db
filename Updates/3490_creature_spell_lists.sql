ALTER TABLE db_version CHANGE COLUMN required_z2778_02_mangos_gameobject_spawn_entry required_z2779_01_mangos_dbscript_data_flags_widening bit;

ALTER TABLE dbscripts_on_creature_death MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_creature_movement MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_event MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_gossip MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_go_template_use MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_go_use MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_quest_end MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_quest_start MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_relay MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';
ALTER TABLE dbscripts_on_spell MODIFY data_flags INT UNSIGNED NOT NULL DEFAULT '0';

ALTER TABLE db_version CHANGE COLUMN required_z2779_01_mangos_dbscript_data_flags_widening required_z2780_01_mangos_creature_spell_lists bit;

DROP TABLE IF EXISTS creature_spell_list_entry;
CREATE TABLE creature_spell_list_entry (
Id INT NOT NULL COMMENT 'List ID',
Name VARCHAR(200) NOT NULL COMMENT 'Description of usage',
ChanceSupportAction INT NOT NULL COMMENT 'Chance of support action per tick',
ChanceRangedAttack INT NOT NULL COMMENT 'Chance of ranged attack per tick',
PRIMARY KEY(Id)
);

DROP TABLE IF EXISTS creature_spell_list;
CREATE TABLE creature_spell_list (
Id INT NOT NULL COMMENT 'List ID',
Position INT NOT NULL COMMENT 'Position on list',
SpellId INT NOT NULL COMMENT 'Spell ID',
Flags INT NOT NULL COMMENT 'Spell Flags',
TargetId INT NOT NULL COMMENT 'Targeting ID',
ScriptId INT NOT NULL COMMENT 'Dbscript to be launched on success',
Availability INT NOT NULL COMMENT 'Chance on spawn for spell to be included',
Probability INT NOT NULL COMMENT 'Weight of spell when multiple are available',
InitialMin INT NOT NULL COMMENT 'Initial delay minimum',
InitialMax INT NOT NULL COMMENT 'Initial delay maximum',
RepeatMin INT NOT NULL COMMENT 'Repeated delay minimum',
RepeatMax INT NOT NULL COMMENT 'Repeated delay maximum',
Comments VARCHAR(255) NOT NULL COMMENT 'Description of spell use',
PRIMARY KEY(Id, Position)
);

DROP TABLE IF EXISTS creature_spell_targeting;
CREATE TABLE creature_spell_targeting (
Id INT NOT NULL COMMENT 'Targeting ID',
Type INT NOT NULL COMMENT 'Type of targeting ID',
Param1 INT NOT NULL COMMENT 'First parameter',
Param2 INT NOT NULL COMMENT 'Second parameter',
Param3 INT NOT NULL COMMENT 'Third parameter',
Comments VARCHAR(255) NOT NULL COMMENT 'Description of target',
PRIMARY KEY(Id)
);

ALTER TABLE creature_template ADD COLUMN SpellList INT NOT NULL DEFAULT '0' COMMENT 'creature_spell_list_entry' AFTER CorpseDecay;

REPLACE INTO creature_spell_targeting(Id, Type, Param1, Param2, Param3, Comments) VALUES
(0, 0, 0, 0, 0, 'Hardcoded - none'),
(1, 0, 0, 0, 0, 'Hardcoded - current'),
(2, 0, 0, 0, 0, 'Hardcoded - self'),
(3, 0, 0, 0, 0, 'Hardcoded - eligible friendly dispel'),
(100, 1, 0, 0, 0x0002, 'Attack - random player');

REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(589, 'Westfall - Defias Pillager', 0, 75);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(589, 3, 20793, 2, 1, 0, 100, 0, '0','0','0','0', 'Defias Pillager - Fireball on Current');

UPDATE creature_template SET SpellList=589 WHERE entry IN(589);

DELETE FROM creature_ai_scripts WHERE Id IN(58905);

REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(595, 'STV - Bloodscalp Hunter', 0, 75);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(595, 3, 6533, 0, 1, 0, 100, 0, '1700','10700','18400','29800', 'Bloodscalp Hunter - Net on Current'),
(595, 4, 6660, 2, 1, 0, 100, 0, '0','0','2300','3900', 'Bloodscalp Hunter - Shoot on Current');

UPDATE creature_template SET SpellList=595 WHERE entry IN(595);

DELETE FROM creature_ai_scripts WHERE Id IN(59503);
DELETE FROM creature_ai_scripts WHERE Id IN(59504);

REPLACE INTO creature_spell_list_entry(Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(1450701, 'ZG - High Priest Venoxis Phase 1', 0, 0),
(1450702, 'ZG - High Priest Venoxis Phase 2', 0, 0),
(1450703, 'ZG - High Priest Venoxis Phase 3', 0, 0);

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1450701, 0, 23859, 0, 4, 0, 100, 1, '35000','35000','15000','30000', 'High Priest Venoxis Phase 1 - Dispel on Friendly dispellable'),
(1450701, 1, 23895, 0, 2, 0, 100, 1, '30000','30000','20000','30000', 'High Priest Venoxis Phase 1 - Renew on Self'),
(1450701, 2, 23979, 0, 1, 0, 100, 1, '40000','40000','15000','25000', 'High Priest Venoxis Phase 1 - Holy Wrath on Current'),
(1450701, 3, 23858, 0, 0, 0, 100, 1, '15000','20000','10000','15000', 'High Priest Venoxis Phase 1 - Holy Nova on None'),
(1450701, 4, 23860, 0, 100, 0, 100, 1, '10000','15000','20000','30000', 'High Priest Venoxis Phase 1 - Holy Fire on Random'),
(1450701, 5, 3391, 0, 1, 0, 100, 1, '4000','6000','10000','20000', 'High Priest Venoxis Phase 1 - Thrash on Current');

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1450702, 0, 23861, 0, 0, 0, 100, 1, '2000','2000','15000','15000', 'High Priest Venoxis Phase 2 - Poison Cloud on None'),
(1450702, 1, 23862, 0, 100, 0, 100, 1, '5500','5500','15000','20000', 'High Priest Venoxis Phase 2 - Venomspit on Random'),
(1450702, 5, 3391, 0, 1, 0, 100, 1, '4000','6000','10000','20000', 'High Priest Venoxis Phase 2 - Thrash on Current');

REPLACE INTO creature_spell_list(Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(1450703, 0, 23861, 0, 0, 0, 100, 1, '0','0','15000','15000', 'High Priest Venoxis Phase 3 - Poison Cloud on None'),
(1450703, 1, 23862, 0, 100, 0, 100, 1, '0','0','15000','20000', 'High Priest Venoxis Phase 3 - Venomspit on Random'),
(1450703, 2, 23867, 0, 100, 0, 100, 1, '0','0','15000','20000', 'High Priest Venoxis Phase 3 - Parasitic Serpent on Random'),
(1450703, 5, 3391, 0, 1, 0, 100, 1, '0','0','10000','20000', 'High Priest Venoxis Phase 3 - Thrash on Current');


UPDATE creature_template SET SpellList=1450701 WHERE entry IN(14507);

