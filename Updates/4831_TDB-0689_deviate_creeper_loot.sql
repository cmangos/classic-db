-- NPC Deviat Creeper
-- https://www.wowhead.com/tbc/npc=3632/deviate-creeper
-- should not drop https://www.wowhead.com/tbc/item=1081/crisp-spider-meat
-- Its a Raptor, not a spider
-- Before: 
-- 3632	1081	55,199	0	1	1	0	Crisp Spider Meat
DELETE FROM creature_loot_template WHERE entry = '3632' AND item = '1081';