-- Fixes based on Project Silverpine reports (Titarion and Sinoxan) and some of the fixes by Titarion

-- Adds civilian status to Barkeep Kelly, Micha Yance,  Nandar Branson,  Sarah Raycroft & Magistrate Bluntnose
-- (most quest and vendors NPC were civilian back in classic)
-- source: http://www.wowwiki.com/Civilian
UPDATE `creature_template` SET `Civilian` = 1 WHERE `entry` IN (1139, 2366, 2381, 2380, 3541);

-- Correct the Min/Max Level of the following creatures: 
UPDATE `creature_template` SET `minlevel` = 60 WHERE `entry` IN (10506, 16097);
-- Source: http://www.wowwiki.com/Kirtonos_the_Herald?oldid=388622
-- Source: http://www.wowhead.com/npc=16097#comments
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1 WHERE `entry` = 2442;
-- Source: http://www.wowhead.com/npc=2442
UPDATE `creature_template` SET `minlevel` = 5, `maxlevel` = 5 WHERE `entry` = 385;
-- Source: http://www.wowhead.com/npc=385
UPDATE `creature_template` SET `minlevel` = 19 WHERE entry = 3619;
-- Source: http://www.wowhead.com/npc=3619

-- Correct the Min. Level requirement for the following Quests:
UPDATE `quest_template` SET `MinLevel` = 2 WHERE `entry` IN (380, 381, 382, 383, 3902);
-- Source: http://www.wowwiki.com/Quest:Night_Web%27s_Hollow?oldid=539571
-- Source: http://www.wowhead.com/quest=381
-- Source: http://www.wowhead.com/quest=382
-- Source: http://www.wowwiki.com/Quest:Scavenging_Deathknell?direction=next&oldid=1119709
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 383;
-- Source: http://www.wowwiki.com/Quest:Vital_Intelligence?oldid=556531
UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = 3 WHERE `entry` = 3901;
-- Source: http://www.wowhead.com/quest=3901
UPDATE `quest_template` SET `MinLevel` = 14 WHERE `entry` = 120;
-- Source: http://www.wowhead.com/quest=120

-- Dramatically reduce the drop rate for Quest Item 5097: Cats Eye Emerald
-- Source: http://www.wowhead.com/item=5097#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `item` = 5097 AND `entry` = 3286;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -6 WHERE `item` = 5097 AND `entry` = 3283;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -2 WHERE `item` = 5097 AND `entry` = 9336;

-- Add Mana Points to NPC 10506 (Kirtonos the Herald)
-- Source: http://wowd.org/creatures/10506.html
UPDATE `creature` SET `curmana` = 8343 WHERE `id` = 10506;
UPDATE `creature_template` SET `minmana` = 8343, `maxmana` = 8343 WHERE `entry` = 10506;

-- Remove Mana Points from NPC 385 (Horse) and 6021 (Boar Spirit)
UPDATE `creature` SET `curmana` = 0 WHERE `id` IN (385, 6021);
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` IN (385, 6021);

-- Add roaming to the following NPCs:
-- Mountaineer Bludd, Mountaineer Fazgard, Mountaineer Haggil
-- Mountaineer Harn, Mountaineer Kamdar, Mountaineer Morlic
-- Mountaineer Roghan, Mountaineer Uthan
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` IN (2511, 2515, 2528, 2506, 2516, 2526, 2512, 2507);

-- Update the following GameObject's respawn timer:
UPDATE `gameobject` SET `spawntimesecs` = 1800 WHERE `id` = 271;
UPDATE `gameobject` SET `spawntimesecs` = 5 WHERE `id` IN (104564, 104569, 104574);

-- Flag Ghost Saber as tameable
-- Source: http://www.wowhead.com/npc=3619#comments
UPDATE `creature_template` SET `type_flags` = 1 WHERE `entry` = 3619;

-- Set Malgin Barleybrew <Bael'dun Morale Officer> faction as Ironforge
-- source: http://www.wowhead.com/npc=5848
UPDATE `creature_template` SET `faction_A` = 55, `faction_H` = 55  WHERE `entry` = 5848;

-- Rename Snake Bloom Firework to Snake Burst Firework
-- Source: http://www.wowhead.com/item=19026
UPDATE `item_template` SET `name` = 'Snake Burst Firework' WHERE `entry` = 19026;

