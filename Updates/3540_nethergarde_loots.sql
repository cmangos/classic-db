-- Improve Loot for Nethergarde Npcs
-- Based on https://github.com/cmangos/classic-db/commit/e4cc5fe70a93b36e340c02b48a66e68ea177749b
-- which pointed to loot differences for some npcs

-- should not have loot in human form
-- q.6402
-- .go c id 17804
-- 1756	Stormwind Royal Guard (guard->UpdateEntry(NPC_GUARD_ONYXIA);) -> 12739, thats the real loot. money loot also questionable for human c.1756
-- 2852	Enslaved Druid of the Talon (faction 35, so atleast not exploitable, but looks like an abuse npc)(https://classic.wowhead.com/npc=2852/enslaved-druid-of-the-talon#drops)

DELETE FROM creature_loot_template WHERE entry IN (5998,6000,6001,6002) AND item IN (50602,60007,60179,60183,60255,60259,60315,60319,60445,24025,24026,24027,24029,24036,24045,24084);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- has old refloots in classic-db
-- 24025 green items
-- 24026 blue items
-- 24027 green items
-- 24029 green items
-- 24036 grey items
-- 24045 green items
-- 24084 epic items

-- 5996	Nethergarde Miner (same as classic-db - Level 47-48)
-- https://web.archive.org/web/20080217033605/http://wow.allakhazam.com/db/mob.html?wmob=5996
-- 5996	50602	0.75	0	-50602	1	0	NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)
-- 5996	60007	9	0	-60007	1	0	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)
-- 5996	60179	2	0	-60179	1	0	NPC LOOT (Green World Drop) - (Item Levels: 47-51) - (NPC Levels: 47-48)
-- 5996	60255	0.05	0	-60255	1	0	NPC LOOT (Blue World Drop) - (Item Levels: 45-50) - (NPC Levels: 47-48)
-- 5996	60315	0.004	0	-60315	1	0	NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 47-48)
-- 5996	60445	0.1	0	-60445	1	0	NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)

-- 5997	Nethergarde Engineer (same as classic-db - Level 47-48)
-- https://web.archive.org/web/20080220152342/http://wow.allakhazam.com/db/mob.html?wmob=5997
-- 5997	50602	0.75	0	-50602	1	0	NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)
-- 5997	60007	9	0	-60007	1	0	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)
-- 5997	60179	2	0	-60179	1	0	NPC LOOT (Green World Drop) - (Item Levels: 47-51) - (NPC Levels: 47-48)
-- 5997	60255	0.05	0	-60255	1	0	NPC LOOT (Blue World Drop) - (Item Levels: 45-50) - (NPC Levels: 47-48)
-- 5997	60315	0.004	0	-60315	1	0	NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 47-48)
-- 5997	60445	0.1	0	-60445	1	0	NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)

-- 5998	Nethergarde Foreman (Level 46 - 48, using Level 47-48 for Loot)
-- https://web.archive.org/web/20080220152348/http://wow.allakhazam.com/db/mob.html?wmob=5998
(5998, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(5998, 60007, 3, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(5998, 60179, 1, 0, -60179, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 47-51) - (NPC Levels: 47-48)'),
(5998, 60255, 0.05, 0, -60255, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 45-50) - (NPC Levels: 47-48)'),
(5998, 60315, 0.004, 0, -60315, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 46-49) - (NPC Levels: 47-48)'),
(5998, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),

-- 5998	24025	1	1	-24025	1	0
-- 5998	24036	5	1	-24036	1	0
-- 5998	24041	1	1	-24041	1	0
-- 5998	24043	1	1	-24043	1	0
-- 5998	24044	0.5	1	-24044	1	0
-- 5998	24045	1	1	-24045	1	0
-- 5998	24046	0.5	1	-24046	1	0
-- 5998	24082	0.1	1	-24082	1	0

-- 5999	Nethergarde Soldier (same as classic-db - Level 49-50)
-- https://web.archive.org/web/20080222171240/http://wow.allakhazam.com/db/mob.html?wmob=5999
-- https://classic.wowhead.com/npc=5999/nethergarde-soldier#comments:id=2904487 - interesting comment about not being civilian and not being pvp tagged so flagged as "normal farmable npc"
-- 5999	50602	0.75	0	-50602	1	0	NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)
-- 5999	60007	9	0	-60007	1	0	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)
-- 5999	60183	2	0	-60183	1	0	NPC LOOT (Green World Drop) - (Item Levels: 48-53) - (NPC Levels: 49-50)
-- 5999	60259	0.05	0	-60259	1	0	NPC LOOT (Blue World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)
-- 5999	60319	0.004	0	-60319	1	0	NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)
-- 5999	60445	0.1	0	-60445	1	0	NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)

