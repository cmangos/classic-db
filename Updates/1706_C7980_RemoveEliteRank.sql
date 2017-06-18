-- See https://www.youtube.com/watch?v=8glOVdqo3hI&feature=youtu.be&t=46m26s
-- Update Deathguard Elite 7980 remove Elite rank
UPDATE
	`creature_template`
SET
	`Rank` = 0
WHERE
	`Entry` = 7980;
