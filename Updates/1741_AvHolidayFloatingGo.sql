-- Corrections to z-axis
UPDATE
	`gameobject`
SET
	`position_z` = 501.65 -- was 501.859
WHERE
	`guid` = 190062;
UPDATE
	`gameobject`
SET
	`position_z` = 505.3 -- was 505.4
WHERE
	`guid` = 190080;
UPDATE
	`gameobject`
SET
	`position_z` = 37.21 -- was 37.4563
WHERE
	`guid` = 190310;
