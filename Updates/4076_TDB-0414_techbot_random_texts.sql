-- Add random combat texts for Techbot 6231
-- https://www.youtube.com/watch?v=7SRk_NaF52U&ab_channel=ClassicRetroGaming
-- https://web.archive.org/web/20080220233412/http://wow.allakhazam.com/db/mob.html?wmob=6231
UPDATE `creature` SET `position_x` = -4925.538, `position_y` = 824.91534, `position_z` = 247.46948, `orientation` = 1.731216192245483398, `spawndist` = 3, `MovementType` = 1 WHERE `id` = 6231;
DELETE FROM `creature` WHERE `id` = 7732; -- s.10858
UPDATE `creature_template` SET `SpeedWalk` = (1 / 2.5), `SpeedRun` = (2 / 7) WHERE `entry` = 7732;

DELETE FROM `creature_loot_template` WHERE `entry` = 6231;
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(6231, 9277, -100, 0, 1, 1, 0, 'Techbot\'s Memory Core'),
(6231, 9444, 69.1983, 0, 1, 1, 0, 'Techbot CPU Shell'),
(6231, 9309, -100, 0, 1, 1, 0, 'Robo-mechanical Guts'),

(6231, 4377, 3.4599, 0, 1, 1, 0, 'Heavy Blasting Powder'),
(6231, 4364, 1.7, 0, 1, 1, 0, 'Coarse Blasting Powder'),
(6231, 4371, 1.5, 0, 1, 1, 0, 'Bronze Tube'),
(6231, 4363, 1.3502, 0, 1, 1, 0, 'Copper Modulator'),
(6231, 4382, 1.34, 0, 1, 1, 0, 'Bronze Framework'),

(6231, 4633, 0.4, 0, 1, 1, 0, 'Heavy Bronze Lockbox'),

(6231, 1529, 0.44, 0, 1, 1, 0, 'Jade'),
(6231, 1206, 0.4, 0, 1, 1, 0, 'Moss Agate'),
(6231, 1705, 0.2532, 0, 1, 1, 0, 'Lesser Moonstone'),

(6231, 60443, 1, 0, -60443, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 25 (10 Slot Bag)) - (NPC Levels: 21-30)'),
(6231, 50504, 0.8, 0, -50504, 1, 0, 'LOOT (World Drop) - (RequiredSkillRank: 110-175 (Profession Recipes)) - (NPC Levels ~20-30)'),
(6231, 60005, 9, 0, -60005, 1, 0, 'NPC LOOT (Grey World Drop) - (Item Levels: 26-30) - (NPC Levels: 26-30)'),
(6231, 60136, 2, 0, -60136, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 25-29) - (NPC Levels: 26)'),
-- (6231, 50601, 0.75, 0, -50601, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 35 (Scrolls II)) - (NPC Levels 25-40)'), -- no scrolls
(6231, 30004, 0.1, 0, -30004, 1, 0, 'Gnomeregan - Zone Drop'),
(6231, 60212, 0.05, 0, -60212, 1, 0, 'NPC LOOT (Blue World Drop) - (Item Levels: 24-28) - (NPC Levels: 26)');

