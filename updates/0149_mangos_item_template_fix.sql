-- Remove the "mail" subclass from engineering trinkets which prevented cloth and leather class to use them
-- Thanks to Neotmiren for pointing and fixing
UPDATE `item_template` SET `subclass` = 0 WHERE `class` = 4 AND `subclass` = 3 AND `InventoryType` = 12;
