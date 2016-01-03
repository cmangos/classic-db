-- Added script support and miscellaneous fixes to the Gizelton Caravan in Desolace
-- The caravan will now stop 10 min at each end of its path (north, and south) and
-- one of the twi Gizelton brother will spawn a specific vendor NPC at those points
-- The caravan will also wait for 5 min soon after departing to give players the opportunity
-- to take the escort quests
-- Thanks @Rushor for researching and provinding data
-- Thanks @Zingzah for researching, provinding data and doing a lot of preliminary work, some of them are included in this fix
-- This closes #686 

-- Timers
SET @TIMER_RESPAWN := 10 * 60;
SET @TIMER_WAIT := 10 * 60;
SET @TIMER_YELL := 5 * 60;

SET @TEXTID  := 2000000399;
SET @FACTION := 113;

-- Set Kodos' GUIDs
SET @KODO1 := (SELECT `guid` FROM `creature` WHERE `id` = 11564 AND `MovementType` = 2 LIMIT 0, 1);
SET @KODO2 := (SELECT `guid` FROM `creature` WHERE `id` = 11564 AND `MovementType` = 2 LIMIT 1, 1);
SET @CORK := (SELECT `guid` FROM `creature` WHERE `id` = 11625);

-- Link caravan NPCs: they share spawn/despawn and aggro. Cork Gizelton leads the caravan
DELETE FROM `creature_linking_template` WHERE `entry` IN (11564, 11626);
INSERT INTO `creature_linking_template` VALUES
(11626, 1, 11625, 1 + 2 + 16 + 128 + 512, 0);

DELETE FROM `creature_linking` WHERE `guid` IN (@KODO1, @KODO2);
INSERT INTO `creature_linking` VALUES
(@KODO1, @CORK, 1 + 2 + 16 + 128 + 512),
(@KODO2, @CORK, 1 + 2 + 16 + 128 + 512);

-- Adjust respawn time and movement
UPDATE `creature` SET `spawntimesecs` = @TIMER_RESPAWN, `MovementType` = 0, `spawndist` = 0 WHERE `id` IN (11564, 11626);
UPDATE `creature` SET `spawntimesecs` = @TIMER_RESPAWN, `MovementType` = 2 WHERE `id` = 11625;

-- Clean movement table: only Cork will have a pathway
DELETE FROM `creature_movement` WHERE `id` IN (SELECT `guid` FROM `creature` WHERE `id` IN (11564, 11625, 11626));

-- Optional: make the NPCs move even when no players are in the vicinity
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags` + 4096 WHERE `Entry` IN (11564, 11625, 11626);

-- At quest proposal
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1162577, 11625209);
-- Cork proposes: Bodyguard for Hire
INSERT INTO `dbscripts_on_creature_movement` VALUES
(1162577, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'pause WP movement'),
(1162577, 1, 0, 0, 0, 0, 0, 0, @TEXTID + 2, 0, 0, 0, 0, 0, 0, 0, 'Cork Yell Bodyguards Quest'),
(1162577, 2, 29, 2, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork add questgiver status'),
(1162577, @TIMER_YELL, 29, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork remove questgiver status'),
(1162577, @TIMER_YELL, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');
-- Rigger proposes: Gizelton Caravan
INSERT INTO `dbscripts_on_creature_movement` VALUES
(11625209, 0, 32, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork pause WP movement'),
(11625209, 1, 0, 0, 0, 11626, 60, 7, @TEXTID + 4, 0, 0, 0, 0, 0, 0, 0, 'Rigger Yell Caravan Quest'),
(11625209, 2, 29, 2, 0x01, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger add questgiver status'),
(11625209, @TIMER_YELL, 29, 2, 2, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger remove questgiver status'),
(11625209, @TIMER_YELL, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork unpause WP movement');

-- Generic script to make all the caravan run and clean-up flags/faction changes from the escort quests (called at several places)
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1162501;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(1162501, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run on'),
(1162501, 0, 25, 1, 0, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run on'),
(1162501, 0, 29, 1+2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork remove questgiver/gossip status'),
(1162501, 0, 29, 1+2, 0x02, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger remove questgiver/gossip status'),
(1162501, 0, 25, 1, 0, 11564, @KODO1, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run on'),
(1162501, 0, 25, 1, 0, 11564, @KODO2, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run on'),
(1162501, 1, 22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - restore faction'),
(1162501, 1, 22, 0, 0, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - restore faction'),
(1162501, 1, 22, 0, 0, 11564, @KODO1, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - restore faction'),
(1162501, 1, 22, 0, 0, 11564, @KODO2, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - restore faction');

-- At Northern stop
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1162556;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(1162556, 0, 10, 12245, @TIMER_WAIT * 1000, 0, 0, 0, 0, 0, 0, 0, -692.743, 1522.2, 90.3611, 0.558505, 'Vendor-tron 1000 Summon'),
(1162556, 0, 29, 1, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Add Cork Gossip Flag'),
(1162556, @TIMER_WAIT - 10, 0, 0, 0, 0, 0, 0, @TEXTID + 1, 0, 0, 0, 0, 0, 0, 0, 'Cork departing text'),
(1162556, @TIMER_WAIT, 29, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Cork Gossip Flag');
-- At Southern stop
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 11625197;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(11625197, 0, 10, 12246, @TIMER_WAIT * 1000, 11626, 40, 0, 0, 0, 0, 0, -1926.3, 2412.79, 60.6956, 0.174533, 'Super-seller 680 Summon'),
(11625197, 0, 29, 1, 0x01, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Add Rigger Gossip Flag'),
(11625197, @TIMER_WAIT - 10, 0, 0, 0, 11626, 60, 7, @TEXTID + 3, 0, 0, 0, 0, 0, 0, 0, 'Rigger departing text'),
(11625197, @TIMER_WAIT, 29, 1, 2, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Rigger Gossip Flag');
