-- The range of spell 17016 does not match the range of the focused game objects, leading to a possibility of casting the spell without kill credit.
UPDATE
	`gameobject_template`
SET
	`data1` = 5
WHERE
	`entry` IN (
		176094,
		176095,
		176096,
		176097
	);
