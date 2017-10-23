-- Allow Apple Bob to be opened like a chest.
-- Credit to @RichardGe.
UPDATE
	`gameobject_template`
SET
	`data0` = 57
WHERE
	`entry` = 180523;
