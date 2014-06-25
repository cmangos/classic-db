-- Fixed auto completion of quest 660 (Hint of a New Plague?)
-- This closes #484 
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 660;
