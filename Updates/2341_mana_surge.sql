-- q.1957 'Mana Surges'
-- Mana Rift - must be visible for players after spawn
UPDATE gameobject SET animprogress = 255, state = 1 WHERE guid = 28294;

-- check added to prevent players to multispawn elementals
DELETE FROM dbscripts_on_quest_start WHERE id = 1957 AND delay = 4;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1957,4,31,6550,100,0,0,0,0x08,0,0,0,0,0,0,0,0,'search for 6550 - terminate if alive');
