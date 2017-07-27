-- Source: https://youtu.be/BboTLo1_-O8?t=22s
UPDATE
	`quest_template`
SET
	`OfferRewardText` = 'Wonderful! We thank you for your generous donation, $n!'
WHERE
	`entry` IN (7792, 7798);
