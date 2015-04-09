-- Fix for old bugs....
-- movement chenged to 0:idle (was wrongly set to random)
-- Jarven Thunderbrew
UPDATE dbscripts_on_creature_movement SET datalong = 0 WHERE id = 137302 AND delay = 2;
-- Grimand Elmore
UPDATE dbscripts_on_creature_movement SET datalong = 0 WHERE id = 141603 AND delay = 2;
