-- Battered Chest (object=2843) Level 1-5 loot , ref: https://classic.wowhead.com/object=2843/battered-chest
-- With this implementation, the chests loot consists of 3 categories/groups (which means a maxium of 3 items can be looted)

DELETE FROM gameobject_loot_template WHERE entry=2265;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- group 0 water
('2265','159','35','0','1','2','0','Refreshing Spring Water'),
-- group 1 food
('2265','4536','19','1','1','2','0','Shiny Red Apple'),
('2265','4540','19','1','1','2','0','Tough Hunk of Bread'),
('2265','117','19','1','1','2','0','Tough Jerky'),
('2265','2070','18','1','1','2','0','Darnassian Bleu'),
-- group 2 armor
('2265','60000','100','0','-60000','1','0', 'NPC LOOT (Grey World Drop) - (Item Levels: 1-5) - (NPC Levels: 1-5)');

-- Battered Chest (object=106318) Level 5-10 loot , ref: https://classic.wowhead.com/object=106318/battered-chest
-- With this implementation, the chests loot consists of 6 categories/groups (which means a maxium of 6 items can be looted) 

DELETE FROM gameobject_loot_template WHERE entry=2277;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
-- group 0 other (healing portion, pouches)
('2277','118','54','0','1','5','0','Minor Healing Potion'),
('2277','60400','2','0','-60400','1','0', 'NPC LOOT (White World Drop) - (Item Levels: 5 Pouches Only) - (NPC Levels: 1-5)'),
('2277','159','35','0','1','7','0','Refreshing Spring Water'),
-- group 1 food
('2277','2070','16','1','1','6','0','Darnassian Bleu'),
('2277','4604','16','1','1','6','0','Forest Mushroom Cap'),
('2277','4536','16','1','1','6','0','Shiny Red Apple'),
('2277','4540','16','1','1','6','0','Tough Hunk of Bread'),
('2277','117','16','1','1','6','0','Tough Jerky'),
-- group 2 profession
('2277','2318','18','2','1','6','0','Light Leather'),
('2277','2589','17','2','1','6','0','Linen Cloth'),
('2277','2770','9','2','1','4','0','Copper Ore'),
('2277','2835','9','2','1','6','0','Rough Stone'),
('2277','2842','9','2','1','1','0','Silver Bar'),
('2277','2449','6','2','1','4','0','Earthroot'),
('2277','2447','6','2','1','6','0','Peacebloom'),
('2277','765','6','2','1','9','0','Silverleaf'),
('2277','774','4','2','1','2','0','Malachite'),
('2277','818','1.2','2','1','1','0','Tigerseye'),
('2277','5498','0.9','2','1','1','0','Small Lustrous Pearl'),
('2277','50502','3','2','-50502','1','0', 'NPC LOOT (Green World Drop) - (Item Levels: 10-15 (Profession Recipes)) - (NPC Levels: 6-20)'),
-- group 3 armor and weapon
('2277','60001','3','70','-60001','1','0', 'NPC LOOT (Grey World Drop) - (Item Levels: 6-10) - (NPC Levels: 6-10)');
