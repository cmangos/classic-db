-- Applied missing last SD2 updates
-- Authors are: Schmoozerd, Xfurry, morpho and przemratajczak

-- [z2678] Add script support for quest 660
-- https://github.com/scriptdev2/scriptdev2-classic/commit/f72f52c5da8d7552ec1c53f204bae7d5f5b1b053
-- Author: Xfurry
UPDATE `creature_template` SET `ScriptName` = 'npc_kinelory' WHERE `entry` = 2713;

-- [z2679] Implement escort quests 1222 1270
-- https://github.com/scriptdev2/scriptdev2-classic/commit/0d433308f56f79a59f6f10f809e77e720b5bf37d
-- Author: morpho
UPDATE `creature_template` SET `ScriptName` = 'npc_stinky_ignatz' WHERE `entry` = 4880;

-- [z2680] Add support for quest 2118
-- https://github.com/scriptdev2/scriptdev2-classic/commit/e6c111bc0e6b421d6ab5f3897bdc4db506ad8985
-- Author: przemratajczak
UPDATE `creature_template` SET `ScriptName` = 'npc_rabid_bear' WHERE `entry` = 2164;

-- [z2681] Implement basic follow-quest 2904 - A fine mess
-- https://github.com/scriptdev2/scriptdev2-classic/commit/f4464d2ab0c25a949d2c1f35794d4319eb5f0358
-- Author: Schmoozerd
UPDATE `creature_template` SET `ScriptName` = 'npc_kernobee' WHERE `entry` = 7850;
