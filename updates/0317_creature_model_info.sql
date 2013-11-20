-- Fixed missing female version of Bloodaxe Legion creatures in Blackrock Spire
-- Correct model data taken from UDB

-- Marked as female the alternate modelid_1 and fixed models boxing
UPDATE `creature_model_info` SET `gender` = 1, `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9634, 9603, 9626, 9619, 9614);
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8  WHERE `modelid` IN (9633, 9602, 9625, 9617, 9613);

-- Added missing modelid_2 for Bloodaxe Legion creatures
UPDATE `creature_template` SET `modelid_2` = 9881 WHERE `entry` = 9583;
UPDATE `creature_template` SET `modelid_2` = 9875 WHERE `entry` = 9692;
UPDATE `creature_template` SET `modelid_2` = 9873 WHERE `entry` = 9693;
UPDATE `creature_template` SET `modelid_2` = 0 WHERE `entry` = 9696;
UPDATE `creature_template` SET `modelid_2` = 9883 WHERE `entry` = 9716;
UPDATE `creature_template` SET `modelid_2` = 9879 WHERE `entry` = 9717;

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9583, 9692, 9693, 9696, 9716, 9717);

-- Marked as male the modelid_2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8, `gender` = 0 WHERE `modelid` IN (9881, 9875, 9873, 9883, 9879);
-- Marked as female the alternate modelid_2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8, `gender` = 1 WHERE `modelid` IN (9882, 9876, 9874, 9886, 9880);
