-- Add your query below.
-- https://github.com/vmangos/core/commit/4cf93a9648fc5b7849a0d82d669000f1c4eaf15c

-- Damage Variance - it was agreed on that we dont use this yet in cmangos.
-- UPDATE `creature_template` SET `DamageVariance`=0.07 WHERE `entry`=4073; -- XT:4 (was 0.14)
-- UPDATE `creature_template` SET `DamageVariance`=0.07 WHERE `entry`=4074; -- XT:9 (was 0.14)

-- classic ONLY
UPDATE `creature_template` SET `DamageMultiplier`=1.8 WHERE `entry`=4872; -- Obsidian Golem (was 1, is elite in classic)
UPDATE `creature_template` SET `DamageMultiplier`=2.8 WHERE `entry`=8447; -- Clunk (was 3.25, nonelite in tbc+)

-- All
UPDATE `creature_template` SET `ArmorMultiplier`=2 WHERE `entry`=6229; -- Crowd Pummeler 9-60 (was 1.5)
UPDATE `creature_template` SET `ArmorMultiplier`=1.5 WHERE `entry`=6234; -- Mechanized Guardian (was 1)
UPDATE `creature_template` SET `ArmorMultiplier`=2 WHERE `entry`=7849; -- Mobile Alert System (was 1)
UPDATE `creature_template` SET `DamageMultiplier`=6 WHERE `entry`=12337; -- Crimson Courier (is 1 in classic, 4.6 in wotlk)
UPDATE `creature_template` SET `DamageMultiplier`=3.8 WHERE `entry`=13118; -- Crimson Bodyguard (is 1 in classic, 2.4 in wotlk)
UPDATE `creature_template` SET `DamageMultiplier`=1 WHERE `entry`=14224; -- 7:XT (was 1.54)
UPDATE `creature_template` SET `ArmorMultiplier`=1 WHERE `entry` IN (16136,16172); -- Necrotic Shard / Damaged Necrotic Shard (was 0)
-- fire resistance
UPDATE `creature_template` SET `ResistanceFire`=15 WHERE `entry`=6226; -- Mechano-Flamewalker

-- frost resistance
UPDATE `creature_template` SET `ResistanceFrost`=75 WHERE `entry`=6227; -- Mechano-Frostwalker

-- tbc+
UPDATE `creature_template` SET `DamageMultiplier`=1 WHERE `entry`=7166; -- Wrenix's Gizmotronic Apparatus (is 0.8 in tbcmangos)
UPDATE `creature_template` SET `ArmorMultiplier`=1 WHERE `entry`=480; -- Rusty Harvest Golem (is 0.896484)

-- wotlk+
UPDATE `creature_template` SET `DamageMultiplier`=3.3 WHERE `entry`=642; -- Sneed's Shredder (is 1.7 in wotlkmangos)
UPDATE `creature_template` SET `DamageMultiplier`=2.4 WHERE `entry`=6232; -- Arcane Nullifier X-21 (is 1.7 in wotlkmangos)
UPDATE `creature_template` SET `DamageMultiplier`=2.4 WHERE `entry`=6235; -- Electrocutioner 6000 (is 1.7 in wotlkmangos)
UPDATE `creature_template` SET `DamageMultiplier`=3.5 WHERE `entry`=7023; -- Obsidian Sentinel (is 2.4 in wotlkmangos)
UPDATE `creature_template` SET `DamageMultiplier`=2.4 WHERE `entry`=7800; -- Mekgineer Thermaplugg (is 1.7 in wotlkmangos)

-- End of migration.

