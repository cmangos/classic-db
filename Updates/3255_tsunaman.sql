-- Tsunaman 11862
UPDATE creature_template SET MovementType = 2 WHERE entry = 11862;
UPDATE creature SET position_x = 824.63477, position_y = 933.27136, position_z = 155.38937, orientation = 2.1658, spawndist = 0, MovementType = 2 WHERE id = 11862;
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id = 11862);
DELETE FROM creature_movement_template WHERE entry = 11862;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(11862,1,824.63477,933.27136,155.38937,2.1658,30000,0),
(11862,2,818.8743,942.00024,154.37022,2.3038,10000,1186201);
DELETE FROM dbscripts_on_creature_movement WHERE id IN (1186201);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1186201,1000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED'),
(1186201,3000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED'),
(1186201,5000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED'),
(1186201,7000,1,35,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED');
