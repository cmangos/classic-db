-- Added missing gameobject in Blackfathom Deeps. And revert it to Classic ways.
-- Now players will be able to teleport back to the waters the instance entrance after defeating Aku'Mai
-- Morridune will spawn and offer Alliance players teleport to Darnassus
-- teleport position corrected.
-- Based on https://github.com/unified-db/Database/commit/0cea47a66f90eba2299a4b9749024b9334f610c7 by @Grz3s
-- Other source: WoW Dungeon Guide
-- This closes #638

-- Altar of the Deeps : missing trap added
DELETE FROM gameobject WHERE guid = 14106;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(14106, 94040, 48, -839.619, -477.904, -33.7343, 3.14159, 0, 0, 0.926452, 0.376412, 300, 255, 1);

-- Revert spell to the one used in Classic: Players should be teleported to waters at the instance entrance, not get buff 
UPDATE gameobject_template SET data3 = 94040 WHERE entry = 103016;

DELETE FROM spell_target_position WHERE id = 8735;
INSERT INTO `spell_target_position` VALUES
(8735, 1, 4139.14, 883.43, -0.87, 4.53);

-- Morridune

-- Spawn on Aku'mai's death
DELETE FROM dbscripts_on_creature_death WHERE id = 4829; 
INSERT INTO dbscripts_on_creature_death (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(4829,2,31,6729,50,0,0,0x08,0,0,0,0,0,0,0,0,'search for 6729'), -- only one must be spawned
(4829,3,10,6729,300000,0,0,0,0,0,0,0,-857.158,-467.636,-33.9256,5.90677,'');

DELETE FROM creature WHERE id = 6729;
UPDATE creature_template SET UnitFlags = 2, MovementType = 2 WHERE entry = 6729;
DELETE FROM creature_movement_template WHERE entry = 6729;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, orientation, model1, model2) VALUES
(6729,1,-857.158,-467.636,-33.9256,1000,672901,5.90677,0,0),
(6729,2,-840.903,-474.555,-34.0673,5000,672902,1.86432,0,0);
DELETE FROM dbscripts_on_creature_movement WHERE id = 672901; 
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(672901,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'npcFlags removed'),
(672902,1,0,0,0,0,0,0,2000000813,0,0,0,0,0,0,0,''),
(672902,1,29,1,1,0,0,0,0,0,0,0,0,0,0,0,'npcFlags added'),
(672902,2,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'wp pause');
DELETE FROM db_script_string WHERE entry = 2000000813;
INSERT INTO db_script_string (entry,content_default,sound,type,language,emote,comment) VALUES
(2000000813,'Speak with me to hear my tale.',0,0,0,0,'');
-- teleport possition corrected
DELETE FROM spell_target_position WHERE id = 9268;
INSERT INTO spell_target_position (id, target_map, target_position_x, target_position_y, target_position_z, target_orientation) VALUES
(9268, 1, 9664.01, 2526.15, 1332.16, 0);
