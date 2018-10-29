-- Found no evidence online of there ever being a typo in the title.
-- So corrected: Zandalrian -> Zandalarian.

-- http://web.archive.org/web/20071112112304/http://wow.allakhazam.com:80/db/quest.html?wquest=8141
-- http://web.archive.org/web/20060521045922/http://wow.allakhazam.com:80/db/quest.html?wquest=8142
-- http://web.archive.org/web/20060521045936/http://wow.allakhazam.com:80/db/quest.html?wquest=8143
-- http://web.archive.org/web/20051117130641/http://wow.allakhazam.com:80/db/quest.html?wquest=8144
UPDATE
	`quest_template`
SET
	`Title` = 'Zandalarian Shadow Talisman'
WHERE
	`entry` IN (
		8141,
		8142,
		8143
	);
UPDATE
	`quest_template`
SET
	`Title` = 'Zandalarian Shadow Mastery Talisman'
WHERE
	`entry` = 8144;