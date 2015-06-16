-- Added missing end script for quest 1059 (Reclaiming the Charred Vale 2) in Feralas
-- Thanks @Zingzah for reporting. This closes #618 
-- NPCs, spells and texts are correct
-- waypoints and timers are guesswork based on screens and retail experience (no video source found)
-- Sources:
-- http://wowwiki.wikia.com/Quest:Reclaiming_the_Charred_Vale_%282%29
-- http://www.wowhead.com/spell=6537/call-of-the-forest#screenshots:id=87812
-- http://www.wowhead.com/quest=1059/reclaiming-the-charred-vale#comments

SET @ENTRY := 2000005780;

DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1059;
INSERT INTO `dbscripts_on_quest_end` VALUES
(1059, 0, 29, 2, 0x02, 0, 0, 0, @ENTRY, 0, 0, 0, 0, 0, 0, 0, ''),
(1059, 1, 0, 0, 0, 0, 0, 0, @ENTRY, 0, 0, 0, 0, 0, 0, 0, ''),
(1059, 2, 32, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Unpause WP movement');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (404802, 404808);
INSERT INTO `dbscripts_on_creature_movement` VALUES
(404802, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause WP movement'),
(404802, 1, 29, 2, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(404802, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.0091, ''),
(404808, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pause WP movement'),
(404808, 2, 0, 0, 0, 0, 0, 0, @ENTRY + 1, 0, 0, 0, 0, 0, 0, 0, ''),
(404808, 4, 15, 6537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(404808, 6, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4479.45, -768.01, -37.36, 0, ''),
(404808, 7, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4486.55, -769.80, -37.23, 0, ''),
(404808, 8, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4484.95, -767.87, -36.61, 0, ''),
(404808, 9, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4484.90, -770.79, -37.62, 0, ''),
(404808, 10, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4484.07, -765.04, -35.74, 0, ''),
(404808, 11, 10, 4059, 50000, 0, 0, 0, 0, 0, 0, 0, -4485.88, -764.05, -35.19, 0, ''),
(404808, 14, 0, 0, 0, 0, 0, 0, @ENTRY + 2, 0, 0, 0, 0, 0, 0, 0, ''),
(404808, 13, 14, 6537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(404808, 27, 32, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 'Unpause WP movement'),
(405901, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN ON');

DELETE FROM `db_script_string` WHERE `entry` IN (@ENTRY, @ENTRY + 1, @ENTRY + 2);
INSERT INTO `db_script_string` VALUES
(@ENTRY, 'We must hurry.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(@ENTRY + 1, 'Spirits of the forest come forth and heed nature\'s call!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, NULL),
(@ENTRY + 2, 'Spirits of the forest, you are needed! Make haste to the Charred Vale!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 25, NULL);

UPDATE quest_template SET `completeScript` = 1059 WHERE `entry` = 1059;

DELETE FROM `creature_movement_template` WHERE `entry` = 4048;
INSERT INTO `creature_movement_template` VALUES
(4048, 1, -4524.14, -787.884, -41.5917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.0091, 0, 0),
(4048, 2, -4524.14, -787.884, -41.5917, 0, 404802, 0, 0, 0, 0, 0, 0, 0, 5.0091, 0, 0),
(4048, 3, -4524.14, -787.884, -41.5917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.0091, 0, 0),
(4048, 4, -4524.24, -782.628, -41.5763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4048, 5, -4520.69, -775.438, -41.0733, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4048, 6, -4514.55, -770.937, -40.0658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4048, 7, -4503.63, -774.032, -40.224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4048, 8, -4488.25, -767.98, -36.61, 0, 404808, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4048, 9, -4488.25, -767.98, -36.61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4048, 10, -4499.17, -773.174, -39.449, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4048, 11, -4514.09, -771.136, -40.0971, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4048, 12, -4520.48, -775.049, -41.0191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4048, 13, -4524.16, -782.978, -41.2406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4048, 14, -4524.12, -788.099, -41.6929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);
UPDATE `creature_template` SET `MovementType` = 2  WHERE `Entry` = 4048;
UPDATE `creature` SET `MovementType` = 2  WHERE `id` = 4048;

DELETE FROM `creature_movement_template` WHERE `entry` = 4059;
INSERT INTO `creature_movement_template` VALUES
(4059, 1, -4484.5, -759, -33.57, 0, 405901, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4059, 2, -4484.5, -759, -33.57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4059, 3, -4483, -755.56, -31.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4059, 4, -4481, -686.51, -14.39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0),
(4059, 5, -4472, -571.90, 5.91, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 100, 0, 0);


-- 
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 4059;
INSERT INTO `creature_ai_scripts` VALUES
(405901, 4059, 1, 0, 100, 0, 7500, 10500, 0, 0, 48, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Forest Wisp - Start WP movement after 7 sec');
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `Entry` = 4059;
