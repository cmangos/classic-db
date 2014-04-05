-- Fixed position of two creatures in Durotar as they were stuck inside a cannon. Thanks Dainara82 for pointing.
-- This closes #280 
-- Source: http://wowhead.com/npc=3455#screenshots:id=78413
-- http://wowhead.com/npc=3454#screenshots:id=48182
UPDATE `creature` SET `position_x` = -2087.68, `position_y` = -3500.49, `position_z` = 130.085, `orientation` = 0.335198 WHERE `guid` = 12166;
UPDATE `creature` SET `position_x` = -2214.33, `position_y` = -3779.01, `position_z` = 130.863, `orientation` = 4.74363 WHERE `guid` = 12165;
