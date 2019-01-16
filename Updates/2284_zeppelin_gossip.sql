-- Remove zeppelin position related gossip otions: they were not present in Classic days
DELETE FROM gossip_menu_option WHERE option_text LIKE 'Where is the zeppelin%';
