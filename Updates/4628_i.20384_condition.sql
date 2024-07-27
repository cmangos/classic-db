-- Correct dropcondition for Silithid Carapace Fragment 20384 thx @ marez_mik
-- 1107	2	20402	1	0	0	0	Player Has 1 or more of Item ID 20402 in Inventory - tbc
-- 1398	2	20402	1	0	0	0	Player Has 1 or more of Item ID 20402 in Inventory - classic
UPDATE `creature_loot_template` SET `condition_id` = 1398 WHERE `item` = 20384;