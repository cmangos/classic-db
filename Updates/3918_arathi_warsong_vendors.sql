-- Add missing Gossips from Vmangos - classic-db only
-- UPDATE creature_template SET GossipMenuId=6141 WHERE entry=14754; -- Kelm Hargunth
-- UPDATE creature_template SET GossipMenuId=6142 WHERE entry=14753; -- Illiyana Moonblaze
-- DELETE FROM gossip_menu WHERE entry IN (6141,6142);
-- INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES (6141, 7294, 0, 0),(6142, 7295, 0, 0);
-- DELETE FROM gossip_menu_option WHERE menu_id IN (6141,6142);
-- INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
-- (6141, 1, 1, 'What goods have I earned the right to purchase for use in Warsong Gulch?', 10021, 3, 4, 0, 0, 0, 0, 0, NULL, 0, 1524),
-- (6142, 1, 1, 'What goods have I earned the right to purchase for use in Warsong Gulch?', 10019, 3, 4, 0, 0, 0, 0, 0, NULL, 0, 1525);
-- DELETE FROM conditions WHERE condition_entry IN (1524 ,1525) AND value1 IN (889,890);
-- INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags, comments) VALUES
-- (1524 , 5, 889, 4, 0, 0, 0, 'Has Minimum Rank Friendly With Faction ID: 889'), -- Warsong Outriders
-- (1525, 5, 890, 4, 0, 0, 0, 'Has Minimum Rank Friendly With Faction ID: 890'); -- Silverwing Sentinels
-- UPDATE npc_vendor SET condition_id=1524  WHERE entry=14754;
-- UPDATE npc_vendor SET condition_id=1525 WHERE entry=14753;

-- https://tbc.wowhead.com/item=21565/rune-of-perfection - same as 21567
-- https://tbc.wowhead.com/item=21566/rune-of-perfection same as 21568
-- Were missing from Kelm Hargunth <Warsong Supply Officer> 14754 - they were missed, because they are only visible in vendor menu to certain classes!
-- https://tbc.wowhead.com/npc=14753/illiyana-moonblaze
UPDATE creature_template SET VendorTemplateId=0 WHERE entry=14753; -- classic-db has these items in npc_vendor
DELETE FROM npc_vendor WHERE entry=14753 AND item IN ( -- classic-db has these items in npc_vendor
159, -- Refreshing Spring Water
1179, -- Ice Cold Milk
1205, -- Melon Juice
1645, -- Moonberry Juice
1708, -- Sweet Nectar
8766, -- Morning Glory Dew
16166, -- Bean Soup
16167, -- Versicolor Treat
16168, -- Heaven Peach
16169, -- Wild Ricecake
16170, -- Steamed Mandu
16171 -- Shinsollo
);
-- https://tbc.wowhead.com/npc=14754/kelm-hargunth
DELETE FROM npc_vendor WHERE entry=14754 AND item IN (21565,21566);
INSERT INTO npc_vendor (entry, item, maxcount, incrtime, slot, condition_id, comments) VALUES
(14754, 21565, 0, 0, 0, 0, 'Rune of Perfection'),
(14754, 21566, 0, 0, 0, 0, 'Rune of Perfection');

UPDATE npc_vendor SET slot=1 WHERE entry IN (14753,14754) AND item=21566;
UPDATE npc_vendor SET slot=2 WHERE entry IN (14753,14754) AND item=21565;
UPDATE npc_vendor SET slot=3 WHERE entry IN (14753,14754) AND item=21568;
UPDATE npc_vendor SET slot=4 WHERE entry IN (14753,14754) AND item=21567;
UPDATE npc_vendor SET slot=5 WHERE entry IN (14753,14754) AND item=19062;
UPDATE npc_vendor SET slot=6 WHERE entry IN (14753,14754) AND item=19061;
UPDATE npc_vendor SET slot=7 WHERE entry IN (14753,14754) AND item=19060;
UPDATE npc_vendor SET slot=8 WHERE entry IN (14753,14754) AND item=19068;
UPDATE npc_vendor SET slot=9 WHERE entry IN (14753,14754) AND item=19067;
UPDATE npc_vendor SET slot=10 WHERE entry IN (14753,14754) AND item=19066;
UPDATE npc_vendor SET slot=11 WHERE entry IN (14753,14754) AND item=17349;
UPDATE npc_vendor SET slot=12 WHERE entry IN (14753,14754) AND item=17352;
UPDATE npc_vendor SET slot=13 WHERE entry IN (14753,14754) AND item IN (20431,20426);
UPDATE npc_vendor SET slot=14 WHERE entry IN (14753,14754) AND item IN (19525,19521);
UPDATE npc_vendor SET slot=15 WHERE entry IN (14753,14754) AND item IN (19524,19520);
UPDATE npc_vendor SET slot=16 WHERE entry IN (14753,14754) AND item IN (19523,19519);
UPDATE npc_vendor SET slot=17 WHERE entry IN (14753,14754) AND item IN (19522,19518);
UPDATE npc_vendor SET slot=18 WHERE entry IN (14753,14754) AND item IN (20428,20427);
UPDATE npc_vendor SET slot=19 WHERE entry IN (14753,14754) AND item IN (19533,19529);
UPDATE npc_vendor SET slot=20 WHERE entry IN (14753,14754) AND item IN (19532,19528);
UPDATE npc_vendor SET slot=21 WHERE entry IN (14753,14754) AND item IN (19531,19527);
UPDATE npc_vendor SET slot=22 WHERE entry IN (14753,14754) AND item IN (19530,19526);
UPDATE npc_vendor SET slot=23 WHERE entry IN (14753,14754) AND item IN (20439,20429);
UPDATE npc_vendor SET slot=24 WHERE entry IN (14753,14754) AND item IN (19517,19513);
UPDATE npc_vendor SET slot=25 WHERE entry IN (14753,14754) AND item IN (19515,19512);
UPDATE npc_vendor SET slot=26 WHERE entry IN (14753,14754) AND item IN (19516,19511);
UPDATE npc_vendor SET slot=27 WHERE entry IN (14753,14754) AND item IN (19514,19510);
UPDATE npc_vendor SET slot=28 WHERE entry IN (14753,14754) AND item IN (20444,20442);
UPDATE npc_vendor SET slot=29 WHERE entry IN (14753,14754) AND item IN (19541,19537);
UPDATE npc_vendor SET slot=30 WHERE entry IN (14753,14754) AND item IN (19540,19536);
UPDATE npc_vendor SET slot=31 WHERE entry IN (14753,14754) AND item IN (19539,19535);
UPDATE npc_vendor SET slot=32 WHERE entry IN (14753,14754) AND item IN (19538,19534);
UPDATE npc_vendor SET slot=33 WHERE entry IN (14753,14754) AND item=17348;
UPDATE npc_vendor SET slot=34 WHERE entry IN (14753,14754) AND item=17351;
UPDATE npc_vendor SET slot=35 WHERE entry IN (14753,14754) AND item IN (20434,20425);
UPDATE npc_vendor SET slot=36 WHERE entry IN (14753,14754) AND item IN (19573,19569);
UPDATE npc_vendor SET slot=37 WHERE entry IN (14753,14754) AND item IN (19572,19568);
UPDATE npc_vendor SET slot=38 WHERE entry IN (14753,14754) AND item IN (19571,19567);
UPDATE npc_vendor SET slot=39 WHERE entry IN (14753,14754) AND item IN (19570,19566);
UPDATE npc_vendor SET slot=40 WHERE entry IN (14753,14754) AND item IN (20440,20430);
UPDATE npc_vendor SET slot=41 WHERE entry IN (14753,14754) AND item IN (19557,19553);
UPDATE npc_vendor SET slot=42 WHERE entry IN (14753,14754) AND item IN (19556,19552);
UPDATE npc_vendor SET slot=43 WHERE entry IN (14753,14754) AND item IN (19555,19551);
UPDATE npc_vendor SET slot=44 WHERE entry IN (14753,14754) AND item IN (19554,19550);
UPDATE npc_vendor SET slot=45 WHERE entry IN (14753,14754) AND item IN (20438,20437);
UPDATE npc_vendor SET slot=46 WHERE entry IN (14753,14754) AND item IN (19565,19561);
UPDATE npc_vendor SET slot=47 WHERE entry IN (14753,14754) AND item IN (19564,19560);
UPDATE npc_vendor SET slot=48 WHERE entry IN (14753,14754) AND item IN (19563,19559);
UPDATE npc_vendor SET slot=49 WHERE entry IN (14753,14754) AND item IN (19562,19558);
UPDATE npc_vendor SET slot=50 WHERE entry IN (14753,14754) AND item IN (20443,20441);
UPDATE npc_vendor SET slot=51 WHERE entry IN (14753,14754) AND item IN (19549,19545);
UPDATE npc_vendor SET slot=52 WHERE entry IN (14753,14754) AND item IN (19548,19544);
UPDATE npc_vendor SET slot=53 WHERE entry IN (14753,14754) AND item IN (19547,19543);
UPDATE npc_vendor SET slot=54 WHERE entry IN (14753,14754) AND item IN (19546,19542);
UPDATE npc_vendor SET slot=55 WHERE entry IN (14753,14754) AND item IN (19506,19505);
UPDATE npc_vendor SET slot=56 WHERE entry IN (14753,14754) AND item=19581;
UPDATE npc_vendor SET slot=57 WHERE entry IN (14753,14754) AND item=19580;
UPDATE npc_vendor SET slot=58 WHERE entry IN (14753,14754) AND item=19578;
UPDATE npc_vendor SET slot=59 WHERE entry IN (14753,14754) AND item=19597;
UPDATE npc_vendor SET slot=60 WHERE entry IN (14753,14754) AND item=19596;
UPDATE npc_vendor SET slot=61 WHERE entry IN (14753,14754) AND item=19595;
UPDATE npc_vendor SET slot=62 WHERE entry IN (14753,14754) AND item=19590;
UPDATE npc_vendor SET slot=63 WHERE entry IN (14753,14754) AND item=19589;
UPDATE npc_vendor SET slot=64 WHERE entry IN (14753,14754) AND item=19587;
UPDATE npc_vendor SET slot=65 WHERE entry IN (14753,14754) AND item=19584;
UPDATE npc_vendor SET slot=66 WHERE entry IN (14753,14754) AND item=19583;
UPDATE npc_vendor SET slot=67 WHERE entry IN (14753,14754) AND item=19582;
UPDATE npc_vendor SET slot=68 WHERE entry IN (14753,14754) AND item IN (22752,22747);
UPDATE npc_vendor SET slot=69 WHERE entry IN (14753,14754) AND item IN (22749,22741);
UPDATE npc_vendor SET slot=70 WHERE entry IN (14753,14754) AND item IN (22753,22740);
UPDATE npc_vendor SET slot=71 WHERE entry IN (14753,14754) AND item IN (22750,22676);
UPDATE npc_vendor SET slot=72 WHERE entry IN (14753,14754) AND item IN (22748,22673);
UPDATE npc_vendor SET slot=73 WHERE entry IN (14753,14754) AND item IN (22672,22651);
UPDATE npc_vendor SET slot=74 WHERE entry IN (14753,14754) AND item IN (30497,30498);

