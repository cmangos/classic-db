-- Stitches event improvement
-- Add missing spawns and yells
-- Fix NPC 888 (Watcher Dodds) no longer attacking Stitches after Relation system roll out
/*
-- Watchers from spot 1 (crossroad camp)
1000 Watcher Blomberg
1001 Watcher Hutchins
1436 Watcher Cutford
The two watchers already spawned also move in position when Stitches approaches

-- Watchers from spot 2 (Rotting Orchad)
1098 Watcher Merant
1099 Watcher Gelwin
1100 Watcher Selkin
1101 Watcher Thayer

-- Watchers from sport 3 (Darkshire southern entrance)
1203 Watcher Sarys
1204 Watcher Corwin
*/

-- Fixed mixed up script texts and add new one to improve Stitches event
UPDATE dbscript_string SET content_default='An abomination of the undead is approaching!', type=6, language=7 WHERE entry=2000000186;

SET @ENTRY := 2000000243;

DELETE FROM dbscript_string WHERE entry IN (@ENTRY, @ENTRY + 1);
INSERT INTO dbscript_string VALUES
(@ENTRY, 'Defend yourself, fool!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@ENTRY + 1, 'Beware! Beware! A threat lurks in the wild! Night Watchers, be on the alert!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL);

UPDATE dbscripts_on_quest_start SET dataint=@ENTRY WHERE id=3982 AND delay=1 AND command=0;

-- Spawn missing Watchers in three spots by scripts
DELETE FROM dbscripts_on_creature_movement WHERE id IN (41244, 41275, 41206) OR (id=41202 AND delay>4);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(41244, 1, 10, 1436, 15 * 60 * 1000, 0, 0, 0, 8, 0, 0, 0, 0, -10928.79, -385.59, 39.91, 1.91124, 'spawn Watcher Cutford'),
(41202, 5, 10, 1099, 15 * 60 * 1000, 0, 0, 0, 8, 0, 0, 0, 0, -10830.38, -826.46, 55.55, 1.98424, 'spawn Watcher Gelwin'),
(41202, 5, 10, 1098, 15 * 60 * 1000, 0, 0, 0, 8, 0, 0, 0, 0, -10829.99, -823.53, 55.92, 2.08049, 'spawn Watcher Merant'),
(41202, 5, 10, 1100, 15 * 60 * 1000, 0, 0, 0, 8, 0, 0, 0, 0, -10827.13, -825.25, 55.64, 2.07264, 'spawn Watcher Selkin'),
(41202, 5, 10, 1101, 15 * 60 * 1000, 0, 0, 0, 8, 0, 0, 0, 0, -10833.00, -824.32, 55.85, 1.83859, 'spawn Watcher Thayer'),
(41275, 0, 10, 1204, 15 * 60 * 1000, 0, 0, 0, 8, 0, 0, 0, 0, -10572.31, -1171.08, 28.13, 4.16208, 'spawn Watcher Corwin'),
(41275, 0, 10, 1203, 15 * 60 * 1000, 0, 0, 0, 8, 0, 0, 0, 0, -10574.46, -1170.31, 28.22, 4.16208, 'spawn Watcher Sarys');


-- Clean-up scripts affectation in movement template and remove now obsolete scripts (handled in new scripts)
UPDATE creature_movement_template SET script_id=41244 WHERE entry=412 AND point=44;
UPDATE creature_movement_template SET script_id=41275 WHERE entry=412 AND point=75;
DELETE FROM dbscripts_on_creature_movement WHERE id=41206;
UPDATE creature_movement_template SET script_id=0 WHERE script_id=41206;

DELETE FROM dbscripts_on_creature_movement WHERE id=143601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(143601, 4, 10, 1000, 15 * 60 * 1000, 0, 0, 0, 8, 0, 0, 0, 0, -10930.64, -386.44, 40.12, 0.92321, 'spawn Watcher Blomberg'),
(143601, 4, 10, 1001, 15 * 60 * 1000, 0, 0, 0, 8, 0, 0, 0, 0, -10930.64, -386.44, 40.12, 0.92321, 'spawn Watcher Hutchins');

