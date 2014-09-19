-- Added support for SD2 script of opening the UBRS door
-- This closes #207 
UPDATE `gameobject` SET `state` = 1 WHERE `id` IN (175528,175529, 175530, 175531, 175532, 175533); -- DarkIron Braziers
