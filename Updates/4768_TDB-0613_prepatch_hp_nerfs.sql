-- Correct hp for 3 Scourge Invasion npcs
UPDATE `creature_template` SET `HealthMultiplier`='1' WHERE `entry`='16136'; -- Necrotic Shard (3052)
UPDATE `creature_template` SET `HealthMultiplier`='1' WHERE `entry`='16172'; -- Damaged Necrotic Shard (3052)
UPDATE `creature_template` SET `HealthMultiplier`='1' WHERE `entry`='16230'; -- Cultist Engineer (3052)

