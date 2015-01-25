-- Added quest script for quest 7046 (Scepter of Celebras) in Maraudon
-- Now NPC 13716 will start an event along with the player leading
-- to the completion of the quest, giving access to the Scepter of Celebras
-- which is required to grant easy access to the last wing of the instance

SET @GUID := 532823;

UPDATE quest_template SET `StartScript` = 7046 WHERE `entry` = 7046;

DELETE FROM `creature_movement_template` WHERE `entry` = 13716;
INSERT INTO `creature_movement_template` VALUES
(13716, 1, 654.905, 87.382, -86.8597, 5000, 1371601, 0, 0, 0, 0, 0, 0, 0, 0, 5.06689, 0, 0),
(13716, 2, 657.207, 80.8004, -86.8318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.14543, 0, 0),
(13716, 3, 656.58, 73.1467, -86.8285, 6000, 1371602, 0, 0, 0, 0, 0, 0, 0, 0, 2.94396, 0, 0),
(13716, 4, 652.437, 73.9764, -85.3354, 2000, 1371603, 0, 0, 0, 0, 0, 0, 0, 0, 6.03528, 0, 0),
(13716, 5, 656.595, 73.5683, -86.8284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.10283, 0, 0),
(13716, 6, 655.724, 67.3549, -86.828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.45585, 0, 0),
(13716, 7, 650.08, 65.0115, -86.7745, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.21372, 0, 0),
(13716, 8, 655.445, 67.6601, -86.8283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.17524, 0, 0),
(13716, 9, 657.399, 78.0873, -86.8283, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.10044, 0, 0),
(13716, 10, 652.611, 86.3702, -86.8453, 0, 1371604, 0, 0, 0, 0, 0, 0, 0, 0, 5.75411, 0, 0);

DELETE FROM `gameobject` WHERE `guid` IN (@GUID + 1, @GUID + 2);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID + 1, 178964, 349, 650.99, 74.458, -86.8651, 1.45735, 0, 0, 0.665882, 0.746057, -3600, 100, 1),
(@GUID + 2, 178965, 349, 652.263, 74.0125, -85.3354, 6.10288, 0, 0, 0.0900299, -0.995939, 3600, 100, 1);

UPDATE `gameobject_template` SET `flags` = 64 WHERE `entry` = 178965;
UPDATE `creature_template` SET `SpeedRun` = 1.8 WHERE `Entry` = 13716;

SET @ENTRY := 2000005646;

DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 7046;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(7046, 0, 0, 0, 0, 0, 0, 0, @ENTRY, 0, 0, 0, 0, 0, 0, 0, 'Celebras Scepter Event'),
(7046, 1, 29, 3, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove flags'),
(7046, 2, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'set run'),
(7046, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 654.905, 87.382, -86.8597, 5.06689, 'move'),
(7046, 8, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement changed to 2:waypoint'),
(7046, 10, 0, 0, 0, 0, 0, 0, @ENTRY + 1, 0, 0, 0, 0, 0, 0, 0, 'Celebras Scepter Event'),
(7046, 13, 0, 0, 0, 0, 0, 0, @ENTRY + 2, 0, 0, 0, 0, 0, 0, 0, 'Celebras Scepter Event');


DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1371601);
INSERT INTO `dbscripts_on_creature_movement` VALUES
(1371601, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'set walk'),
(1371601, 1, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'movement changed to 2:waypoint'),

(1371602, 3, 0, 0, 0, 0, 0, 0, @ENTRY + 3, 0, 0, 0, 0, 0, 0, 0, 'Celebras Scepter Event'),
-- (1371602, 4, 9, @GUID + 2, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'summon book'),
(1371602, 5, 15, 21916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Celebras Waiting'),
(1371602, 6, 0, 2, 0, 0, 0, 0, @ENTRY + 4, 0, 0, 0, 0, 0, 0, 0, 'Celebras Scepter Event'),
(1371602, 7, 0, 0, 0, 0, 0, 0, @ENTRY + 5, 0, 0, 0, 0, 0, 0, 0, 'Celebras Scepter Event'),

(1371603, 0, 0, 0, 0, 0, 0, 0, @ENTRY + 6, 0, 0, 0, 0, 0, 0, 0, 'Celebras Scepter Event'),
(1371603, 4, 0, 0, 0, 0, 0, 0, @ENTRY + 7, 0, 0, 0, 0, 0, 0, 0, 'Celebras Scepter Event'),
(1371603, 5, 15, 21950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Recite Words of Celebras'),

(1371604, 0, 29, 3, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Add flags'),
(1371604, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Stop WP movement');

DELETE FROM `dbscripts_on_go_template_use` WHERE `id` = 178965;
INSERT INTO `dbscripts_on_go_template_use` VALUES
(178965, 0, 9, @GUID + 1, 3600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'summon Celebras Blue Aura'),
(178965, 1, 15, 21914, 0, 13716, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'cast Celebras Quit Escort'),
(178965, 15, 7, 7046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Give quest completion');

DELETE FROM `spell_script_target` WHERE `entry` = 21950;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(21950, 0, 178560, 0);

DELETE FROM `db_script_string` WHERE `entry` BETWEEN @ENTRY AND @ENTRY + 7;
INSERT INTO `db_script_string` VALUES
(@ENTRY, 'You wish to learn of the stone? Follow me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 1, 'For so long I have drifted in my cursed form. You have freed me... Your hard work shall be repaid.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 2, 'Please do as I instruct you, $N.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 3, 'Read this tome I have placed before you, and speak the words aloud.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 4, '%s begins to channel his energy, focusing on the stone.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, NULL),
(@ENTRY + 5, 'Together, the two parts shall become one, once again.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 6, 'Shal myrinan ishnu daldorah...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 7, 'My scepter will once again become whole!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
