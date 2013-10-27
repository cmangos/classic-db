-- Fixed missing female version of Scarshield Legion creatures in Blackrock Spire
-- Thanks Stan84 for pointing and fixing
-- Correct model data taken from UDB

-- Marked as female the alternate modelid_1
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9596, 9599, 9606, 9620, 9630, 9638);
-- Fixed model of male Scarshield raider
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` = 9637;

-- Added missing modelid_2 for Scarshield Legion creatures
UPDATE `creature_template` SET `modelid_2` = 9855 WHERE `entry` = 9043;
UPDATE `creature_template` SET `modelid_2` = 9861 WHERE `entry` = 9044;
UPDATE `creature_template` SET `modelid_2` = 9853 WHERE `entry` = 9045;
UPDATE `creature_template` SET `modelid_2` = 9857 WHERE `entry` = 9097;
UPDATE `creature_template` SET `modelid_2` = 9863 WHERE `entry` = 9098;
UPDATE `creature_template` SET `modelid_2` = 9865 WHERE `entry` = 9257;
UPDATE `creature_template` SET `modelid_2` = 9859 WHERE `entry` = 9258;

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9043, 9044, 9045, 9097, 9098, 9257, 9258);

-- Marked as male the modelid_2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `gender` = 1 WHERE `modelid` IN (9854, 9856, 9858, 9860, 9862, 9864, 9609);
-- Marked as female the alternate modelid_2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `gender` = 0 WHERE `modelid` IN (9855, 9861, 9853, 9857, 9863, 9865, 9859);
