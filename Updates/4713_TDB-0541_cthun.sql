INSERT INTO creature_template_addon(entry,auras) VALUES
(15334,'18950');

UPDATE broadcast_text SET ChatTypeId=2 WHERE Id IN(11476);
UPDATE broadcast_text SET ChatTypeId=7 WHERE Id IN(11700);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1558900);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(1558900, 0, 26137, 45000, 45000, 85000, 85000, 0, 0, 0, 100, 2, 'Eye of Cthun - Rotate Trigger'),
(1558900, 1, 26134, 22000, 22000, 2000, 3000, 0, 100, 0, 100, 2, 'Eye of Cthun - Eye Beam');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1558900);
INSERT INTO `creature_spell_list_entry` VALUES
(1558900, 'AQ40 - Eye of Cthun', 0, 0);

UPDATE `creature_template` SET `SpellList`=1558900 WHERE `entry` IN (15589);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1572600);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(1572600, 0, 26143, 2000, 2000, 10000, 12000, 0, 100, 0, 100, 0, 'Eye Tentacle - Mind Flay on Random Player');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1572600);
INSERT INTO `creature_spell_list_entry` VALUES
(1572600, 'AQ40 - Eye Tentacle', 0, 0);

UPDATE `creature_template` SET `SpellList`=1572600 WHERE `entry` IN (15726);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1533400);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(1533400, 0, 26134, 3000, 3000, 2000, 3000, 0, 100, 0, 100, 0, 'Giant Eye Tentacle - Eye Beam on Random Player');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1533400);
INSERT INTO `creature_spell_list_entry` VALUES
(1533400, 'AQ40 - Giant Eye Tentacle', 0, 0);

UPDATE `creature_template` SET `SpellList`=1533400 WHERE `entry` IN (15334);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1572600);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(1572600, 0, 26141, 2000, 3000, 5000, 6000, 0, 1, 0, 100, 0, 'Claw Tentacle - Hamstring');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1572600);
INSERT INTO `creature_spell_list_entry` VALUES
(1572600, 'AQ40 - Claw Tentacle', 0, 0);

UPDATE `creature_template` SET `SpellList`=1572600 WHERE `entry` IN (15726);

DELETE FROM `creature_spell_list` WHERE `Id` IN (1572800);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Flags`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `Comments`) VALUES
(1572800, 0, 26211, 5000, 6000, 10000, 10000, 0, 1, 0, 100, 1, 'Giant Claw Tentacle - Hamstring'),
(1572800, 1, 3391, 2000, 3000, 10000, 10000, 0, 1, 0, 100, 1, 'Giant Claw Tentacle - Thrash');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (1572800);
INSERT INTO `creature_spell_list_entry` VALUES
(1572800, 'AQ40 - Giant Claw Tentacle', 0, 0);

UPDATE `creature_template` SET `SpellList`=1572800 WHERE `entry` IN (15728);

UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00100000 WHERE entry IN(15589,15727);


