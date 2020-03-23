-- Misc Faction Fixes
UPDATE creature_template SET faction=67 WHERE entry=1885; -- Scarlet Smith
UPDATE creature_template SET faction=7 WHERE entry IN (2578,2579,2580); -- Young Mesa Buzzard, Mesa Buzzard, Elder Mesa Buzzard
UPDATE creature_template SET faction=114 WHERE entry=15218; -- Faire Cannon Trigger
