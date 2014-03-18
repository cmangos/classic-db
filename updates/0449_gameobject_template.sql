-- Fixed type of gameobject 179544 (Skeletal Remains of Kariel Winthalus) as it should be 2 because it is related to a quest 7482 (Eleven Legends)
UPDATE `gameobject_template` SET `type` = 2 WHERE `entry` = 179544;
