-- Making Amends should not be offered when reputation is neutral or above
-- http://www.wowhead.com/quest=9266/making-amends
UPDATE
	`quest_template`
SET
	`RequiredMaxRepValue` = 0 -- was 42000
WHERE
	`Entry` = 9266;
