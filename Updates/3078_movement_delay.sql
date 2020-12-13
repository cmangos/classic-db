-- "has no delay and no delay despawn script"

UPDATE creature_movement_template SET waittime=1000 WHERE entry=1433 AND `point`=36;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=2983 AND `point`=31;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=17635 AND `point`=14;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=15553 AND `point`=5;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=15552 AND `point`=2 AND pathId=1;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=15552 AND `point`=5 AND pathId=0;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=5901 AND `point`=6;

-- "has no delay but changes movegen"

UPDATE creature_movement_template SET waittime=1000 WHERE entry=1481 AND `point`=3 AND pathId=3;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=1483 AND `point`=5 AND pathId=1;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=17647 AND `point`=14;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=17995 AND `point`=14;

UPDATE creature_movement_template SET waittime=1000 WHERE entry=17996 AND `point`=14;
