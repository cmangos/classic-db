-- Clear dbscripts which use delay as priority (delay 1-100)
-- https://github.com/cmangos/tbc-db/blob/126b9f441d90ed10b2bbd089881af1fb94ff717a/Updates/0332_WDB-3090_q.997.sql#L5
UPDATE dbscripts_on_quest_end SET delay=0, priority=1 WHERE id=997 AND delay=1 AND command=29;
UPDATE dbscripts_on_quest_end SET delay=0, priority=2 WHERE id=997 AND delay=10 AND command=3;
UPDATE dbscripts_on_quest_end SET delay=0, priority=3 WHERE id=997 AND delay=100 AND command=0;