DELETE FROM `reference_loot_template` WHERE `entry` = 50504;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 50504, `entry`, 0, 1 FROM `item_template` WHERE `entry` IN (
-- 50503 is included in 50504, hence the confusion about the range.
-- 1%
2601, -- Pattern: Gray Woolen Robe	105 -- confirmed
5972, -- Pattern: Fine Leather Pants	105
3393, -- Recipe: Minor Magic Resistance Potion	110 -- confirmed
11038, -- Formula: Enchant 2H Weapon - Lesser Spirit	110
11039, -- Formula: Enchant Cloak - Minor Agility	110 -- confirmed
11081, -- Formula: Enchant Shield - Lesser Protection	115 -- confirmed
3394, -- Recipe: Potion of Curing	120
4294, -- Pattern: Hillman's Belt	120
4347, -- Pattern: Reinforced Woolen Shoulders	120
4410, -- Schematic: Shadow Goggles	120
6375, -- Formula: Enchant Bracer - Lesser Spirit	120
6390, -- Pattern: Stylish Blue Shirt	120 -- confirmed
6391, -- Pattern: Stylish Green Shirt	120
7360, -- Pattern: Dark Leather Gloves	120
10316, -- Pattern: Colorful Kilt	120
2882, -- Plans: Silvered Bronze Shoulders	125 -- confirmed
2883, -- Plans: Deadly Bronze Poniard	125
4348, -- Pattern: Phoenix Gloves	125 -- confirmed
4349, -- Pattern: Phoenix Pants	125
5578, -- Plans: Silvered Bronze Breastplate	130
-- rest %
6454, -- Manual: Strong Anti-Venom', 130); -- confirmed
11098, -- Formula: Enchant Cloak - Lesser Shadow Resistance', 135); -- confirmed
4296, -- Pattern: Dark Leather Shoulders', 140); -- confirmed
4350, -- Pattern: Spider Silk Slippers', 140); -- confirmed
5543, -- Plans: Iridescent Hammer', 140);
7363, -- Pattern: Pilferer\'s Gloves', 140);
3396, -- Recipe: Elixir of Lesser Agility', 140);
4412, -- Schematic: Moonsight Rifle', 145);
7092, -- Pattern: Hands of Darkness', 145);
7364, -- Pattern: Heavy Earthen Gloves', 145); -- confirmed
3608, -- Plans: Mighty Iron Hammer', 145); -- confirmed
3611, -- Plans: Green Iron Boots', 145); -- confirmed
3612, -- Plans: Green Iron Gauntlets', 150);
4297, -- Pattern: Barbaric Gloves', 150); -- confirmed
6044, -- Plans: Iron Shield Spike', 150);
6211, -- Recipe: Elixir of Ogre\'s Strength', 150);
7091, -- Pattern: Truefaith Gloves', 150); -- confirmed
10424, -- Plans: Silvered Bronze Leggings', 155); -- confirmed
-- 20974, -- Design: Jade Pendant of Blasting', 160); TBC+
3870, -- Plans: Green Iron Shoulders', 160);
4414, -- Schematic: Portable Bronze Mortar', 165); -- confirmed
6045, -- Plans: Iron Counterweight', 165);
7090, -- Pattern: Green Silk Armor', 165);
7449, -- Pattern: Dusky Leather Leggings', 165);
3867, -- Plans: Golden Iron Destroyer', 170); -- confirmed
3872, -- Plans: Golden Scale Leggings', 170);
4298, -- Pattern: Guardian Belt', 170); -- confirmed
4351, -- Pattern: Shadow Hood', 170);
11164, -- Formula: Enchant Weapon - Lesser Beastslayer', 175);
3830, -- Recipe: Elixir of Fortitude', 175); -- confirmed
11165, -- Formula: Enchant Weapon - Lesser Elemental Slayer', 175);
3866, -- Plans: Jade Serpentblade', 175);
3871, -- Plans: Golden Scale Shoulders', 175);
4299, -- Pattern: Guardian Armor', 175); -- confirmed
4352, -- Pattern: Boots of the Enchanter', 175);
5774, -- Pattern: Green Silk Pack', 175);
7450, -- Pattern: Green Whelp Armor', 175);
10601 -- Schematic: Bright-Eye Goggles', 175);
);

REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES (50504, 'LOOT (World Drop) - (RequiredSkillRank: 110-175 (Profession Recipes)) - (NPC Levels ~20-30)');

