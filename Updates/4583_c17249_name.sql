-- Correct name for Landro Longshot 17249
-- https://github.com/cmangos/issues/issues/3609
-- ServerToClient: SMSG_CREATURE_QUERY_RESPONSE (0x0061) Length: 89 ConnectionIndex: 0 Time: 11/01/2007 08:43:58.000 Number: 9116
-- Entry: 17249
-- [0] Name: Landro Longshot
UPDATE `creature_template` SET `name` = 'Landro Longshot' WHERE `entry` = 17249;

