-- =======
-- Mulgore
-- =======
-- Improve AI for Palemane Tanner,Skinner,Poacher 2949,2950,2951
-- https://www.wowhead.com/classic/quest=745/sharing-the-land#videos:id=215577
-- https://www.youtube.com/watch?v=qdpcBmS11dE
-- https://www.youtube.com/watch?v=uYJU7hNKQas
-- https://www.youtube.com/watch?v=ap0UiwnASE4
-- https://www.youtube.com/watch?v=YpkW0GiBIQA

-- Palemane Tanner 2949 - https://www.wowhead.com/classic/npc=2949/palemane-tanner
UPDATE `creature_template` SET `SpellList` = 294901, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2949;
-- Palemane Skinner 2950 - https://www.wowhead.com/classic/npc=2950/palemane-skinner
UPDATE `creature_template` SET `SpellList` = 295001, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (3 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2950;
-- Palemane Poacher 2951 - https://www.wowhead.com/classic/npc=2951/palemane-poacher
UPDATE `creature_template` SET `SpellList` = 295101, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2951;
-- Bristleback Quilboar 2952 - https://www.wowhead.com/classic/npc=2952/bristleback-quilboar
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2952;
-- Bristleback Shaman 2953 - https://www.wowhead.com/classic/npc=2953/bristleback-shaman
UPDATE `creature_template` SET `SpellList` = 295301, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2953;
-- Bristleback Battleboar 2954 - https://www.wowhead.com/classic/npc=2954/bristleback-battleboar
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SkinningLootId` = 0, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2954;
-- Plainstrider 2955 - https://www.wowhead.com/tbc/npc=2955/plainstrider
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SkinningLootId` = 0, `SpeedWalk` = (1.66667 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2955;
-- Adult Plainstrider 2956 - https://www.wowhead.com/tbc/npc=2956/adult-plainstrider
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (1.66667 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 2956;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 2956 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 2956 AND `item` = 2318; -- Light Leather
-- Elder Plainstrider 2957 - https://www.wowhead.com/wotlk/npc=2957/elder-plainstrider
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (1.66667 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 2957;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 2957 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 2957 AND `item` = 2318; -- Light Leather
-- Prairie Wolf 2958
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 2958;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 2958 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 2958 AND `item` = 2318; -- Light Leather
-- Prairie Stalker 2959
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 2959;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 2959 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 2959 AND `item` = 2318; -- Light Leather
-- Prairie Wolf Alpha 2960
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 2960;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 2960 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 2960 AND `item` = 2318; -- Light Leather
DELETE FROM `creature_loot_template` WHERE `item` IN (117,118,159,1210,2070,2589,4536) AND `entry` = 2960;
-- Mountain Cougar 2961
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SkinningLootId` = 0, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2961;
-- Windfury Harpy 2962 - https://www.wowhead.com/classic/npc=2962/windfury-harpy
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (3.47222 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2962;
-- Windfury Wind Witch 2963 - https://www.wowhead.com/classic/npc=2963/windfury-wind-witch
UPDATE `creature_template` SET `SpellList` = 296301, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (3.47222 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2963;
-- Windfury Sorceress 2964 - https://www.wowhead.com/classic/npc=2964/windfury-sorceress
UPDATE `creature_template` SET `SpellList` = 296401, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (3.47222 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2964;
-- Windfury Matriarch 2965 - https://www.wowhead.com/classic/npc=2965/windfury-matriarch
UPDATE `creature_template` SET `SpellList` = 296501, `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (3.47222 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 2965;
-- Battleboar 2966 - https://www.wowhead.com/classic/npc=2966/battleboar
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2966;
-- Galak Centaur 2967 - https://www.wowhead.com/classic/npc=2967/galak-centaur
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (1.66667 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2967;
-- Galak Outrunner 2968 - https://www.wowhead.com/classic/npc=2968/galak-outrunner
UPDATE `creature_template` SET `SpellList` = 296801, `SpeedWalk` = (1.66667 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2968;
-- Wiry Swoop 2969 - https://www.wowhead.com/classic/npc=2969/wiry-swoop
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2969;
-- Swoop 2970 - https://www.wowhead.com/classic/npc=2970/swoop
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2970;
-- Taloned Swoop 2971 - https://www.wowhead.com/classic/npc=2971/taloned-swoop
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2971;
-- Kodo Calf 2972 - https://www.wowhead.com/classic/npc=2972/kodo-calf
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2972; -- spawn_group
-- Kodo Bull 2973 - https://www.wowhead.com/classic/npc=2973/kodo-bull
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 2973; -- spawn_group
-- Kodo Matriarch 2974 - https://www.wowhead.com/classic/npc=2974/kodo-matriarch
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 2974; -- spawn_group
-- Venture Co. Hireling 2975 - https://www.wowhead.com/classic/npc=2975/venture-co-hireling
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2975;
-- Venture Co. Laborer 2976 - https://www.wowhead.com/classic/npc=2976/venture-co-laborer
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2976;
-- Venture Co. Taskmaster 2977 - https://www.wowhead.com/classic/npc=2977/venture-co-taskmaster
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2977;
-- Venture Co. Worker 2978 - https://www.wowhead.com/classic/npc=2978/venture-co-worker
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2978;
-- Venture Co. Supervisor 2979 - https://www.wowhead.com/classic/npc=2979/venture-co-supervisor
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2979;
-- Bael'dun Digger 2989 - https://www.wowhead.com/classic/npc=2989/baeldun-digger
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2989;
-- Bael'dun Appraiser 2990 - https://www.wowhead.com/classic/npc=2990/baeldun-appraiser
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 2990;
UPDATE `creature_spell_list` SET `InitialMin` = 2000, `InitialMax` = 21000, `RepeatMax` = 24000 WHERE `Id` = 299001 AND `Position` = 0; -- Mulgore - Bael'dun Appraiser - Lesser Heal on Friendly Missing 50% including self
-- Flatland Cougar 3035 - https://www.wowhead.com/classic/npc=3035/flatland-cougar
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 3035;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 3035 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 3035 AND `item` = 2318; -- Light Leather
-- Supervisor Fizsprocket 3051 - https://www.wowhead.com/classic/npc=3051/supervisor-fizsprocket
UPDATE `creature` SET `spawndist` = 3, `MovementType` = 1 WHERE `id` = 3051;
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 3051;
-- Ghost Howl 3056 - https://www.wowhead.com/classic/npc=3056/ghost-howl
UPDATE `creature` SET `spawntimesecsmin` = 5400, `spawntimesecsmax` = 9000 WHERE `id` = 3056;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 3056; -- pooling
DELETE FROM `pool_creature_template` WHERE `Id` = 3056;
DELETE FROM `pool_template` WHERE `entry` = 1200; -- 1200	1	Ghost Howl (3056)
DELETE FROM `spawn_group` WHERE id = 19026;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19026,'Mulgore - Ghost Howl (3056)', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19026;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19026, 51845, 0),
(19026, 51854, 1),
(19026, 1007218, 2);
DELETE FROM `creature_loot_template` WHERE `entry` = 3056 AND `item` = 4854; -- NPC LOOT (Rare NPC Loot) - Ghost Howl - Special Items
-- Arra'chea 3058 - https://www.wowhead.com/classic/npc=3058/arrachea
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 3058;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 3058 AND `item` = 2318; -- Light Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 35 WHERE `entry` = 3058 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` = 3058 AND `item` = 783; -- Light Hide
-- Lanka Farshot 3061
UPDATE `creature_template` SET `SpellList` = 306101, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 3061;
-- Mazzranache 3068 - https://www.wowhead.com/classic/npc=3068/mazzranache - https://www.youtube.com/watch?v=b8CWNQZ1RaQ&t=15s
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (1.66667 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 3068;
UPDATE `creature` SET `spawntimesecsmin` = 3600, `spawntimesecsmax` = 7200 WHERE `id` = 3068; -- https://github.com/vmangos/core/pull/1287#issue-952289079
-- NPC LOOT (Rare NPC Loot) - Mazzranache - Special Items
DELETE FROM `creature_loot_template` WHERE `entry` = 3068 AND `item` = 60407;
DELETE FROM `reference_loot_template` WHERE `entry` = 65081 AND `item` = 60407;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(65081, 60407, 50, 1, -60407, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 7-12) - (NPC Levels: 8-9)'); -- 70
-- Kennah Hawkseye 3078
UPDATE `creature_template` SET `SpellList` = 307801, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 3078;
-- "Squealer" Thornmantle 3229 - https://www.wowhead.com/classic/npc=3229/squealer-thornmantle
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 3229;
-- Bristleback Interloper 3232 - https://www.wowhead.com/classic/npc=3232/bristleback-interloper
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 3232;
-- Flatland Prowler 3566 - https://www.wowhead.com/classic/npc=3566/flatland-prowler
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 3566;
DELETE FROM `creature_loot_template` WHERE `item` IN (117,118,159,2589) AND `entry` = 3566;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 3566 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 3566 AND `item` = 2318; -- Light Leather
-- Sister Hatelash 5785 - https://www.wowhead.com/classic/npc=5785/sister-hatelash
UPDATE `creature_template` SET `SpellList` = 578501, `SpeedWalk` = (3.47222 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 5785;
DELETE FROM `creature` WHERE `id` = 5785 AND `guid` IN (26051,26052); -- 26055
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(26051, 5785, 1, 1, -650.067, -787.989, 42.481, 0, 5400, 9000, 0, 0),
(26052, 5785, 1, 1, -1012.7, 475.8, 28.76, 0, 5400, 9000, 0, 0);
UPDATE `creature` SET `spawntimesecsmin` = 5400, `spawntimesecsmax` = 9000, `spawndist` = 30, `MovementType` = 1 WHERE `id` = 5785;
DELETE FROM `spawn_group` WHERE id = 19027;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19027,'Mulgore - Sister Hatelash (5785)', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19027;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19027, 26055, 0),
(19027, 26051, 1),
(19027, 26052, 2);
-- https://web.archive.org/web/20060718112010/http://wow.allakhazam.com/db/mob.html?wmob=5785
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65003 AND `name` LIKE '%Sister%';
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (65003, 'NPC LOOT (Rare NPC Loot) - Sister Hatelash - Special Items');
DELETE FROM `reference_loot_template` WHERE `entry` = 65003;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(65003, 4772, 50, 1, 1, 1, 0, 'Warm Cloak'), -- 46.1988
(65003, 60106, 10, 1, -60106, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)'), -- 2
(65003, 60412, 40, 1, -60412, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)'); -- 5
DELETE FROM `creature_loot_template` WHERE `entry` = 5785 AND `item` IN (4772,60106,60412,65003);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5785, 65003, 100, 1, -65003, 1, 0, 'NPC LOOT (Rare NPC Loot) - Sister Hatelash - Special Items');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `entry` = 5785 AND `item` = 60002; -- NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15) (70% - ~45%)
-- Snagglespear 5786 - https://www.wowhead.com/classic/npc=5786/snagglespear - https://web.archive.org/web/20060716060046/http://wow.allakhazam.com/db/mob.html?wmob=5786
UPDATE `creature` SET `spawntimesecsmin` = 5400, `spawntimesecsmax` = 9000 WHERE `id` = 5786;
UPDATE `creature_template` SET `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8.33333 / 7) WHERE `entry` = 5786; -- pooling
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 15 WHERE `entry` = 5786 AND `item` = 60001; -- NPC LOOT (Grey World Drop) - (Item Levels: 6-10) - (NPC Levels: 6-10) (15%)
DELETE FROM `creature_loot_template` WHERE `entry` = 5786 AND `item` IN (2070,4536,4604); -- from chest
-- Enforcer Emilgund 5787 - https://www.wowhead.com/classic/npc=5787/enforcer-emilgund
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (8 / 7) WHERE `entry` = 5787;
DELETE FROM `creature_loot_template` WHERE `entry` = 5787 AND `item` IN (787,4604); -- from chest
UPDATE `creature` SET `spawntimesecsmin` = 5400, `spawntimesecsmax` = 9000 WHERE `id` = 5787;
-- https://web.archive.org/web/20060719072523/http://wow.allakhazam.com/db/mob.html?wmob=5787
DELETE FROM `reference_loot_template_names` WHERE `entry` = 65018 AND `name` LIKE '%Emilgund%';
INSERT INTO `reference_loot_template_names` (`entry`, `name`) VALUES (65018, 'NPC LOOT (Rare NPC Loot) - Enforcer Emilgund - Special Items');
DELETE FROM `reference_loot_template` WHERE `entry` = 65018;
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(65018, 60106, 10, 1, -60106, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)'), -- 20
(65018, 60412, 90, 1, -60412, 1, 0, 'NPC LOOT (White World Drop) - (Item Levels: 10-14) - (NPC Levels: 11)'); -- 100
DELETE FROM `creature_loot_template` WHERE `entry` = 5787 AND `item` IN (60106,60412,65018);
INSERT INTO `creature_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(5787, 65018, 100, 1, -65018, 1, 0, 'NPC LOOT (Rare NPC Loot) - Enforcer Emilgund - Special Items');
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 5787 AND `item` = 60002; -- NPC LOOT (Grey World Drop) - (Item Levels: 11-15) - (NPC Levels: 11-15) (70% - ~45%)
-- The Rake 5807 - https://www.wowhead.com/classic/npc=5807/the-rake - respawntime seems strange.
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (10 / 7), `MovementType` = 2 WHERE `entry` = 5807;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 5807 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 5807 AND `item` = 2318; -- Light Leather
-- https://web.archive.org/web/20060718112125/http://wow.allakhazam.com/db/mob.html?wmob=5807
UPDATE `reference_loot_template` SET `ChanceOrQuestChance` = 0, `groupid` = 1 WHERE `entry` = 65110 AND `item` = 17922; -- Lionfur Armor
DELETE FROM `reference_loot_template` WHERE `entry` = 65110 AND `item` IN (60103);
INSERT INTO `reference_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(65110, 60103, 10, 1, -60103, 1, 0, 'NPC LOOT (Green World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)');
DELETE FROM `creature_loot_template` WHERE `entry` = 5807 AND `item` IN (60103);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `entry` = 5807 AND `item` = 60409; -- NPC LOOT (White World Drop) - (Item Levels: 8-13) - (NPC Levels: 9-10)
REPLACE INTO `creature_movement_template` (`Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`)
SELECT 5807 as `Entry`, `Point`, `PositionX`, `PositionY`, `PositionZ`, 100 as `Orientation`, `WaitTime`, `ScriptId`, `Comment` FROM `creature_movement` WHERE `Id` = 26611;
DELETE FROM `creature_movement` WHERE `Id` = 26611;
DELETE FROM `spawn_group` WHERE id = 19028;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19028,'Mulgore - The Rake (5807)', 0, 1, 0, 0);
DELETE FROM `spawn_group_spawn` WHERE id = 19028;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19028, 26611, 0);
-- Chief Sharptusk Thornmantle 8554 - https://www.wowhead.com/classic/npc=8554/chief-sharptusk-thornmantle - https://web.archive.org/web/20060619091134/http://wow.allakhazam.com/db/mob.html?wmob=8554
UPDATE `creature_template` SET `ExtraFlags` = `ExtraFlags`|1048576, `SpeedWalk` = (2.5 / 2.5), `SpeedRun` = (6 / 7) WHERE `entry` = 8554;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 25 WHERE `entry` = 8554 AND `item` = 60000; -- NPC LOOT (Grey World Drop) - (Item Levels: 1-5) - (NPC Levels: 1-5)

-- Adding Dynguid shortens actual respawntime, hence a increase is required to prevent "natural" overspawn
UPDATE `creature` SET `spawntimesecsmin` = 240, `spawntimesecsmax` = 360 WHERE `id` IN (
2949, -- Palemane Tanner 250	250
2950, -- Palemane Skinner 250	250
2951, -- Palemane Poacher 250	250
2952, -- Bristleback Quilboar 250	250
2953, -- Bristleback Shaman 250	250
2954, -- Bristleback Battleboar 250	250
2956, -- Adult Plainstrider 250	250
2957, -- Elder Plainstrider 250	250
2958, -- Prairie Wolf 250 250
2959, -- Prairie Stalker 250 250
2960, -- Prairie Wolf Alpha 250 250
2962, -- Windfury Harpy 250	250
2963, -- Windfury Wind Witch 250	250
2964, -- Windfury Sorceress 250	250
2965, -- Windfury Matriarch 250	250
2969, -- Wiry Swoop 250	250
2970, -- Swoop 250	250
2971, -- Taloned Swoop 250	250
2975, -- Venture Co. Hireling 250	250
2976, -- Venture Co. Laborer 250	250
2977, -- Venture Co. Taskmaster 250	250
2978, -- Venture Co. Worker 250	250
2979, -- Venture Co. Supervisor 250	250
2989, -- Bael'dun Digger 250	250
2990, -- Bael'dun Appraiser 250	250
3035, -- Flatland Cougar 250	250
3051, -- Supervisor Fizsprocket 250	250
3229, -- "Squealer" Thornmantle 250	250
3232, -- Bristleback Interloper 250	250
3566, -- Flatland Prowler 250	250
8554); -- Chief Sharptusk Thornmantle 250	250

UPDATE `creature` SET `spawntimesecsmin` = 180, `spawntimesecsmax` = 240 WHERE `id` IN (
2955, -- Plainstrider 155 155
2961, -- Mountain Cougar 155 155
2966); -- Battleboar 155	155

-- Kodo Calf 2972
-- Kodo Bull 2973
-- Kodo Matriarch 2974 - 300 300
-- 26184,26185,26186,26187,26188,26189,26190,26191,26192,26193,26194,26195,26196,26207,26209,26210,26211,26212,26213,26214,26231,26232,26233,26184,26185,26186,26187,26188,26189,26190,26191,26192,26193,26194,26195,26196,26207,26209,26210,26211,26212,26213,26214,26231,26232,26233,26184,26185,26186,26187,26188,26189,26190,26191,26192,26193,26194,26195,26196,26207,26209,26210,26211,26212,26213,26214,26231,26232,26233

-- Galak Centaur 2967
-- Galak Outrunner 2968 - 300 300
-- 25998,25999,26000,26001,26002,26019

DELETE FROM `creature_spell_list` WHERE `Id` IN (294901,295001,295101,295301,296301,296401,296501,296801,306101,307801,578501);
INSERT INTO `creature_spell_list` (`Id`, `Position`, `SpellId`, `Flags`, `CombatCondition`, `TargetId`, `ScriptId`, `Availability`, `Probability`, `InitialMin`, `InitialMax`, `RepeatMin`, `RepeatMax`, `Comments`) VALUES
-- ('294901','2949','9','0','100','1025','0','40','9000','14000','0','0','11','9739','1','0','0','0','0','0','0','0','0','0','Palemane Tanner - Cast Wrath'),
(294901, 0, 9739, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Mulgore - Palemane Tanner - Wrath'),
-- ('295001','2950','2','0','100','1025','50','0','21000','25000','0','0','11','774','0','0','0','0','0','0','0','0','0','0','Palemane Skinner - Cast Rejuvenation at 50% HP'),
(295001, 0, 774, 0, -1, 201, 0, 100, 1, 6000, 18000, 15000, 30000, 'Mulgore - Palemane Skinner - Rejuvenation on Friendly Missing 50% including self'),
-- ('295103','2951','9','0','100','1025','5','30','9000','14000','0','0','11','1516','4','0','0','0','0','0','0','0','0','0','Palemane Poacher - Cast Quick Shot'),
-- ('295104','2951','9','0','100','1025','5','30','3000','4500','0','0','11','6660','1','256','0','0','0','0','0','0','0','0','Palemane Poacher - Cast Shoot'),
(295101, 0, 6660, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 3000, 'Mulgore - Palemane Poacher - Shoot on Current'),
(295101, 1, 1516, 0, -1, 1, 0, 100, 0, 1000, 10000, 10000, 20000, 'Mulgore - Palemane Poacher - Quick Shot on Current'),
-- ('295302','2953','0','0','100','1281','0','0','3000','4000','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Bristleback Shaman - Cast Lightning Bolt (Range Mode)'),
-- ('295303','2953','0','0','100','1537','0','0','5000','20000','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Bristleback Shaman - Cast Lightning Bolt (Melee Mode)'),
(295301, 0, 9532, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Mulgore - Bristleback Shaman - Lightning Bolt'),
-- ('296302','2963','9','0','100','1025','0','5','11000','16000','0','0','11','6982','0','0','0','0','0','0','0','0','0','0','Windfury Wind Witch - Cast Gust of Wind'),
-- ('296303','2963','9','0','100','1025','0','40','3800','5200','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Windfury Wind Witch - Cast Lightning Bolt'),
(296301, 0, 6982, 0, -1, 103, 0, 100, 0, 0, 12000, 11000, 16000, 'Mulgore - Windfury Wind Witch - Gust of Wind - AoE'),
(296301, 1, 9532, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Mulgore - Windfury Wind Witch - Lightning Bolt'),
-- ('296402','2964','9','0','100','1025','0','40','3800','5200','0','0','11','13322','1','256','0','0','0','0','0','0','0','0','Windfury Sorceress - Cast Frostbolt'),
(296401, 0, 13322, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Mulgore - Windfury Sorceress - Frostbolt'),
-- ('296502','2965','2','0','100','1025','50','0','18000','24000','0','0','11','332','0','0','0','0','0','0','0','0','0','0','Windfury Matriarch - Cast Healing Wave at 50% HP'),
-- ('296503','2965','9','0','100','1025','0','40','3800','5200','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Windfury Matriarch - Cast Lightning Bolt'),
(296501, 0, 332, 0, -1, 201, 0, 100, 1, 5000, 15000, 15000, 30000, 'Mulgore - Windfury Matriarch - Healing Wave on Friendly Missing 50% including self'),
(296501, 1, 9532, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Mulgore - Windfury Matriarch - Lightning Bolt'),
-- ('296803','2968','9','0','100','1025','5','30','2300','3900','0','0','11','6660','1','256','0','0','0','0','0','0','0','0','Galak Outrunner - Cast Shoot'),
(296801, 0, 6660, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 3000, 'Mulgore - Galak Outrunner - Shoot on Current'),
-- ('306103','3061','9','0','100','1025','5','30','2300','3900','0','0','11','6660','1','256','0','0','0','0','0','0','0','0','Lanka Farshot - Cast Shoot'),
(306101, 0, 6660, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 3000, 'Mulgore - Lanka Farshot - Shoot on Current'),
-- ('307803','3078','9','0','100','1025','5','30','2300','3900','0','0','11','6660','1','256','0','0','0','0','0','0','0','0','Kennah Hawkseye - Cast Shoot'),
(307801, 0, 6660, 2, -1, 1, 0, 100, 0, 0, 0, 2000, 3000, 'Mulgore - Kennah Hawkseye - Shoot on Current'),
-- ('578503','5785','0','0','100','1025','4000','9000','30000','45000','0','0','11','6960','0','32','0','0','0','0','0','0','0','0','Sister Hatelash - Cast Lightning Barrier'),
-- ('578504','5785','9','0','100','1025','0','40','3800','5200','0','0','11','9532','1','256','0','0','0','0','0','0','0','0','Sister Hatelash - Cast Lightning Bolt'),
(578501, 0, 9532, 2, -1, 1, 0, 100, 1, 0, 0, 0, 0, 'Mulgore - Sister Hatelash - Lightning Bolt'),
(578501, 1, 6960, 0, -1, 5, 0, 100, 0, 0, 5000, 15000, 30000, 'Mulgore - Sister Hatelash - Lightning Barrier friendly missing buff include self');

DELETE FROM `creature_spell_list_entry` WHERE `Id` IN (294901,295001,295101,295301,296301,296401,296501,296801,306101,307801,578501);
INSERT INTO `creature_spell_list_entry` (`Id`, `Name`, `ChanceSupportAction`, `ChanceRangedAttack`) VALUES
(294901, 'Mulgore - Palemane Tanner 2949', 0, 75),
(295001, 'Mulgore - Palemane Skinner 2950', 75, 0),
(295101, 'Mulgore - Palemane Poacher 2951', 0, 75),
(295301, 'Mulgore - Bristleback Shaman 2953', 0, 75),
(296301, 'Mulgore - Windfury Wind Witch 2963', 0, 75),
(296401, 'Mulgore - Windfury Sorceress 2964', 0, 75),
(296501, 'Mulgore - Windfury Matriarch 2965', 75, 75),
(296801, 'Mulgore - Galak Outrunner 2968', 0, 75),
(306101, 'Mulgore - Lanka Farshot 3061', 0, 75),
(307801, 'Mulgore - Kennah Hawkseye 3078', 0, 75),
(578501, 'Mulgore - Sister Hatelash 5785', 75, 75);

DELETE FROM `creature_template_spells` WHERE `entry` IN (2949,2950,2951,2953,2963,2964,2965,2968,3061,3078,5785,3068,2990);
-- points towards spawn entries being changed at some point to make the leveling easier, also randomisation. - is_spawn
UPDATE `creature` SET `position_x` = -2618.77, `position_y` = -1217.53, `position_z` = 2.81469, `orientation` = 0.802359 WHERE `guid` = 25676 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -2583.64, `position_y` = -1184.25, `position_z` = -5.33726, `orientation` = 5.25816 WHERE `guid` = 25632 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -2382.56, `position_y` = -1116.67, `position_z` = -5.74116, `orientation` = 5.24947 WHERE `guid` = 25661 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -2349.86, `position_y` = -1215.87, `position_z` = -0.575295, `orientation` = 3.87296 WHERE `guid` = 25692 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -1481.77, `position_y` = 115.672, `position_z` = 0.732554, `orientation` = 2.16421 WHERE `guid` = 25194 AND `id` = 2957;
UPDATE `creature` SET `position_x` = -749.637, `position_y` = -481.618, `position_z` = -26.2442, `orientation` = 5.4013 WHERE `guid` = 25617 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -616.813, `position_y` = -14.4906, `position_z` = -3.6663, `orientation` = 5.49823 WHERE `guid` = 25701 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -2381.6, `position_y` = -1185.47, `position_z` = -6.93497, `orientation` = 5.42035 WHERE `guid` = 25706 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -2317.91, `position_y` = -1249.56, `position_z` = 2.69754, `orientation` = 5.52021 WHERE `guid` = 25678 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -2283.09, `position_y` = -1150.76, `position_z` = -4.88657, `orientation` = 3.90058 WHERE `guid` = 25660 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -2248.12, `position_y` = -1116.24, `position_z` = -3.36696, `orientation` = 3.5667 WHERE `guid` = 25681 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -2115.57, `position_y` = -916.761, `position_z` = 8.0194, `orientation` = 2.64101 WHERE `guid` = 25308 AND `id` = 2957;
UPDATE `creature` SET `position_x` = -949.272, `position_y` = -750.658, `position_z` = -19.9995, `orientation` = 1.80916 WHERE `guid` = 26858 AND `id` = 3566;
UPDATE `creature` SET `position_x` = -953.735, `position_y` = 400.416, `position_z` = 14.9313, `orientation` = 1.33444 WHERE `guid` = 25639 AND `id` = 2960;
UPDATE `creature` SET `position_x` = -614.297, `position_y` = -106.854, `position_z` = 5.45799, `orientation` = 2.49433 WHERE `guid` = 26181 AND `id` = 2971;
UPDATE `creature` SET `position_x` = -1852.83, `position_y` = -187.829, `position_z` = -9.34188, `orientation` = 3.89798 WHERE `guid` = 25564 AND `id` = 2959;
UPDATE `creature` SET `position_x` = -2283.99, `position_y` = -884.102, `position_z` = -3.95922, `orientation` = 1.05685 WHERE `guid` = 25586 AND `id` = 2959;

UPDATE `creature` SET `position_x` = -2716.3,  `position_y` = -1115.87,  `position_z` = 15.9731,  `orientation` = 4.6985 WHERE `guid` = 25813 AND `id` = 2962;
UPDATE `creature` SET `position_x` = -2650.5,  `position_y` = -1352.54,  `position_z` = 9.60605,  `orientation` = 1.36136 WHERE `guid` = 25825 AND `id` = 2962;
UPDATE `creature` SET `position_x` = -2648.47,  `position_y` = -1280.98,  `position_z` = 18.4402,  `orientation` = 2.33874 WHERE `guid` = 25821 AND `id` = 2962;
UPDATE `creature` SET `position_x` = -2615.78,  `position_y` = -1318.4,  `position_z` = -0.338281,  `orientation` = 3.26377 WHERE `guid` = 25824 AND `id` = 2962;
UPDATE `creature` SET `position_x` = -1247.38,  `position_y` = 450.688,  `position_z` = 22.6442,  `orientation` = 2.36144 WHERE `guid` = 25882 AND `id` = 2964;
UPDATE `creature` SET `position_x` = -1216.87,  `position_y` = 383.473,  `position_z` = -1.77567,  `orientation` = 0.961656 WHERE `guid` = 25934 AND `id` = 2965;
UPDATE `creature` SET `position_x` = -1182.59,  `position_y` = 416.964,  `position_z` = -0.286157,  `orientation` = 5.76785 WHERE `guid` = 25937 AND `id` = 2965;
UPDATE `creature` SET `position_x` = -1149.59,  `position_y` = 449.396,  `position_z` = 8.23761,  `orientation` = 2.49892 WHERE `guid` = 25884 AND `id` = 2964;
UPDATE `creature` SET `position_x` = -1149.19,  `position_y` = 381.941,  `position_z` = 8.46876,  `orientation` = 5.44671 WHERE `guid` = 25947 AND `id` = 2965;
UPDATE `creature` SET `position_x` = -1118.94,  `position_y` = 483.727,  `position_z` = 21.8417,  `orientation` = 5.51524 WHERE `guid` = 25941 AND `id` = 2965;
UPDATE `creature` SET `position_x` = -1117.14,  `position_y` = 350.444,  `position_z` = 24.1095,  `orientation` = 3.85529 WHERE `guid` = 25948 AND `id` = 2965;
UPDATE `creature` SET `position_x` = -1117.06,  `position_y` = 382.771,  `position_z` = 11.048,  `orientation` = 1.34204 WHERE `guid` = 25896 AND `id` = 2964;
UPDATE `creature` SET `position_x` = -1116.38,  `position_y` = 415.836,  `position_z` = 8.2483,  `orientation` = 1.81428 WHERE `guid` = 25935 AND `id` = 2965;
UPDATE `creature` SET `position_x` = -1116.17,  `position_y` = 451.503,  `position_z` = 11.1764,  `orientation` = 3.55783 WHERE `guid` = 25942 AND `id` = 2965;
UPDATE `creature` SET `position_x` = -1083.22,  `position_y` = 416.299,  `position_z` = 14.0575,  `orientation` = 3.42069 WHERE `guid` = 25880 AND `id` = 2964;
UPDATE `creature` SET `position_x` = -851.822,  `position_y` = -817.307,  `position_z` = -2.90201,  `orientation` = 2.02998 WHERE `guid` = 25871 AND `id` = 2964;
UPDATE `creature` SET `position_x` = -818.773,  `position_y` = -819.056,  `position_z` = 3.03145,  `orientation` = 5.05237 WHERE `guid` = 25922 AND `id` = 2965;
UPDATE `creature` SET `position_x` = -815.209,  `position_y` = -848.576,  `position_z` = 8.899,  `orientation` = 5.3452 WHERE `guid` = 25869 AND `id` = 2964;
UPDATE `creature` SET `position_x` = -680.513,  `position_y` = -751.238,  `position_z` = 23.6947,  `orientation` = 2.68947 WHERE `guid` = 25866 AND `id` = 2964;
UPDATE `creature` SET `position_x` = -456.335,  `position_y` = -612.166,  `position_z` = 46.3702,  `orientation` = 0.820305 WHERE `guid` = 25865 AND `id` = 2964;
UPDATE `creature` SET `position_x` = -1752.41,  `position_y` = 315.176,  `position_z` = 79.0599,  `orientation` = 5.56105 WHERE `guid` = 25799 AND `id` = 2962;
UPDATE `creature` SET `position_x` = -1718.72,  `position_y` = 350.069,  `position_z` = 74.6314,  `orientation` = 4.48446 WHERE `guid` = 25843 AND `id` = 2963;
UPDATE `creature` SET `position_x` = -1717.65,  `position_y` = 414.889,  `position_z` = 92.2719,  `orientation` = 0.785398 WHERE `guid` = 25811 AND `id` = 2962;
UPDATE `creature` SET `position_x` = -1717.27,  `position_y` = 384.774,  `position_z` = 81.9523,  `orientation` = 6.12408 WHERE `guid` = 25807 AND `id` = 2962;
UPDATE `creature` SET `position_x` = -1717.23,  `position_y` = 317.477,  `position_z` = 67.2104,  `orientation` = 0.352482 WHERE `guid` = 25840 AND `id` = 2963;
UPDATE `creature` SET `position_x` = -1686.18,  `position_y` = 413.64,  `position_z` = 93.9671,  `orientation` = 4.13643 WHERE `guid` = 25841 AND `id` = 2963;
UPDATE `creature` SET `position_x` = -1683.48,  `position_y` = 285.166,  `position_z` = 47.6708,  `orientation` = 5.16525 WHERE `guid` = 25832 AND `id` = 2963;
UPDATE `creature` SET `position_x` = -1653.93,  `position_y` = 417.996,  `position_z` = 113.582,  `orientation` = 2.93215 WHERE `guid` = 25810 AND `id` = 2962;
UPDATE `creature` SET `position_x` = -1653.26,  `position_y` = 314.096,  `position_z` = 58.1451,  `orientation` = 1.73484 WHERE `guid` = 25846 AND `id` = 2963;

