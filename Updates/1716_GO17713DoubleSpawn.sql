-- Fix two crystals spawned exactly on top of eachother
DELETE
FROM
	`gameobject`
WHERE
	`guid` = 17713;
