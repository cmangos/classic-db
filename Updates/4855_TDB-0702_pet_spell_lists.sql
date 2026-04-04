-- ALTER TABLE db_version CHANGE COLUMN required_s2488_01_mangos_cls_rework required_s2489_01_mangos_pet_spell_lists bit;
-- exists
-- DROP TABLE IF EXISTS pet_autocast_spell_list;
-- CREATE TABLE pet_autocast_spell_list (
-- `CreatureEntry` INT UNSIGNED NOT NULL,
-- `SpellId` INT UNSIGNED NOT NULL,
-- `CombatCondition` INT NOT NULL DEFAULT '-1',
-- `TargetId` INT NOT NULL,
-- `Comments` VARCHAR(255) NOT NULL,
-- PRIMARY KEY(`CreatureEntry`, `SpellId`)
-- );

DELETE FROM pet_autocast_spell_list WHERE CreatureEntry=1860;
INSERT INTO pet_autocast_spell_list(CreatureEntry, SpellId, CombatCondition, TargetId, Comments) VALUES
(1860, 3716, -1, 1, 'Voidwalker - Torment Rank 1'),
(1860, 7809, -1, 1, 'Voidwalker - Torment Rank 2'),
(1860, 7810, -1, 1, 'Voidwalker - Torment Rank 3'),
(1860, 7811, -1, 1, 'Voidwalker - Torment Rank 4'),
(1860, 11774, -1, 1, 'Voidwalker - Torment Rank 5'),
(1860, 11775, -1, 1, 'Voidwalker - Torment Rank 6');
-- (1860, 27270, -1, 1, 'Voidwalker - Torment Rank 7'); -- tbc+

