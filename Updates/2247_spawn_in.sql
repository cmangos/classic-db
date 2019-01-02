-- Should have UNIT_FLAG_NON_ATTACKABLE by default. It's removed by spell 15750
UPDATE creature_template SET UnitFlags=2 WHERE entry IN(10161,11262);
