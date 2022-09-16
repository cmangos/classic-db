-- Urok Doomhowl 10584 - Update
-- Part of Urok Doomhowl 10584 EAI
DELETE FROM dbscripts_on_relay WHERE `id` IN (9999);
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(9999,1,40,0,0,0,175584,50,7,0,0,0,0,0,0,0,0,'despawn object');
UPDATE `broadcast_text` SET `ChatTypeID` = 1 WHERE `Id` = 5832; -- Yell