-- Reduced drop rate for quest item 4440 (Sigil of Strom)
-- Source: http://www.wowhead.com/item=4440#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -2 WHERE `item` = 4440 AND `entry` IN (2588, 2591);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -3 WHERE `item` = 4440 AND `entry` = 2590;

-- Reduce the drop rate for Quest Item: Bloodstone Amulet
-- Source: http://www.wowhead.com/item=4495#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -38 WHERE `entry` IN (2589, 2587) AND `item` = 4495;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -28 WHERE `entry` = 2586 AND `item` = 4495;

-- Removed wrong elite rank to creatures 1802 (Hungering Wraith) and 1804 (Wailing Death)
-- Source: http://old.wowhead.com/npc=1802
-- Source: http://old.wowhead.com/npc=1804
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` IN (1802, 1804);

-- Allowed Warlocks to accept the Quest 8381 (Armaments of War)
-- Source: http://www.wowhead.com/quest=8381
UPDATE `quest_template` SET `RequiredClasses` = 384 WHERE `entry` = 8381;

-- Changed NPC Anvilrage Reservist's respawn timer to 20 seconds
-- Source: http://www.wowhead.com/npc=8901#comments
UPDATE `creature`  SET `spawntimesecs` = 20 WHERE `id` = 8901;

-- Correct the Min. Level requirement for Quests: A Visit to Gregan and Haze of Evil
-- Source: http://www.wowwiki.com/Quest:Haze_of_Evil?oldid=190368
-- Source: http://www.wowwiki.com/Quest:A_Visit_to_Gregan?oldid=190347
UPDATE `quest_template` SET `minlevel` = 47 WHERE `entry` IN (4142, 4143);

-- Correct the Min. Level requirement for the Quest: Reassignment
-- Source: http://www.wowwiki.com/Quest:Reassignment?oldid=569818
UPDATE `quest_template` SET `minlevel` = 28 WHERE `entry` = 563;

-- The Item: Immature Venom Sac will now rot (disappear) after 1 hour (real time)
-- Source: http://www.wowhead.com/item=12586
UPDATE `item_template` SET `duration` = 3600 WHERE `entry` = 12586;

-- Removed the Quest Item: 6083 (Broken Tears) from dropping from creatures as it drops from gameobject
-- Source: http://www.wowhead.com/quest=1369
DELETE FROM `creature_loot_template` WHERE `item` = 6083;

-- Remove the Quest Item: Dinosaur Bone from Bloodpetal Trapper and Frenzied Pterrordax
-- Source: http://www.wowhead.com/item=11114#dropped-by
DELETE FROM `creature_loot_template` WHERE `entry` IN (6512, 9167) AND `item` = 11114;

-- Correct the drop rate of the following Quest Items:
-- Note: for most of the items, the value is guessed from comments, especially
-- those posted prior patch 2.3 were questing was make more easy by reducing many mobs stats
-- and increasing some drops rate
-- but still better than the way too high 80% drop chance previously in DB for every item
-- Source: http://www.wowhead.com/item=6080#comments 
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `entry` = 768 AND `item` = 6080;
-- Source: http://www.wowhead.com/item=3496#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 3496;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 21928;
-- Source: http://www.wowhead.com/item=4029#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 4029;
-- Source: http://www.wowhead.com/item=3915#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -17 WHERE `item` = 3915;
-- Source: http://www.wowhead.com/item=4106#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -52 WHERE `item` = 4106;
-- Source: http://www.wowhead.com/item=3901#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `item` = 3901;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 3839;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 3862;
-- Source: http://www.wowhead.com/item=3901#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 3863;
-- Source: http://www.wowhead.com/item=3919#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 3919;
-- Source: http://www.wowhead.com/item=1524#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -21 WHERE `item` = 1524;
DELETE FROM `creature_loot_template` WHERE `item` = 1524 AND `entry` IN (1061, 1062);
-- Source: http://www.wowhead.com/item=4104#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `item` = 4104;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 3916;
-- Source: http://www.wowhead.com/item=4053#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -34 WHERE `item` = 4053;
-- Source: http://www.wowhead.com/item=5803#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 5803;
-- Source: http://www.wowhead.com/item=6184#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -12 WHERE `item` = 6184;
-- Source: http://www.wowhead.com/item=6169
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 6169;
-- Source: http://www.wowhead.com/item=9322
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 9322;
-- Source: http://www.wowhead.com/item=5808#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 5808;
-- Source: http://www.wowhead.com/item=5463#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 5463;
-- Source: http://www.wowhead.com/item=13815#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -8 WHERE `item` = 13815;
-- Source: http://www.wowhead.com/item=5336#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -48 WHERE `item` = 5336;
-- Source: http://www.wowhead.com/item=5338#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `item` = 5338;
-- Source: http://www.wowhead.com/item=5386#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` = 2071 AND `item` = 5386;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` = 2237 AND `item` = 5386;
-- Source: http://www.wowhead.com/item=5412#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 5412;
-- Source: http://www.wowhead.com/item=5360#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `entry` IN (2176, 2177, 2178) AND `item` = 5360;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `entry` = 2178 AND `item` = 5360;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 12237;
-- Source: http://www.wowhead.com/item=5413#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 5413;
-- Source: http://www.wowhead.com/item=5348#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 5348;
-- Source: http://www.wowhead.com/item=5414#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 5414;
-- Source: http://www.wowhead.com/item=6079#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (4633,4635) AND `item` = 6079;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (4632, 4634, 4636, 4637, 12976, 12977) AND `item` = 6079;
-- Source: http://www.wowhead.com/item=4888#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4888;
-- Source: http://www.wowhead.com/item=4887#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -65 WHERE `item` = 4887;
-- Source: http://www.wowhead.com/item=4870#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 4870;
-- Source: http://www.wowhead.com/item=11674#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -23 WHERE `item` = 11674;
-- Source: http://www.wowhead.com/item=9369#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -19 WHERE `item` = 9369;
-- Source: http://www.wowhead.com/item=9237
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 9237;
-- Source: http://www.wowhead.com/item=4759
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4759;
-- Source: http://www.wowhead.com/item=4758#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` = 2958 AND `item` = 4758;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` IN (2959, 2960) AND `item` = 4758;
-- Source: http://www.wowhead.com/item=4769#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -70 WHERE  `item` = 4769;
-- Source: http://www.wowhead.com/item=4769#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `item` = 5203;
-- Source: http://www.wowhead.com/item=4802#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -44 WHERE `item` = 4802;
-- Source: http://www.wowhead.com/item=4801#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -44 WHERE `item` = 4801;
-- Source: http://www.wowhead.com/item=4803#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `item` = 4803;
-- Source: http://www.wowhead.com/item=22381#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 22381;
-- Source: http://www.wowhead.com/item=11477"dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 11477;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 6995;
-- Source: http://www.wowhead.com/item=5659#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `item` = 5659;
-- Source: http://www.wowhead.com/item=5675#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `item` = 5675;
-- Source: http://www.wowhead.com/item=11837#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -8 WHERE `item` = 11837;
-- Source: http://www.wowhead.com/item=8587#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (5455, 5456, 5457) AND `item` = 8587;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (5458, 5459, 5460) AND `item` = 8587;
-- Source: http://www.wowhead.com/item=20519#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 20519;
-- Source: http://www.wowhead.com/item=5204#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 5204;
-- Source: http://www.wowhead.com/item=5168#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `entry` = 2022 AND `item` = 5168;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (2025, 2027, 2029, 2166) AND `item` = 5168;
-- Source: http://www.wowhead.com/item=5170#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -42 WHERE `entry` IN (2029, 2030) AND `item` = 5170;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `entry` = 2027 AND `item` = 5170;
-- Source: http://www.wowhead.com/item=3412#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -27 WHERE `item` = 3412;
-- Source: http://www.wowhead.com/item=3409#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -21 WHERE `item` = 3409;
-- Source: http://www.wowhead.com/item=3411#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `item` = 3411;
-- Source: http://www.wowhead.com/item=5842#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 5842;
-- Source: http://www.wowhead.com/item=4898#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4898;
-- Source: http://www.wowhead.com/item=5064#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -39 WHERE `item` = 5064;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 5795;
-- Source: http://www.wowhead.com/item=5797#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 5797;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 5855;
-- Source: http://www.wowhead.com/item=5794#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 5794;
-- Source: http://www.wowhead.com/item=11114#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -28 WHERE `entry` IN (6503, 6501, 6502, 9164, 6504) AND `item` = 11114;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `entry` IN (9162, 9163) AND `item` = 11114;
-- Source: http://www.wowhead.com/item=11831#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -54 WHERE `entry` = 9167 AND `item` = 11831;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `entry` = 9165 AND `item` = 11831;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `entry` = 9166 AND `item` = 11831;
-- Source: http://www.wowhead.com/item=11830#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE`item` = 11830;
-- Source: http://www.wowhead.com/item=12444#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 12444;
-- Source: http://www.wowhead.com/item=12622#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -32 WHERE `entry` = 7443 AND `item` = 12622;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -42 WHERE `entry` = 7444 AND `item` = 12622;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -52 WHERE `entry` = 7445 AND `item` = 12622;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -62 WHERE `entry` = 7446 AND `item` = 12622;
-- Source: http://www.wowhead.com/item=12623#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 12623;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (7428, 7429) AND `item` = 12334;
-- Source: http://www.wowhead.com/item=3349#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 3349;
-- Source: http://www.wowhead.com/item=8363#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 8363;
-- Source: http://www.wowhead.com/item=20027#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 20027;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` = 3121 AND `item` = 4892;
-- Source: http://www.wowhead.com/item=8428#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 8428;
-- Source: http://www.wowhead.com/item=2671#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 2671;
-- Source: http://www.wowhead.com/item=2607#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `item` = 2607;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 2939;
-- Source: http://www.wowhead.com/item=2606#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE`item` = 2606;
-- Source: http://www.wowhead.com/item=2536#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 2536;
-- Source: http://www.wowhead.com/item=3110#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 3110;
-- Source: http://www.wowhead.com/item=4626#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 4626;
-- Source: http://www.wowhead.com/item=12367#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 12367;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 8009;
-- Source: http://www.wowhead.com/item=9247#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -55 WHERE `entry` IN (5331, 5335) AND `item` = 9247;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (5332, 5333, 5334, 5336, 5337, 5343, 8136) AND `item` = 9247;
-- Source: http://www.wowhead.com/item=7847#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry`= 2831 AND `item` = 7847;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` = 2829 AND `item` = 7847;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `entry` = 2830 AND `item` = 7847;
-- Source: http://www.wowhead.com/item=7848#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (2735, 2736, 2791) AND `item` = 7848;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` IN (92, 2745, 2752, 2919, 8278) AND `item` = 7848;
-- Source: http://www.wowhead.com/item=11266#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 11266;
-- Source: http://www.wowhead.com/item=4630#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (2715, 2906, 2907) AND `item` = 4630;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -38 WHERE `entry` IN (2701, 2719) AND `item` = 4630;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -29 WHERE `entry` IN (2716, 2718, 2720) AND `item` = 4630;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `entry` = 2717 AND `item` = 4630;
-- Source: http://www.wowhead.com/item=4522#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 4522;
-- Source: http://www.wowhead.com/item=4503#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `entry` IN (2554, 2552) AND `item` = 4503;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -28 WHERE `entry` = 2556 AND `item` = 4503;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `entry` = 2555 AND `item` = 4503;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -13 WHERE `entry` IN (2553, 2557, 2558, 2605) AND `item` = 4503;
-- Source: http://www.wowhead.com/item=4513#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 4513;
-- Source: http://www.wowhead.com/item=4435#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `entry` = 2572 AND `item` = 4435;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (2573, 2574) AND `item` = 4435;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` IN (2559, 2560) AND `item` = 4512;
-- Source: http://www.wowhead.com/item=11467#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `entry` IN (7055, 9690, 9694, 9697) AND `item` = 11467;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` IN (7025, 7029, 7028, 7027, 7026, 10077) AND `item` = 11467;