-- 6000	Nethergarde Cleric (Level 49 - 51, using Level 49-50 for Loot)
-- https://web.archive.org/web/20080216043300/http://wow.allakhazam.com/db/mob.html?wmob=6000
(6000, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(6000, 60007, 3, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(6000, 60183, 1, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-53) - (NPC Levels: 49-50)'),
(6000, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)'),
(6000, 60319, 0.004, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)'),
(6000, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),

-- 6000	24025	1	1	-24025	1	0	
-- 6000	24026	0.5	1	-24026	1	0	
-- 6000	24027	1	1	-24027	1	0	
-- 6000	24029	1	1	-24029	1	0	
-- 6000	24036	5	1	-24036	1	0	
-- 6000	24045	1	1	-24045	1	0	
-- 6000	24084	0.1	1	-24084	1	0	
-- 6000	60007	5	1	-60007	1	0	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)

-- 6001	Nethergarde Analyst (Level 49 - 51, using Level 49-50 for Loot)
-- https://web.archive.org/web/20080422114345/http://wow.allakhazam.com:80/db/mob.html?wmob=6001
(6001, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(6001, 60007, 3, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(6001, 60183, 1, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-53) - (NPC Levels: 49-50)'),
(6001, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)'),
(6001, 60319, 0.004, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)'),
(6001, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)'),

-- 6001	24025	1	1	-24025	1	0	
-- 6001	24036	5	1	-24036	1	0	
-- 6001	24045	1	1	-24045	1	0	
-- 6001	60007	5	1	-60007	1	0	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)

-- 6002	Nethergarde Riftwatcher (Level 49 - 51, using Level 49-50 for Loot)
-- https://web.archive.org/web/20080222032128/http://wow.allakhazam.com/db/mob.html?wmob=6002
-- https://classic.wowhead.com/npc=6002/nethergarde-riftwatcher#comments:id=2904492 - interesting comment
(6002, 50602, 0.75, 0, -50602, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 50 (Scrolls III)) - (NPC Levels 40-55)'),
(6002, 60007, 3, 0, -60007, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)'),
(6002, 60183, 1, 0, -60183, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 48-53) - (NPC Levels: 49-50)'),
(6002, 60259, 0.05, 0, -60259, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 47-52) - (NPC Levels: 49-50)'),
(6002, 60319, 0.004, 0, -60319, 1, 0, 'NPC LOOT (Purple World Drop) - (Item Levels: 48-51) - (NPC Levels: 49-50)'),
(6002, 60445, 0.1, 0, -60445, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 45 (14 Slot Bag)) - (NPC Levels: 41-60)');

-- 6002	24025	1	1	-24025	1	0	
-- 6002	24027	1	1	-24027	1	0	
-- 6002	24036	5	1	-24036	1	0	
-- 6002	24045	1	1	-24045	1	0	
-- 6002	24046	0.5	1	-24046	1	0	
-- 6002	60007	5	1	-60007	1	0	NPC LOOT (Grey World Drop) - (Item Levels: 41-50) - (NPC Levels: 41-50)

-- 6003	Nethergarde Officer (same as classic-db)
-- 7851	Nethergarde Elite (same as classic-db)
-- 5995	Nethergarde Worker (same as classic-db)

UPDATE creature_loot_template SET ChanceOrQuestChance=3 WHERE entry IN (5996,5997,5999) AND item=60007; -- 9 (see links, grey sits at about 3%, 9% is just too high for higher level grey items -> inflation)
UPDATE creature_loot_template SET ChanceOrQuestChance=1 WHERE entry IN (5996,5997,5999) AND item IN (60179,60183); -- 2 (Imperfect Draenethyst Fragment takes like half the chance on its own)
