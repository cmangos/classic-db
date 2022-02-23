-- Fix Snowfall GY Spirit Guide linked to wrong GY
UPDATE `creature_battleground` SET `event2`='3' WHERE  `guid`=150390; -- Horde
UPDATE `creature_battleground` SET `event1`='3' WHERE  `guid`=150383; -- Alliance
-- Fix Horde Cave Spirit Guide being in tbc + position (horde entrance was moved in 2.4), coords from vmangos
UPDATE `creature` SET `position_x`='-818.557', `position_y`='-619,255', `position_z`='54,0388', `orientation`='2,16456' WHERE  `guid`=150395;
-- Fix Snowfall Alliance Contested flag not being usable, meaning as a horde you had to wait till GY is taken
UPDATE `gameobject_template` SET `flags`=`flags` & ~1 WHERE `entry`=179286; -- flag 1 (uninteractable) prevents from using it
