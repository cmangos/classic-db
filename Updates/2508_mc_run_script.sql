DELETE FROM dbscripts_on_creature_movement WHERE id IN (5665501,5683901);
UPDATE creature_movement SET script_id=5 WHERE script_id IN (5665501,5683901);
UPDATE creature_movement_template SET script_id=5 WHERE script_id IN (5665501,5683901);
