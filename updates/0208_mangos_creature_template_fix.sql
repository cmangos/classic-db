-- Added gossip menu to creature 3216 (Neeru Fireblade) in order to grant completion of quest 5729 (Hidden Enemies)
UPDATE `creature_template` SET `gossip_menu_id` = 3701 WHERE `entry` = 3216;
