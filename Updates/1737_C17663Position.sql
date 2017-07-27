-- Fix position of Pyrewood Elder (was inside the chimney)
UPDATE
	`creature`
SET
	`position_x` = -323.536,
	`position_y` = 1549.8,
	`position_z` = 25.2736
WHERE
	`guid` = 17663;
