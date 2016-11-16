-- This is the event that occurs at 8pm every evening. Preceding this are reminders at 30, 15 and 5 minutes before the event starts by Darkcaller Yanka.
-- Upon starting, Sylvanas is summoned as the Banshee Queen and delivers her speech after which,
-- wickerman embers are summoned around the wickerman (which give a buff) and Darkcaller Yanka starts dancing.
-- This lasts the night when the dancing stops and the embers despawn. 

SET @IN_MINUTE = 60;
SET @IN_HOUR = 3600;

/* Wickerman Embers */
DELETE FROM `game_event` WHERE entry = 24;
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `linkedto`) VALUES (24, '2016-10-18 20:01:07', '2020-12-31 22:59:59', 1440, 600, 0, 'Hallow\'s End - Wickerman Ember\'s', 12);

DELETE FROM gameobject WHERE guid IN (37875, 37876, 37877, 37878, 37886, 37887);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(37875, 180437, 0, 1739.410034, 508.948639, 40.772842, 4.315085, 0, 0, 0, 0, 300, 100, 1),
(37876, 180437, 0, 1722.443481, 508.140778, 40.494492, 5.355066, 0, 0, 0, 0, 300, 100, 1),
(37877, 180437, 0, 1721.620728, 499.970856, 41.403786, 0.032173, 0, 0, 0, 0, 300, 100, 1),
(37878, 180437, 0, 1743.792236, 501.707825, 41.423393, 3.427584, 0, 0, 0, 0, 300, 100, 1),
(37886, 180437, 0, 1734.531494, 510.871857, 40.652969, 4.601748, 0, 0, 0, 0, 300, 100, 1),
(37887, 180437, 0, 1733.452759, 494.314789, 42.159492, 1.446059, 0, 0, 0, 0, 300, 100, 1);

DELETE FROM game_event_gameobject WHERE guid IN (37875, 37876, 37877, 37878, 37886, 37887);
INSERT INTO game_event_gameobject VALUES
(37875, 24),
(37876, 24),
(37877, 24),
(37878, 24),
(37886, 24),
(37887, 24);

/* Yanka calls before Wickerman lighting */
-- Linked event
DELETE FROM `game_event` WHERE entry = 25;
INSERT INTO `game_event` (`entry`, `start_time`, `end_time`, `occurence`, `length`, `holiday`, `description`, `linkedto`) VALUES (25, '2016-10-18 19:30:00', '2020-12-31 22:59:59', 1440, 45, 0, 'Hallow\'s End - Banshee Queen', 12);

-- Invisible trigger
DELETE FROM creature WHERE guid = 160005;
INSERT INTO `creature` VALUES
(160005, 12999, 0, 0, 0, 1732.31, 520.874, 36.3326, 1.30942, 300, 0, 0, 9763, 0, 0, 2);
DELETE FROM creature_movement WHERE id = 160005;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(160005, 1, 1732.31, 520.874, 36.3326, 86400000, 16000501, 0, 0, 0, 0, 0, 0, 0, 1.30942, 0, 0);
DELETE FROM game_event_creature WHERE guid = 160005;
INSERT INTO game_event_creature VALUES
(160005, 25);

