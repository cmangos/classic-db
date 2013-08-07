-- Fixed gameobject 148418, 148419, 148420 & 148421 (Eternal Flame): changed flag to make them unselectable
-- Source: UDB
UPDATE `gameobject_template` SET `flags` = `flags`|16 WHERE `entry` IN  (148418, 148419, 148420, 148421);
