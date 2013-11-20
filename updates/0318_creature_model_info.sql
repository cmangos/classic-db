-- Fixed missing female version of Blackhand Legion creatures in Blackrock Spire
-- Correct model data taken from UDB

-- Marked the modelid_1 as male/female 
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9670, 9849, 9686, 9690, 9734, 9691, 9696, 9670, 9686, 10176, 10172);
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9671, 9850, 9687, 9692, 9735, 9887, 9697, 9671, 9687, 10177, 10173);

-- Fixed boxing for creature 10742 (Blackhand Dragon Handler)
UPDATE `creature_model_info` SET `bounding_radius` = 0.4836, `combat_reach` = 1.95  WHERE `modelid` = 10176;
-- Fixed boxing for creature 9818 (Blackhand Summoner)
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` = 9849;

-- Fixed alternate modelid_1 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4836, `combat_reach` = 1.95  WHERE `modelid` IN (9887, 9697, 9735, 10173, 10177);
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9671, 9687, 9692, 9850);

-- Added missing modelid_2 for Blackhand Legion creatures
UPDATE `creature_template` SET `modelid_2` = 9672 WHERE `entry` = 9817;
UPDATE `creature_template` SET `modelid_2` = 9851 WHERE `entry` = 9818;
UPDATE `creature_template` SET `modelid_2` = 9896 WHERE `entry` = 9819;
UPDATE `creature_template` SET `modelid_2` = 9892 WHERE `entry` = 10316;
UPDATE `creature_template` SET `modelid_2` = 9890 WHERE `entry` = 10317;
UPDATE `creature_template` SET `modelid_2` = 0 WHERE `entry` = 10318;
UPDATE `creature_template` SET `modelid_2` = 9894 WHERE `entry` = 10319;
UPDATE `creature_template` SET `modelid_2` = 9672 WHERE `entry` = 10680;
UPDATE `creature_template` SET `modelid_2` = 9896 WHERE `entry` = 10681;
UPDATE `creature_template` SET `modelid_2` = 10178 WHERE `entry` = 10742;
UPDATE `creature_template` SET `modelid_2` = 10175 WHERE `entry` = 10172;

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9817, 9818, 9819, 10316, 10317, 10318, 10319, 10680, 10681, 10742, 10762);

-- Marked the modelid_2 as male/female
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9672, 9851, 9896, 9892, 9890, 9894, 9672, 9896, 10178, 10174);
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9673, 9852, 9897, 9893, 9891, 9895, 9673, 9897, 10179, 10175);

-- Fixed modelid_2 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4836, `combat_reach` = 1.95  WHERE `modelid` IN (9894, 9890, 10174, 10178);
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9672, 9896, 9892, 9851);

-- Fixed alternate modelid_2 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4836, `combat_reach` = 1.95  WHERE `modelid` IN (9895, 9891, 10175, 10179);
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9673, 9897, 9893, 9852);
