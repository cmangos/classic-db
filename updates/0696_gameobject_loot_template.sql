-- Prevented item 5075 (Blood Shard) from dropping outside the Barrens
-- Thanks Zingzah for pointing. This closes #542 
-- Source: http://www.wowwiki.com/Blood_Shard
SET @CONDITION := 673;

UPDATE `gameobject_loot_template` SET `condition_id` = @CONDITION WHERE `item` = 5075;

DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 4, 17, 0);
