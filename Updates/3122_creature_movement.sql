-- Fix creature movement that are missing delay
-- Missing delay on despawn
UPDATE creature_movement SET waittime=1000 WHERE id=42250 AND point=183;
UPDATE creature_movement SET waittime=1000 WHERE id=191185 AND point=15;
UPDATE creature_movement_template SET waittime=1000 WHERE entry=8666 AND point=65;

-- Missing delay on MoveGenerator change
UPDATE creature_movement_template SET waittime=1000 WHERE entry=2417 AND point=27;