/*
	["Kelm Hargunth"]={
		21568, -- [1]
		21567, -- [2]
		19062, -- [3]
		19061, -- [4]
		19060, -- [5]
		19068, -- [6]
		19067, -- [7]
		19066, -- [8]
		17349, -- [9]
		17352, -- [10]
		20426, -- [11]
		19521, -- [12]
		19520, -- [13]
		19519, -- [14]
		19518, -- [15]
		20427, -- [16]
		19529, -- [17]
		19528, -- [18]
		19527, -- [19]
		19526, -- [20]
		20429, -- [21]
		19513, -- [22]
		19512, -- [23]
		19511, -- [24]
		19510, -- [25]
		20442, -- [26]
		19537, -- [27]
		19536, -- [28]
		19535, -- [29]
		19534, -- [30]
		17348, -- [31]
		17351, -- [32]
		20425, -- [33]
		19569, -- [34]
		19568, -- [35]
		19567, -- [36]
		19566, -- [37]
		20430, -- [38]
		19553, -- [39]
		19552, -- [40]
		19551, -- [41]
		19550, -- [42]
		20437, -- [43]
		19561, -- [44]
		19560, -- [45]
		19559, -- [46]
		19558, -- [47]
		20441, -- [48]
		19545, -- [49]
		19544, -- [50]
		19543, -- [51]
		19542, -- [52]
		19505, -- [53]
		19581, -- [54]
		19580, -- [55]
		19578, -- [56]
		19597, -- [57]
		19596, -- [58]
		19595, -- [59]
		19590, -- [60]
		19589, -- [61]
		19587, -- [62]
		19584, -- [63]
		19583, -- [64]
		19582, -- [65]
		22747, -- [66]
		22741, -- [67]
		22740, -- [68]
		22676, -- [69]
		22673, -- [70]
		22651, -- [71]
		30498, -- [72]
	},
*/

UPDATE creature_template SET VendorTemplateId=451 WHERE entry=14964; -- food was limited to 5, 14963,15124,15125 already has this template set
DELETE FROM npc_vendor WHERE entry=14964;

-- maybe removed too
UPDATE quest_template SET RequiredMinRepFaction=890, RequiredMinRepValue=3000 WHERE entry IN (7863,7864,7865);
UPDATE quest_template SET MaxLevel=34 WHERE entry=7863;
UPDATE quest_template SET MaxLevel=44 WHERE entry=7864;
UPDATE quest_template SET MaxLevel=255 WHERE entry=7865;

-- maybe removed too
UPDATE quest_template SET RequiredMinRepFaction=889, RequiredMinRepValue=3000 WHERE entry IN (7866,7867,7868);
UPDATE quest_template SET MaxLevel=34 WHERE entry=7866;
UPDATE quest_template SET MaxLevel=44 WHERE entry=7867;
UPDATE quest_template SET MaxLevel=255 WHERE entry=7868;

-- Vanquish the Invaders! 8291 - Removed in TBC & classic
-- 8290	19	Vanquish the Invaders,7788,7871,7872,7873,8291
DELETE FROM creature_questrelation WHERE id=14733;
DELETE FROM creature_involvedrelation WHERE id=14733;
UPDATE quest_template SET RequiredRaces=1101, ExclusiveGroup=7788, CompleteEmote=1, SpecialFlags=1 WHERE entry IN (8290,7788,7871,7872,7873,8291);
-- INSERT INTO creature_questrelation (id, quest) VALUES (14733, 8290);
-- INSERT INTO creature_involvedrelation (id, quest) VALUES (14733, 8290);
UPDATE quest_template SET MaxLevel=19 WHERE entry=8290;
UPDATE quest_template SET MaxLevel=29 WHERE entry=7788;
UPDATE quest_template SET MaxLevel=39 WHERE entry=7871;
UPDATE quest_template SET MaxLevel=49 WHERE entry=7872;
UPDATE quest_template SET MaxLevel=59 WHERE entry=7873;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8291;

