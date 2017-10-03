-- Few functional fixes for Razorgore encounter in BWL

-- Fixed triggers not respawning when Razorgore dies in Phase 1
UPDATE creature SET spawntimesecsmin = 10, spawntimesecsmax = 10 WHERE id IN (14449, 14459, 16604);
UPDATE creature_template SET scale=3 WHERE entry=16604;
-- Fixed NPC 12434 (Monster Generator) being selectable
UPDATE creature_template SET UnitFlags=33587200 WHERE Entry=12434;

-- Added missing target for spell 23024 (Fireball)
DELETE FROM spell_script_target WHERE entry=23024;
INSERT INTO spell_script_target VALUES
(23024, 1, 14449, 0);

-- Prevented Grethok and its adds to respawn while Razorgore is dead
UPDATE creature_linking_template SET flag=flag+1024 WHERE master_entry IN (12557, 12435);
