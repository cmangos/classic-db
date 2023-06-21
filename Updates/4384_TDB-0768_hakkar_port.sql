ALTER TABLE db_version CHANGE COLUMN required_z2809_01_mangos_creature_equip_drop required_z2810_01_mangos_spell_list_conditions bit;

-- change of operation enum for CONDITION_WORLDSTATE to official enum
UPDATE conditions SET value2=5 WHERE type=42 AND value2=1;
UPDATE conditions SET value2=6 WHERE type=42 AND value2=2;
UPDATE conditions SET value2=1 WHERE type=42 AND value2=0;

ALTER TABLE creature_spell_targeting ADD COLUMN `UnitCondition` INT(11) NOT NULL DEFAULT -1 AFTER Param3;
ALTER TABLE creature_spell_list ADD COLUMN `CombatCondition` INT(11) NOT NULL DEFAULT -1 AFTER Flags;


ALTER TABLE db_version CHANGE COLUMN required_z2810_01_mangos_spell_list_conditions required_z2811_01_mangos_creature_static_flags bit;

ALTER TABLE creature_template ADD COLUMN `StaticFlags1` INT UNSIGNED NOT NULL DEFAULT 0 AFTER `CreatureTypeFlags`;
ALTER TABLE creature_template ADD COLUMN `StaticFlags2` INT UNSIGNED NOT NULL DEFAULT 0 AFTER `StaticFlags1`;
ALTER TABLE creature_template ADD COLUMN `StaticFlags3` INT UNSIGNED NOT NULL DEFAULT 0 AFTER `StaticFlags2`;
ALTER TABLE creature_template ADD COLUMN `StaticFlags4` INT UNSIGNED NOT NULL DEFAULT 0 AFTER `StaticFlags3`;

-- ports from extraflags
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x00000020,StaticFlags2=StaticFlags2|0x00000010 WHERE ExtraFlags&0x00000020;
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x00000040,StaticFlags1=StaticFlags1|0x00000002 WHERE ExtraFlags&0x00000040;
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x00000100,StaticFlags2=StaticFlags2|0x00000040 WHERE ExtraFlags&0x00000100;
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x00400000,StaticFlags2=StaticFlags2|0x00000100 WHERE ExtraFlags&0x00400000;
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x01000000,StaticFlags2=StaticFlags2|0x40000000 WHERE ExtraFlags&0x01000000;




ALTER TABLE db_version CHANGE COLUMN required_z2811_01_mangos_creature_static_flags required_z2812_01_mangos_visibility bit;

UPDATE creature_template SET StaticFlags1=StaticFlags1|0x80000000 WHERE visibilityDistanceType=3;
UPDATE creature_template SET StaticFlags3=StaticFlags3|0x00000400 WHERE visibilityDistanceType=4;
UPDATE creature_template SET StaticFlags3=StaticFlags3|0x00000800 WHERE visibilityDistanceType=5;
ALTER TABLE creature_template DROP COLUMN visibilityDistanceType;
-- tbc did not have gigantic and infinite capability
UPDATE creature_template SET StaticFlags1=StaticFlags1|0x80000000, StaticFlags3=StaticFlags3&~(0x00000400|0x00000800) WHERE StaticFlags3&(0x00000400|0x00000800);





ALTER TABLE db_version CHANGE COLUMN required_z2812_01_mangos_visibility required_z2813_01_mangos_trainer_ability bit;

ALTER TABLE npc_trainer ADD COLUMN `ReqAbility1` INT(11) UNSIGNED DEFAULT NULL AFTER reqLevel;
ALTER TABLE npc_trainer ADD COLUMN `ReqAbility2` INT(11) UNSIGNED DEFAULT NULL AFTER ReqAbility1;
ALTER TABLE npc_trainer ADD COLUMN `ReqAbility3` INT(11) UNSIGNED DEFAULT NULL AFTER ReqAbility2;

ALTER TABLE npc_trainer_template ADD COLUMN `ReqAbility1` INT(11) UNSIGNED DEFAULT NULL AFTER reqLevel;
ALTER TABLE npc_trainer_template ADD COLUMN `ReqAbility2` INT(11) UNSIGNED DEFAULT NULL AFTER ReqAbility1;
ALTER TABLE npc_trainer_template ADD COLUMN `ReqAbility3` INT(11) UNSIGNED DEFAULT NULL AFTER ReqAbility2;





ALTER TABLE db_version CHANGE COLUMN required_z2813_01_mangos_trainer_ability required_z2814_01_mangos_worldstate_expression_spawn_group bit;

ALTER TABLE `spawn_group` ADD COLUMN `WorldStateExpression` INT(11) NOT NULL DEFAULT 0 AFTER `WorldState`;





ALTER TABLE db_version CHANGE COLUMN required_z2814_01_mangos_worldstate_expression_spawn_group required_z2815_01_mangos_pursuit bit;

UPDATE creature_template SET Pursuit=15000 WHERE Pursuit=0;









UPDATE creature_spell_list SET CombatCondition=1007 WHERE Id IN(1483401) AND SpellId IN(24687); -- jeklik
UPDATE creature_spell_list SET CombatCondition=1006 WHERE Id IN(1483401) AND SpellId IN(24688); -- venoxis
UPDATE creature_spell_list SET CombatCondition=1008 WHERE Id IN(1483401) AND SpellId IN(24686); -- marli
UPDATE creature_spell_list SET CombatCondition=1009 WHERE Id IN(1483401) AND SpellId IN(24689); -- thekal
UPDATE creature_spell_list SET CombatCondition=1005 WHERE Id IN(1483401) AND SpellId IN(24690); -- arlokk


