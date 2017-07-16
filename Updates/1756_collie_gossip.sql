-- Fixed conditions for NPC 9117 gossip
UPDATE gossip_menu SET condition_id=7 WHERE entry=2184 AND text_id=2833;
UPDATE gossip_menu_option SET condition_id=7 WHERE menu_id=2184 AND id IN (0, 1, 2);
UPDATE conditions SET value2=7 WHERE condition_entry=1149;
