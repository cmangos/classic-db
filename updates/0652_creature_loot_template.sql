
SET @TROLL_NECKLACE := 9259;

-- ----------------------------

UPDATE `creature_loot_template` SET `ChanceOrQuestChance`=ABS(`ChanceOrQuestChance`) WHERE `item`=@TROLL_NECKLACE;
