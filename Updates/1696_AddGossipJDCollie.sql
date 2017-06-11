-- Add gossip reply to creature J.D. Collie 9117
DELETE FROM gossip_menu WHERE text_id IN (2834, 2836, 2837);

SELECT @entry := (SELECT MAX(`entry`) + 1 FROM gossip_menu);
INSERT INTO
	gossip_menu (`entry`, `text_id`)
VALUES
	(@entry, 2834),
	(@entry + 1, 2836),
	(@entry + 2, 2837);

UPDATE
	gossip_menu_option
SET
	action_menu_id = @entry + id
WHERE
	menu_id = 2184;
