-- Obsidian Eradicator
UPDATE `creature_template` SET `minhealth` = 213640, `maxhealth` = 213640 WHERE `entry` = 15262;
UPDATE `creature` SET `curhealth` = 213640 WHERE `id` = 15262;

-- Anubisath Sentinel
UPDATE `creature_template` SET `minlevel` = 61, `minhealth` = 108360, `maxhealth` = 108360 WHERE `entry` = 15264;
UPDATE `creature` SET `curhealth` = 108360 WHERE `id` = 15264;

-- The Prophet Skeram
UPDATE `creature_template` SET `minhealth` = 557200, `maxhealth` = 557200 WHERE `entry` = 15263;
UPDATE `creature` SET `curhealth` = 557200 WHERE `id` = 15263;

-- Anubisath Warder
UPDATE `creature_template` SET `minhealth` = 286560, `maxhealth` = 286560 WHERE `entry` = 15311;
UPDATE `creature` SET `curhealth` = 286560 WHERE `id` = 15311;

-- Obsidian Nullifier
UPDATE `creature_template` SET `minhealth` = 154800, `maxhealth` = 154800 WHERE `entry` = 15312;
UPDATE `creature` SET `curhealth` = 154800 WHERE `id` = 15312;

-- Qiraji Champion
UPDATE `creature_template` SET `minhealth` = 254720, `maxhealth` = 254720 WHERE `entry` = 15252;
UPDATE `creature` SET `curhealth` = 254720 WHERE `id` = 15252;

-- Bug Trio
UPDATE `creature_template` SET `speed_walk` = 7.5, `scale` = 0.85, `minhealth` = 413920, `maxhealth` = 413920 WHERE `entry` = 15544;
UPDATE `creature` SET `curhealth` = 413920 WHERE `id` = 15544;
UPDATE `creature_template` SET `scale` = 1.35, `minhealth` = 254720, `maxhealth` = 254720, `minmana` = 0, `maxmana` = 0 WHERE `entry` = 15511;
UPDATE `creature` SET `curhealth` = 254720 WHERE `id` = 15511;
UPDATE `creature_template` SET `scale` = 1.15, `minhealth` = 286560, `maxhealth` = 286560 WHERE `entry` = 15543;
UPDATE `creature` SET `curhealth` = 286560 WHERE `id` = 15543;


-- Battleguard Sartura & Guards
UPDATE `creature_template` SET `minhealth` = 716400, `maxhealth` = 716400, `speed_walk` = 6 WHERE `entry` = 15516;
UPDATE `creature` SET `curhealth` = 716400 WHERE `id` = 15516;
UPDATE `creature_template` SET `minhealth` = 92880, `maxhealth` = 92880, `speed_walk` = 6 WHERE `entry` = 15984;
UPDATE `creature` SET `curhealth` = 92880 WHERE `id` = 15984;
