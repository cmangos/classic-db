-- Outer Deadmines
UPDATE creature SET position_x = -11264.301, position_y = 1536.4474, position_z = 28.541628, id = 0, MovementType = 2 WHERE guid = 89553 AND id = 1726;
DELETE FROM creature_movement WHERE id = 89553;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(89553, 01, -11264.301, 1536.4474, 28.541628, 100, 0, 0),
(89553, 02, -11255.581, 1534.5068, 28.825567, 100, 0, 0),
(89553, 03, -11252.844, 1527.4218, 29.956022, 100, 0, 0),
(89553, 04, -11249.423, 1522.5461, 30.064167, 100, 0, 0),
(89553, 05, -11243.208, 1524.8406, 28.503527, 100, 0, 0),
(89553, 06, -11241.891, 1532.2126, 27.229921, 100, 0, 0),
(89553, 07, -11250.679, 1531.872, 28.50376, 100, 0, 0),
(89553, 08, -11248.139, 1540.7946, 30.373915, 100, 0, 0),
(89553, 09, -11242.232, 1548.492, 33.94551, 100, 0, 0),
(89553, 10, -11236.83, 1553.5865, 34.539207, 100, 0, 0),
(89553, 11, -11242.232, 1548.492, 33.94551, 100, 0, 0),
(89553, 12, -11248.139, 1540.7946, 30.373915, 100, 0, 0),
(89553, 13, -11250.679, 1531.872, 28.50376, 100, 0, 0),
(89553, 14, -11241.891, 1532.2126, 27.229921, 100, 0, 0),
(89553, 15, -11243.208, 1524.8406, 28.503527, 100, 0, 0),
(89553, 16, -11249.423, 1522.5461, 30.064167, 100, 0, 0),
(89553, 17, -11252.844, 1527.4218, 29.956022, 100, 0, 0),
(89553, 18, -11255.581, 1534.5068, 28.825567, 100, 0, 0);

UPDATE creature SET position_x = -11259.511, position_y = 1534.032, position_z = 28.780441, id = 0, MovementType = 2 WHERE guid = 89547 AND id = 1726;
DELETE FROM creature_movement WHERE id = 89547;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(89547, 01, -11259.511, 1534.032, 28.780441, 100, 0, 0),
(89547, 02, -11250.419, 1532.062, 28.43013, 100, 0, 0),
(89547, 03, -11241.688, 1520.8326, 29.49553, 100, 0, 0),
(89547, 04, -11232.114, 1510.7761, 27.893894, 100, 0, 0),
(89547, 05, -11231.13, 1500.932, 24.990326, 100, 0, 0),
(89547, 06, -11237.107, 1493.0284, 23.643694, 100, 0, 0),
(89547, 07, -11245.275, 1482.8606, 23.504135, 100, 0, 0),
(89547, 08, -11237.107, 1493.0284, 23.643694, 100, 0, 0),
(89547, 09, -11231.13, 1500.932, 24.990326, 100, 0, 0),
(89547, 10, -11232.114, 1510.7761, 27.893894, 100, 0, 0),
(89547, 11, -11241.688, 1520.8326, 29.49553, 100, 0, 0),
(89547, 12, -11250.419, 1532.062, 28.43013, 100, 0, 0);

