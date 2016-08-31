-- William and Donna - Stormwind
-- old script redone using current db_scripts. 
UPDATE creature_movement_template SET script_id = 253301 WHERE entry = 2533 AND point = 1;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 5;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 8;
UPDATE creature_movement_template SET script_id = 253303 WHERE entry = 2533 AND point = 11;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 16;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 19;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 28;
UPDATE creature_movement_template SET script_id = 253303 WHERE entry = 2533 AND point = 38;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 44;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 49;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 54;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 62;
UPDATE creature_movement_template SET script_id = 253302 WHERE entry = 2533 AND point = 67;
UPDATE creature_movement_template SET script_id = 253304 WHERE entry = 2533 AND point = 72;
DELETE FROM dbscripts_on_creature_movement WHERE id BETWEEN 253301 AND 253306;
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(253301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(253301,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'William - active'),
(253301,0,21,1,0,2532,79721,7 | 0x10,0,0,0,0,0,0,0,0,'Donna - active'),
(253301,1,0,0,0,0,0,0,2000005057,2000005058,2000005060,2000005061,0,0,0,0,''),
(253301,2,31,2532,100,0,0,0,0,0,0,0,0,0,0,0,''),
(253301,3,0,0,0,2532,79721,7,2000005062,2000005063,0,0,0,0,0,0,''),
(253302,1,0,0,0,0,0,0,2000005057,2000005058,2000005060,2000005061,0,0,0,0,''),
(253302,2,31,2532,100,0,0,0,0,0,0,0,0,0,0,0,''),
(253302,3,0,0,0,2532,79721,7,2000005062,2000005063,0,0,0,0,0,0,''),
(253303,1,0,0,0,0,0,0,2000005057,2000005058,2000005059,2000005061,0,0,0,0,''),
(253303,2,31,2532,100,0,0,0,0,0,0,0,0,0,0,0,''),
(253303,3,0,0,0,2532,79721,7,2000005062,2000005063,0,0,0,0,0,0,''),
(253304,1,0,0,0,0,0,0,2000005057,2000005058,2000005060,2000005061,0,0,0,0,''),
(253304,2,31,2532,100,0,0,0,0,0,0,0,0,0,0,0,''),
(253304,3,0,0,0,2532,79721,7,2000005062,2000005063,0,0,0,0,0,0,''),
(253304,3,21,0,0,2532,79721,7 | 0x10,0,0,0,0,0,0,0,0,'Donna - unactive'),
(253304,4,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'William - unactive');
