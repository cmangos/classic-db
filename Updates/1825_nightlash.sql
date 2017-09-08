-- Nightlash -- summoned
-- Static spawn removed
DELETE FROM creature WHERE guid=28379;
DELETE FROM creature_addon WHERE guid=28379;
DELETE FROM creature_movement WHERE id=28379;
DELETE FROM game_event_creature WHERE guid=28379;
DELETE FROM game_event_creature_data WHERE guid=28379;
DELETE FROM creature_battleground WHERE guid=28379;
DELETE FROM creature_linking WHERE guid=28379 OR master_guid=28379;
-- movement update
UPDATE creature_template SET MovementType = 1 WHERE Entry = 1983;

-- Rot Hide Gladerunner & Rot Hide Mystic
-- 10% chance to summon Nightlash on death
DELETE FROM dbscripts_on_relay WHERE id = 1;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1,0,31,1983,255,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 1983'), -- only one is allowed
(1,1,10,1983,300000,0,0,0,0x08,0,0,0,0,1073.84,1543.37,28.6752,0.174533,'summon Nightlash');
