-- Add missing quest completion text
UPDATE
	`quest_template`
SET
	`OfferRewardText` = 'Greetings, $C.$B$BI am pleased to see the likes of you taking an interest in the well being of nature; tales of your mighty deeds precede you, and you are welcomed here. Seeing you before me instills the feeling of confidence that the Cenarion Circle will get the proper aid it needs.$B$BOur connection with the Cenarion Circle in Moonglade transcends racial and political divides. Remember this as you work on behalf of the Circle, and you will do well.'
WHERE
	`Entry` IN (1004, 1018);
