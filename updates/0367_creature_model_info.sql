-- Fixed model for creature 6546 (Tabetha) because she should not have an alternate model
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 5375;
