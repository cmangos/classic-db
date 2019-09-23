DELETE FROM dbscripts_on_creature_movement WHERE id IN (5665501,5683901);
UPDATE creature_movement SET script_id= WHERE id IN (5665501,5683901);
UPDATE creature_movement_template SET script_id= WHERE id IN (5665501,5683901);