-- Remove 130-175 for Level ~20-30 npcs
DELETE FROM `reference_loot_template` WHERE `entry` = 50505 AND `item` IN (6454,11098,4296,4350,5543,7363,3396,4412,7092,7364,3608,3611,3612,4297,6044,6211,7091,10424,20974,3870,4414,6045,7090,7449,3867,3872,4298,4351,11164,3830,11165,3866,3871,4299,4352,5774,7450,10601);
UPDATE `reference_loot_template_names` SET `name` = 'LOOT (World Drop) - (RequiredSkillRank: 130-300 (Profession Recipes)) - (NPC Levels ~31-63) (Split me up)' WHERE `entry` = 50505;

-- https://wowpedia.fandom.com/wiki/Instances_by_level?oldid=1626603
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(30001, 'Shadowfang Keep - Zone Drop'), -- 1489,2205,2292,1482,1935,1318,2807,1484,1974,1483,3194
(30002, 'Blackfathom Deeps - Zone Drop'), -- 1454,3414,3416,3417,1481,1491,3413,1486,3415,2271,2567 (2034, special npcs)
(30003, 'Razorfen Kraul - Zone Drop'), -- 776,1488,2264,4438,1976,2039,1727,1975,1978,2549
(30004, 'Gnomeregan - Zone Drop'), -- 9485,9486,9487,9488,9489,9490,9491,9508,9509,9510
(30005, 'Scarlet Monastery (Graveyard / Library / Armory / Cathedral) - Zone Drop'), -- /*G*/ 7728,7727,7754,5819,10332,2262,8226,8225,7761,7786,7752,7753,7730,7787,7729,/*L+?*/7755,7760,7759,1992,5756,7736,7758,7757,7729
(30006, 'Razorfen Downs - Zone Drop'), -- 10567,10570,10571,10572,10573,10574,10578,10581,10582,10583,10584
(30007, 'Uldaman - Zone Drop'), -- 9381,9383,9384,9386,9391,9392,9393,9396,9397,9406,9420,9422,9423,9424,9425,9426,9427,9428,9429,9430,9431,9432,9465
(30008, 'Zul\'Farrak - Zone Drop'), -- 9512,9484,862,6440,5616,9511,9481,9480,9482,9483,2040
(30009, 'Temple of Atal\'Hakkar - Zone Drop'), -- 10630,10629,10632,10631,10633,10634,10623,10625,10628,10626,10627,10624
(30010, 'Blackrock Depths - Zone Drop'), -- 12552,12551,12542,12546,12550,12547,12549,12555,12531,12535,12527,12528,12532
(30011, 'Dire Maul (East / West) - Zone Drop'); -- east: 18295,18298,18296,18289,/*west:*/18344,18340,18338 north: -
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30001,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (1489,2205,2292,1482,1935,1318,2807,1484,1974,1483,3194);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30002,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (1454,3414,3416,3417,1481,1491,3413,1486,3415,2271,2567);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30003,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (776,1488,2264,4438,1976,2039,1727,1975,1978,2549);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30004,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (9485,9486,9487,9488,9489,9490,9491,9508,9509,9510);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30005,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (7728,7727,7754,5819,10332,2262,8226,8225,7761,7786,7752,7753,7730,7787,7729,/*L+?*/7755,7760,7759,1992,5756,7736,7758,7757,7729);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30006,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (10567,10570,10571,10572,10573,10574,10578,10581,10582,10583,10584);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30007,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (9381,9383,9384,9386,9391,9392,9393,9396,9397,9406,9420,9422,9423,9424,9425,9426,9427,9428,9429,9430,9431,9432,9465);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30008,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (9512,9484,862,6440,5616,9511,9481,9480,9482,9483,2040);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30009,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (10630,10629,10632,10631,10633,10634,10623,10625,10628,10626,10627,10624);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30010,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (12552,12551,12542,12546,12550,12547,12549,12555,12531,12535,12527,12528,12532);
REPLACE INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`) SELECT 30011,`entry`, 0, 1 FROM `item_template` WHERE `entry` IN (18295,18298,18296,18289,/*west:*/18344,18340,18338);

-- https://web.archive.org/web/20080328083635/http://wow.allakhazam.com/db/item.html?witem=2034
DELETE FROM `reference_loot_template` WHERE `item` = 2034 AND `entry` BETWEEN 60127 AND 60137; -- only some drop it
REPLACE INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(4809, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes'),
(4810, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes'),
(4811, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes'),
(4812, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes'),
(4813, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes'),
(4814, 2034, 1, 9, 1, 1, 0, 'Scholarly Robes');

-- https://tbc.wowhead.com/npc=6231/techbot
DELETE FROM `dbscript_random_templates` WHERE `id` = 906;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(906,0,2426,0,'Techbot 6231 - Combat Texts'), -- Please be patient, we will call your name when it is your turn. We are helping people in the order they appear to us on our screen.
(906,0,2427,0,'Techbot 6231 - Combat Texts'), -- Remember, if you harass the rep or spam the channel, your account may be kicked, banned, or worse.
(906,0,2428,0,'Techbot 6231 - Combat Texts'), -- I am a BOT. I have tons of information. To find out what I know whisper me
(906,0,2429,0,'Techbot 6231 - Combat Texts'), -- You are welcome, have a nice day.
(906,0,2430,0,'Techbot 6231 - Combat Texts'), -- There is no COW level... really! I repeat: there is no COW level. Well, maybe there is...
(906,0,2431,0,'Techbot 6231 - Combat Texts'), -- Techbot is sensitive and those words hurt my ears. :[ Please be nice to me.  I just want to help.
(906,0,2433,0,'Techbot 6231 - Combat Texts'), -- People think I like corndogs, but actually, they give me indigestion !!!
(906,0,2434,0,'Techbot 6231 - Combat Texts'), -- When the rep is talking to you, he will start each line with your name.  If you don't see your name, he's not yet speaking to you.
(906,0,2435,0,'Techbot 6231 - Combat Texts'), -- Some topics I can help you with are: | drivers | commands | lag | bots....zzzzzzzzttt!!
(906,0,2436,0,'Techbot 6231 - Combat Texts'), -- Please be patient, we will call your name when it is your turn. We are helping people in the order they appear to us on our screen. $N!
(906,0,2437,0,'Techbot 6231 - Combat Texts'), -- I love you too :).
(906,0,2438,0,'Techbot 6231 - Combat Texts'); -- If you have been muted, or have questions about the Muting/UnMuting process, please visit...zzzzttt!!

-- 2022-06-29 22:53:15 WaypointMovementGenerator::LoadPath: Creature (Entry: 3530 Guid: 18235) doesn't have waypoint path 0
-- 2022-06-29 22:53:15 void WaypointMovementGenerator<Creature>::InitializeWaypointPath> unable to intialize path for Creature (Entry: 3530 Guid: 18235)
UPDATE `creature` SET `position_x` = -331.599, `position_x` = 1512.65, `position_x` = 17.061, `MovementType` = 2 WHERE `id` = 3530;
DELETE FROM `creature_movement_template` WHERE `entry` = 3530;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3530, 0, 1, -331.599, 1512.65, 17.061, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3530, 0, 2, -338.319, 1509.11, 18.7934, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3530, 0, 3, -345.957, 1504.3, 18.799, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3530, 0, 4, -354.182, 1497.6, 18.8091, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3530, 0, 5, -360.778, 1495.35, 17.2269, 100, 10000, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3530, 0, 6, -354.182, 1497.6, 18.8091, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3530, 0, 7, -345.957, 1504.3, 18.799, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3530, 0, 8, -338.319, 1509.11, 18.7934, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3530, 0, 9, -331.599, 1512.65, 17.061, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3530, 0, 10, -328.988, 1531.25, 18.0011, 4.03171, 60000, 0, NULL);
DELETE FROM `creature_movement_template` WHERE `entry` = 3531;
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3531, 0, 1, -331.599, 1512.65, 17.061, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3531, 0, 2, -338.319, 1509.11, 18.7934, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3531, 0, 3, -345.957, 1504.3, 18.799, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3531, 0, 4, -354.182, 1497.6, 18.8091, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3531, 0, 5, -360.778, 1495.35, 17.2269, 100, 10000, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3531, 0, 6, -354.182, 1497.6, 18.8091, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3531, 0, 7, -345.957, 1504.3, 18.799, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3531, 0, 8, -338.319, 1509.11, 18.7934, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3531, 0, 9, -331.599, 1512.65, 17.061, 100, 0, 0, NULL);
INSERT INTO `creature_movement_template` (`Entry`, `PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES (3531, 0, 10, -328.988, 1531.25, 18.0011, 4.03171, 60000, 0, NULL);

