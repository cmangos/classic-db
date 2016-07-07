-- Fixed indications from Undercity Guardians when asking for professions
-- Thanks @katz1 for reporting. This closes #839 
UPDATE gossip_menu_option SET action_poi_id = 255 WHERE menu_id = 2847 and id = 11;
UPDATE gossip_menu_option SET action_poi_id = 256 WHERE menu_id = 2847 and id = 10;
UPDATE gossip_menu_option SET action_poi_id = 257 WHERE menu_id = 2847 and id = 9;
