-- Clean up equipment in creature table when already defined in creature_template table
UPDATE creature SET equipment_id=0 WHERE id IN (12457, 12459); -- Blackwing Spellbinder, Blackwing Warlock
UPDATE creature SET equipment_id=0 WHERE guid IN (590036, 590037); -- Ironforge Mountaineer
UPDATE creature SET equipment_id=0 WHERE guid IN (590015, 590016, 590038, 590039, 590040, 590041, 590042); -- Dwarven Farmer
UPDATE creature SET equipment_id=0 WHERE guid=590056; -- Mounted Ironforge Mountaineer
UPDATE creature SET equipment_id=0 WHERE guid=1007530; -- Horde Warbringer
UPDATE creature SET equipment_id=0 WHERE guid IN (590036, 590037); -- Ironforge Mountaineer