UPDATE creature SET position_x = -11276.463, position_y = 1519.7863, position_z = 37.7312, id = 0, MovementType = 2 WHERE guid = 89552 AND id = 1725;
DELETE FROM creature_movement WHERE id = 89552;
INSERT INTO creature_movement (id, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(89552, 01, -11276.06, 1529.417, 37.989147, 100, 0, 0),
(89552, 02, -11276.463, 1519.7863, 37.7312, 100, 0, 0),
(89552, 03, -11275.518, 1514.4496, 37.429146, 100, 0, 0),
(89552, 04, -11267.869, 1509.9067, 37.580715, 100, 0, 0),
(89552, 05, -11260.669, 1507.7789, 38.334797, 100, 0, 0),
(89552, 06, -11250.625, 1509.3563, 37.3034, 100, 0, 0),
(89552, 07, -11242.132, 1515.5757, 37.597176, 100, 0, 0),
(89552, 08, -11250.625, 1509.3563, 37.3034, 100, 0, 0),
(89552, 09, -11260.669, 1507.7789, 38.334797, 100, 0, 0),
(89552, 10, -11267.869, 1509.9067, 37.580715, 100, 0, 0),
(89552, 11, -11275.518, 1514.4496, 37.429146, 100, 0, 0),
(89552, 12, -11276.463, 1519.7863, 37.7312, 100, 0, 0);

UPDATE creature SET id = 0 WHERE guid = 89548 AND id = 1725;
UPDATE creature SET id = 0 WHERE guid = 89549 AND id = 1725;
UPDATE creature SET id = 0 WHERE guid = 89550 AND id = 1725;
UPDATE creature SET id = 0 WHERE guid = 89551 AND id = 1725;

REPLACE INTO creature_spawn_entry (guid, entry) VALUES
(89547, 1725),(89547, 1726),
(89553, 1725),(89553, 1726),
(89552, 1725),(89552, 1726),
(89549, 1725),(89549, 1726),
(89551, 1725),(89551, 1726),
(89550, 1725),(89550, 1726),
(89548, 1725),(89548, 1726);

-- Sneed's Shredder 642
UPDATE creature_template SET ExtraFlags = ExtraFlags|256 WHERE entry = 642; -- taunt immune

-- Rhahk'Zor 644
UPDATE creature_template SET CallForHelp = 8, MechanicImmuneMask = MechanicImmuneMask&~2048 WHERE entry = 644; -- 10 (default), stunable

-- Gilnid 1763
UPDATE creature_template SET MechanicImmuneMask = MechanicImmuneMask&~2048 WHERE entry = 1763; -- stunable

REPLACE INTO reference_loot_template_names (entry, name) VALUES
(50610, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'), -- 858,2455
(50611, 'NPC LOOT (Healing Potion / Lesser Mana Potion)'), -- 929,3385
(50612, 'NPC LOOT (Greater Healing Potion / Mana Potion)'), -- 1710,3827
(50613, 'NPC LOOT (Superior Healing Potion / Greater Mana Potion)'), -- 3928,6149
(50614, 'NPC LOOT (Major Healing Potion / Superior Mana Potion)'), -- 13446,13443
(50615, 'NPC LOOT (Major Healing Potion / Major Mana Potion)'); -- 13446,13444

DELETE FROM creature_loot_template WHERE entry = 1 AND item BETWEEN 50611 AND 50615;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(1, 50611, 1, 1, -50611, 1, 0, ''),(1, 50612, 1, 1, -50612, 1, 0, ''),(1, 50613, 1, 1, -50613, 1, 0, ''),(1, 50614, 1, 1, -50614, 1, 0, ''),(1, 50615, 1, 1, -50615, 1, 0, ''); -- Silence DB Errors until more Usecases
UPDATE creature_template SET LootId=1 WHERE Entry=1;

-- Health Potions always seem to have about double the Chance compared to Mana Potions
DELETE FROM reference_loot_template WHERE entry BETWEEN 50610 AND 50615;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(50610, 858, 66, 1, 1, 1, 0, 'Lesser Healing Potion'),
(50610, 2455, 0, 1, 1, 1, 0, 'Minor Mana Potion'),

(50611, 929, 66, 1, 1, 1, 0, 'Healing Potion'),
(50611, 3385, 0, 1, 1, 1, 0, 'Lesser Mana Potion'),

(50612, 1710, 66, 1, 1, 1, 0, 'Greater Healing Potion'),
(50612, 3827, 0, 1, 1, 1, 0, 'Mana Potion'),

(50613, 3928, 66, 1, 1, 1, 0, 'Superior Healing Potion'),
(50613, 6149, 0, 1, 1, 1, 0, 'Greater Mana Potion'),

(50614, 13446, 66, 1, 1, 1, 0, 'Major Healing Potion'),
(50614, 13443, 0, 1, 1, 1, 0, 'Superior Mana Potion'),

(50615, 13446, 66, 1, 1, 1, 0, 'Major Healing Potion'),
(50615, 13444, 0, 1, 1, 1, 0, 'Major Mana Potion');

-- Humanoids also seem to drop Gems in Set Groups

-- minor loot improvements

DELETE FROM creature_loot_template WHERE item = 5397; -- Defias Gunpowder go.17155
UPDATE creature_template SET LootId=0 WHERE Entry=266;

-- Defias Miner 598
DELETE FROM reference_loot_template WHERE item IN (1930); -- https://classic.wowhead.com/item=1930/stonemason-cloak
DELETE FROM creature_loot_template WHERE entry = 598 AND item = 1930;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(598, 1930, 3, 9, 1, 1, 0, 'Stonemason Cloak');

-- Goblin Engineer 622
DELETE FROM reference_loot_template WHERE item IN (1936); -- https://classic.wowhead.com/item=1936/goblin-screwdriver
DELETE FROM creature_loot_template WHERE entry = 622 AND item = 1936;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(622, 1936, 6, 9, 1, 1, 0, 'Goblin Screwdriver');

-- Defias Overseer 634
UPDATE creature_template SET MovementType = 2 WHERE entry = 634; -- For Scripted Movement Event
UPDATE creature_loot_template SET ChanceOrQuestChance = 3 WHERE entry = 634 AND item IN (10400,10401); -- 4 (Blackened Defias Leggings, Gloves)

-- Defias Blackguard 636
DELETE FROM reference_loot_template WHERE item IN (1934); -- https://classic.wowhead.com/item=1934/stonemason-trousers
DELETE FROM creature_loot_template WHERE entry = 636 AND item = 1934;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(636, 1934, 6, 9, 1, 1, 0, 'Stonemason Trousers');

-- Edwin VanCleef 639 -- Level Higher in Classic!
DELETE FROM creature_loot_template WHERE entry = 639 AND item IN (50600,50610,60124,60443,60200);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(639, 50600, 0.5, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(639, 50610, 1, 1, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)'),
(639, 60126, 3, 1, -60126, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 20-24) - (NPC Levels: 21)'),
(639, 60443, 0.1, 1, -60443, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 25 (10 Slot Bag)) - (NPC Levels: 21-30)'),
(639, 60202, 0.1, 1, -60202, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 20-23) - (NPC Levels: 21)');

-- Goblin Woodcarver 641
DELETE FROM reference_loot_template WHERE item IN (1945); -- https://classic.wowhead.com/item=1945/woodworking-gloves
DELETE FROM creature_loot_template WHERE entry = 641 AND item = 1945;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(641, 1945, 7, 9, 1, 1, 0, 'Woodworking Gloves');

-- Sneed's Shredder 642

-- Sneed 643
-- https://web.archive.org/web/20080512132226/http://wow.allakhazam.com/db/mob.html?wmob=643
DELETE FROM creature_loot_template WHERE entry = 643 AND item IN (1210,1206,50600,50610);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(643, 1210, 1, 0, 1, 1, 0, 'Shadowgem'),
(643, 1206, 0.3, 0, 1, 1, 0, 'Moss Agate'), -- i think npc dropped gems is another group of items that can be added as refloot
(643, 50600, 0.5, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(643, 50610, 1.1, 1, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)');

-- Rhahk'Zor 644
DELETE FROM creature_loot_template WHERE entry = 644 AND item IN (60122,50600,50610);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(644, 60122, 10, 1, -60122, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)'),	
(644, 50600, 1, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(644, 50610, 1.5, 1, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)');

-- Cookie 645
UPDATE creature_loot_template SET ChanceOrQuestChance = 10 WHERE entry = 645 AND item = 8490; -- 15 (Cat Carrier (Siamese))
DELETE FROM creature_loot_template WHERE entry = 645 AND item IN (11982,50600,50610);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(645, 11982, 6, 9, 1, 1, 0, 'Viridian Band'),
(645, 50600, 1, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(645, 50610, 1, 1, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)');

-- Mr Smite 646 - boss_mr_smite
DELETE FROM creature_loot_template WHERE entry = 646 AND item IN (50600,50610);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(646, 50600, 0.6, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(646, 50610, 1.2, 1, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)');

-- Captain Greenskin 647
DELETE FROM creature_loot_template WHERE entry = 647 AND item IN (50600,50610);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(647, 50600, 0.6, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(647, 50610, 1.3, 1, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)');

-- Defias Pirate 657
UPDATE creature_loot_template SET ChanceOrQuestChance = 3 WHERE entry = 657 AND item = 8492; -- 3.52 (Parrot Cage (Green Wing Macaw))
DELETE FROM reference_loot_template WHERE item IN (1951); -- https://classic.wowhead.com/item=1951/blackwater-cutlass
DELETE FROM creature_loot_template WHERE entry = 657 AND item IN (1951,50600);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(657, 1951, 6, 9, 1, 1, 0, 'Blackwater Cutlass'),
(657, 50600, 1.4, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');

-- Defias Watchman 1725
UPDATE creature_loot_template SET ChanceOrQuestChance = 7 WHERE entry = 1725 AND item = 1925; -- 5 (Defias Rapier)
DELETE FROM creature_loot_template WHERE entry = 1725 AND item = 50600;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(1725, 50600, 1.2, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');

-- Defias Evoker 1729
DELETE FROM reference_loot_template WHERE item IN (1929); -- https://classic.wowhead.com/item=1929/silk-threaded-trousers
DELETE FROM creature_loot_template WHERE entry = 1729 AND item IN (1929,50600);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(1729, 1929, 6, 9, 1, 1, 0, 'Silk-threaded Trousers'),
(1729, 50600, 1.4, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');

-- Goblin Craftsman 1731
UPDATE creature_template SET CallForHelp = 5 WHERE entry = 1731; -- else pulls boss, i think 5 is a better default then 10 for config, but yea...
DELETE FROM reference_loot_template WHERE item IN (1944); -- https://classic.wowhead.com/item=1944/metalworking-gloves
DELETE FROM creature_loot_template WHERE entry = 1731 AND item IN (1944,50600);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(1731, 1944, 5, 9, 1, 1, 0, 'Metalworking Gloves'),
(1731, 50600, 1.1, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');

-- Defias Squallshaper 1732
DELETE FROM creature_loot_template WHERE entry = 1732 AND item IN (1951,50600);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(1732, 1951, 6, 9, 1, 1, 0, 'Blackwater Cutlass'),
(1732, 50600, 1.1, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');

-- Gilnid 1763
DELETE FROM creature_loot_template WHERE entry = 1763 AND item IN (50600,50610);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(1763, 50600, 0.6, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(1763, 50610, 1.1, 1, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)');

-- Miner Johnson 3586
DELETE FROM creature_loot_template WHERE entry = 3586 AND item IN (2770,2771,2836,50600,50610);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(3586, 2771, 2, 0, 1, 5, 0, 'Tin Ore'),
(3586, 2770, 2, 0, 1, 5, 0, 'Copper Ore'),
(3586, 2836, 2, 0, 1, 5, 0, 'Coarse Stone'),
(3586, 50600, 0.6, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)'),
(3586, 50610, 1.1, 1, -50610, 1, 0, 'NPC LOOT (Lesser Healing Potion / Minor Mana Potion)');

-- Goblin Shipbuilder 3947
DELETE FROM reference_loot_template WHERE item IN (1943); -- https://classic.wowhead.com/item=1943/goblin-mail-leggings
DELETE FROM creature_loot_template WHERE entry = 3947 AND item IN (1943,50600);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(3947, 1943, 6, 9, 1, 1, 0, 'Goblin Mail Leggings'),
(3947, 50600, 1.2, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');

-- Defias Strip Miner 4416
DELETE FROM creature_loot_template WHERE entry = 4416 AND item IN (50600);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(4416, 50600, 1.7, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');

-- Defias Taskmaster 4417
UPDATE creature_loot_template SET ChanceOrQuestChance = 3 WHERE entry = 4417 AND item IN (10400,10401); -- 4 (Blackened Defias Leggings, Gloves)
DELETE FROM creature_loot_template WHERE entry = 4417 AND item IN (50600);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(4417, 50600, 1.2, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');

-- Defias Wizard 4418
DELETE FROM creature_loot_template WHERE entry = 4418 AND item IN (1929,50600);
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(4418, 1929, 6, 9, 1, 1, 0, 'Silk-threaded Trousers'),
(4418, 50600, 1.2, 1, -50600, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');
