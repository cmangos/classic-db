-- ---------------------------------------------------------
-- CompleteScript for quest Suspicious Hoofprints q.1268
-- ---------------------------------------------------------

-- Quest template
UPDATE quest_template SET CompleteScript=1268 WHERE entry=1268;

-- Add scripts
DELETE FROM dbscripts_on_quest_end WHERE id=1268;
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES 
(1268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2000020135, 0, 0, 0, 0, 0, 0, 0, 'Krog say'),
(1268, 0, 0, 10, 4972, 100000, 0, 0, 0, 0, 1, 0, 0, 0, -3155.991, -2898.267, 33.93134, 0.501176, 'Spawn Kagaro'),
(1268, 5500, 0, 0, 0, 0, 0, 0, 0, 0, 2000020136, 0, 0, 0, 0, 0, 0, 0, 'Krog say 2'),
(1268, 7000, 0, 0, 0, 0, 0, 4972, 20, 7, 2000020137, 0, 0, 0, 0, 0, 0, 0, 'Kagoro say'),
(1268, 9000, 0, 1, 66, 0, 0, 4972, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Kagoro Salute'),
(1268, 13000, 0, 20, 2, 1, 0, 4972, 20, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Kagoro run away');

-- Add movement paths
UPDATE creature_template SET MovementType=2 WHERE entry=4972;
DELETE FROM creature_movement_template WHERE entry=4972;
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id, comment) VALUES 
(4972, 0, 1, -3147.338, -2888.669, 34.24735, 2.423081, 1000, 3, NULL),

(4972, 1, 1, -3140.792, -2866.917, 34.66483, 100, 0, 0, NULL),
(4972, 1, 2, -3149.111, -2862.073, 34.17603, 100, 0, 0, NULL),
(4972, 1, 3, -3162.162, -2859.5, 34.42603, 100, 0, 0, NULL),
(4972, 1, 4, -3171.867, -2857.081, 34.07432, 100, 0, 0, NULL),
(4972, 1, 5, -3184.27, -2854.473, 38.34727, 100, 0, 0, NULL),
(4972, 1, 6, -3190.406, -2852.848, 42.3148, 100, 0, 0, NULL),
(4972, 1, 7, -3202.731, -2847.48, 38.70749, 100, 1000, 1, NULL);

-- Add texts
DELETE FROM dbscript_string WHERE entry IN(2000020135,2000020136,2000020137);
INSERT INTO dbscript_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8, sound, type, language, emote, broadcast_text_id, comment) VALUES 
(2000020135, 'Kagoro, I require your presence!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 22, 1755, 'Krog (Entry: 4926)'),
(2000020136, 'Go to the Shady Rest Inn and follow the tracks. See where they lead and report back to me.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1648, 'Krog (Entry: 4926)'),
(2000020137, 'Understood. I will return shortly.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 1, 1649, 'Kagoro (Entry: 4972)');
