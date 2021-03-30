-- q.5154 'The Annals of Darrowshire'
DELETE FROM dbscripts_on_quest_end WHERE id = 5154;
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(5154,0,0,0,0,0,0,0,0,2000003258,0,0,0,0,0,0,0,''),
(5154,100,15,17285,0,0,0,0,0x04,0,0,0,0,0,0,0,0,'Cast: Enchant Annals of Darrowshire'),
(5154,5000,0,0,0,0,0,0,0,2000003259,0,0,0,0,0,0,0,'');
UPDATE quest_template SET CompleteScript = 5154 WHERE entry = 5154;
DELETE FROM dbscript_string WHERE entry BETWEEN 2000003258 AND 2000003259;
INSERT INTO dbscript_string (entry, content_default, sound, type, language, emote, comment) VALUES
(2000003258,'Let\'s find out the whole story.  That\'s going to take some magic...',0,0,0,0,NULL),
(2000003259,'There, it is done.  The book has been enhanced...',0,0,0,0,NULL);
-- Musty Tome 176150
-- this item shouldnt be in this object
DELETE FROM gameobject_loot_template WHERE entry = 13610 AND item = 15696;
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 176150;
-- Musty Tome 176151
-- this item shouldnt be in this object
DELETE FROM gameobject_loot_template WHERE entry = 14480 AND item = 12900;
UPDATE gameobject SET spawntimesecsmin = 60, spawntimesecsmax = 60 WHERE id = 176151;

-- POOLS
DELETE FROM pool_template WHERE entry = 16476;
INSERT INTO pool_template (entry, max_limit, description) VALUES
(16476,1,'Western Plaguelands - Musty Tome (176150)');
DELETE FROM pool_gameobject_template WHERE id = 176150;
INSERT INTO pool_gameobject_template (id, pool_entry, chance, description) VALUES
(176150,16476,0,'Western Plaguelands - Musty Tome (176150)');
