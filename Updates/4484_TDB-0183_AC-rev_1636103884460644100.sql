-- Correct drop ChanceOrQuestChance for Westfall Deed
-- https://www.wowhead.com/wotlk/item=1972/westfall-deed#dropped-by
-- https://web.archive.org/web/20080518203034/http://wow.allakhazam.com/db/item.html?witem=1972
-- Erlan Drudgemoor: 1.93% (311) L: 4
-- Defias Bandit: 1.65% (8,655) L: 3
-- Defias Dockmaster: 1.59% (175) L: 5
-- Surena Caledon: 1.55% (174) L: 5
-- Defias Rogue Wizard: 1.52% (2,939) L: 4
-- Defias Ambusher: 1.48% (41) L: 3
-- Defias Dockworker: 1.42% (169) L: 3
-- Defias Bodyguard: 1.37% (270) L: 5 - i agree with vmangos data.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `Item` = 1972 AND `Entry` = 6866; -- 1.8 Defias Bodyguard
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `Item` = 1972 AND `Entry` = 6846; -- 2.2 Defias Dockmaster
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `Item` = 1972 AND `Entry` = 116; -- 1.7 Defias Bandit - wotlk is missing condition for this one.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `Item` = 1972 AND `Entry` = 474; -- 1.6 Defias Rogue Wizard
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `Item` = 1972 AND `Entry` = 880; -- 2.5 Erlan Drudgemoor
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `Item` = 1972 AND `Entry` = 6927; -- 0.7 Defias Dockworker
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `Item` = 1972 AND `Entry` = 881; -- 1.1 Surena Caledon
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `Item` = 1972 AND `Entry` = 583; -- 2.2 Defias Ambusher

-- https://www.wowhead.com/wotlk/npc=6846/defias-dockmaster#comments:id=3163395
UPDATE `creature`SET `spawntimesecsmin` = 120, `spawntimesecsmax` = 300 WHERE `id` = 6846; --  Also, he respawns extremely fast, so if there is a chest near him, it will be hard to get.

-- Correct drop ChanceOrQuestChance for Gold Pickup Schedule
-- https://www.wowhead.com/wotlk/item=1307/gold-pickup-schedule
-- https://web.archive.org/web/20080517023352/http://wow.allakhazam.com/db/item.html?witem=1307
-- Gruff Swiftbite: 76.81% (1,726) L: 9
-- Riverpaw Runt: 1.90% (1,755) L: 3
-- Riverpaw Outrunner: 1.74% (7,425) L: 4
-- Hogger: 1.70% (628) L: 6 Elite
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 80 WHERE `Item` = 1307 AND `Entry` = 100; -- 100 Gruff Swiftbite - https://www.wowhead.com/wotlk/item=1307/gold-pickup-schedule#comments:id=594391:reply=402368
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `Item` = 1307 AND `Entry` = 97; -- 1 Riverpaw Runt
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `Item` = 1307 AND `Entry` = 478; -- 1 Riverpaw Outrunner
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `Item` = 1307 AND `Entry` = 448; -- 1 Hogger

