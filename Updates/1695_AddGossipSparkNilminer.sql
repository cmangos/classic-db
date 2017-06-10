-- Add gossip reply to creature Spark Nilminer 9272
DELETE FROM gossip_menu WHERE text_id = 3380;

SELECT @entry := (SELECT MAX(`entry`) + 1 FROM gossip_menu);
INSERT INTO
	gossip_menu (`entry`, `text_id`)
VALUES
	(@entry, 3380);
	
UPDATE
	gossip_menu_option
SET
	action_menu_id = (SELECT `entry` FROM gossip_menu WHERE text_id = 3380)
WHERE
	menu_id = 2422;