-- Quell the Silverwing Usurpers 8294 - Removed in TBC & classic
UPDATE quest_template SET RequiredRaces=690, ExclusiveGroup=7789, CompleteEmote=1, SpecialFlags=1 WHERE entry IN (8295,7789,7874,7875,7876,8294);
-- INSERT INTO creature_questrelation (id, quest) VALUES (14781, 8295);
-- INSERT INTO creature_involvedrelation (id, quest) VALUES (14781, 8295);
UPDATE quest_template SET MaxLevel=19 WHERE entry=8295;
UPDATE quest_template SET MaxLevel=29 WHERE entry=7789;
UPDATE quest_template SET MaxLevel=39 WHERE entry=7874;
UPDATE quest_template SET MaxLevel=49 WHERE entry=7875;
UPDATE quest_template SET MaxLevel=59 WHERE entry=7876;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8294;
-- 8295	19	Quell the Silverwing Usurpers
-- 7789	29	Quell the Silverwing Usurpers
-- 7874	39	Quell the Silverwing Usurpers
-- 7875	49	Quell the Silverwing Usurpers
-- 7876	59	Quell the Silverwing Usurpers
-- 8294	69	Quell the Silverwing Usurpers
-- DELETE FROM creature_questrelation WHERE id=14781 AND quest NOT IN (8295,7789,7874,7875,7876,8294);
-- DELETE FROM creature_involvedrelation WHERE id=14781 AND quest NOT IN (8295,7789,7874,7875,7876,8294);
DELETE FROM creature_questrelation WHERE id=14781;
DELETE FROM creature_involvedrelation WHERE id=14781;

-- Removed turn in 3s
UPDATE quest_template SET MaxLevel=19 WHERE entry=8386;
UPDATE quest_template SET MaxLevel=19 WHERE entry=8372;
UPDATE quest_template SET MaxLevel=29 WHERE entry=8399;
UPDATE quest_template SET MaxLevel=29 WHERE entry=8404;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8400;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8405;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8401;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8406;
UPDATE quest_template SET MaxLevel=59 WHERE entry=8402;
UPDATE quest_template SET MaxLevel=59 WHERE entry=8407;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8403;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8408;
-- 8386	19	Fight for Warsong Gulch
-- 8372	19	Fight for Warsong Gulch
-- 8399	29	Fight for Warsong Gulch
-- 8404	29	Fight for Warsong Gulch
-- 8400	39	Fight for Warsong Gulch
-- 8405	39	Fight for Warsong Gulch
-- 8401	49	Fight for Warsong Gulch
-- 8406	49	Fight for Warsong Gulch
-- 8402	59	Fight for Warsong Gulch
-- 8407	59	Fight for Warsong Gulch
-- 8403	69	Fight for Warsong Gulch
-- 8408	69	Fight for Warsong Gulch

-- Removed turn in 3s
UPDATE quest_template SET MaxLevel=19 WHERE entry=8389;
UPDATE quest_template SET MaxLevel=19 WHERE entry=8368;
UPDATE quest_template SET MaxLevel=29 WHERE entry=8431;
UPDATE quest_template SET MaxLevel=29 WHERE entry=8426;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8432;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8427;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8433;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8428;
UPDATE quest_template SET MaxLevel=59 WHERE entry=8429;
UPDATE quest_template SET MaxLevel=59 WHERE entry=8434;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8435;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8430;
-- 8389	19	Battle of Warsong Gulch
-- 8368	19	Battle of Warsong Gulch
-- 8431	29	Battle of Warsong Gulch
-- 8426	29	Battle of Warsong Gulch
-- 8432	39	Battle of Warsong Gulch
-- 8427	39	Battle of Warsong Gulch
-- 8433	49	Battle of Warsong Gulch
-- 8428	49	Battle of Warsong Gulch
-- 8429	59	Battle of Warsong Gulch
-- 8434	59	Battle of Warsong Gulch
-- 8435	69	Battle of Warsong Gulch
-- 8430	69	Battle of Warsong Gulch

-- Removed turn in 3s
UPDATE quest_template SET MaxLevel=29 WHERE entry=8374;
UPDATE quest_template SET MaxLevel=29 WHERE entry=8384;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8393;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8391;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8394;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8392;
UPDATE quest_template SET MaxLevel=59 WHERE entry=8395;
UPDATE quest_template SET MaxLevel=59 WHERE entry=8397;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8396;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8398;
-- 8374	29	Claiming Arathi Basin
-- 8384	29	Claiming Arathi Basin
-- 8393	39	Claiming Arathi Basin
-- 8391	39	Claiming Arathi Basin
-- 8394
-- 8392	49	Claiming Arathi Basin
-- 8395
-- 8397	59	Claiming Arathi Basin
-- 8396
-- 8398	69	Claiming Arathi Basin

-- Removed turn in 3s
UPDATE quest_template SET MaxLevel=29 WHERE entry=8370;
UPDATE quest_template SET MaxLevel=29 WHERE entry=8390;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8440;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8436;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8441;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8437;
UPDATE quest_template SET MaxLevel=59 WHERE entry=8442;
UPDATE quest_template SET MaxLevel=59 WHERE entry=8438;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8443;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8439;
-- 8370	29	Conquering Arathi Basin
-- 8390	29	Conquering Arathi Basin
-- 8440	39	Conquering Arathi Basin
-- 8436	39	Conquering Arathi Basin
-- 8441	49	Conquering Arathi Basin
-- 8437	49	Conquering Arathi Basin
-- 8442	59	Conquering Arathi Basin
-- 8438	59	Conquering Arathi Basin
-- 8443	69	Conquering Arathi Basin
-- 8439	69	Conquering Arathi Basin

-- Removed - Alliance
-- https://classic.wowhead.com/search?q=Arathi+Basin+Resources
-- https://classic.wowhead.com/quest=8297/arathi-basin-resources
-- https://classic.wowhead.com/quest=8080/arathi-basin-resources
-- https://classic.wowhead.com/quest=8156/arathi-basin-resources
-- https://classic.wowhead.com/quest=8154/arathi-basin-resources
-- https://classic.wowhead.com/quest=8155/arathi-basin-resources
UPDATE quest_template SET MaxLevel=29 WHERE entry=8297;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8080;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8156;
UPDATE quest_template SET MaxLevel=59 WHERE entry=8154;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8155;
DELETE FROM creature_questrelation WHERE id IN (14984);
DELETE FROM creature_involvedrelation WHERE id IN (14984);

-- Win the battle for Arathi Basin, get an Arathi Resource Crate, and return it to Deathstalker Mortis at Hammerfall.
-- 8162	29	Cut Arathor Supply Lines
-- 8161	39	Cut Arathor Supply Lines
-- 8160	49	Cut Arathor Supply Lines
-- 8123	59	Cut Arathor Supply Lines
-- 8299	69	Cut Arathor Supply Lines
UPDATE quest_template SET MaxLevel=29 WHERE entry=8162;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8161;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8160;
UPDATE quest_template SET MaxLevel=59 WHERE entry=8123;
UPDATE quest_template SET MaxLevel=69 WHERE entry=8299;
DELETE FROM creature_questrelation WHERE id IN (15022);
DELETE FROM creature_involvedrelation WHERE id IN (15022);

-- https://classic.wowhead.com/search?q=More+Resource+Crates - The Defilers
-- https://classic.wowhead.com/quest=8165/more-resource-crates
-- https://classic.wowhead.com/quest=8163/more-resource-crates
-- https://classic.wowhead.com/quest=8164/more-resource-crates
-- https://classic.wowhead.com/quest=8300/more-resource-crates
-- https://classic.wowhead.com/quest=8124/more-resource-crates

-- https://classic.wowhead.com/search?q=More+Resource+Crates - The League of Arathor
-- https://classic.wowhead.com/quest=8158/more-resource-crates
-- https://classic.wowhead.com/quest=8157/more-resource-crates
-- https://classic.wowhead.com/quest=8159/more-resource-crates
-- https://classic.wowhead.com/quest=8298/more-resource-crates
-- https://classic.wowhead.com/quest=8081/more-resource-crates

