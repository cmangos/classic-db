-- Changed timer of Dire Maul entrance doors and torches to close/reset within 5 seconds
-- as they were staying open/active far too long
UPDATE `gameobject_template` SET `data2` = 196608 WHERE `entry` IN (177188, 177189, 177192, 177198, 179507, 179508, 179510, 179513);
