-- Removed gossip option from creature Hol'anyee Marshal 9271
-- This gossip option was added to Petra Grossen 9273, the owner of the Kodo
-- It then makes sense to remove this from Hol'anyee Marshal
-- See: http://lizarddude.kontek.net/WoW/Allusion1.jpg
DELETE FROM
	npc_gossip
WHERE
	`textid` = 3093;

SELECT @entry := (SELECT MAX(`entry`) + 1 FROM gossip_menu);
INSERT INTO
	gossip_menu (`entry`, `text_id`)
VALUES
	(@entry, 3093);

UPDATE
	gossip_menu_option
SET
	`menu_id` = @entry
WHERE
	`menu_id` = 2423;

UPDATE
	creature_template
SET
	`GossipMenuId` = @entry
WHERE
	`entry` = 9273;
