-- Rework script for NPCs 11260 (Northshire Peasant) so they no longer chop the air or wear wood toward the trees instead of the lumbmill
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 1126001 AND 1126005;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1126001, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1126002, 1, 1, 234, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1126003, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1126003, 1, 23, 89, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1126004, 1, 23, 89, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(1126005, 1, 23, 308, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE creature_movement SET script_id=1126003 WHERE id=80127 AND point=1;
UPDATE creature_movement SET script_id=1126005 WHERE id=80127 AND point=4;
UPDATE creature_movement SET script_id=1126002 WHERE id=80127 AND point=7;

UPDATE creature_movement SET script_id=1126003 WHERE id=80137 AND point=1;
UPDATE creature_movement SET script_id=1126005 WHERE id=80137 AND point=3;
UPDATE creature_movement SET script_id=1126002 WHERE id=80137 AND point=5;

UPDATE creature_movement SET script_id=1126001 WHERE id=80145 AND point=1;
UPDATE creature_movement SET script_id=1126002 WHERE id=80145 AND point=4;
UPDATE creature_movement SET script_id=1126004 WHERE id=80145 AND point=5;
UPDATE creature_movement SET script_id=1126005 WHERE id=80145 AND point=8;

UPDATE creature_movement SET script_id=1126003 WHERE id=80262 AND point=1;
UPDATE creature_movement SET script_id=1126005 WHERE id=80262 AND point=5;
UPDATE creature_movement SET script_id=1126002 WHERE id=80262 AND point=8;

-- Update state for various miners in the world so they use the proper animation
UPDATE creature_template_addon SET emote=233 WHERE entry IN (8917, 5843); -- Quarry Slave, Slave Worker
DELETE FROM creature_addon WHERE guid IN (3749, 5229, 5225);
