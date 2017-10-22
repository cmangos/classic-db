-- The Large Termite Mound in Eastern Plaguelands is floating. This lowers its position. Unsniffed.
UPDATE
	`gameobject`
SET
	`position_z` = 145.665 -- was 147.665
WHERE
	`guid` = 45874