-- Fix Lord Kazzak Aggro Radius
UPDATE `creature_template` SET `Detection` = 70 WHERE `entry` = 12397;

UPDATE `creature_template` SET `SchoolImmuneMask` = 4 WHERE `entry` IN (
7044, -- Black Drake
7045, -- Scalding Drake
7046, -- Searscale Drake
7846, -- Teremus the Devourer (https://classic.wowhead.com/npc=7846/teremus-the-devourer#comments:id=2838902)
8976, -- Hematos
14388, -- Rogue Black Drake
14601, -- Ebonroc
11981, -- Flamegor
11983 -- Firemaw
);

-- Name unnamed RefLoots
REPLACE INTO `reference_loot_template_names` (`entry`, `name`) VALUES
(5759, 'NPC LOOT (Darkmaster Gandling) - Random Item'),
(10500, 'NPC LOOT (Scourge Invasion) - Ghoul Berserker / Spectral Soldier / Skeletal Shocktrooper / Flameshocker - Quest Start Item'),
(11000, 'Fishing Loot - Zone Area: (1),(12),(141),(215),(367),(814),(2979),(3470),(3473),(3475),(3526),(3527),(3528)'),
(11001, 'Fishing Loot - Zone Area: (14),(168),(169),(702),(2322),(2399),(3430),(3524)'),
(11002, 'Fishing Loot - Zone Area: (38),(40),(384),(815),(1156),(1519),(1537),(1581),(1637),(1638),(1657),(1701),(3479),(3489),(3496),(3506),(3507),(3508),(3515)'),
(11003, 'Fishing Loot - Zone Area: (2),(17),(115),(226),(305),(306),(457),(2398),(3433),(3482),(3525)'),
(11004, 'Fishing Loot - Zone Area: (10),(11),(44),(267),(331),(406)'),
(11005, 'Fishing Loot - Zone Area: (150),(271),(294),(295),(298),(299),(414),(1039),(2104),(2325),(2365),(2397),(2402)'),
(11006, 'Fishing Loot - Swamp of Sorrows (8) / Dustwallow Marsh (15) / Stranglethorn Vale (33) / Alterac Mountains (36) / Arathi Highlands (45) / Thousand Needles (400) / Desolace (405) / Scarlet Monastery (796)'),
(11007, 'Fishing Loot - Zone Area: (35),(43),(104),(117),(122),(300),(301),(302),(311),(312),(327),(328),(513),(516),(517),(518),(598),(1577),(1578),(1739),(1797),(2079),(2324),(2339),(2403),(2405),(2406),(2408),(3357),(4047)'),
(11008, 'Fishing Loot - Azshara (16) / Western Plaguelands (28) / The Hinterlands (47) / Feralas (357) / Felwood (361) / Un’Goro Crater (490) / Moonglade (493) / Sunken Temple (1417) / Maraudon (2100) / Verdantis River (2521)'),
(11009, 'Fishing Loot - Jaguero Isle (297),The Overlook Cliffs (307),Tanaris (440),The Forgotten Coast (1108),Temple of Arkkoran (1226),The Shattered Strand (1228),Tower of Eldara (1229),Jagged Reef (1230),Southridge Beach (1231),The Ruined Reaches (1256),(3317)'),
(11010, 'Fishing Loot - Burning Steppes (46) / Eastern Plaguelands (139) / Winterspring (618) / Jademir Lake (1112) / Silithus (1377) / Zul’Gurub (1977) / Stratholme (2017) / Scholomance (2057)'),
(13755, 'Fishing Loot - Winter & Summer - Winter Squid (13755) & Raw Summer Bass (13756)'),
(11017, 'Fishing Loot - Deadwind Pass (41) / Zul’Aman (3805)'),
(11099, 'Fishing Loot - Tirisfal Glades (85) / Silverpine Forest (130) / Blackfathom Deeps (719)'),
(11100, 'Fishing Loot - Undercity (1497)'),
(11101, 'Fishing Loot - The Sludge Fen (382) / Cragpool Lake (463) / Blackwolf River (636) / The Foul Pool (3595)'),
(11102, 'Fishing Loot - The Forgotten Pools (386) / Lushwater Oasis (387) / The Stagnant Oasis (388) / Wailing Caverns (718)'),
(11103, 'Fishing Loot - Ruins of Mathystra (443) / Cliffspring Falls (445) / Grove of the Ancients (448) / Wildbend River (454) / Cliffspring River (456) / Twilight Vale (2077)'),
(11104, 'Fishing Loot - Darkshore (148)'),
(11105, 'Fishing Loot - Hetaera’s Clutch (1222) / Bay of Storms (1227) / Scalebeard’s Cave (3140)'),
(11106, 'Fishing Loot - Fire Plume Ridge (537)'),
(12002, 'Naxxramas (Boss Loot) - Four Horsemen Chest (181366) - Tokens (T3 Tokens)'),
(12006, 'Dire Maul (Boss Loot) - Knot Thimblejack\'s Cache (179501) - Random Crafting Loot'),
(34000, 'Onyxia\'s Lair (Boss Loot) - Onyxia - Epic Items (T2 Head)'),
(34001, 'Onyxia\'s Lair (Boss Loot) - Onyxia - Epic Items'),
(34002, 'NPC LOOT (Blue NPC Loot & Patterns) - Classic World bosses and dragons'),
-- 34003	NPC LOOT (Green NPC Loot) - Classic World bosses and dragons
(34004, '(Boss Loot) - Azuregos - Epic Items'),
(34005, '(Boss Loot) - Lethon - Epic Items'),
(34006, '(Boss Loot) - Emeriss - Epic Items'),
(34007, '(Boss Loot) - Taerar - Epic Items'),
(34008, '(Boss Loot) - Ysondre - Epic Items'),
(34009, 'Blackwing Lair (Boss Loot) - Nefarian - Epic Items (T2 Chest)'),
(34010, 'NPC LOOT (Green World Drop) - (Item Levels: 59-63) - VANILLA NPC ONLY'),
(34011, 'Molten Core (Boss Loot) - Epic Patterns'),
(34024, 'Ruins of Ahn\'Qiraj (Boss Loot) - Book / Guide / Tome / Libram / Codex / Handbook / Tablet / Grimoire / Manual (Class Item)'),
-- 34030	Molten Core (Boss Loot) - Ragnaros - Epic Items (T2 Legs)
(34032, 'Blackwing Lair (Boss Loot) - Razorgore the Untamed - Epic Items (T2 Wrist)'),
(34033, 'Blackwing Lair (Boss Loot) - Vaelastrasz the Corrupt - Epic Items (T2 Waist)'),
(34034, 'Blackwing Lair (Boss Loot) - Broodlord Lashlayer - Epic Items (T2 Feet)'),
(34037, 'Blackwing Lair (Boss Loot) - Ebonroc / Firemaw / Flamegor - (Epic Items & T2 Hands)'),
(34038, 'Blackwing Lair (Boss Loot) - Chromaggus - Epic Items (Group 1)'),
(34040, 'Naxxramas (Boss Loot) - Maexxna - Tokens (T3 Hands)'),
(34041, 'Naxxramas (Boss Loot) - Thaddius - Tokens (T3 Head)'),
(34042, 'Naxxramas (Boss Loot) - Loatheb - Tokens (T3 Legs)'),
(34044, 'Naxxramas (Boss Loot) - Kel\'thuzad  - Epic Items (T3 Ring)'),
(34045, 'Temple of Ahn\'Qiraj (Boss Loot) - Patterns & Imperial Qiraji Armaments / Regalia'),
(34050, 'Molten Core (Boss Loot) - Magmadar - Epic Items (Group 1)'),
(34051, 'Molten Core (Boss Loot) - Magmadar - Epic Items (Group 2)'),
(34052, 'Molten Core (Boss Loot) - Magmadar - Epic Items (Group 3)'),
(34053, 'Molten Core (Boss Loot) - Garr - Epic Items (Group 1)'),
(34054, 'Molten Core (Boss Loot) - Garr - Epic Items (Group 2)'),
(34055, 'Molten Core (Boss Loot) - Garr - Epic Items (Group 3)'),
(34056, 'Molten Core (Boss Loot) - Baron Geddon - Epic Items (Group 1)'),
(34057, 'Molten Core (Boss Loot) - Baron Geddon - Epic Items (Group 2)'),
(34058, 'Molten Core (Boss Loot) - Golemagg the Incinerator - Epic Items (Group 1)'),
(34059, 'Molten Core (Boss Loot) - Golemagg the Incinerator - Epic Items (Group 2)'),
(34060, 'Molten Core (Boss Loot) - Golemagg the Incinerator - Epic Items (Group 3)'),
(34061, 'Molten Core (Boss Loot) - Lucifron - Epic Items (Group 1)'),
(34062, 'Molten Core (Boss Loot) - Lucifron - Epic Items (Group 2)'),
(34063, 'Molten Core (Boss Loot) - Gehennas - Epic Items (Group 1)'),
(34064, 'Molten Core (Boss Loot) - Gehennas - Epic Items (Group 2)'),
(34065, 'Molten Core (Boss Loot) - Shazzrah - Epic Items (Group 1)'),
(34066, 'Molten Core (Boss Loot) - Shazzrah - Epic Items (Group 2)'),
(34067, 'Molten Core (Boss Loot) - Sulfuron Harbinger - Epic Items (Group 1)'),
(34068, 'Molten Core (Boss Loot) - Sulfuron Harbinger - Epic Items (Group 2)'),
-- 34069	Molten Core (Boss Loot) - Ragnaros - Epic Items (Group 1)
-- 34070	Molten Core (Boss Loot) - Ragnaros - Epic Items (Group 2)
(34071, 'Blackwing Lair (Boss Loot) - Nefarian - Epic Items (Group 1)'),
(34072, 'Blackwing Lair (Boss Loot) - Nefarian - Epic Items (Group 2)'),
(34073, 'Blackwing Lair (Boss Loot) - Chromaggus - Epic Items (Group 1)'),
(34074, 'Blackwing Lair (Boss Loot) - Chromaggus - Epic Items (Group 2)'),
(34075, 'Blackwing Lair (Boss Loot) - Flamegor - Epic Items (Group 1)'),
(34076, 'Blackwing Lair (Boss Loot) - Ebonroc - Epic Items (Group 1)'),
(34077, 'Blackwing Lair (Boss Loot) - Firemaw - Epic Items (Group 1)'),
(34078, 'Zul\'Gurub (Boss Loot) - Hakkar - Epic Items (Group 1)'),
(34079, 'Zul\'Gurub (Boss Loot) - Hakkar - Epic Items (Group 2)'),
(34080, 'Temple of Ahn\'Qiraj (Boss Loot) - The Prophet Skeram - Epic Items (Group 1)'),
(34081, 'Temple of Ahn\'Qiraj (Boss Loot) - The Prophet Skeram - Epic Items (Group 2)'),
(34082, 'Temple of Ahn\'Qiraj (Boss Loot) - Battleguard Sartura - Epic Items (Group 1)'),
(34083, 'Temple of Ahn\'Qiraj (Boss Loot) - Battleguard Sartura - Epic Items (Group 2)'),
(34084, 'Temple of Ahn\'Qiraj (Boss Loot) - Fankriss the Unyielding - Epic Items (Group 1)'),
(34085, 'Temple of Ahn\'Qiraj (Boss Loot) - Fankriss the Unyielding - Epic Items (Group 2)'),
(34086, 'Zul\'Gurub (Boss Loot) - Primal Hakkari Tokens'),
(34087, 'Zul\'Gurub (Boss Loot) - Primal Hakkari Tokens'),
(34088, 'Zul\'Gurub (Boss Loot) - Bloodlord Mandokir - Epic Items (Group 1)'),
(34089, 'Zul\'Gurub (Boss Loot) - Jin\'do the Hexxer - Epic Items (Group 1)'),
(34101, 'Temple of Ahn\'Qiraj (Boss Loot) - C\'Thun - Epic Items (Group 1)'),
(34102, 'Temple of Ahn\'Qiraj (Boss Loot) - C\'Thun - Epic Items (Group 2)'),
(34103, 'Ruins of Ahn\'Qiraj (Boss Loot) - Ossirian the Unscarred - Epic Items (Group 1)'),
(34104, 'Ruins of Ahn\'Qiraj (Boss Loot) - Ossirian the Unscarred - Epic Items (Group 2)'),
(35008, 'Stratholme - Sothos and Jarien\'s Heirlooms'),
(35009, 'Maraudon (Boss Loot) - Princess Theradras - Blue Items & Blade of Eternal Darkness (Group 1)'),
(35010, 'Sunken Temple (Boss Loot) - Atal\'ai Defenders - Atal\'ai Items'),
(35011, 'Sunken Temple (Boss Loot) - Weaver / Hazzas / Dreamscythe / Morphaz - Items'),
(35012, 'Sunken Temple (Boss Loot) - Avatar of Hakkar - Items'),
(35013, 'Sunken Temple (Boss Loot) - Shade of Eranikus - Items'),
(35015, 'Dire Maul (The Maul) - Skarr the Unbreakable / The Razza / Mushgog - Items'),
-- 35016	Dire Maul: Class Quest Books
(35018, 'Dire Maul (Boss Loot) - Guard Mol\'dar / Slip\'kik - Items'),
(35024, 'Upper Blackrock Spire (Boss Loot) - Lord Valthalak - Items'),
(35030, 'Scholomance (Boss Loot) - Ras Frostwhisper - Items'),
(35031, 'Scholomance (Boss Loot) - Shared Boss Loot - Items'),
(35032, '(World Boss Loot) - Lord Kazzak / Highlord Kruul - Epic Items'),
(35033, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Major Healing / Mana Potion'),
(35034, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Green Items (Group 1)'),
(35035, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Green Items (Group 2)'),
(35036, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items (Group 1)'),
(35037, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items & Schematic: Major Recombobulator (Group 2)'),
(35038, 'Dire Maul (Boss Loot) - Gordok Tribute (179564) - Blue Items & Treant\'s Bane (Group 3)'),
(44000, 'Item Loot - A Crazy Grab Bag (15902) - (Green World Drop) - (Item Levels: 45-49)'), -- should contain ilvl 56-61
(44001, 'Item Loot - Scum Covered Bag (20767) - Herbs, Potions, Gems, Patterns'); -- Patterns currently missing

