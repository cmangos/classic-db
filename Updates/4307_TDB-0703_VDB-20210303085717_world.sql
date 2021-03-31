-- Add your query below.
-- https://github.com/vmangos/core/commit/0af0ce7616af4c1253b1686a79c88d80db96dfaa

-- scarlet key should not drop from mobs
DELETE FROM `creature_loot_template` WHERE `item` = 7146; -- 4540,4299,4291

-- witherbark bloodling, rotting worm, serpentbloom snake and hazzali parasite should not drop loot
-- in some versions of cmangos not correct already!
-- https://www.wowhead.com/tbc/npc=7768/witherbark-bloodling
-- https://www.wowhead.com/tbc/npc=3680/serpentbloom-snake
-- https://www.wowhead.com/tbc/npc=7769/hazzali-parasite
-- https://www.wowhead.com/tbc/npc=10925/rotting-worm
DELETE FROM `creature_loot_template` WHERE `entry` IN (3680, 7768, 7769, 10925);
UPDATE `creature_template` SET `LootId` = 0, `SkinningLootId` = 0, `MinLootGold` = 0, `MaxLootGold` = 0 WHERE `entry` IN (3680, 7768, 7769, 10925);

-- grim reach should increase the range of drain soul (credit jaywalker15262)
-- relevant for classicmangos
-- Id: 18218
-- Name: Grim Reach (Rank 1)
-- Description: Increases the range of your Affliction spells by 10%.
UPDATE `spell_affect` SET `spellfamilymask` = `SpellFamilyMask`|0x4000 WHERE `entry` = 18218; -- now 6447547418, same as vmangos

-- marsh flesheater and bloodscalp berserker should not flee at low hp - ACID
-- DELETE FROM `creature_ai_scripts` WHERE `id` IN (59702, 75102);
-- DELETE FROM `creature_ai_events` WHERE `id` IN (59702, 75102);

-- DIFF - flipped quests
-- see wowhead, our racereqs are wrong
-- 9528	4108
-- 9528	4109
-- 9528	4110
-- 9528	4111
-- 9528	4112
-- 9529	5882
-- 9529	5883
-- 9529	5884
-- 9529	5885
-- 9529	5886

-- correct alliance cleansing felwood quest chains 
DELETE FROM `creature_questrelation` WHERE `id` = 9528;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(9528, 4101),
(9528, 5886),
(9528, 4107),
(9528, 5884),
(9528, 4105),
(9528, 5882),
(9528, 4103),
(9528, 5883),
(9528, 4104),
(9528, 5885),
(9528, 4106);

DELETE FROM `creature_involvedrelation` WHERE `id` = 9528;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES 
(9528, 4101),
(9528, 5886),
(9528, 4107),
(9528, 5884),
(9528, 4105),
(9528, 5882),
(9528, 4103),
(9528, 5883),
(9528, 4104),
(9528, 5885),
(9528, 4106);

UPDATE `quest_template` SET `PrevQuestId` = 4101 WHERE `entry` IN (5886, 5884, 5882, 5883, 5885);
UPDATE `quest_template` SET `RequiredRaces` = 1101 WHERE `entry` IN (4101, 5886, 4107, 5884, 4105, 5882, 4103, 5883, 4104, 5885, 4106); -- 77 classicmangos
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` IN (5886, 5884, 5882, 5883, 5885);
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` IN (4107, 4105, 4103, 4104, 4106);

UPDATE `quest_template` SET `PrevQuestId` = 5886 WHERE `entry` = 4107;
UPDATE `quest_template` SET `PrevQuestId` = 5884 WHERE `entry` = 4105;
UPDATE `quest_template` SET `PrevQuestId` = 5882 WHERE `entry` = 4103;
UPDATE `quest_template` SET `PrevQuestId` = 5883 WHERE `entry` = 4104;
UPDATE `quest_template` SET `PrevQuestId` = 5885 WHERE `entry` = 4106;

-- Correct Horde Cleansing Felwood Quest Chains 
DELETE FROM `creature_questrelation` WHERE `id` = 9529;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES
(9529, 4102),
(9529, 5891),
(9529, 4112),
(9529, 5889),
(9529, 4110),
(9529, 5887),
(9529, 4108),
(9529, 5888),
(9529, 4109),
(9529, 5890),
(9529, 4111);

DELETE FROM `creature_involvedrelation` WHERE `id` = 9529;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES
(9529, 4102),
(9529, 5891),
(9529, 4112),
(9529, 5889),
(9529, 4110),
(9529, 5887),
(9529, 4108),
(9529, 5888),
(9529, 4109),
(9529, 5890),
(9529, 4111);

UPDATE `quest_template` SET `PrevQuestId` = 4102 WHERE `entry` IN (5891, 5889, 5887, 5888, 5890);
UPDATE `quest_template` SET `RequiredRaces` = 690 WHERE `entry` IN (4102, 5891, 4112 ,5889, 4110 ,5887, 4108, 5888, 4109, 5890, 4111); -- classicmangos 178
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` IN (5891, 5889, 5887, 5888, 5890);
UPDATE `quest_template` SET `SpecialFlags` = 1 WHERE `entry` IN (4112, 4110, 4108, 4109, 4111);

UPDATE `quest_template` SET `PrevQuestId` = 5891 WHERE `entry` = 4112;
UPDATE `quest_template` SET `PrevQuestId` = 5889 WHERE `entry` = 4110;
UPDATE `quest_template` SET `PrevQuestId` = 5887 WHERE `entry` = 4108;
UPDATE `quest_template` SET `PrevQuestId` = 5888 WHERE `entry` = 4109;
UPDATE `quest_template` SET `PrevQuestId` = 5890 WHERE `entry` = 4111;

-- malgin barleybrew should not have a mug 
-- 5848	Malgin Barleybrew
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE (`entry` = 5848); -- and this is why keeping unique equipments can be beneficial.

-- update quest 2280 quest chain
-- https://youtu.be/djkHSk5Ec80?t=30
UPDATE `quest_template` SET `NextQuestId` = 2440 WHERE `entry` = 2280;
       
-- update rejolds new brew quest chain
-- https://www.wowhead.com/tbc/quest=415/rejolds-new-brew - breadcrumbquest
-- https://www.wowhead.com/tbc/quest=415/rejolds-new-brew#comments:id=2794174
-- .go c id 1872 / .go c id 1378 -> .go c id 1374
DELETE FROM `creature_questrelation` WHERE `id` = 1378 AND `quest`= 415;
-- INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (1378, 415); --  present in classicmangos
UPDATE `quest_template` SET `PrevQuestId` = 0, `NextQuestInChain` = 413 WHERE `entry` = 415; -- breadcrumbquestid

-- update to yell text for quests 5343 and 5341 - wrong its on accept next quest
-- https://www.wowhead.com/classic/quest=5342/the-last-barov#videos:id=170400
-- https://github.com/cmangos/classic-db/commit/1f38aa9dcb1cbaea9a14f7061b612d193f9fb140#diff-59dc457b5e444babc6183ec0ca7a3ea950a64877ba194c9665c2762563db982bR325
-- https://github.com/cmangos/classic-db/commit/958cd9b9634cd9b04d7fca99f9d2954dbbcaa9f3
UPDATE `broadcast_text` SET `ChatTypeId` = 1 WHERE `Id` IN (
6554, -- The deeds are mine, brother! Soon you shall be out of my way for good! - already correct in tbcmangos
6555); -- The fortune is mine, Alexi! Your end comes soon!

