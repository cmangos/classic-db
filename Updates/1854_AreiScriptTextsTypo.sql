-- Typo fix: added a missing "e" to sens.
UPDATE
	`script_texts`
SET
	`content_default` = 'I can sense it now, $N. Ashenvale lies down this path.'
WHERE
	`entry` = -1001164;
