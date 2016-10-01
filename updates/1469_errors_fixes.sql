-- Fixed errors from previous commit

-- ReqCreatureOrGOId1 were set to 0, so do ReqCreatureOrGOCount1
UPDATE quest_template SET ReqCreatureOrGOCount1=0 WHERE entry IN (8356, 8360, 8359, 8358, 8355, 8354, 8353);

-- Reinserted conditions after deleting wrong one
DELETE FROM conditions WHERE condition_entry=1372;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (1372, 8, 1657, 0);

-- Fixed quest 1657
UPDATE quest_template SET QuestFlags= 0, SpecialFlags= 0 WHERE entry= 1657;
