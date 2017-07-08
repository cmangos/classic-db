-- Delete game_event_gameobject records pointing to nothing: no record in gameobject
DELETE
FROM
	`game_event_gameobject`
WHERE
	`guid` IN (
		101006,
		101009
	);
