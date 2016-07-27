-- Removed TBC gossip options for NPC 14847 (Professor Thaddeus Paleo)
-- Thanks @Neotmiren for poiting
DELETE FROM gossip_menu_option WHERE menu_id = 6207 AND id IN (4, 5, 6, 7, 8);
