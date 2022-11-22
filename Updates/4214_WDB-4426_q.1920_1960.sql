-- q.1920 'Investigate the Blue Recluse' - Alliance
-- q.1960 'Investigate the Alchemist Shop' - Horde
DELETE FROM dbscripts_on_quest_start WHERE id IN (1920,1960);
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1920,0,0,0,0,0,0,0,0,2681,0,0,0,0,0,0,0,''),
(1920,10,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,6.056,''),
(1920,4000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.7298,''),
(1960,0,0,0,0,0,0,0,0,2682,0,0,0,0,0,0,0,''),
(1960,10,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,4.748,''),
(1960,4000,3,0,0,0,0,0,0x04,0,0,0,0,0,0,0,3.054,'');
UPDATE `broadcast_text` SET `EmoteId1`= 25 WHERE `Id` IN (2681,2682);

