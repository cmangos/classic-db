-- Added start scripts for quest 5821 and 5943 in Desolace

-- Timers
SET @TIMER_RESPAWN := 10 * 60;
SET @TIMER_WAIT := 10 * 60;
SET @TIMER_YELL := 5 * 60;


SET @TEXTID  := 2000000399;
SET @FACTION := 113;

-- Set Kodos' GUIDs
SET @KODO1 := 27289;
SET @KODO2 := 28290;
SET @CORK := (SELECT `guid` FROM `creature` WHERE `id` = 11625);

-- Set quest scripts
UPDATE `quest_template` SET `StartScript` = 5821 WHERE `entry` = 5821;
UPDATE `quest_template` SET `StartScript` = 5943 WHERE `entry` = 5943;

-- Quest start scripts
DELETE FROM `dbscripts_on_quest_start` WHERE `id` IN (5943, 5821);
INSERT INTO `dbscripts_on_quest_start` VALUES
(5821, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run off'),
(5821, 1, 25, 0, 0, 11626, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
(5821, 2, 25, 0, 0, 11564, @KODO1, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run off'),
(5821, 3, 25, 0, 0, 11564, @KODO2, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run off'),
(5821, 1, 29, 1+2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove quest and Gossip Flag'),
(5821, 4, 22, @FACTION, 0x01 | 0x08 | 0x12 | 0x20, 11626, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - faction update'),
(5821, 5, 22, @FACTION, 0x01 | 0x08 | 0x12 | 0x20, 11564, @KODO1, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - faction update'),
(5821, 6, 22, @FACTION, 0x01 | 0x08 | 0x12 | 0x20, 11564, @KODO2, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - faction update'),
(5821, 6, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'unpause WP movement');
INSERT INTO `dbscripts_on_quest_start` VALUES
(5943, 0, 25, 0, 0, 11625, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - run off'),
(5943, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger - run off'),
(5943, 0, 25, 0, 0, 11564, @KODO1, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - run off'),
(5943, 0, 25, 0, 0, 11564, @KODO2, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - run off'),
(5943, 1, 29, 1+2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove quest and Gossip Flag'),
(5943, 0, 22, @FACTION, 0x01 | 0x08 | 0x12 | 0x20, 11625, 60, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - faction update'),
(5943, 0, 22, @FACTION, 0x01 | 0x08 | 0x12 | 0x20, 11564, @KODO1, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo1 - faction update'),
(5943, 0, 22, @FACTION, 0x01 | 0x08 | 0x12 | 0x20, 11564, @KODO2, 7 | 0x10, 0, 0, 0, 0, 0, 0, 0, 0, 'Kodo2 - faction update'),
(5943, 2, 32, 0, 0, 11625, 40, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork - unpause WP movement');

-- Prevent Rigger from being too far on some scripts
UPDATE `dbscripts_on_creature_movement` SET `search_radius` = 100 WHERE `id` IN (1162501, 11625209, 11625197) AND `search_radius` IN (40, 60);

-- Add reinit faction/speed script after "Gizelton Caravan" quest completion
UPDATE `creature_movement_template` SET `script_id` = 1162501 WHERE `entry` = 11625 AND `point` = 241;

-- Various NPC flag updates now SD2 is also in to ensure quests are only available when needed
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1162577 AND `command` = 29 AND `delay` = @TIMER_YELL;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(1162577, @TIMER_YELL, 29, 2, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cork remove questgiver status');
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 11625209 AND `command` = 29 AND `delay` = @TIMER_YELL;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(11625209, @TIMER_YELL, 29, 2, 0x02, 11626, 100, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Rigger remove questgiver status');
