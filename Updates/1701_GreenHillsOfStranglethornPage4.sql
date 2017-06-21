-- Fixed Green Hills of Stranglethorn Page 4 text: replaced "??" with "."
UPDATE
	`page_text`
SET
	`text` = 'In the years that followed, after Stormwind betrayed the Stonemasons\' Guild, Sir Erlgadin grew bitter about the role of the nobles within the Kingdom.  He no longer wished to uphold the position that his father\'s bloodline had earned for him in the House of Nobles.

But I digress.  The purpose of this story is not to act as a political treatise or a biography.  This is the account of my experiences hunting big game in the green hills of Stranglethorn.'
WHERE
	`entry` = 98;
