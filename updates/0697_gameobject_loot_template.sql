-- Fixed drop of quest items for quest 5064 (Grimtotem Spying)
-- Players no longer have to find the three quest items in a specific order
-- Thanks time-out for reporting. This closes #549 
UPDATE `gameobject_loot_template` SET `condition_id` = 0 WHERE `entry` IN (13576, 13577);