-- Correct the Min. Level requirement for the Quest 3564 (Andron's Payment to Jediga)
-- Source: http://www.wowwiki.com/Quest:Andron%27s_Payment_to_Jediga?oldid=812949
UPDATE `quest_template` SET `MinLevel` = 45 WHERE `entry` = 3564;

-- Updated min level and quest level for Winter Veil quests
UPDATE `quest_template` SET `MinLevel` = 30, `QuestLevel` = -1 WHERE `entry` IN (6983, 7042);
UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = -1 WHERE `entry` = 8744;

-- Updated rank of creatures 14477 (Grubthor), 947 (Rohh the Silent) & 10077 (Deathmaw): they are rare but not elite
-- Source: http://www.wowwiki.com/Grubthor?oldid=338577
--          http://www.wowwiki.com/Deathmaw?oldid=365745
--          http://www.wowwiki.com/Rohh_the_Silent?oldid=361358
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` IN (947, 14477, 10077);

-- Removed random movement from creature 6491 (Spirit Healer)
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 6491;

-- Set Booty Bay Bruiser's rank to Normal
-- Source: http://www.youtube.com/watch?v=2zXG8WgEXjQ
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` = 4624;

/* Changes to the Quest: Identifying the Brood (1169):
   Added this Quest to it's proper chain
   Dropped the Min. Level requirement for all Quests in this chain to 38, down from 39
   Players must now obtain 15 items of each instead of 7

   Sources: http://web.archive.org/web/20070216194659/http://www.wowwiki.com/Quest:Identifying_the_Brood
            http://www.wowhead.com/quest=1169/deprecated-identifying-the-brood#comments:id=183809
*/
UPDATE `quest_template` SET `Objectives` = 'Draz\'Zilb in Brackenwall Village would like you to bring him 15 Searing Tongues and 15 Searing Hearts.', `ReqItemCount1` = 15, `ReqItemCount2` = 15, `NextQuestInChain` = 1170 WHERE `entry` = 1169;
UPDATE `quest_template` SET `MinLevel` = 38 WHERE `entry` IN (1170, 1171, 1172);

-- Removed mana points from Doctor Gustaf VanHowzen
-- Source: UDB
UPDATE `creature` SET `curmana` = 0 WHERE `id` = 12939;
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` = 12939;

/* Removed Mana Points from all Warriors Trainers
   Sources: Example: http://www.wowhead.com/npc=5114/bilban-tosslespanner
            http://www.youtube.com/watch?v=nUwedP9Uoz4&t=2m48s
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` IN (911, 912, 913, 914, 985, 1229, 1901, 2119, 2131, 3041, 3042, 3043, 3059, 3063, 3153, 3169, 3353, 3354, 3408, 3593, 3598, 4087, 4089, 4593, 4594, 4595, 5113, 5114, 5479, 5480, 7315, 8141);
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `subname` = 'Warrior Trainer';

-- Removed a duplicate 'The Park' sign in Stormwind
DELETE FROM `gameobject` WHERE `guid` = 42860;

-- Removed a duplicate Cooking Table in Razor Hill
DELETE FROM `gameobject` WHERE `guid` = 99805;

/* Set Min. Level req. for quests "Sunken Treasure (665, 666, 668, 669, 670)" to 36
   Sources: http://www.wowpedia.org/index.php?title=Quest:Sunken_Treasure_%281%29&oldid=323144
            http://www.wowpedia.org/index.php?title=Quest:Sunken_Treasure_%282%29&oldid=323166
            http://www.wowpedia.org/index.php?title=Quest:Sunken_Treasure_%283%29&oldid=323172
            http://www.wowpedia.org/index.php?title=Quest:Sunken_Treasure_%284%29&oldid=323189
            http://www.wowpedia.org/index.php?title=Quest:Sunken_Treasure_%285%29&oldid=323191
*/
UPDATE `quest_template` SET `MinLevel` = 36 WHERE `entry` IN (665, 666, 668, 669, 670);

/* Set the correct Min. Level requirement for the quest "Bring The Light" to 39
   Sources: http://www.youtube.com/watch?v=mHJe2HpX3g4 "Show more"
            http://www.wowwiki.com/Quest:Bring_the_Light?oldid=1109968
*/
UPDATE `quest_template` SET `MinLevel` = 39 WHERE `entry` = 3636;

/* Removed Mana Points from Poisonous Skitterer
   Source: http://www.youtube.com/watch?v=whsUTnSoPto&t=1m1s
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` = 15977;
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` = 15977;
