-- Thanks scotty0100 for pointing and fixing all of these
-- Removed duplicate gossip menu option for creature 4730 (Lelanai)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3185 AND `id` = 0;
-- Updated Orgrimmar Battlemaster gossip to replace placeholder gossip menu option by correct value.
UPDATE `gossip_menu_option` SET `option_text` = 'I wish to join the battle!' WHERE `option_text` = 'GOSSIP_OPTION_BATTLEFIELD';
-- Fixed wrong direction given by Stormwind Guard when asking for cooking trainer
UPDATE `gossip_menu_option` SET `action_poi_id` = 42 WHERE `menu_id` = 421 AND `id` = 2;
