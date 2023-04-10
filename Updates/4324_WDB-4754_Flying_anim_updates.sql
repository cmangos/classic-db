-- Generic Relay
-- In the end this might now be the same as spawn_data_template 3
-- UNIT_BYTE1_FLAG_FLY_ANIM does not exist in classicmangos
DELETE FROM dbscripts_on_creature_movement WHERE id IN (30601);
DELETE FROM dbscripts_on_relay WHERE id IN (30601);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30601,0,39,1,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - FLY ANIM ON - RUN ON'); -- without UNIT_BYTE1_FLAG_FLY_ANIM as nonexistant in classicmangos
-- for generic creature_spawn_data_template
DELETE FROM creature_spawn_data_template WHERE entry = 20056;
INSERT INTO creature_spawn_data_template (`Entry`, `SpawnFlags`, `RelayId`) VALUES 
(20056,3,30601);

DELETE FROM dbscripts_on_relay WHERE id IN (30602); -- Add generic Hover OFF dbscript
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(30602,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'GENERIC - FLY ANIM OFF - RUN OFF');

