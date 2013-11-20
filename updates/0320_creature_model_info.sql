-- Fixed missing female version of Firebrand Legion creatures in Blackrock Spire
-- Correct model data taken from UDB

-- Marked the modelid_1 as male/female 
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9664, 9660, 9644, 9648, 9652, 9656);
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9665, 9661, 9645, 9649, 9653, 9657);

-- Fixed alternate modelid_1 & normal modelid_1 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9664, 9660, 9644, 9648, 9652, 9656, 9665, 9661, 9645, 9649, 9653, 9657);

-- Added missing modelid_2 for Firebrand Legion creatures
UPDATE `creature_template` SET `modelid_2` = 9871 WHERE `entry` = 9259;
UPDATE `creature_template` SET `modelid_2` = 9884 WHERE `entry` = 9260;
UPDATE `creature_template` SET `modelid_2` = 9867 WHERE `entry` = 9261;
UPDATE `creature_template` SET `modelid_2` = 9877 WHERE `entry` = 9262;
UPDATE `creature_template` SET `modelid_2` = 9869 WHERE `entry` = 9263;
UPDATE `creature_template` SET `modelid_2` = 9888 WHERE `entry` = 9264;

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9259, 9260, 9261, 9262, 9263, 9264);

-- Marked the modelid_2 as male/female
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9871, 9884, 9867, 9877, 9869, 9888);
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9872, 9885, 9868, 9878, 9870, 9889);

-- Fixed alternate modelid_2 & normal modelid_2 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9871, 9884, 9867, 9877, 9869, 9888, 9872, 9885, 9868, 9878, 9870, 9889);
