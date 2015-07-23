-- Fix model of NPC 8096 (Protector of the People) in Westfall
-- Thanks @Neotmiren for pointing and fixing. This closes #785
UPDATE `creature` SET `modelid` = 0 WHERE `id` = 8096;
UPDATE `creature_template` SET `ModelId2` = 7310 WHERE `Entry` = 8096;
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 7310;