-- https://tbc.wowhead.com/search?q=The+Battle+for+Arathi+Basin%21#quests
-- Alliance
UPDATE quest_template SET MaxLevel=29 WHERE entry=8168;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8167;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8166;
UPDATE quest_template SET MaxLevel=60 WHERE entry=8105;
-- 8168	29	The Battle for Arathi Basin!
-- 8167	39	The Battle for Arathi Basin!
-- 8166	49	The Battle for Arathi Basin!
-- 8105	60	The Battle for Arathi Basin!

-- Horde
UPDATE quest_template SET MaxLevel=29 WHERE entry=8171;
UPDATE quest_template SET MaxLevel=39 WHERE entry=8170;
UPDATE quest_template SET MaxLevel=49 WHERE entry=8169;
UPDATE quest_template SET MaxLevel=60 WHERE entry=8120;
-- 8171	29	The Battle for Arathi Basin!
-- 8170	39	The Battle for Arathi Basin!
-- 8169	49	The Battle for Arathi Basin!
-- 8120	60	The Battle for Arathi Basin!

-- https://classic.wowhead.com/quest=8260/arathor-basic-care-package
-- https://classic.wowhead.com/quest=8261/arathor-standard-care-package
-- https://classic.wowhead.com/quest=8262/arathor-advanced-care-package
UPDATE quest_template SET MaxLevel=34 WHERE entry=8260;
UPDATE quest_template SET MaxLevel=44 WHERE entry=8261;
UPDATE quest_template SET RepObjectiveFaction=0, RepObjectiveValue=0, RequiredMinRepFaction=509, RequiredMinRepValue=3000, RewRepFaction1=509, RewRepValue1=10 WHERE entry IN (8260,8261,8262);


UPDATE quest_template SET MaxLevel=34 WHERE entry=8263;
UPDATE quest_template SET MaxLevel=44 WHERE entry=8264;
-- 8263	34	Defiler's Basic Care Package
-- 8264	44	Defiler's Standard Care Package
-- https://classic.wowhead.com/quest=8265/defilers-advanced-care-package
UPDATE quest_template SET RepObjectiveFaction=0, RepObjectiveValue=0, RequiredMinRepFaction=510, RequiredMinRepValue=3000, RewRepFaction1=510, RewRepValue1=10 WHERE entry IN (8263,8264,8265);
UPDATE creature_template SET SpeedWalk=(2.5 / 2.5), MechanicImmuneMask=(16+64+2048), DamageMultiplier=10 WHERE entry IN (15126,15127); -- [19] (168) UNIT_NPC_FLAGS: (4226) QuestGiver, Vendor, Repair (dmg might be even higher)

-- Samuel Hawke <League of Arathor Supply Officer>
UPDATE npc_vendor SET maxcount=0, incrtime=0 WHERE item=20237 AND entry=15127; -- Highlander's Mageweave Bandage
UPDATE npc_vendor SET slot=1 WHERE entry=15127 AND item=17349;
UPDATE npc_vendor SET slot=2 WHERE entry=15127 AND item=17352;
UPDATE npc_vendor SET slot=3 WHERE entry=15127 AND item=20226;
UPDATE npc_vendor SET slot=4 WHERE entry=15127 AND item=20227;
UPDATE npc_vendor SET slot=5 WHERE entry=15127 AND item=20225;
UPDATE npc_vendor SET slot=6 WHERE entry=15127 AND item=20244;
UPDATE npc_vendor SET slot=7 WHERE entry=15127 AND item=20237;
UPDATE npc_vendor SET slot=8 WHERE entry=15127 AND item=20243;
UPDATE npc_vendor SET slot=9 WHERE entry=15127 AND item=21119;
UPDATE npc_vendor SET slot=10 WHERE entry=15127 AND item=21118;
UPDATE npc_vendor SET slot=11 WHERE entry=15127 AND item=21117;
UPDATE npc_vendor SET slot=12 WHERE entry=15127 AND item=20071;
UPDATE npc_vendor SET slot=13 WHERE entry=15127 AND item=20047; -- Griddle Cloth
UPDATE npc_vendor SET slot=14 WHERE entry=15127 AND item=20097;
UPDATE npc_vendor SET slot=15 WHERE entry=15127 AND item=20098;
UPDATE npc_vendor SET slot=16 WHERE entry=15127 AND item=20099;
UPDATE npc_vendor SET slot=17 WHERE entry=15127 AND item=20054; -- Cloth Boots
UPDATE npc_vendor SET slot=18 WHERE entry=15127 AND item=20094; 
UPDATE npc_vendor SET slot=19 WHERE entry=15127 AND item=20095; 
UPDATE npc_vendor SET slot=20 WHERE entry=15127 AND item=20096;
UPDATE npc_vendor SET slot=21 WHERE entry=15127 AND item=20046;
UPDATE npc_vendor SET slot=22 WHERE entry=15127 AND item=20103;
UPDATE npc_vendor SET slot=23 WHERE entry=15127 AND item=20104;
UPDATE npc_vendor SET slot=24 WHERE entry=15127 AND item=20105;
UPDATE npc_vendor SET slot=25 WHERE entry=15127 AND item=20045;
UPDATE npc_vendor SET slot=26 WHERE entry=15127 AND item=20115;
UPDATE npc_vendor SET slot=27 WHERE entry=15127 AND item=20116;
UPDATE npc_vendor SET slot=28 WHERE entry=15127 AND item=20117;
UPDATE npc_vendor SET slot=29 WHERE entry=15127 AND item=20053;
UPDATE npc_vendor SET slot=30 WHERE entry=15127 AND item=20100;
UPDATE npc_vendor SET slot=31 WHERE entry=15127 AND item=20101;
UPDATE npc_vendor SET slot=32 WHERE entry=15127 AND item=20102;
UPDATE npc_vendor SET slot=33 WHERE entry=15127 AND item=20052;
UPDATE npc_vendor SET slot=34 WHERE entry=15127 AND item=20112;
UPDATE npc_vendor SET slot=35 WHERE entry=15127 AND item=20113;
UPDATE npc_vendor SET slot=36 WHERE entry=15127 AND item=20114;
UPDATE npc_vendor SET slot=37 WHERE entry=15127 AND item=20043;
UPDATE npc_vendor SET slot=38 WHERE entry=15127 AND item=20088;
UPDATE npc_vendor SET slot=39 WHERE entry=15127 AND item=20089;
UPDATE npc_vendor SET slot=40 WHERE entry=15127 AND item=20090;
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (15127, 20044, 0, 0, 41, 'Highlander\'s Mail Girdle'); -- https://tbc.wowhead.com/item=20044/highlanders-mail-girdle
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (15127, 20118, 0, 0, 42, 'Highlander\'s Mail Girdle'); -- https://tbc.wowhead.com/item=20118/highlanders-mail-girdle
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (15127, 20119, 0, 0, 43, 'Highlander\'s Mail Girdle'); -- https://tbc.wowhead.com/item=20119/highlanders-mail-girdle
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (15127, 20120, 0, 0, 44, 'Highlander\'s Mail Girdle'); -- https://tbc.wowhead.com/item=20120/highlanders-mail-girdle
UPDATE npc_vendor SET slot=45 WHERE entry=15127 AND item=20050;
UPDATE npc_vendor SET slot=46 WHERE entry=15127 AND item=20091;
UPDATE npc_vendor SET slot=47 WHERE entry=15127 AND item=20092;
UPDATE npc_vendor SET slot=48 WHERE entry=15127 AND item=20093;
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (15127, 20051, 0, 0, 49, 'Highlander\'s Mail Girdle'); -- https://tbc.wowhead.com/item=20051/highlanders-mail-greaves
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (15127, 20121, 0, 0, 50, 'Highlander\'s Mail Girdle'); -- https://tbc.wowhead.com/item=20121/highlanders-mail-greaves
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (15127, 20122, 0, 0, 51, 'Highlander\'s Mail Girdle'); -- https://tbc.wowhead.com/item=20122/highlanders-mail-greaves
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (15127, 20123, 0, 0, 52, 'Highlander\'s Mail Girdle'); -- https://tbc.wowhead.com/item=20123/highlanders-mail-greaves
UPDATE npc_vendor SET slot=53 WHERE entry=15127 AND item=20041;
UPDATE npc_vendor SET slot=54 WHERE entry=15127 AND item=20124;
UPDATE npc_vendor SET slot=55 WHERE entry=15127 AND item=20125;
UPDATE npc_vendor SET slot=56 WHERE entry=15127 AND item=20126;
UPDATE npc_vendor SET slot=57 WHERE entry=15127 AND item=20048;
UPDATE npc_vendor SET slot=58 WHERE entry=15127 AND item=20127;
UPDATE npc_vendor SET slot=59 WHERE entry=15127 AND item=20128;
UPDATE npc_vendor SET slot=60 WHERE entry=15127 AND item=20129;
UPDATE npc_vendor SET slot=61 WHERE entry=15127 AND item=20042;
UPDATE npc_vendor SET slot=62 WHERE entry=15127 AND item=20106;
UPDATE npc_vendor SET slot=63 WHERE entry=15127 AND item=20107;
UPDATE npc_vendor SET slot=64 WHERE entry=15127 AND item=20108;
UPDATE npc_vendor SET slot=65 WHERE entry=15127 AND item=20049;
UPDATE npc_vendor SET slot=66 WHERE entry=15127 AND item=20109;
UPDATE npc_vendor SET slot=67 WHERE entry=15127 AND item=20110;
UPDATE npc_vendor SET slot=68 WHERE entry=15127 AND item=20111;
UPDATE npc_vendor SET slot=69 WHERE entry=15127 AND item=20073; -- Cloak
UPDATE npc_vendor SET slot=70 WHERE entry=15127 AND item=20061; -- https://tbc.wowhead.com/item=20061/highlanders-epaulets
UPDATE npc_vendor SET slot=71 WHERE entry=15127 AND item=20060; -- https://tbc.wowhead.com/item=20060/highlanders-lizardhide-shoulders
UPDATE npc_vendor SET slot=72 WHERE entry=15127 AND item=20059; -- https://tbc.wowhead.com/item=20059/highlanders-leather-shoulders
UPDATE npc_vendor SET slot=73 WHERE entry=15127 AND item=20055; -- https://tbc.wowhead.com/item=20055/highlanders-chain-pauldrons
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (15127, 20056, 0, 0, 74, 'Highlander\'s Mail Pauldrons');  -- https://tbc.wowhead.com/item=20056/highlanders-mail-pauldrons
UPDATE npc_vendor SET slot=75 WHERE entry=15127 AND item=20057; -- https://tbc.wowhead.com/item=20057/highlanders-plate-spaulders
UPDATE npc_vendor SET slot=76 WHERE entry=15127 AND item=20058; -- https://tbc.wowhead.com/item=20058/highlanders-lamellar-spaulders
UPDATE npc_vendor SET slot=77 WHERE entry=15127 AND item=20069;
UPDATE npc_vendor SET slot=78 WHERE entry=15127 AND item=20070;

