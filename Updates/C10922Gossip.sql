-- Fix gossip text of Greta Mosshoof: "rejuventate" -> "rejuvenate"
UPDATE
	`npc_text`
SET
	`text0_1` = 'I welcome you, $N. And the Emerald Circle welcomes you.$B$BHopefully together we can help rejuvenate and protect this once-mighty forest. Many forces seek to destroy it from without... and within.$B$BDo not be persuaded by the power here--it will only corrupt you, like it has this entire land.'
WHERE
	`ID` = 3807;
