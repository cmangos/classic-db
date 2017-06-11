-- Add gossip option and reply to creature Petra Grossen 9273
DELETE FROM
	gossip_menu
WHERE
	`text_id` IN (3793);
SELECT @entry := (SELECT MAX(`entry`) + 1 FROM gossip_menu);
INSERT INTO
	gossip_menu (`entry`, `text_id`)
VALUES
	(@entry, 3793);

DELETE FROM
	gossip_menu_option
WHERE
	`menu_id` = 2423;
INSERT INTO
	gossip_menu_option (`menu_id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`)
VALUES
	(2423, 'What does Dadanga like to eat?', 1, 1, @entry);
	
UPDATE
	creature_template
SET
	`GossipMenuId` = 2423
WHERE
	`entry` = 9273;