-- Rutherford Twing <Defilers Supply Officer> 15126
UPDATE npc_vendor SET slot=1 WHERE entry=15126 AND item=17349;
UPDATE npc_vendor SET slot=2 WHERE entry=15126 AND item=17352;
UPDATE npc_vendor SET slot=3 WHERE entry=15126 AND item=20223;
UPDATE npc_vendor SET slot=4 WHERE entry=15126 AND item=20224;
UPDATE npc_vendor SET slot=5 WHERE entry=15126 AND item=20222;
UPDATE npc_vendor SET slot=6 WHERE entry=15126 AND item=20235;
UPDATE npc_vendor SET slot=7 WHERE entry=15126 AND item=20232;
UPDATE npc_vendor SET slot=8 WHERE entry=15126 AND item=20234;
UPDATE npc_vendor SET slot=9 WHERE entry=15126 AND item=21120;
UPDATE npc_vendor SET slot=10 WHERE entry=15126 AND item=21116;
UPDATE npc_vendor SET slot=11 WHERE entry=15126 AND item=21115;
UPDATE npc_vendor SET slot=12 WHERE entry=15126 AND item=20072;
UPDATE npc_vendor SET slot=13 WHERE entry=15126 AND item=20163; -- Griddle Cloth
UPDATE npc_vendor SET slot=14 WHERE entry=15126 AND item=20165;
UPDATE npc_vendor SET slot=15 WHERE entry=15126 AND item=20166;
UPDATE npc_vendor SET slot=16 WHERE entry=15126 AND item=20164;
UPDATE npc_vendor SET slot=17 WHERE entry=15126 AND item=20159; -- Cloth Boots
UPDATE npc_vendor SET slot=18 WHERE entry=15126 AND item=20160; 
UPDATE npc_vendor SET slot=19 WHERE entry=15126 AND item=20161; 
UPDATE npc_vendor SET slot=20 WHERE entry=15126 AND item=20162;
UPDATE npc_vendor SET slot=21 WHERE entry=15126 AND item=20171;
UPDATE npc_vendor SET slot=22 WHERE entry=15126 AND item=20174;
UPDATE npc_vendor SET slot=23 WHERE entry=15126 AND item=20173;
UPDATE npc_vendor SET slot=24 WHERE entry=15126 AND item=20172;
UPDATE npc_vendor SET slot=25 WHERE entry=15126 AND item=20190;
UPDATE npc_vendor SET slot=26 WHERE entry=15126 AND item=20193;
UPDATE npc_vendor SET slot=27 WHERE entry=15126 AND item=20192;
UPDATE npc_vendor SET slot=28 WHERE entry=15126 AND item=20191;
UPDATE npc_vendor SET slot=29 WHERE entry=15126 AND item=20167;
UPDATE npc_vendor SET slot=30 WHERE entry=15126 AND item=20170;
UPDATE npc_vendor SET slot=31 WHERE entry=15126 AND item=20168;
UPDATE npc_vendor SET slot=32 WHERE entry=15126 AND item=20169;
UPDATE npc_vendor SET slot=33 WHERE entry=15126 AND item=20186;
UPDATE npc_vendor SET slot=34 WHERE entry=15126 AND item=20189;
UPDATE npc_vendor SET slot=35 WHERE entry=15126 AND item=20187;
UPDATE npc_vendor SET slot=36 WHERE entry=15126 AND item=20188;
UPDATE npc_vendor SET slot=37 WHERE entry=15126 AND item=20150;
UPDATE npc_vendor SET slot=38 WHERE entry=15126 AND item=20151;
UPDATE npc_vendor SET slot=39 WHERE entry=15126 AND item=20153;
UPDATE npc_vendor SET slot=40 WHERE entry=15126 AND item=20152;
UPDATE npc_vendor SET slot=41 WHERE entry=15126 AND item=20195;
UPDATE npc_vendor SET slot=42 WHERE entry=15126 AND item=20196;
UPDATE npc_vendor SET slot=43 WHERE entry=15126 AND item=20198;
UPDATE npc_vendor SET slot=44 WHERE entry=15126 AND item=20197;
UPDATE npc_vendor SET slot=45 WHERE entry=15126 AND item=20154;
UPDATE npc_vendor SET slot=46 WHERE entry=15126 AND item=20155;
UPDATE npc_vendor SET slot=47 WHERE entry=15126 AND item=20156;
UPDATE npc_vendor SET slot=48 WHERE entry=15126 AND item=20157;
UPDATE npc_vendor SET slot=49 WHERE entry=15126 AND item=20199;
UPDATE npc_vendor SET slot=50 WHERE entry=15126 AND item=20202;
UPDATE npc_vendor SET slot=51 WHERE entry=15126 AND item=20200;
UPDATE npc_vendor SET slot=52 WHERE entry=15126 AND item=20201;
UPDATE npc_vendor SET slot=53 WHERE entry=15126 AND item=20204;
UPDATE npc_vendor SET slot=54 WHERE entry=15126 AND item=20205;
UPDATE npc_vendor SET slot=55 WHERE entry=15126 AND item=20206;
UPDATE npc_vendor SET slot=56 WHERE entry=15126 AND item=20207;
UPDATE npc_vendor SET slot=57 WHERE entry=15126 AND item=20208;
UPDATE npc_vendor SET slot=58 WHERE entry=15126 AND item=20211;
UPDATE npc_vendor SET slot=59 WHERE entry=15126 AND item=20209;
UPDATE npc_vendor SET slot=60 WHERE entry=15126 AND item=20210;
UPDATE npc_vendor SET slot=61 WHERE entry=15126 AND item=20177;
UPDATE npc_vendor SET slot=62 WHERE entry=15126 AND item=20179;
UPDATE npc_vendor SET slot=63 WHERE entry=15126 AND item=20180;
UPDATE npc_vendor SET slot=64 WHERE entry=15126 AND item=20178;
UPDATE npc_vendor SET slot=65 WHERE entry=15126 AND item=20181;
UPDATE npc_vendor SET slot=66 WHERE entry=15126 AND item=20185;
UPDATE npc_vendor SET slot=67 WHERE entry=15126 AND item=20183;
UPDATE npc_vendor SET slot=68 WHERE entry=15126 AND item=20182;
UPDATE npc_vendor SET slot=69 WHERE entry=15126 AND item=20068; -- Cloak
UPDATE npc_vendor SET slot=70 WHERE entry=15126 AND item=20176;
UPDATE npc_vendor SET slot=71 WHERE entry=15126 AND item=20175;
UPDATE npc_vendor SET slot=72 WHERE entry=15126 AND item=20194;
UPDATE npc_vendor SET slot=73 WHERE entry=15126 AND item=20158;
UPDATE npc_vendor SET slot=74 WHERE entry=15126 AND item=20203;
UPDATE npc_vendor SET slot=75 WHERE entry=15126 AND item=20212;
UPDATE npc_vendor SET slot=76 WHERE entry=15126 AND item=20184;
UPDATE npc_vendor SET slot=77 WHERE entry=15126 AND item=20220;
UPDATE npc_vendor SET slot=78 WHERE entry=15126 AND item=20214;

