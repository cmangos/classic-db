-- Fixed conditions for Witch Doctor Mau'ari gossips
UPDATE gossip_menu_option SET condition_id=256 WHERE menu_id=2703 AND id=1;
UPDATE conditions SET type=23 WHERE condition_entry=257;
