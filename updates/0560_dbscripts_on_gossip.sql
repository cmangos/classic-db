-- Fixed quest 4941 that was broken since a previous update. Thanks Scotty0100 for pointing
-- This closes #473 

-- Updated scripts id to proper formatting for creature 16365 (Master Craftsman Omarion)
UPDATE `gossip_menu_option` SET `action_script_id` = 244001 WHERE `menu_id` = 24400 AND `id` = 1;
UPDATE `dbscripts_on_gossip` SET `id` = 244001 WHERE `id` = 2901;

UPDATE `gossip_menu_option` SET `action_script_id` = 244011 WHERE `menu_id` = 24401 AND `id` = 1;
UPDATE `dbscripts_on_gossip` SET `id` = 244011 WHERE `id` = 2902;

UPDATE `gossip_menu_option` SET `action_script_id` = 244012 WHERE `menu_id` = 24401 AND `id` = 2;
UPDATE `dbscripts_on_gossip` SET `id` = 244012 WHERE `id` = 2903;

UPDATE `gossip_menu_option` SET `action_script_id` = 244013 WHERE `menu_id` = 24401 AND `id` = 3;
UPDATE `dbscripts_on_gossip` SET `id` = 244013 WHERE `id` = 2904;

UPDATE `gossip_menu_option` SET `action_script_id` = 244014 WHERE `menu_id` = 24401 AND `id` = 4;
UPDATE `dbscripts_on_gossip` SET `id` = 244014 WHERE `id` = 2900;

UPDATE `gossip_menu_option` SET `action_script_id` = 244021 WHERE `menu_id` = 24402 AND `id` = 1;
UPDATE `dbscripts_on_gossip` SET `id` = 244021 WHERE `id` = 2905;

UPDATE `gossip_menu_option` SET `action_script_id` = 244022 WHERE `menu_id` = 24402 AND `id` = 2;
UPDATE `dbscripts_on_gossip` SET `id` = 244022 WHERE `id` = 2906;

UPDATE `gossip_menu_option` SET `action_script_id` = 244023 WHERE `menu_id` = 24402 AND `id` = 3;
UPDATE `dbscripts_on_gossip` SET `id` = 244023 WHERE `id` = 2907;

UPDATE `gossip_menu_option` SET `action_script_id` = 244031 WHERE `menu_id` = 24403 AND `id` = 1;
UPDATE `dbscripts_on_gossip` SET `id` = 244031 WHERE `id` = 2908;

UPDATE `gossip_menu_option` SET `action_script_id` = 244032 WHERE `menu_id` = 24403 AND `id` = 2;
UPDATE `dbscripts_on_gossip` SET `id` = 244032 WHERE `id` = 2909;

UPDATE `gossip_menu_option` SET `action_script_id` = 244033 WHERE `menu_id` = 24403 AND `id` = 3;
UPDATE `dbscripts_on_gossip` SET `id` = 244033 WHERE `id` = 2910;

UPDATE `gossip_menu_option` SET `action_script_id` = 244034 WHERE `menu_id` = 24403 AND `id` = 4;
UPDATE `dbscripts_on_gossip` SET `id` = 244034 WHERE `id` = 2911;

UPDATE `gossip_menu_option` SET `action_script_id` = 244035 WHERE `menu_id` = 24403 AND `id` = 5;
UPDATE `dbscripts_on_gossip` SET `id` = 244035 WHERE `id` = 2912;

UPDATE `gossip_menu_option` SET `action_script_id` = 244036 WHERE `menu_id` = 24403 AND `id` = 6;
UPDATE `dbscripts_on_gossip` SET `id` = 244036 WHERE `id` = 2913;

-- Added wrongly delete script to complete quest after speaking with creature 3144
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 2908;
INSERT INTO `dbscripts_on_gossip` VALUES
(2908, 0, 7, 4941, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Eitrigg\'s wisdom completion');