UPDATE creature_template SET SpeedWalk=(2.5 / 2.5), DamageMultiplier=10 WHERE entry IN (19855,19905);

-- https://tbc.wowhead.com/quest=8114/control-four-bases
-- https://tbc.wowhead.com/quest=8115/control-five-bases
UPDATE quest_template SET RequiredMinRepFaction=509, RequiredMinRepValue=3000  WHERE entry=8114; 
UPDATE quest_template SET RequiredMinRepFaction=509, RequiredMinRepValue=42000, RewRepFaction1=509, RewRepValue1=500 WHERE entry=8115;

-- https://tbc.wowhead.com/quest=8121/take-four-bases friendly
-- https://tbc.wowhead.com/quest=8122/take-five-bases exalted 60 level
UPDATE quest_template SET RequiredMinRepFaction=510, RequiredMinRepValue=3000,  RewRepFaction1=510, RewRepValue1=1000  WHERE entry=8121; 
UPDATE quest_template SET RequiredMinRepFaction=510, RequiredMinRepValue=42000, RewRepFaction1=510, RewRepValue1=500 WHERE entry=8122;

DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id IN (19905,19855));

-- Narj Deepslice
UPDATE npc_vendor_template SET slot=101 WHERE entry=425 AND item=117;
UPDATE npc_vendor_template SET slot=102 WHERE entry=425 AND item=2287;
UPDATE npc_vendor_template SET slot=103 WHERE entry=425 AND item=3770;
UPDATE npc_vendor_template SET slot=104 WHERE entry=425 AND item=3771;
UPDATE npc_vendor_template SET slot=105 WHERE entry=425 AND item=4599;
UPDATE npc_vendor_template SET slot=106 WHERE entry=425 AND item=8952;
UPDATE npc_vendor SET slot=107 WHERE entry=2814 AND item=4609;

UPDATE npc_vendor_template SET slot=101 WHERE entry=318 AND item=2524;
UPDATE npc_vendor_template SET slot=102 WHERE entry=318 AND item=2532;
UPDATE npc_vendor_template SET slot=103 WHERE entry=318 AND item=2525;
UPDATE npc_vendor_template SET slot=104 WHERE entry=318 AND item=2533;
UPDATE npc_vendor_template SET slot=105 WHERE entry=318 AND item=2527;
UPDATE npc_vendor_template SET slot=106 WHERE entry=318 AND item=2535;
UPDATE npc_vendor SET slot=107 WHERE entry=1471 AND item=10858;

-- Vikki Lonsav
UPDATE npc_vendor_template SET slot=101 WHERE entry=431 AND item=159;
UPDATE npc_vendor_template SET slot=102 WHERE entry=431 AND item=1205;
UPDATE npc_vendor_template SET slot=103 WHERE entry=431 AND item=1708;
UPDATE npc_vendor_template SET slot=104 WHERE entry=431 AND item=1645;
UPDATE npc_vendor_template SET slot=105 WHERE entry=431 AND item=4498;
UPDATE npc_vendor_template SET slot=106 WHERE entry=431 AND item=4497;
UPDATE npc_vendor_template SET slot=107 WHERE entry=431 AND item=2515;
UPDATE npc_vendor_template SET slot=108 WHERE entry=431 AND item=3030;
UPDATE npc_vendor_template SET slot=109 WHERE entry=431 AND item=11285;
UPDATE npc_vendor_template SET slot=110 WHERE entry=431 AND item=28053;
UPDATE npc_vendor_template SET slot=111 WHERE entry=431 AND item=2519;
UPDATE npc_vendor_template SET slot=112 WHERE entry=431 AND item=3033;
UPDATE npc_vendor_template SET slot=113 WHERE entry=431 AND item=11284;
UPDATE npc_vendor_template SET slot=114 WHERE entry=431 AND item=28060;
UPDATE npc_vendor_template SET slot=115 WHERE entry=431 AND item=4470;
UPDATE npc_vendor_template SET slot=116 WHERE entry=431 AND item=4471;
UPDATE npc_vendor_template SET slot=117 WHERE entry=431 AND item=25873;
UPDATE npc_vendor_template SET slot=118 WHERE entry=431 AND item=25875;
UPDATE npc_vendor_template SET slot=119 WHERE entry=431 AND item=25876;
UPDATE npc_vendor_template SET slot=120 WHERE entry=431 AND item=29013;
UPDATE npc_vendor_template SET slot=121 WHERE entry=431 AND item=29009;
UPDATE npc_vendor_template SET slot=122 WHERE entry=431 AND item=29010;
UPDATE npc_vendor_template SET slot=123 WHERE entry=431 AND item=29014;

