-- Fixed NPC 15611 (Cenarion Scout Jalia) not giving Hive'Ashi scout report to players on the quest
-- Thanks @yyhhrr for reporting. This closes https://github.com/cmangos/issues/issues/856
UPDATE `gossip_menu_option` SET `condition_id` = 1111 WHERE `menu_id` = 6691 AND `id` = 0;
