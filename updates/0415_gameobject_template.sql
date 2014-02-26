-- Fixed size of gameobjects 73940 (Ooze Covered Silver Vein) and 105569 (Silver Vein)
-- as they were twice the size of other veins
UPDATE `gameobject_template` SET `size` = 0.5 WHERE `entry` IN (73940, 105569);
