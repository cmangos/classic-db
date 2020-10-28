-- Migrate old scripts to ID matching ordering rule
UPDATE dbscripts_on_creature_movement SET id=1614501 WHERE id=2;
UPDATE dbscripts_on_creature_movement SET id=1614601 WHERE id=3;
UPDATE dbscripts_on_creature_movement SET id=1530001 WHERE id=4;

UPDATE creature_movement SET script_id=1614501 WHERE script_id=2;
UPDATE creature_movement SET script_id=1614601 WHERE script_id=3;
UPDATE creature_movement SET script_id=1530001 WHERE script_id=4;

UPDATE creature_movement_template SET script_id=1614501 WHERE script_id=2;
UPDATE creature_movement_template SET script_id=1614601 WHERE script_id=3;
UPDATE creature_movement_template SET script_id=1530001 WHERE script_id=4;
