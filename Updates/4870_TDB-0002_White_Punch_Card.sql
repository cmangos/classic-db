-- Improve Dropchance for White Punch Card 9279
-- https://www.wowhead.com/classic/item=9279/white-punch-card#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20, `condition_id` = 29 WHERE `item` = 9279 AND `entry` IN (6208,6209,6210,6213,6221); -- Player Has Less Than 1 of Item ID 9279 in Inventory

