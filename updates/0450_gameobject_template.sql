-- Fixed size of gameobject 177217 (Gordok Inner Door) as it is currently to small and don't stop players as intented
-- This closes #206 and closes #149 
UPDATE `gameobject_template` SET `size` = 1.45 WHERE `entry` = 177217;
