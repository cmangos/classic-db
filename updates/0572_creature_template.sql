-- Fixed speed of creature 12056 (Baron Geddon) in Molten Core
-- This closes #253 
-- Source: https://www.youtube.com/watch?v=Ofo5wkwd4s4#t=107
UPDATE `creature_template` SET `SpeedWalk` = 3.15, `SpeedRun` = 3.15 WHERE `Entry` = 12056;
