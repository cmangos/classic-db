-- Fix max level of of some Lunar Festival Revelers
UPDATE creature_template SET MaxLevel=60 WHERE Entry IN (15906, 15694);
