-- Move script naming to template one as the creature is unique
UPDATE creature_movement_template SET script_id=905601 WHERE script_id=4763101;
UPDATE creature_movement_template SET script_id=905602 WHERE script_id=4763102;
UPDATE creature_movement_template SET script_id=905603 WHERE script_id=4763103;
UPDATE creature_movement_template SET script_id=905604 WHERE script_id=4763104;

UPDATE dbscripts_on_creature_movement SET id=905601 WHERE id=4763101;
UPDATE dbscripts_on_creature_movement SET id=905602 WHERE id=4763102;
UPDATE dbscripts_on_creature_movement SET id=905603 WHERE id=4763103;
UPDATE dbscripts_on_creature_movement SET id=905604 WHERE id=4763104;
