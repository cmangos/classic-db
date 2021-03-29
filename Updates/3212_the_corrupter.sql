-- q.1482 'The Corrupter'
DELETE FROM dbscripts_on_quest_end WHERE id = 1482;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(1482,0,29,2,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags removed'),
(1482,10,21,1,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'active'),
(1482,100,0,0,0,0,0,0,0,2000003244,0,0,0,0,0,0,0,''),
(1482,3000,0,0,0,0,0,0,0,2000003245,0,0,0,0,0,0,0,''),
(1482,6000,10,5773,24000,0,0,0,0x08,0,0,0,0,-1162.5685,1897.8347,88.96961,5.5179,'summon: Jugkar Grim\'rod\'s Image'),
(1482,6100,3,0,0,0,5773,30,7,0,0,0,0,-1152.5128,1888.1758,88.95251,100,'buddy 1: move'),
(1482,9100,1,25,0,0,5773,30,7,0,0,0,0,0,0,0,0,'buddy 1: emote'),
(1482,11000,0,0,0,0,5773,30,7,2000003246,0,0,0,0,0,0,0,'buddy 1: text'),
(1482,13000,10,5772,15000,0,0,0,0x08,0,0,0,0,-1156.7789,1898.3978,88.94284,5.115,'summon: Lord Azrethoc\'s Image'),
(1482,13100,3,0,0,0,5772,30,7,0,0,0,0,-1154.3131,1892.609,88.95251,100,'buddy 2: move'),
(1482,17000,0,0,0,0,5772,30,7,2000003247,0,0,0,0,0,0,0,'buddy 2: text'),
(1482,20000,15,7961,0,0,5772,30,7,0,0,0,0,0,0,0,0,'buddy 2: cast: 7961'),
(1482,23000,0,0,0,0,5772,30,7,2000003248,0,0,0,0,0,0,0,'buddy 2: text'),
(1482,24000,0,0,0,0,5772,30,7,2000003249,0,0,0,0,0,0,0,'buddy 2: text'),
(1482,27000,1,11,0,0,5772,30,7,0,0,0,0,0,0,0,0,'buddy 2: emote'),
(1482,28000,0,0,0,0,5773,30,7,2000003250,0,0,0,0,0,0,0,'buddy 1: text'),
(1482,32000,0,0,0,0,0,0,0,2000003251,0,0,0,0,0,0,0,''),
(1482,32100,21,0,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'unactive'),
(1482,32200,29,2,1,0,0,0,0x04,0,0,0,0,0,0,0,0,'NPCFlags added');
UPDATE quest_template SET CompleteScript = 1482 WHERE entry = 1482;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003244 AND 2000003251;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003244,'This should only take a moment, $N.',0,0,1,1,NULL),
(2000003245,'I call your true name, Azrethoc. Show your visage to me!',0,0,8,5,NULL),
(2000003246,'Pathetic Forsaken weakling. You wish to see my master? So be it.',0,0,1,0,NULL),
(2000003247,'Who dares to seek me out?!',0,0,8,0,NULL),
(2000003248,'Insects!',0,0,8,0,NULL),
(2000003249,'Come! Come to your deaths--if you dare!',0,0,8,0,NULL),
(2000003250,'Yes, come. My master and I shall be waiting.',0,0,1,0,NULL),
(2000003251,'An interesting turning of events.',0,0,1,1,NULL);

-- Jugkar Grim'rod's Image 5773
UPDATE creature_template SET UnitFlags = 33555200, MinLevel = 40, MaxLevel = 40 WHERE entry = 5773;
-- Lord Azrethoc\'s Image 5772
UPDATE creature_template SET Faction = 90, UnitFlags = 33555200, MinLevel = 40, MaxLevel = 40 WHERE entry = 5772;
