-- Add item 7192 (Plans: Goblin Rocket Boots) that supposedly drops from Mekgineer Thermaplugg
-- Source: https://classic.wowhead.com/item=7192/schematic-goblin-rocket-boots
DELETE FROM item_template WHERE entry=7192;
INSERT INTO item_template VALUES
(7192, 9, 0, 'Schematic: Goblin Rocket Boots', 1102, 2, 64, 1, 1200, 300, 0, -1, -1, 26, 0, 202, 130, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 0, 0, 0, -1, 0, -1, 0, 'Teaches you how to make Goblin Rocket Boots.', 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, 0, 0, 0);
