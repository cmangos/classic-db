-- Fixed model for creature 1160 (Captain Halyndor) as it was using Goblin pirate model as alternate value
-- instead of being an udead pirate 100% of the time
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 3494;
