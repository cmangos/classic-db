-- Zul'Farrak Stairs event: fix gossip for Weegli Blastfuse
-- Based on https://github.com/cmangos/tbc-db/commit/4e8caea07ad3497ff824d7a9a42e3900bdacf64a

SET @COND := 410;

DELETE FROM conditions WHERE condition_entry IN (@COND);
INSERT INTO conditions VALUES
(@COND, 33, 10, 0, 'Source of Condition\'s Last Waypoint == 10');

UPDATE gossip_menu SET condition_id=@COND WHERE entry=940 AND text_id=1514;
UPDATE gossip_menu_option SET condition_id=@COND WHERE menu_id=940 AND id=0;
