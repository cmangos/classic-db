-- Disable movement for chained victims and Sentinel Keldara Sunblade
-- Disable melee for Sentinel Kaldara Sunblade
-- http://www.wowhead.com/npc=8397
DELETE
FROM
	`creature_ai_scripts`
WHERE
	`creature_id` IN (3981, 6547, 8397);
INSERT INTO
	`creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_chance`, `action1_type`, `action2_type`, `comment`)
VALUES
	(398101, 3981, 11, 100, 21, 0, 'Vorrel Sengutz: prevent movement'),
	(654701, 6547, 11, 100, 21, 0, 'Suffering Victim: prevent movement'),
	(839701, 8397, 11, 100, 20, 21, 'Sentinel Keldara Sunblade: prevent movement and melee');
UPDATE
	`creature_template`
SET
	`AIName` = 'EventAI'
WHERE
	`Entry` IN (3981, 6547, 8397);