-- Script for Yanka announces
DELETE FROM dbscripts_on_creature_movement WHERE id=16000501;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(16000501, 1, 0, 0, 0, 15197, 20, 0, 2000000508, 0, 0, 0, 0, 0, 0, 0, 'Yanka 30 Mins to Festival Start'),
(16000501, 15*@IN_MINUTE, 0, 0, 0, 15197, 20, 0, 2000000509, 0, 0, 0, 0, 0, 0, 0, 'Yanka 15 Mins to Festival Start'),
(16000501, 25*@IN_MINUTE, 0, 0, 0, 15197, 20, 0, 2000000510, 0, 0, 0, 0, 0, 0, 0, 'Yanka 5 Mins to Festival Start'),
(16000501, 30*@IN_MINUTE, 0, 0, 0, 15197, 20, 0, 2000000511, 0, 0, 0, 0, 0, 0, 0, 'Yanka Festival Start'),
(16000501, 30*@IN_MINUTE+1, 10, 15193, 72000, 0, 0, 0, 0, 0, 0, 0, 1734.6, 508.803, 41.2847, 1.6173, 'summon Banshee Queen'),
(16000501, 10*@IN_HOUR, 43, 0, 0, 180433, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Reset Wickerman'),
(16000501, 10*@IN_HOUR, 1, 26, 0, 15197, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Yanka Stops Dancing');

/* Banshee Quen event */

-- Adding WP Movement to Banshee Queen, increasing size to match screenshot, setting non-attackable and always active
UPDATE `creature_template` SET `MovementType`= 2, `Scale`= 2, `UnitFlags`= 130, `ExtraFlags`= 4096  WHERE `Entry`= 15193;
DELETE FROM creature_movement_template WHERE entry = 15193;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `orientation`, `model1`, `model2`) VALUES
(15193, 1, 1734.6, 508.803, 41.2847, 72000, 1519301, 0, 0, 0, 0, 0, 0, 0, 1.6173, 0, 0);

-- Adding Ghost Visual Aura (22650)
DELETE FROM creature_template_addon WHERE entry=15193;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(15193, 0, 0, 0, 0, 0, 0, '22650');

-- DBscript for Banshee Queen event
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1519301, 1, 0, 0, 0, 0, 0, 0, 2000000500, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 1'),
(1519301, 9, 0, 0, 0, 0, 0, 0, 2000000501, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 2'),
(1519301, 18, 0, 0, 0, 0, 0, 0, 2000000502, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 3'),
(1519301, 27, 0, 0, 0, 0, 0, 0, 2000000503, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 4'),
(1519301, 49, 0, 0, 0, 0, 0, 0, 2000000504, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 5'),
(1519301, 58, 0, 0, 0, 0, 0, 0, 2000000505, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Speech Part 6'),
(1519301, 68, 15, 14292, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Banshee Queen Throw Torch'),
(1519301, 70, 13, 0, 0, 180433, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Activate Wickerman'),
(1519301, 71, 1, 10, 0, 15197, 50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Yanka Dance');

-- Add Wickerman as target for spell Tosing Torch
DELETE FROM spell_script_target WHERE entry=14292;
INSERT INTO `spell_script_target` VALUES (14292, 0, 180433, 0);

--  Sylvanas' speech texts to db_script_string
DELETE FROM db_script_string WHERE entry BETWEEN 2000000500 AND 2000000511;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000000500, 'Children of the Night, heed your Queen\'s call!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1, 22, 'Banshee Queen Speech Part 1'),
(2000000501, 'I join you in celebration of this most revered of nights - the night we Forsaken broke the Scourge\'s yoke of oppression!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1, 1, 'Banshee Queen Speech Part 2'),
(2000000502, 'It is this night that our enemies fear us the most. It is THIS night that we show our enemies what it means to stand against the Forsaken!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1, 1, 'Banshee Queen Speech Part 3'),
(2000000503, 'We burn the effigy of the Wickerman as a symbol of our struggle against those who would oppose us. We wear the ashes of the burnt Wickerman as a symbol of our neverending fight against those who would enslave us.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1, 1, 'Banshee Queen Speech Part 4'),
(2000000504, 'Now is the time to shake the world to its foundations! NOW is the time to remind those who would enslave us that we shall never yield!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1, 5, 'Banshee Queen Speech Part 5'),
(2000000505, 'NOW is the time of the Forsaken! Power to the Forsaken - NOW AND FOREVER!!!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1, 15, 'Banshee Queen Speech Part 6'),
(2000000508, 'The burning of the Wickerman will begin in thirty minutes! Come to the festival - located just west of the Undercity - and celebrate Hallow\'s End and our liberation from the Scourge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1, 1, 'Yanka 30 Mins to Festival Start'),
(2000000509, 'The burning of the Wickerman will begin in fifteen minutes! Come to the festival - located just west of the Undercity - and celebrate Hallow\'s End and our liberation from the Scourge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1, 1, 'Yanka 15 Mins to Festival Start'),
(2000000510, 'The burning of the Wickerman will begin in five minutes! Come to the festival - located just west of the Undercity - and celebrate Hallow\'s End and our liberation from the Scourge!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1, 1, 'Yanka 5 Mins to Festival Start'),
(2000000511, 'The Wickerman Festival now begins! Power to the Forsaken!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 1, 1, 'Yanka Festival Start');
