-- Initial vanilla world loot overhaul
-- X-Savior
-- ======================================
-- Quick Cleanup of Galak Windchaser Loot
-- ======================================
DELETE FROM creature_loot_template WHERE entry IN (4096);
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','4306','25.4762','0','1','2','0','Silk Cloth');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','2455','16.7223','0','1','1','0','Minor Mana Potion');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','1179','11.1303','0','1','1','0','Ice Cold Milk');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','1708','9.8373','0','1','1','0','Sweet Nectar');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','2592','9.4369','0','1','2','0','Wool Cloth');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','1710','3.39403','0','1','1','0','Greater Healing Potion');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','3827','3.32938','0','1','1','0','Mana Potion');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','1205','2.324','0','1','1','0','Melon Juice');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','4632','0.061','0','1','1','0','Ornate Bronze Lockbox');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','60004','9','0','-60004','1','0','NPC LOOT (Grey World Drop) - (Item Levels: 21-25) - (NPC Levels: 21-25)');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','60439','5','0','-60439','1','0','NPC LOOT (White World Drop) - (Item Levels: 23-24) - (NPC Levels: 24-25)');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','60443','1','0','-60443','1','0','NPC LOOT (White World Drop) - (Item Levels: 25 (10 Slot Bag)) - (NPC Levels: 21-30)');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','50600','0.75','0','-50600','1','0','NPC LOOT (White World Drop) - (Item Levels: 20 (Scrolls I)) - (NPC Levels 10-25)');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','60133','2','0','-60133','1','0','NPC LOOT (Green World Drop) - (Item Levels: 23-28) - (NPC Levels: 24-25)');
insert into `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('4096','60209','0.05','0','-60209','1','0','NPC LOOT (Blue World Drop) - (Item Levels: 22-27) - (NPC Levels: 24-25)');
