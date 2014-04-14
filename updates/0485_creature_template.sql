-- Obsidian Eradicator
UPDATE `creature_template` SET `MinLevelHealth` = 213640, `MaxLevelHealth` = 213640 WHERE `entry` = 15262;
UPDATE `creature` SET `curhealth` = 213640 WHERE `id` = 15262;

-- Anubisath Sentinel
UPDATE `creature_template` SET `minlevel` = 61, `MinLevelHealth` = 108360, `MaxLevelHealth` = 108360 WHERE `entry` = 15264;
UPDATE `creature` SET `curhealth` = 108360 WHERE `id` = 15264;

-- The Prophet Skeram
UPDATE `creature_template` SET `MinLevelHealth` = 557200, `MaxLevelHealth` = 557200 WHERE `entry` = 15263;
UPDATE `creature` SET `curhealth` = 557200 WHERE `id` = 15263;

-- Anubisath Warder
UPDATE `creature_template` SET `MinLevelHealth` = 286560, `MaxLevelHealth` = 286560 WHERE `entry` = 15311;
UPDATE `creature` SET `curhealth` = 286560 WHERE `id` = 15311;

-- Obsidian Nullifier
UPDATE `creature_template` SET `MinLevelHealth` = 154800, `MaxLevelHealth` = 154800 WHERE `entry` = 15312;
UPDATE `creature` SET `curhealth` = 154800 WHERE `id` = 15312;

-- Qiraji Champion
UPDATE `creature_template` SET `MinLevelHealth` = 254720, `MaxLevelHealth` = 254720 WHERE `entry` = 15252;
UPDATE `creature` SET `curhealth` = 254720 WHERE `id` = 15252;

-- Bug Trio
UPDATE `creature_template` SET `SpeedWalk` = 7.5, `Scale` = 0.85, `MinLevelHealth` = 413920, `MaxLevelHealth` = 413920 WHERE `entry` = 15544;
UPDATE `creature` SET `curhealth` = 413920 WHERE `id` = 15544;
UPDATE `creature_template` SET `Scale` = 1.35, `MinLevelHealth` = 254720, `MaxLevelHealth` = 254720, `MinLevelMana` = 0, `MaxLevelMana` = 0 WHERE `entry` = 15511;
UPDATE `creature` SET `curhealth` = 254720 WHERE `id` = 15511;
UPDATE `creature_template` SET `Scale` = 1.15, `MinLevelHealth` = 286560, `MaxLevelHealth` = 286560 WHERE `entry` = 15543;
UPDATE `creature` SET `curhealth` = 286560 WHERE `id` = 15543;


-- Battleguard Sartura & Guards
UPDATE `creature_template` SET `MinLevelHealth` = 716400, `MaxLevelHealth` = 716400, `SpeedWalk` = 6 WHERE `entry` = 15516;
UPDATE `creature` SET `curhealth` = 716400 WHERE `id` = 15516;
UPDATE `creature_template` SET `MinLevelHealth` = 92880, `MaxLevelHealth` = 92880, `SpeedWalk` = 6 WHERE `entry` = 15984;
UPDATE `creature` SET `curhealth` = 92880 WHERE `id` = 15984;
