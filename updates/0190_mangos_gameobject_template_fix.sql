-- Updated size of gameobjects 1610, 1667 (Incendicite Mineral Vein) to make it match other veins size
UPDATE `gameobject_template` SET `size` = 0.5 WHERE `entry` IN (1610, 1667);
