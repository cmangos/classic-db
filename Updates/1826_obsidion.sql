-- Rise, Obsidion! (Entry: 3566)
-- Script based on this video: https://www.youtube.com/watch?v=BAmAVlzp5bc

UPDATE `creature_template` SET `FactionAlliance`=14, `FactionHorde`=14 WHERE `Entry`=8400; -- Obsidion faction (This is from a tbc sniff)

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 1381 AND 1386;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES 
(1381, 37, 8391, 80), -- Lathoric
(1382, 37, 8421, 10), -- Dorius
(1383, 37, 8400, 80), -- Obsidion
(1384, -3, 1383, 0), -- Obsidion NOT found
(1385, -2, 1381, 1382),
(1386, -2, 1384, 1385); -- Return if Lathoric or Dorius is found or if Obsidion is not found

DELETE FROM creature_linking_template WHERE entry=8421; -- Dorius should not be linked with Obsidion and Lathoric

UPDATE creature_template SET MovementType=0 WHERE entry=8421; -- Dorius - Set idle movement
DELETE FROM dbscripts_on_creature_movement WHERE id=842101; -- Remove old script
DELETE FROM creature_movement_template WHERE entry=8421; -- Remove old path

-- Start event on Quest Accept
DELETE FROM `dbscripts_on_quest_start` WHERE `id` IN(3566);
INSERT INTO `dbscripts_on_quest_start` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(3566,0,34,1386,0,0,0,0,0,0,0,0,0,'Terminate Script if Lathoric or Dorius is found or if Obsidion is not found',0,0,0,0),
(3566,1,10,8421,62500,0,0,0,0,0,0,0,0,'Summon Dorius',-6475.81,-1246.44,180.248,2.27),
(3566,2,1,21,0,0,0,0,0,0,8421,10,0,'Dorius - ONESHOT_APPLAUD',0,0,0,0),
(3566,4,0,0,0,0,2000001336,0,0,0,8421,10,0,'Dorius - Bravo! Bravo! Good show. What? You thought I was dead?',0,0,0,0),
(3566,10,0,0,0,0,2000001337,0,0,0,8421,10,0,'Dorius - Fools. I knew that if I played upon my brother''s feeble emotions, he would send ''rescuers.''',0,0,0,0),
(3566,18,0,0,0,0,2000001338,0,0,0,8421,10,0,'Dorius - How easy it was to manipulate you into recovering the last Suntara stone from those imbeciles of the Twilight''s Hammer.',0,0,0,0),
(3566,28,0,0,0,0,2000001339,0,0,0,8421,10,0,'Dorius - When I stumbled upon the Suntara stones at the Grimesilt Digsite, the power of Ragnaros surged through my being. It was Ragnaros that gave me a purpose.',0,0,0,0),
(3566,40,0,0,0,0,2000001340,0,0,0,8421,10,0,'Dorius - It was the will of Ragnaros that Obsidion be built. Obsidion will destroy the Blackrock orcs of Blackrock Spire, uniting us with our bretheren in the fiery depths.',0,0,0,0),
(3566,52,0,0,0,0,2000001341,0,0,0,8421,10,0,'Dorius - And ultimately, it was Ragnaros that named me when I was reborn as an acolyte of fire: Lathoric... Lathoric the Black.',0,0,0,0),
(3566,62,0,0,0,0,2000001342,0,0,0,8421,10,0,'Dorius - %s''s laughter trails off',0,0,0,0),
(3566,66,10,8391,300000,0,0,0,0,0,0,0,0,'Summon Lathoric the Black',-6461.91,-1254.6,180.578,3.54302), -- Exact spawn is unknown and impossible to make out from the video
(3566,66,5,46,256,0,0,0,0,0,8400,30,0,'Obsidion - Remove UNIT_FLAG_IMMUNE_TO_PLAYER',0,0,0,0),
(3566,66,28,0,0,0,0,0,0,0,8400,30,0,'Obsidion - Set UNIT_STAND_STATE_STAND',0,0,0,0),
(3566,66,26,0,0,0,0,0,0,0,8400,30,0,'Obsidion - Attack Player',0,0,0,0),
(3566,66,18,0,0,0,0,0,0,0,8402,5804,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(3566,66,18,0,0,0,0,0,0,0,8402,5806,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(3566,66,18,0,0,0,0,0,0,0,8402,5807,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(3566,66,18,0,0,0,0,0,0,0,8402,5809,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(3566,66,18,0,0,0,0,0,0,0,8402,5811,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(3566,66,18,0,0,0,0,0,0,0,8402,5813,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(3566,67,26,0,0,0,0,0,0,0,8391,30,0,'Lathoric the Black - Attack Player',0,0,0,0);

-- Start event on Gossip Menu (Altar of Suntara Entry: 148498)
DELETE FROM `dbscripts_on_gossip` WHERE `id` IN(1282);
INSERT INTO `dbscripts_on_gossip` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(1282,0,34,1386,0,0,0,0,0,0,0,0,0,'Terminate Script if Lathoric or Dorius is found or if Obsidion is not found',0,0,0,0),
(1282,1,10,8421,62500,0,0,0,0,0,0,0,0,'Summon Dorius',-6475.81,-1246.44,180.248,2.27),
(1282,2,1,21,0,0,0,0,0,0,8421,10,0,'Dorius - ONESHOT_APPLAUD',0,0,0,0),
(1282,4,0,0,0,0,2000001336,0,0,0,8421,10,0,'Dorius - Bravo! Bravo! Good show. What? You thought I was dead?',0,0,0,0),
(1282,10,0,0,0,0,2000001337,0,0,0,8421,10,0,'Dorius - Fools. I knew that if I played upon my brother''s feeble emotions, he would send ''rescuers.''',0,0,0,0),
(1282,18,0,0,0,0,2000001338,0,0,0,8421,10,0,'Dorius - How easy it was to manipulate you into recovering the last Suntara stone from those imbeciles of the Twilight''s Hammer.',0,0,0,0),
(1282,28,0,0,0,0,2000001339,0,0,0,8421,10,0,'Dorius - When I stumbled upon the Suntara stones at the Grimesilt Digsite, the power of Ragnaros surged through my being. It was Ragnaros that gave me a purpose.',0,0,0,0),
(1282,40,0,0,0,0,2000001340,0,0,0,8421,10,0,'Dorius - It was the will of Ragnaros that Obsidion be built. Obsidion will destroy the Blackrock orcs of Blackrock Spire, uniting us with our bretheren in the fiery depths.',0,0,0,0),
(1282,52,0,0,0,0,2000001341,0,0,0,8421,10,0,'Dorius - And ultimately, it was Ragnaros that named me when I was reborn as an acolyte of fire: Lathoric... Lathoric the Black.',0,0,0,0),
(1282,62,0,0,0,0,2000001342,0,0,0,8421,10,0,'Dorius - %s''s laughter trails off',0,0,0,0),
(1282,66,10,8391,300000,0,0,0,0,0,0,0,0,'Summon Lathoric the Black',-6461.91,-1254.6,180.578,3.54302), -- Exact spawn is unknown and impossible to make out from the video
(1282,66,5,46,256,0,0,0,0,0,8400,30,0,'Obsidion - Remove UNIT_FLAG_IMMUNE_TO_PLAYER',0,0,0,0),
(1282,66,28,0,0,0,0,0,0,0,8400,30,0,'Obsidion - Set UNIT_STAND_STATE_STAND',0,0,0,0),
(1282,66,26,0,0,0,0,0,0,0,8400,30,3,'Obsidion - Attack Player',0,0,0,0),
(1282,66,18,0,0,0,0,0,0,0,8402,5804,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(1282,66,18,0,0,0,0,0,0,0,8402,5806,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(1282,66,18,0,0,0,0,0,0,0,8402,5807,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(1282,66,18,0,0,0,0,0,0,0,8402,5809,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(1282,66,18,0,0,0,0,0,0,0,8402,5811,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(1282,66,18,0,0,0,0,0,0,0,8402,5813,23,'Despawn all Enslaved Archaeologists',0,0,0,0),
(1282,67,26,0,0,0,0,0,0,0,8391,30,3,'Lathoric the Black - Attack Player',0,0,0,0);

DELETE FROM `dbscript_string` WHERE `entry` BETWEEN 2000001336 AND 2000001342;
INSERT INTO `dbscript_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES 
(2000001336, 'Bravo! Bravo! Good show. What? You thought I was dead?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 11, 'Dorius (Entry: 8421)'),
(2000001337, 'Fools. I knew that if I played upon my brother''s feeble emotions, he would send ''rescuers.''', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Dorius (Entry: 8421)'),
(2000001338, 'How easy it was to manipulate you into recovering the last Suntara stone from those imbeciles of the Twilight''s Hammer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Dorius (Entry: 8421)'),
(2000001339, 'When I stumbled upon the Suntara stones at the Grimesilt Digsite, the power of Ragnaros surged through my being. It was Ragnaros that gave me a purpose.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Dorius (Entry: 8421)'),
(2000001340, 'It was the will of Ragnaros that Obsidion be built. Obsidion will destroy the Blackrock orcs of Blackrock Spire, uniting us with our bretheren in the fiery depths.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5, 'Dorius (Entry: 8421)'),
(2000001341, 'And ultimately, it was Ragnaros that named me when I was reborn as an acolyte of fire: Lathoric... Lathoric the Black.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 'Dorius (Entry: 8421)'),
(2000001342, '%s laughter trails off', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2, 0, 0, 'Dorius (Entry: 8421)');