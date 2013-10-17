-- Modified size of object 177221 (Doors) in Dire Maul West as they were too big
-- even coming through the roof of the courtyard above
UPDATE `gameobject_template` SET `size` = 0.45 WHERE `entry` = 177221;
