-- Typo: sea => see.
UPDATE
	`quest_template`
SET
	`RequestItemsText` = 'Possessing a Cenarion Beacon allows one to see a corrupted soul shard on those tainted beasts that are put down for the greater good. I grind shards into a usable reagent that goes into making Cenarion plant salve. We will use that salve to turn corrupted plants into healthy ones again.$B$BIn exchange for these shards, I will give you some Cenarion plant salves I have already prepared.'
WHERE
	`entry` IN (	
		4103,
		4108,
		5882,
		5887
	);
