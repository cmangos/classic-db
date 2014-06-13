-- delete old waypoints of lucifron & adds

DELETE FROM creature_movement WHERE id = 56605; -- lucifron
DELETE FROM creature_movement WHERE id = 56606 OR id = 56607; -- adds