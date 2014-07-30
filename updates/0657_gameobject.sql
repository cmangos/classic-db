-- Fixed spawn time of gameobject 179487
-- This closes #511 
-- http://www.wowhead.com/object=179487#comments:id=247390 (Patch 2.3.3)
UPDATE `gameobject` SET `spawntimesecs` = 480 WHERE `id` = 179487;
