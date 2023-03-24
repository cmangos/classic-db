-- Add your query below.
-- https://github.com/vmangos/core/commit/620def0c321e4acf11f8544db126b0d2a30cdfee
-- https://web.archive.org/web/20080528135952/http://wow.allakhazam.com:80/db/item.html?witem=6366
-- maybe fishing too

/*
By Managos (2,236 – 5·11) on 2021/03/18 (Classic)		
After killing over 3,769 worgs in Tirisfal Glades, with stringy wolf meat x2000,
discolored worg hearts x2946, and many useless greens... I got my DARKWOOD POLE.
Now to say that its better than the quest pole for horde would be a lie, however..
Its pretty neat to see. Good luck to those still grinding it out!
*/
/*
By Karasukami on 2005/01/21 (Patch 1.2.1)		
Subject: "hmm"
I have read that Bloodsnout Worgs in silverpine drop this..
I guess I'll try and see if that is so. :\
*/
DELETE FROM `creature_loot_template` WHERE `entry` IN (1765,1766,1923) AND `item` IN (6366,422,858,929,1179,1205,2455,2589,2592,3385,3770,4537,4538,4541,4542,4606);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(1765, 6366, 0.005, 0, 1, 1, 0), -- Worg
(1766, 6366, 0.005, 0, 1, 1, 0), -- Mottled Worg
(1923, 6366, 0.005, 0, 1, 1, 0); -- Bloodsnout Worg

/*
By bilcosby on 2006/08/11 (Patch 1.11.2)		
Subject: "i got one"
i got one from a random mob in duskwood was a worg i was just running thro to get to ZG and i killed for fun and it droped
*/
DELETE FROM `creature_loot_template` WHERE `entry` IN (628,923,1258) AND `item` IN (6366,422,858,929,1179,1205,2455,2589,2592,3385,3770,4537,4538,4541,4542,4606);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
(628, 6366, 0.005, 0, 1, 1, 0), -- Black Ravager
(923, 6366, 0.005, 0, 1, 1, 0), -- Young Black Ravager
(1258, 6366, 0.005, 0, 1, 1, 0); -- Black Ravager Mastiff

-- End of migration.

