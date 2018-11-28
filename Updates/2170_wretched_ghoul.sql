-- delay corrected for Wretched Ghoul Script
UPDATE dbscripts_on_creature_movement SET delay = 0 WHERE id = 150101 AND command = 22;
UPDATE dbscripts_on_creature_movement SET delay = 1 WHERE id = 150101 AND command = 26;
