-- Fixed quest 4362 The Fate of the Kingdom, set PrevQuestId to 4361
-- This closes #512 
UPDATE `quest_template` SET `PrevQuestId` = 4361 WHERE `entry` = 4362;
