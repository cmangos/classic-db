-- Spectral Assassin
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14 WHERE Entry = 16066;

-- Kormok
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14 WHERE Entry = 16118;

-- Mor Grayhoof
UPDATE creature_template SET FactionAlliance = 14, FactionHorde = 14 WHERE Entry = 16080;

-- Jarien and Sothos
UPDATE creature_template SET UnitFlags = 32770 WHERE Entry = 16101;
UPDATE creature_template SET UnitFlags = 32770 WHERE Entry = 16102;

-- Spirit of Jarien
UPDATE creature_template SET FactionAlliance = 250, FactionHorde = 250, MovementType = 0 WHERE Entry = 16103;
-- Spirit of Sothos
UPDATE creature_template SET FactionAlliance = 250, FactionHorde = 250, MovementType = 0 WHERE Entry = 16104;
