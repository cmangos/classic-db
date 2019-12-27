
-- Battered Chest (object=2843) according to: https://classic.wowhead.com/object=2843/battered-chest

delete from gameobject_loot_template WHERE entry=2265;

-- loot groupid 0
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','159','35','0','1','2','0','Refreshing Spring Water');

-- loot groupid 1
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','4536','19','1','1','2','0','Shiny Red Apple');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','4540','19','1','1','2','0','Tough Hunk of Bread');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','117','19','1','1','2','0','Tough Jerky');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','2070','18','1','1','2','0','Darnassian Bleu');

-- loot groupid 2
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1378','6','2','1','1','0','Frayed Pants');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','3363','5','2','1','1','0','Frayed Belt');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','3365','5','2','1','1','0','Frayed Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1376','5','2','1','1','0','Frayed Cloack');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1377','5','2','1','1','0','Frayed Gloves');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1380','5','2','1','1','0','Frayed Robe');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1374','4','2','1','1','0','Frayed Shoes');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1368','5','2','1','1','0','Ragged Leather Gloves');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1369','4','2','1','1','0','Ragged Leather Belt');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1367','4','2','1','1','0','Ragged Leather Boots');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1370','4','2','1','1','0','Ragged Leather Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1366','4','2','1','1','0','Ragged Leather Pants');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1364','4','2','1','1','0','Ragged Leather Vest');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','1372','3','2','1','1','0','Ragged Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','2649','4','2','1','1','0','Flimsy Chain Belt');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','2653','4','2','1','1','0','Flimsy Chain Gloves');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','2650','3','2','1','1','0','Flimsy Chain Boots');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','2651','3','2','1','1','0','Flimsy Chain Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','2652','3','2','1','1','0','Flimsy Chain Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','2654','3','2','1','1','0','Flimsy Chain Pants');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','2656','3','2','1','1','0','Flimsy Chain Vest');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','2210','4','2','1','1','0','Battered Buckler');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('2265','2211','4','2','1','1','0','Bent Large Shield');

