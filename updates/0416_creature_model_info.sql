-- Fixed model used by creatures 3501 (Horde Guard) and 12903 (Splintertree Guard)
-- Two alternate model were wrong and genders models were mixed
-- Thanks Metalica for poiting. This closes #143 
UPDATE `creature_model_info` SET `modelid_other_gender` = 4264 WHERE `modelid` = 4261;
UPDATE `creature_model_info` SET `modelid_other_gender` = 4263 WHERE `modelid` = 4262;
UPDATE `creature_model_info` SET `modelid_other_gender` = 4262 WHERE `modelid` = 4263;
UPDATE `creature_model_info` SET `modelid_other_gender` = 4261 WHERE `modelid` = 4264;
