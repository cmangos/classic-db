-- Improved Stitches script used at end of quest 252 (Translation to Ello) to make it closer
-- to what it was on retail:
-- Stitches is now neutral at spawn and will no longer kill Abercombrie
-- Stitches turns hostile when reaching the road
-- Stitches now attacks the Night Watch guards on its way to Darkshire
-- Town Crier (creature 468) now has several yells to inform players of Stitches progress toward Darkshire
-- Prevented Stitches to spawn twice
-- Source: http://www.wowwiki.com/Quest:Translation_to_Ello
-- http://www.wowwiki.com/Stitches
-- http://www.youtube.com/watch?v=rS0rjcQ6YMc

SET @NIGHTWATCH := 888;
SET @NIGHTWATCH2 := 499;
SET @TOWNCRIER := 468;
SET @CRIER_GUID := (SELECT `guid` FROM `creature` WHERE `id` = @TOWNCRIER);
SET @STRING := 2000000185;
SET @CONDITION := 204;
SET @SEARCH_RANGE := 100000;

UPDATE `creature_template` SET `FactionAlliance` = 7, `FactionHorde` = 7 WHERE `Entry` = 412;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags` | 0x1000 WHERE `Entry` = 468; -- Makes Town Crier an active object

UPDATE `dbscripts_on_quest_end` SET `delay` = 1 WHERE `id` = 252;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 252 AND `delay` = 0;
INSERT INTO `dbscripts_on_quest_end` VALUES
(252, 0, 34, @CONDITION, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stop if stitches already spawned');

DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 37, 412, @SEARCH_RANGE);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 41204 AND `command` = 22;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(41204, 0, 22, 93, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stitches faction hostile');
UPDATE `creature_movement_template` SET `script_id` = 41204 WHERE `entry` = 412 AND `point` = 35;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 41205;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(41205, 0, 0, 6, 0, @TOWNCRIER, @CRIER_GUID, 0x10, @STRING + 1, 0, 0, 0, 0, 0, 0, 0, 'stitches - town crier 1st yell');
UPDATE `creature_movement_template` SET `script_id` = 41205 WHERE `entry` = 412 AND `point` = 47;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 41206;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(41206, 0, 26, 0, 0, @NIGHTWATCH, 50, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'stitches attacks night watch'),
(41206, 1, 26, 0, 0, @NIGHTWATCH2, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2nd night watch attacks stitches');
UPDATE `creature_movement_template` SET `script_id` = 41206, `waittime` = 0 WHERE `entry` = 412 AND `point` = 49;

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 41202 AND `delay` = 4;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(41202, 4, 0, 6, 0, @TOWNCRIER, @CRIER_GUID, 0x10, @STRING + 2, 0, 0, 0, 0, 0, 0, 0, 'stitches - town crier 2nd yell');
UPDATE `creature_movement_template` SET `script_id` = 0 WHERE `entry` = 412 AND `point` = 69;
UPDATE `creature_movement_template` SET `script_id` = 41202 WHERE `entry` = 412 AND `point` = 50;

DELETE FROM `dbscripts_on_creature_death` WHERE `id` = 412;
INSERT INTO `dbscripts_on_creature_death` VALUES
(412, 5, 0, 6, 0, @TOWNCRIER, @CRIER_GUID, 0x10, @STRING + 3, 0, 0, 0, 0, 0, 0, 0, 'stitches - town crier 3rd yell');

DELETE FROM `db_script_string` WHERE `entry` IN (@STRING + 1, @STRING + 2, @STRING + 3);
INSERT INTO `db_script_string` VALUES
(@STRING + 1, 'An abomination of the undead is approaching!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 7, 0, NULL),
(@STRING + 2, 'The abomination has overrun the Night Watch camp! Quickly, we must intercept it before it reaches town!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 7, 0, NULL),
(@STRING + 3, 'The beast is slain! All is well in Darkshire.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 7, 0, NULL);

UPDATE `db_script_string` SET `type` = 6 WHERE `entry` IN (2000000161, 2000000162);
