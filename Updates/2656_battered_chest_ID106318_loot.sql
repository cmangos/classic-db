-- delete old loot tables
delete from gameobject_loot_template WHERE entry=57;

-- Battered Chest (object=106318) Level 5-10 loot , ref: https://classic.wowhead.com/object=106318/battered-chest
-- With this implementation, the chests loot consists of 6 categories/groups (which means a maxium of 6 items can be looted) 

-- group 0 other (healing portion, pouches)
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','118','54','0','1','5','0','Minor Healing Potion');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','5572','0.19','0','1','1','0','Small Green Pouch');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','5571','0.3','0','1','1','0','Small Black Pouch');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4496','0.3','0','1','1','0','Small Brown Pouch');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','805','0.3','0','1','1','0','Small Red Pouch');
-- group 1 water
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','159','35','1','1','7','0','Refreshing Spring Water');
-- group 2 food
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2070','16','2','1','6','0','Darnassian Bleu');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4604','16','2','1','6','0','Forest Mushroom Cap');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4536','16','2','1','6','0','Shiny Red Apple');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4540','16','2','1','6','0','Tough Hunk of Bread');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','117','16','2','1','6','0','Tough Jerky');
-- group 3 profession
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2318','18','3','1','6','0','Light Leather');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2589','17','3','1','6','0','Linen Cloth');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2770','9','3','1','4','0','Copper Ore');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2835','9','3','1','6','0','Rough Stone');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2842','9','3','1','1','0','Silver Bar');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2449','6','3','1','4','0','Earthroot');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2447','6','3','1','6','0','Peacebloom');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','765','6','3','1','9','0','Silverleaf');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','774','4','3','1','2','0','Malachite');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','818','1.2','3','1','1','0','Tigerseye');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','5498','0.9','3','1','1','0','Small Lustrous Pearl');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','3609','1.2','3','1','1','0','Plans: Copper Chain Vest');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2598','1.3','3','1','1','0','Pattern: Red Linen Robe');
-- group 4 weapon
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1417','2','4','1','1','0','Beaten Battle Axe');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1415','2','4','1','1','0','Carpenters Mallet');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2773','2','4','1','1','0','Cracked Shortbow');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1414','2','4','1','1','0','Cracked Sledge');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1412','2','4','1','1','0','Crude Bastard Sword');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1413','2','4','1','1','0','Feeble Sword');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2774','2','4','1','1','0','Rust-covered Blunderbuss');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1416','2','4','1','1','0','Rusty Hatchet');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2138','2','4','1','1','0','Sharpened Letter Opener');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1411','2','4','1','1','0','Withered Staff');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4560','1.2','4','1','1','0','Fine Scimitar');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','8177','1.3','4','1','1','0','Practice Sword');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4565','1.1','4','1','1','0','Simple Dagger');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','8182','1','4','1','1','0','Pellet Rifle');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','8179','1.1','4','1','1','0','Cadets Bow');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','766','1.1','4','1','1','0','Flanged Mace');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','8178','0.4','4','1','1','0','Training Sword');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','8181','0.3','4','1','1','0','Hunting Rifle');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','3190','0.3','4','1','1','0','Beatstick');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4563','0.3','4','1','1','0','Billy Club');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','767','0.3','4','1','1','0','Long Bo Staff');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','768','0.3','4','1','1','0','Lumberjack Axe');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','727','0.3','4','1','1','0','Notched Shortsword');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4562','0.3','4','1','1','0','Severing Axe');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','3189','0.3','4','1','1','0','Wood Chopper');
-- group 5 armor
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','3370','1.8','5','1','1','0','Patchwork Belt');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','3373','1.8','5','1','1','0','Patchwork Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1431','1.8','5','1','1','0','Patchwork Pants');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1430','1.7','5','1','1','0','Patchwork Gloves');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1427','1.7','5','1','1','0','Patchwork Shoes');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1433','1.7','5','1','1','0','Patchwork Armor');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1425','1.6','5','1','1','0','Worn Leather Vest');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1429','1.5','5','1','1','0','Patchwork Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1421','1.5','5','1','1','0','Worn Hide Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1419','1.5','5','1','1','0','Worn Leather Boots');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1422','1.5','5','1','1','0','Worn Leather Gloves');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1420','1.5','5','1','1','0','Worn Leather Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2212','1.4','5','1','1','0','Cracked Buckler');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2635','1.4','5','1','1','0','Loose Chain Belt');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2213','1.4','5','1','1','0','Worn Large Shield');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1423','1.4','5','1','1','0','Worn Leather Pants');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2642','1.3','5','1','1','0','Loose Chain Boots');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2644','1.3','5','1','1','0','Loose Chain Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','1418','1.3','5','1','1','0','Worn Leather Belt');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2643','1.2','5','1','1','0','Loose Chain Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2645','1.2','5','1','1','0','Loose Chain Gloves');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2648','1.2','5','1','1','0','Loose Chain Vest');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2646','1.1','5','1','1','0','Loose Chain Pants');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4665','0.5','5','1','1','0','Burnt Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','3641','0.5','5','1','1','0','Journeymans Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4662','0.5','5','1','1','0','Journeymans Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','3200','0.4','5','1','1','0','Burnt Leather Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2959','0.4','5','1','1','0','Journeymans Boots');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4659','0.4','5','1','1','0','Warriors Girdle');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2963','0.3','5','1','1','0','Burnt Leather Boots');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','6514','0.3','5','1','1','0','Disciples Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','6513','0.3','5','1','1','0','Disciples Sash');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','6508','0.3','5','1','1','0','Infantry Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4663','0.3','5','1','1','0','Journeymans Belt');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2960','0.3','5','1','1','0','Journeymans Gloves');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','6520','0.3','5','1','1','0','Pioneer Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4658','0.3','5','1','1','0','Warriors Cloak');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','4666','0.2','5','1','1','0','Burnt Leather Belt');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2962','0.2','5','1','1','0','Burnt Leather Breeches');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2964','0.2','5','1','1','0','Burnt Leather Gloves');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','7350','0.2','5','1','1','0','Disciples Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','6509','0.2','5','1','1','0','Infantry Belt');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2968','0.2','5','1','1','0','Warriors Gloves');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','6517','0.18','5','1','1','0','Pioneer Belt');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','6507','0.17','5','1','1','0','Infantry Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','6519','0.17','5','1','1','0','Pioneer Bracers');
insert into `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) values('57','2967','0.17','5','1','1','0','Warriors Boots');


