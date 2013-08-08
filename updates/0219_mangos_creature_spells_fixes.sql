-- Wrong spells were specified for these causing Fire Nova Totem Rank 1-4 to explode instantly. Thanks ProjectSilverpine
UPDATE `creature_template_spells` SET `spell1` = 8443 WHERE `entry` = 5879;
UPDATE `creature_template_spells` SET `spell1` = 8504 WHERE `entry` = 6110;
UPDATE `creature_template_spells` SET `spell1` = 8505 WHERE `entry` = 6111;
UPDATE `creature_template_spells` SET `spell1` = 11310 WHERE `entry` = 7844;
-- Corrects the spell used by creature (15304) which fixes item (20503)
UPDATE `creature_template_spells` SET `spell1` = 24853 WHERE `entry` = 15304;
-- Add spell (6276) to Healing Ward IV creature (3844). It will heal now.
DELETE FROM `creature_template_spells` WHERE `entry`=3844;
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (3844, 6276, 0, 0, 0);
-- Add spells to all PvP Battle Standard creatures (14465, 14466, 14751, 14752)
DELETE FROM `creature_template_spells` WHERE `entry` IN (14465, 14466, 14751, 14752);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14465, 23033, 0, 0, 0);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14466, 23036, 0, 0, 0);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14751, 23576, 0, 0, 0);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14752, 23574, 0, 0, 0);
