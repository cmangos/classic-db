-- NPC Deviat Creeper
-- https://www.wowhead.com/tbc/npc=3632/deviate-creeper
-- should not drop https://www.wowhead.com/tbc/item=1081/crisp-spider-meat
-- Its a Raptor, not a spider
-- Before: 
-- 3632	1081	55,199	0	1	1	0	Crisp Spider Meat
DELETE FROM creature_loot_template WHERE entry = '3632' AND item = '1081';

DELETE FROM creature_loot_template WHERE entry = '1822' AND item = '1081'; -- 1822	1081	76,503 - https://www.wowhead.com/tbc/npc=1822/venom-mist-lurker

DELETE FROM creature_loot_template WHERE entry = '1998' AND item = '1081'; -- 1998	1081	0,0101 - https://www.wowhead.com/tbc/npc=1998/webwood-lurker

DELETE FROM creature_loot_template WHERE entry = '1823'; -- 1823	1081	5 - custom
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 1823;

DELETE FROM creature_loot_template WHERE entry = '1825'; -- 1825	1081	5 - custom
UPDATE `creature_template` SET `LootId` = 0 WHERE `entry` = 1825;

