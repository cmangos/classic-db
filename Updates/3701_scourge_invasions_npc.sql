-- Fix stats for NPC involved in Scourge Invasion events
-- Necrotic Shard / Damaged Necrotic Shard
UPDATE creature_template SET HealthMultiplier=0.75, Faction= 1630 WHERE Entry IN (16136,16172);
-- Mouth of Kel'Thuzad
UPDATE creature_template SET ExtraFlags=0 WHERE Entry=16995;
-- Shadow of Doom
UPDATE creature_template SET MinLevel=60, MaxLevel=60, DamageMultiplier=13, Faction=1630 WHERE Entry=16143;
-- Cultist Engineer
UPDATE creature_template SET MinLevel=60, MaxLevel=60, HealthMultiplier=0.75, Faction=190, ExtraFlags=64 WHERE Entry=16230;
-- Scourge Invasion Minion Spawner (all types), Necropolis proxy/relay/health
UPDATE creature_template SET UnitFlags=33554432 WHERE Entry IN (16306, 16336, 16338, 16386, 16398, 16421);
-- Patchwork Terror
UPDATE creature_template SET MinLevel=60, MaxLevel=60, Faction=1634 WHERE Entry=16382;
-- Flameshocker
UPDATE creature_template SET MinLevel=63, MaxLevel=63, Faction=1634 WHERE Entry=16383;
-- Palid Horror
UPDATE creature_template SET MinLevel=60, MaxLevel=60, Faction=1634 WHERE Entry=16394;
-- Spectral Soldier
UPDATE creature_template SET MinLevel=59, MaxLevel=60, Faction=1630 WHERE Entry=16298;
-- Skeletal Shocktrooper
UPDATE creature_template SET Faction=1630, DamageMultiplier=1.4 WHERE Entry=16299;