-- Add script to NPC 1436 (Watcher Cutford): he will handle movements and event in Night Watch camp when Stitches arrives
UPDATE creature_template SET MovementType=2 WHERE Entry=1436;

DELETE FROM creature_movement_template WHERE entry=1436;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, waittime, script_id, orientation) VALUES
(1436, 0, 1, -10928.79, -385.59, 39.91, 0, 143601, 1.91124),
(1436, 0, 2, -10928.79, -385.59, 39.91, 3600000, 0, 1.91124);

DELETE FROM dbscripts_on_creature_movement WHERE id=143601;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(143601, 2, 0, 0, 0, 0, 0, 0, 0, @ENTRY + 1, 0, 0, 0, 0, 0, 0, 0, 'Watcher Cutford - yell'),
(143601, 4, 10, 1000, 15 * 60 * 1000, 0, 0, 0, 8, 0, 0, 0, 0, -10930.64, -386.44, 40.12, 1.14233, 'spawn Watcher Blomberg'),
(143601, 4, 10, 1001, 15 * 60 * 1001, 0, 0, 0, 8, 0, 0, 0, 0, -10930.64, -386.44, 40.12, 1.23396, 'spawn Watcher Hutchins'),
(143601, 5, 25, 1, 0, 0, 1000, 30, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Watcher Blomberg run ON'),
(143601, 5, 25, 1, 0, 0, 1001, 30, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Watcher Hutchins run ON'),
(143601, 5, 25, 1, 0, 0, 888, 30, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Watcher Dodds run ON'),
(143601, 5, 25, 1, 0, 0, 499, 30, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Watcher Paige run ON'),
(143601, 6, 3, 0, 0, 0, 1000, 30, 7, 0, 0, 0, 0, -10903.65, -384.18, 40.5, 1.14233, 'move Watcher Blomberg'),
(143601, 6, 3, 0, 0, 0, 1001, 30, 7, 0, 0, 0, 0, -10905.29, -379.75, 40.2, 1.23396, 'move Watcher Hutchins'),
(143601, 6, 3, 0, 0, 0, 888, 30, 7, 0, 0, 0, 0, -10908.77, -383.38, 40.53, 1.11302, 'move Watcher Dodds'),
(143601, 6, 3, 0, 0, 0, 499, 30, 7, 0, 0, 0, 0, -10899.78, -382.45, 40.32, 1.32194, 'move Watcher Paige'),
(143601, 10, 3, 0, 0, 0, 1000, 30, 7, 0, 0, 0, 0, 0, 0, 0, 1.14233, 'orientation Watcher Blomberg'),
(143601, 10, 3, 0, 0, 0, 1001, 30, 7, 0, 0, 0, 0, 0, 0, 0, 1.23396, 'orientation Watcher Hutchins'),
(143601, 10, 3, 0, 0, 0, 888, 30, 7, 0, 0, 0, 0, 0, 0, 0, 1.11302, 'orientation Watcher Dodds'),
(143601, 10, 5, 46, 512, 0, 888, 30, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove flag Unit Immune - Watcher Dodds'), -- is readded on evade/respawn through ACID
(143601, 10, 3, 0, 0, 0, 499, 30, 7, 0, 0, 0, 0, 0, 0, 0, 1.32194, 'orientation Watcher Paige');

-- Add missing equipment to NPC 1000 (Watcher Hutchins)
UPDATE creature_template SET EquipmentTemplateId=1001 WHERE Entry=1000;

-- Link all NPCs in Night Watch Camp together
DELETE FROM creature_linking_template WHERE master_entry=888 OR entry IN (1436, 1001, 499, 1000);
INSERT INTO creature_linking_template VALUES
(1436, 0, 888, 3, 0),
(1001, 0, 888, 3, 0),
(499, 0, 888, 3, 0),
(1000, 0, 888, 3, 0);
