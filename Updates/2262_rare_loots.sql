-- Remove Rare Items from World Loot

-- 65006	NPC LOOT (Rare NPC Loot) - Fedfennel - Special Items
DELETE FROM reference_loot_template WHERE `item` = 5744 AND `entry` != 65006;

-- 65007	NPC LOOT (Rare NPC Loot) - Lord Malathrom - Special Items
DELETE FROM reference_loot_template WHERE `item` = 5971 AND `entry` != 65007;

-- 65008	NPC LOOT (Rare NPC Loot) - Sergeant Brashclaw - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (2203,2204) AND `entry` != 65008;

-- 65009	NPC LOOT (Rare NPC Loot) - Fenros - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (4474,6204) AND `entry` != 65009;

-- 65010	NPC LOOT (Rare NPC Loot) - Slark - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (3188,6180) AND `entry` != 65010;

-- 65011	NPC LOOT (Rare NPC Loot) - Brack - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (2235,6179) AND `entry` != 65011;

-- 65012	NPC LOOT (Rare NPC Loot) - Lupos - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (3018,3227) AND `entry` != 65012;

-- 65013	NPC LOOT (Rare NPC Loot) - Nefaru - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (4476,4477) AND `entry` != 65013;

-- 65014	NPC LOOT (Rare NPC Loot) - Leprithus - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (1314,1387) AND `entry` != 65014;

-- 65015	NPC LOOT (Rare NPC Loot) - Foe Reaper 4000 - Special Items
DELETE FROM reference_loot_template WHERE `item` = 4434 AND `entry` != 65015;

-- 65016	NPC LOOT (Rare NPC Loot) - Naraxis - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (4448,4449) AND `entry` != 65016;

-- 65017	NPC LOOT (Rare NPC Loot) - Kazon - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (2058,3231) AND `entry` != 65017;

-- 65020	NPC LOOT (Rare NPC Loot) - Chatter - Special Items
DELETE FROM reference_loot_template WHERE `item` = 3229 AND `entry` != 65020;

-- 65022	NPC LOOT (Rare NPC Loot) - Commander Felstrom - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (4464,4465) AND `entry` != 65022;

-- 65023	NPC LOOT (Rare NPC Loot) - Rohh the Silent - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (4446,4447) AND `entry` != 65023;

-- 65027	NPC LOOT (Rare NPC Loot) - Leech Widow - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (4444,6199) AND `entry` != 65027;

-- 65028	NPC LOOT (Rare NPC Loot) - Hammerspine - Special Items
DELETE FROM reference_loot_template WHERE `item` = 2254 AND `entry` != 65028;

-- 65032	NPC LOOT (Rare NPC Loot) - Razormaw Matriarch - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (4463,6198) AND `entry` != 65032;

-- 65034	NPC LOOT (Rare NPC Loot) - Boss Galgosh - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (1215,1938) AND `entry` != 65034;

-- 65035	NPC LOOT (Rare NPC Loot) - Magosh - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (2241,3571) AND `entry` != 65035;

-- 65036	NPC LOOT (Rare NPC Loot) - Master Digger - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (6205,6206) AND `entry` != 65036;

-- 65037	NPC LOOT (Rare NPC Loot) - Grizlak - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (2284,6195) AND `entry` != 65037;

-- 65040	NPC LOOT (Rare NPC Loot) - Scale Belly - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (1604,4478) AND `entry` != 65040;

-- 65049	NPC LOOT (Rare NPC Loot) - Deeb - Special Items
DELETE FROM reference_loot_template WHERE `item` = 4303 AND `entry` != 65049;

-- 65050	NPC LOOT (Rare NPC Loot) - Dalaran Spellscribe - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (4436,4437,8491) AND `entry` != 65050;

-- 65051	NPC LOOT (Rare NPC Loot) - Farmer Solliden - Special Items
DELETE FROM creature_loot_template WHERE `item` = 3334 AND `entry` = 1934; -- part of 65051

-- 65052	NPC LOOT (Rare NPC Loot) - Rot Hide Bruiser - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (4439,5975) AND `entry` != 65052;

-- 65053	NPC LOOT (Rare NPC Loot) - Snarlmane - Special Items
DELETE FROM reference_loot_template WHERE `item` = 4445 AND `entry` != 65053;

-- 65054	NPC LOOT (Rare NPC Loot) - Ma'ruk Wyrmscale - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (5749,5750) AND `entry` != 65054;

-- 65055	NPC LOOT (Rare NPC Loot) - Garneg Charskull - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (3392,6200) AND `entry` != 65055;

-- 65063	NPC LOOT (Rare NPC Loot) - Ravenclaw Regent - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (5969,6628) AND `entry` != 65063;

-- 65066	NPC LOOT (Rare NPC Loot) - Large Loch Crocolisk - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (3563,6197) AND `entry` != 65066;

-- 65067	NPC LOOT (Rare NPC Loot) - Lord Sakrasis - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (5028,5029) AND `entry` != 65067;

-- 65068	NPC LOOT (Rare NPC Loot) - Singer - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (5180,5181) AND `entry` != 65068;

-- 65069	NPC LOOT (Rare NPC Loot) - Kovork - Special Items
DELETE FROM reference_loot_template WHERE `item` = 5256 AND `entry` != 65069;

-- 65072	NPC LOOT (Rare NPC Loot) - Nimar the Slayer - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (2622,5257) AND `entry` != 65072;

-- 65084	NPC LOOT (Rare NPC Loot) - Rathorian - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (5111,5112) AND `entry` != 65084;

-- 65088	NPC LOOT (Rare NPC Loot) - Boahn - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (5422,5423) AND `entry` != 65088;

-- 65091	NPC LOOT (Rare NPC Loot) - Terrowulf Packlord - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (5753,5754) AND `entry` != 65091;

-- 65092	NPC LOOT (Rare NPC Loot) - Pridewing Patriarch - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (5751,5752) AND `entry` != 65092;

-- 65094	NPC LOOT (Rare NPC Loot) - Silithid Ravager - Special Items
DELETE FROM reference_loot_template WHERE `item` = 8224 AND `entry` != 65094;

-- 65120	NPC LOOT (Rare NPC Loot) - Stonearm - Special Items
DELETE FROM reference_loot_template WHERE `item` = 1355 AND `entry` != 65120;

-- 65121	NPC LOOT (Rare NPC Loot) - Brokespear - Special Items
DELETE FROM reference_loot_template WHERE `item` = 7559 AND `entry` != 65121;

-- 65122	NPC LOOT (Rare NPC Loot) - Heggin Stonewhisker - Special Items
DELETE FROM reference_loot_template WHERE `item` = 2035 AND `entry` != 65122;

-- 65124	NPC LOOT (Rare NPC Loot) - Digger Flameforge - Special Items
DELETE FROM reference_loot_template WHERE `item` = 4785 AND `entry` != 65124;

-- 65125	NPC LOOT (Rare NPC Loot) - Geopriest Gukk'rok - Special Items
DELETE FROM reference_loot_template WHERE `item` = 1539 AND `entry` != 65125;

-- 65172	NPC LOOT (Rare NPC Loot) - Gibblewilt - Special Items
DELETE FROM reference_loot_template WHERE `item` IN (10553,10554) AND `entry` != 65172;
