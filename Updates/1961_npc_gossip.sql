-- Removed usage of table npc_gossip for Darkmoon Fair NPCs
DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid FROM creature WHERE id=14849);

SET @COND := 872;

DELETE FROM conditions WHERE condition_entry IN (@COND, @COND + 1, @COND + 2);
INSERT INTO conditions VALUES
(@COND, 12, 4, 0, 'Event ID 4 Active'),
(@COND + 1, 12, 5, 0, 'Event ID 5 Active'),
(@COND + 2, -2, @COND + 1, @COND, '(Event ID 4 Active OR Event ID 5 Active)');

UPDATE gossip_menu SET condition_id=@COND + 2 WHERE entry=6201;

DELETE FROM gossip_menu WHERE entry=6201 AND text_id=7354;
INSERT INTO gossip_menu VALUES
(6201, 7354, 0, 0);

-- Removed TBC gameobject
DELETE FROM gameobject WHERE guid=31917;
