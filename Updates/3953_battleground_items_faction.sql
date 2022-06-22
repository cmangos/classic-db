-- Fix Warsong PvP reputation reward items that were not correctly available for all factions even though correct rank was reached

-- Add conditions for all Warsong reputation ranks
DELETE FROM conditions WHERE condition_entry IN (1529 ,1530, 1531 ,1532, 1533 ,1534) AND value1 IN (889,890);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(1529 , 5, 889, 5, 0, 0, 0, 'Has Minimum Rank Honored With Faction ID: 889'), -- Warsong Outriders
(1530, 5, 890, 5, 0, 0, 0, 'Has Minimum Rank Honored With Faction ID: 890'), -- Silverwing Sentinels
(1531 , 5, 889, 6, 0, 0, 0, 'Has Minimum Rank Revered With Faction ID: 889'), -- Warsong Outriders
(1532, 5, 890, 6, 0, 0, 0, 'Has Minimum Rank Revered With Faction ID: 890'), -- Silverwing Sentinels
(1533 , 5, 889, 7, 0, 0, 0, 'Has Minimum Rank Exalted With Faction ID: 889'), -- Warsong Outriders
(1534, 5, 890, 7, 0, 0, 0, 'Has Minimum Rank Exalted With Faction ID: 890'); -- Silverwing Sentinels
-- Add conditions for being from a given rank of one of the two Warsong factions (required to make purchasable items that are available to both factions)
DELETE FROM conditions WHERE condition_entry IN (1535 ,1536, 1537, 1538);
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
(1535, -2, 1524, 1525, 0, 0, 0, '(Has Minimum Rank Friendly With Faction ID: 889 OR Has Minimum Rank Honored With Faction ID: 890)'),
(1536, -2, 1529, 1530, 0, 0, 0, '(Has Minimum Rank Honored With Faction ID: 889 OR Has Minimum Rank Honored With Faction ID: 890)'),
(1537, -2, 1531, 1532, 0, 0, 0, '(Has Minimum Rank Revered With Faction ID: 889 OR Has Minimum Rank Revered With Faction ID: 890)'),
(1538, -2, 1533, 1534, 0, 0, 0, '(Has Minimum Rank Exalted With Faction ID: 889 OR Has Minimum Rank Exalted With Faction ID: 890)');

-- Assign correction rank requirements
-- Friendly: all items at first, narrow down to higher ranks in following queries but at the end should only be: runes, rations, bandages and superior draughts
UPDATE npc_vendor SET condition_id=1535 WHERE entry IN (14753, 14754);
-- Honored: cloaks, rings, amulets, major draughts
UPDATE npc_vendor SET condition_id=1536 WHERE entry IN (14753, 14754) AND item IN (17348, 17351, 19514, 19515, 19516, 19517, 19522, 19523, 19524, 19525, 19530, 19531, 19532, 19533, 19538, 19539, 19540, 19541, 20428, 20431, 20439, 20444, 19510, 19511, 19512, 19513, 19518, 19519, 19520, 19521, 19526, 19527, 19528, 19529, 19534, 19535, 19536, 19537, 20426, 20427, 20429, 20442);
-- Revered: weapons
UPDATE npc_vendor SET condition_id=1537 WHERE entry IN (14753, 14754) AND item IN (19546, 19547, 19548, 19549, 19554, 19555, 19556, 19557, 19562, 19563, 19564, 19565, 19570, 19571, 19572, 19573, 20434, 20438, 20440, 20443, 19542, 19543, 19544, 19545, 19550, 19551, 19552, 19553, 19558, 19559, 19560, 19561, 19566, 19567, 19568, 19569, 20425, 20430, 20437, 20441);
-- Exalted: armor pieces, tabards
UPDATE npc_vendor SET condition_id=1538 WHERE entry IN (14753, 14754) AND item IN (19506, 19578, 19580, 19581, 19582, 19583, 19584, 19587, 19589, 19590, 19595, 19596, 19597, 22672, 22748, 22749, 22750, 22752, 22753, 19505, 22651, 22673, 22676, 22740, 22741, 22747);

-- Remove all reputation requirements from Warsong item_template as they are now handled in vendor tab through conditions
UPDATE item_template SET RequiredReputationFaction=0, RequiredReputationRank=0 WHERE entry IN (SELECT item FROM npc_vendor WHERE entry IN (14754, 14753));
