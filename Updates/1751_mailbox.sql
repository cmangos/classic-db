-- For some bizarre reason a mailbox is spawned on the exact same location of an existing mailbox ONLY during Hallow's End
-- Delete double mailbox during event 12
DELETE FROM	game_event_gameobject WHERE guid=38755;
-- Delete double mailbox
DELETE FROM	gameobject WHERE guid=38755;
