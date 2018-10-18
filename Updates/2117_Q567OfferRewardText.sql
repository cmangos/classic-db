-- You are quite the bounty -> You are quite the bounty hunter.
UPDATE
	`quest_template`
SET
	`OfferRewardText` = 'You are quite the bounty hunter, $C. Well done.'
WHERE
	`entry` = 567;