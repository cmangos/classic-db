-- The name 'forcefield' without a capital letter looks a bit unprofessional when hovering over it with the mouse in game.
-- Updated the name to Forcefield with a capital F, like entry 180497.
UPDATE
	`gameobject_template`
SET
	`name` = 'Forcefield'
WHERE
	`entry` = 149431;
