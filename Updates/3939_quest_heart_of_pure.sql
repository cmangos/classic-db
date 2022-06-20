-- Add quest StartScript for Hearts of the Pure
DELETE FROM dbscripts_on_quest_start WHERE id='1476';
INSERT INTO dbscripts_on_quest_start(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(1476,0,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Set Active'),
(1476,0,1,29,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Remove NPC Flags'),
(1476,0,3,10,5691,28000,0,0,0,0,0,0,0,0,0,1781.16,61.13,-61.40,4.869,0,0,'Hearts of the Pure - Godrick Farsan - Spawn NPC'),
(1476,0,4,10,5692,28000,0,0,0,0,0,0,0,0,0,1785.77,60.27,-61.40,3.961,0,0,'Hearts of the Pure - Godrick Farsan - Spawn NPC'),
(1476,3000,0,36,0,0,0,5691,10,1,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Face NPC'),
(1476,5000,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Emote Point'),
(1476,5000,0,0,0,0,0,0,0,0,1988,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Talk'),
(1476,10000,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Emote Talk'),
(1476,10000,0,0,0,0,0,0,0,0,1992,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Talk'),
(1476,15000,0,36,0,0,0,5692,10,1,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Face NPC'),
(1476,16000,0,1,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Emote Point'),
(1476,16000,0,0,0,0,0,0,0,0,1989,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Talk'),
(1476,21000,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Emote Talk'),
(1476,21000,0,0,0,0,0,0,0,0,1993,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Talk'),
(1476,26000,0,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Face Player'),
(1476,27000,0,1,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Emote Laugh'),
(1476,27000,1,0,0,0,0,0,0,0,1990,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Talk'),
(1476,27000,2,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Remove Active'),
(1476,27000,3,29,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Hearts of the Pure - Godrick Farsan - Add NPC Flags');

UPDATE quest_template SET StartScript='1476' WHERE entry='1476';

-- Update spawned npc
UPDATE creature_template SET MinLevel='20', MaxLevel='20', Faction='35', UnitFlags='33555200' WHERE (Entry='5691');
UPDATE creature_template SET MinLevel='20', MaxLevel='20', Faction='35', UnitFlags='33555200' WHERE (Entry='5692');

-- Correct facing from Godrick Farsan
-- This is his actual spawn orientation, but he doesnt reset facing after Quest "Hearts of Pure"
UPDATE creature SET orientation='4.03328' WHERE id=5693;
