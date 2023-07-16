-- Scarlet Archmage 9451
-- https://www.wowhead.com/classic/npc=9451/scarlet-archmage
UPDATE `creature_template` SET `SpellList` = 945101 WHERE `entry` = 9451;

-- 9451	0	15242	15244	15122	18100	0	0	0	0	0	0
DELETE FROM `creature_template_spells` WHERE `entry` = 9451;

DELETE FROM `creature_spell_list_entry` WHERE `Id` = 945101;
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(945101, 'Eastern Plaguelands - Scarlet Archmage (9451)', 0, 75);

DELETE FROM `creature_spell_list` WHERE `Id` = 945101;
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
(945101, 1, 15242, 2, -1, 	1,	0, 100, 2, 0, 0, 0, 0, 'Scarlet Archmage - Fireball on Current'),
(945101, 2, 15244, 0, -1, 	103,0, 100, 3, 6000, 18000,	10000, 20000, 'Scarlet Archmage - Cone of Cold'),
(945101, 3, 15122, 0, 1221,	102,0, 100, 3, 3000, 12000, 10000, 20000, 'Scarlet Archmage - Counterspell on Random Player Casting'),
(945101, 4, 18100, 0, -1, 	0, 	0, 100, 1, 0, 0, 0, 0, 'Scarlet Archmage - Frost Armor');

