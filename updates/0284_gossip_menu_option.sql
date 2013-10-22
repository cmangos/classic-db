-- Fix typo, replace "shematics" with "schematics"
UPDATE `gossip_menu_option` SET `option_text` = "Use engineering to access "
    "hidden schematics!" WHERE `menu_id` = 1047 and `id` = 1;