-- Hammon Karwn
UPDATE npc_vendor SET slot=1 WHERE entry=2810 AND item=12228; -- this doesnt work yet, but oke
DELETE FROM npc_vendor WHERE entry IN (8934,7947,6301,5163,5135,3955,3779,2810,2225,1286,989) AND item=8925; -- part of the VendorTemplateId they all use (108)
UPDATE npc_vendor SET slot=201 WHERE entry=2810 AND item=5973;
UPDATE npc_vendor SET slot=203 WHERE entry=2810 AND item=21942;
UPDATE npc_vendor SET slot=204 WHERE entry=2810 AND item=3777; -- legacy item - https://tbc.wowhead.com/item=3777/lethargy-root#comments:id=193843:reply=29094
UPDATE npc_vendor_template SET slot=101 WHERE entry=108 AND item=7005;
UPDATE npc_vendor_template SET slot=102 WHERE entry=108 AND item=6256;
UPDATE npc_vendor_template SET slot=103 WHERE entry=108 AND item=6217;
UPDATE npc_vendor_template SET slot=104 WHERE entry=108 AND item=5956;
UPDATE npc_vendor_template SET slot=105 WHERE entry=108 AND item=2901;
UPDATE npc_vendor_template SET slot=106 WHERE entry=108 AND item=2320;
UPDATE npc_vendor_template SET slot=107 WHERE entry=108 AND item=2321;
UPDATE npc_vendor_template SET slot=108 WHERE entry=108 AND item=4291;
UPDATE npc_vendor_template SET slot=109 WHERE entry=108 AND item=8343;
UPDATE npc_vendor_template SET slot=110 WHERE entry=108 AND item=14341;
UPDATE npc_vendor_template SET slot=111 WHERE entry=108 AND item=2678;
UPDATE npc_vendor_template SET slot=112 WHERE entry=108 AND item=2692;
UPDATE npc_vendor_template SET slot=113 WHERE entry=108 AND item=3713;
UPDATE npc_vendor_template SET slot=114 WHERE entry=108 AND item=2880;
UPDATE npc_vendor_template SET slot=115 WHERE entry=108 AND item=3466;
UPDATE npc_vendor_template SET slot=116 WHERE entry=108 AND item=3857;
UPDATE npc_vendor_template SET slot=117 WHERE entry=108 AND item=2928;
UPDATE npc_vendor_template SET slot=118 WHERE entry=108 AND item=2604;
UPDATE npc_vendor_template SET slot=119 WHERE entry=108 AND item=2325;
UPDATE npc_vendor_template SET slot=120 WHERE entry=108 AND item=4341;
UPDATE npc_vendor_template SET slot=121 WHERE entry=108 AND item=4342;
UPDATE npc_vendor_template SET slot=122 WHERE entry=108 AND item=4340;
UPDATE npc_vendor_template SET slot=123 WHERE entry=108 AND item=3371;
UPDATE npc_vendor_template SET slot=124 WHERE entry=108 AND item=3372;
REPLACE INTO npc_vendor_template (entry, item, maxcount, incrtime, slot, comments) VALUES (108, 8925, 0, 0, 125, 'Crystal Vial');
UPDATE npc_vendor_template SET slot=126, maxcount=0, incrtime=0 WHERE entry=108 AND item=18256; -- Imbued Vial
UPDATE npc_vendor_template SET slot=127 WHERE entry=108 AND item=4289;
UPDATE npc_vendor_template SET slot=128 WHERE entry=108 AND item=4399;
UPDATE npc_vendor_template SET slot=129 WHERE entry=108 AND item=4400;
UPDATE npc_vendor_template SET slot=130 WHERE entry=108 AND item=6530;
UPDATE npc_vendor_template SET slot=131 WHERE entry=108 AND item=6532;

-- Gapp Jinglepocket & Targot Jinglepocket
UPDATE npc_vendor_template SET slot=1 WHERE entry=451 AND item=3770;
UPDATE npc_vendor_template SET slot=2 WHERE entry=451 AND item=3771;
UPDATE npc_vendor_template SET slot=3 WHERE entry=451 AND item=4599;
UPDATE npc_vendor_template SET slot=4 WHERE entry=451 AND item=8952;
UPDATE npc_vendor_template SET slot=5 WHERE entry=451 AND item=4538;
UPDATE npc_vendor_template SET slot=6 WHERE entry=451 AND item=4539;
UPDATE npc_vendor_template SET slot=7 WHERE entry=451 AND item=4602;
UPDATE npc_vendor_template SET slot=8 WHERE entry=451 AND item=8953;
UPDATE npc_vendor_template SET slot=9 WHERE entry=451 AND item=4606;
UPDATE npc_vendor_template SET slot=10 WHERE entry=451 AND item=4607;
UPDATE npc_vendor_template SET slot=11 WHERE entry=451 AND item=4608;
UPDATE npc_vendor_template SET slot=12 WHERE entry=451 AND item=8948;
UPDATE npc_vendor_template SET slot=13 WHERE entry=451 AND item=1205;
UPDATE npc_vendor_template SET slot=14 WHERE entry=451 AND item=1708;
UPDATE npc_vendor_template SET slot=15 WHERE entry=451 AND item=1645;
UPDATE npc_vendor_template SET slot=16 WHERE entry=451 AND item=8766;

-- Pattern: Barbaric Leggings 5973
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (2821, 5973, 1, 3600, 0, 'Pattern: Barbaric Leggings'); -- missing
UPDATE npc_vendor SET maxcount=1, incrtime=3600 WHERE entry IN (2810,4877,3958) AND item=5973; -- only one has incrtime of 7200, now all have one

-- Design: Ruby Crown of Restoration 21942
UPDATE npc_vendor SET maxcount=1, incrtime=3600 WHERE entry IN (2810,2821) AND item=21942; -- only one has incrtime of 7200, now all have one

-- Design: Truesilver Crab 21943
UPDATE npc_vendor SET maxcount=1, incrtime=300 WHERE entry IN (4897,1148) AND item=21943; -- only one has incrtime of 7200, now all have one

-- Design: Black Pearl Panther 21941
UPDATE npc_vendor SET maxcount=1, incrtime=300 WHERE entry IN (989,4897) AND item=21941; -- none had stocktimer

-- Pattern: Murloc Scale Bracers 5789
UPDATE npc_vendor SET maxcount=1, incrtime=3600 WHERE entry IN (4897,2846) AND item=5789; -- 43200 far too long

-- Pattern: Thick Murloc Armor 5788
UPDATE npc_vendor SET maxcount=1, incrtime=3600 WHERE entry IN (2393,2381,2846) AND item=5788; -- 43200 far too long

-- Design: Blazing Citrine Ring 20973
UPDATE npc_vendor SET maxcount=1, incrtime=1200 WHERE entry IN (9636,2381) AND item=20973; -- only one has incrtime of 7200, now all have one

-- Pattern: Azure Silk Gloves 7114
UPDATE npc_vendor SET maxcount=1, incrtime=1200 WHERE entry=2679 AND item=7114; -- She's got a much better resupply rate than the one in Feralas for the Azure Silk Gloves.
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (2679, 4827, 1, 10800, 0, 'Wizard\'s Belt'),(2679, 4828, 1, 10800, 0, 'Nightwind Belt'),(2679, 4829, 1, 10800, 0, 'Dreamer\'s Belt'); -- missing

-- Wizard's Belt 4827
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (3537, 4827, 1, 10800, 0, 'Wizard\'s Belt');

-- Elite Shoulders 4835
UPDATE npc_vendor SET maxcount=1, incrtime=10800 WHERE entry=3180 AND item=4835;

-- Piter Verance <Weaponsmith & Armorer> 4890
UPDATE creature_template SET VendorTemplateId=244 WHERE entry=4890;
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES
(4890, 4825, 1, 10800, 0, 'Callous Axe'),(4890, 4832, 1, 10800, 0, 'Mystic Sarong'),(4890, 4824, 1, 10800, 0, 'Blurred Axe'),(4890, 4826, 1, 10800, 0, 'Marauder Axe'),(4890, 4831, 1, 10800, 0, 'Stalking Pants');
UPDATE npc_vendor SET maxcount=2 WHERE entry=4890 AND item IN (4817,4818);

-- Dreamer's Belt
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES (3537, 4829, 1, 10800, 0, 'Dreamer\'s Belt');
DELETE FROM npc_vendor_template WHERE entry=22; -- 2679,3537 used this but both wrong and incomplete, so remove this for now until one can be formed that holds all items correctly.
UPDATE creature_template SET VendorTemplateId=0 WHERE entry IN (2679,3537);

