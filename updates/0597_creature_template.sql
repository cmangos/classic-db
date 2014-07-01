-- Fix model for creature 13022 (Whip Lasher).
-- A Whip Lasher does also exist in a blue/purple variant. Correct the model IDs.
UPDATE `creature_template` SET ModelId1 = 12962, ModelId2 = 12963 WHERE entry = 13022;
UPDATE `creature_model_info` SET modelid_other_gender = 12962 WHERE modelid = 12963;
