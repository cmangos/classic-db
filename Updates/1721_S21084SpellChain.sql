-- Insert the correct spell chain for Seal of Righteousness
INSERT INTO
	`spell_chain` (`spell_id`, `prev_spell`, `first_spell`, `rank`, `req_spell`)
VALUES
	(21084, 0, 21084, 1, 0);
UPDATE
	`spell_chain`
SET
	`first_spell` = 21084,
	`rank` = `spell_id` - 20285
WHERE
	`spell_id` IN (20287, 20288, 20289, 20290, 20291, 20292, 20293);
