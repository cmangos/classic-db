-- Add missing gossip option answers to Witch Doctor Mau'ari
-- This closes #99
-- http://wow.gamepedia.com/Witch_Doctor_Mau%27ari
DELETE
FROM gossip_menu WHERE entry IN (2704, 2705);
INSERT INTO gossip_menu (entry, text_id) VALUES
(2704, 3382),
(2705, 3383);

UPDATE gossip_menu_option SET action_menu_id=2704 WHERE menu_id=2703 AND id=0;  -- was -1
UPDATE gossip_menu_option SET action_menu_id=2705 WHERE menu_id=2703 AND id=1;  -- was 0