-- Mystic Sarong 4832
 REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES
(3536, 4832, 1, 10800, 0, 'Mystic Sarong'),(3180, 4832, 1, 10800, 0, 'Mystic Sarong');

-- Dark Iron Entrepreneur <Speciality Goods> 3180
-- Kris Legace <Freewheeling Tradeswoman> 3536
DELETE FROM npc_vendor WHERE entry=3536 AND item IN (4824,4825,4826);
DELETE FROM npc_vendor_template WHERE entry=21; -- 3180,3536 used this but both wrong and incomplete, so remove this for now until one can be formed that holds all items correctly in correct order
UPDATE creature_template SET VendorTemplateId=0 WHERE entry=3180;
UPDATE creature_template SET VendorTemplateId=220 WHERE entry=3536;
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES
(3180, 4824, 1, 10800, 0, 'Blurred Axe'),(3180, 4825, 1, 10800, 0, 'Callous Axe'),(3180, 4826, 1, 10800, 0, 'Marauder Axe'),(3180, 4831, 1, 10800, 0, 'Stalking Pants'),
(3536, 4831, 1, 10800, 0, 'Stalking Pants');

-- Saber Leggings 4830
UPDATE npc_vendor SET maxcount=1, incrtime=10800 WHERE entry=3180 AND item=4830;
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES
(3536, 4830, 1, 10800, 0, 'Saber Leggings');

-- Glorious Shoulders 4833
UPDATE npc_vendor SET maxcount=1, incrtime=10800 WHERE entry=3180 AND item=4833;

-- Nightwind Belt 4828
REPLACE INTO npc_vendor (entry, item, maxcount, incrtime, slot, comments) VALUES
(3537, 4828, 1, 10800, 0, 'Nightwind Belt');

-- Pattern: Red Whelp Gloves 7290
UPDATE npc_vendor SET maxcount=1, incrtime=1200 WHERE entry=2679 AND item=7290;

-- Pattern: Green Leather Armor 7613
UPDATE npc_vendor SET maxcount=1, incrtime=3600 WHERE entry IN (2679,2698) AND item=7613;

-- Pattern: Icy Cloak 4355
UPDATE npc_vendor SET maxcount=1, incrtime=3600 WHERE entry IN (2381,6567) AND item=4355;

-- Design: Heavy Iron Knuckles 20971
UPDATE npc_vendor SET maxcount=1, incrtime=3600 WHERE entry IN (2393,2381) AND item=20971;

-- Formula: Enchant Bracer - Lesser Deflection
UPDATE npc_vendor SET maxcount=1, incrtime=10800 WHERE entry IN (2381,2821) AND item=11163; -- 43200 bit too long

-- Recipe: Shadow Protection Potion 6054
UPDATE npc_vendor SET maxcount=1, incrtime=3600 WHERE entry IN (3956,2393) AND item=6054;

-- Design: Pendant of the Agate Shield 20970
UPDATE npc_vendor SET maxcount=1, incrtime=300 WHERE entry IN (4877,1448) AND item=20970; -- only one has stocktimer

-- https://tbc.wowhead.com/item=4389/gyrochronatom#sold-by
UPDATE npc_vendor SET maxcount=1, incrtime=3600 WHERE entry IN (5175) AND item=4389; -- alot without stocktimer

-- Fuse Limited Supply Engineering Vendor Templates
DELETE FROM npc_vendor WHERE entry IN (5175,4453,5519,3413,3133,6777,3495,17421,8678,8679,9544,2682,14637,6730,2687,2688,17222,27711,1694,2684,4587,2683,9676,18278,20890,18484,18775,18752,1448,19383,2685,11185,16657,16782,21112,19575) AND item IN (
4357, -- Rough Blasting Powder 4444444444444444444444444444444444
4361, -- Copper Tube 2222222222222222222222222222222222
4363, -- Copper Modulator 2222222222222212222222122222222222
4364, -- Coarse Blasting Powder 4444444444434443444444444444444444
4404, -- Silver Contact 3233332331333323333333133333333333
4371, -- Bronze Tube 2212222212222212121222122222122222
4382, -- Bronze Framework 1111111111111111111111111111111111
4389 -- Gyrochronatom 1111111111111111111111111111111111
);
REPLACE INTO npc_vendor_template (entry, item, maxcount, incrtime, comments) SELECT VendorTemplateId AS entry, 4357, 4, 10800, 'Rough Blasting Powder' FROM creature_template WHERE VendorTemplateId BETWEEN 133 AND 135;
REPLACE INTO npc_vendor_template (entry, item, maxcount, incrtime, comments) SELECT VendorTemplateId AS entry, 4361, 2, 10800, 'Copper Tube' FROM creature_template WHERE VendorTemplateId BETWEEN 133 AND 135;
REPLACE INTO npc_vendor_template (entry, item, maxcount, incrtime, comments) SELECT VendorTemplateId AS entry, 4363, 2, 10800, 'Copper Modulator' FROM creature_template WHERE VendorTemplateId BETWEEN 133 AND 135;
REPLACE INTO npc_vendor_template (entry, item, maxcount, incrtime, comments) SELECT VendorTemplateId AS entry, 4364, 4, 10800, 'Coarse Blasting Powder' FROM creature_template WHERE VendorTemplateId BETWEEN 133 AND 135;
REPLACE INTO npc_vendor_template (entry, item, maxcount, incrtime, comments) SELECT VendorTemplateId AS entry, 4404, 3, 10800, 'Silver Contact' FROM creature_template WHERE VendorTemplateId BETWEEN 133 AND 135;
REPLACE INTO npc_vendor_template (entry, item, maxcount, incrtime, comments) SELECT VendorTemplateId AS entry, 4371, 2, 10800, 'Bronze Tube' FROM creature_template WHERE VendorTemplateId BETWEEN 133 AND 135;
REPLACE INTO npc_vendor_template (entry, item, maxcount, incrtime, comments) SELECT VendorTemplateId AS entry, 4382, 1, 10800, 'Bronze Framework' FROM creature_template WHERE VendorTemplateId BETWEEN 133 AND 135;
REPLACE INTO npc_vendor_template (entry, item, maxcount, incrtime, comments) SELECT VendorTemplateId AS entry, 4389, 1, 10800, 'Gyrochronatom' FROM creature_template WHERE VendorTemplateId BETWEEN 133 AND 135;
DELETE FROM npc_vendor_template WHERE entry IN (134) AND item IN (4357,4361,4363,4364,4404,4371,4382,4389,4400,4399,2880,3466);
DELETE FROM npc_vendor_template WHERE entry IN (135); -- now identical with 133
UPDATE creature_template SET VendorTemplateId=133 WHERE VendorTemplateId IN (134,135); -- only one needed
UPDATE creature_template SET VendorTemplateId=133 WHERE entry IN (4453,27711);
DELETE FROM npc_vendor WHERE entry IN (4453,27711); -- all items in the template
UPDATE creature_template SET VendorTemplateId=134 WHERE entry IN (19575,21112); -- no old world items
UPDATE npc_vendor SET incrtime=10800 WHERE entry=21112; -- 43200
UPDATE npc_vendor SET maxcount=3 WHERE item=23736 AND entry=21112; -- Fel Iron Bomb (2)
UPDATE npc_vendor SET maxcount=3 WHERE item=23768 AND entry=21112; -- White Smoke Flare (1)
UPDATE npc_vendor SET maxcount=2 WHERE item=23781 AND entry=21112; -- Elemental Blasting Powder (1)
UPDATE npc_vendor SET maxcount=2 WHERE item=23782 AND entry=19575; -- Fel Iron Casing (4)
UPDATE npc_vendor SET maxcount=1 WHERE item=23784 AND entry=19575; -- Adamantite Frame (2)
-- ToDo Find out VendorListOrder for Engineering

