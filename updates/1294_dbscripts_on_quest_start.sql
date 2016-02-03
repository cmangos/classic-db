-- Complete rework of the Lore Keeper of Norgannon event in Uldaman by @Grz3s
-- q.2278 'The Platinum Discs'
DELETE FROM dbscripts_on_quest_start WHERE id = 2278;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(2278,1,31,7172,50,0,0,0x08,0,0,0,0,0,0,0,0,'search for 7172'), -- only one must be spawned
(2278,2,10,7172,0,0,0,0,0,0,0,0,148.761,309.447,-52.2059,5.16299,'summon: Lore Keeper of Norgannon'),
(2278,4,0,0,0,7172,50,7,2000000817,0,0,0,0,0,0,0,'7172 yell');

DELETE FROM db_script_string WHERE entry IN (2000000817,2000000818);
INSERT INTO db_script_string (entry, content_default, sound, type, language, emote, comment) VALUES 
(2000000817,'Greetings, mortals! I have been activated by the Discs of Norgannon to assist you!',0,1,0,0,NULL),
(2000000818,'The discs are now ready! Engage the Discs of Norgannon once again to retrieve them!',0,1,0,0,NULL);

DELETE FROM dbscripts_on_gossip WHERE id IN (569,571,575);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(569, 0, 43, 0, 0, 170353, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'reset dwarf'), -- in case if someone else is in this q. also
(569, 1, 13, 0, 0, 142488, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'activate trogg'),
(571, 0, 43, 0, 0, 142488, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'reset trogg'),  -- in case if someone else is in this q. also or player dont want to read story :)
(571, 1, 13, 0, 0, 170353, 20, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'activate dwarf'),
(575, 0, 0, 0, 0, 0, 0, 0, 2000000818, 0, 0, 0, 0, 0, 0, 0, '7172 yell');

UPDATE gossip_menu_option SET action_script_id = 569 WHERE menu_id = 569;
UPDATE gossip_menu_option SET action_script_id = 571 WHERE menu_id = 571;
UPDATE gossip_menu_option SET action_script_id = 575 WHERE menu_id = 575;
