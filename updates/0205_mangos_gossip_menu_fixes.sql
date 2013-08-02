-- Data backported from YTDB, checked on:
-- http://www.wowhead.com/quest=4941
-- Adds gossip menu to creature 3144 (Eittrigg)
UPDATE `creature_template` SET `gossip_menu_id` = 2901 WHERE `entry` = 3144;

-- Adds gossip_menu_options related to quest with condition_id 
DELETE FROM `conditions` WHERE `condition_entry` = 9;
INSERT INTO `conditions` VALUES
(9, 9, 4941, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 2901 AND 2908;
INSERT INTO `gossip_menu_option` VALUES 
(2901, 0, 0, 'Hello, Eitrigg. I bring news from Blackrock Spire.', 1, 1, 2902, 0, 0, 0, 0, NULL, 9),
(2902, 0, 0, 'There is only one Warchief, Eitrigg!', 1, 1, 2903, 0, 0, 0, 0, NULL, 0),
(2903, 0, 0, 'What do you mean?', 1, 1, 2904, 0, 0, 0, 0, NULL, 0),
(2904, 0, 0, 'Hearthglen? But...', 1, 1, 2905, 0, 0, 0, 0, NULL, 0),
(2905, 0, 0, 'I will take you up on that offer, Eitrigg.', 1, 1, 2906, 0, 0, 0, 0, NULL, 0),
(2906, 0, 0, 'Ah, so that is how they pushed the Dark Iron to the lower parts of the Spire.', 1, 1, 2907, 0, 0, 0, 0, NULL, 0),
(2907, 0, 0, 'Perhaps there exists a way?', 1, 1, 2908, 0, 0, 0, 0, NULL, 0),
(2908, 0, 0, 'As you wish, Eitrigg.', 1, 1, -1, 0, 2908, 0, 0, NULL, 0);

-- Adds gossip menu related to those options
DELETE FROM `gossip_menu` WHERE `text_id` BETWEEN 3573 AND 3580;
INSERT INTO `gossip_menu` VALUES 
(2901, 3573, 0, 0),
(2902, 3574, 0, 0),
(2903, 3575, 0, 0),
(2904, 3576, 0, 0),
(2905, 3577, 0, 0),
(2906, 3578, 0, 0),
(2907, 3579, 0, 0),
(2908, 3580, 0, 0);

-- Adds script to complete quest after speaking with creature 3144
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 2908;
INSERT INTO `dbscripts_on_gossip` VALUES
(2908, 0, 7, 4941, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
