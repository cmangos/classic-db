-- Fixed gossip menu of creature 13278 (Duke Hydraxis) in Azshara
-- Now players will be able to get the required items to summon Majordomo
-- Executus in Molten Core
-- Thanks Scotty0100 for reporting and doing serious research about it
-- Thanks Tobschinski for researching also
-- This closes #614 
-- Source: http://thulf.blogspot.co.uk/2006_05_01_archive.html
-- http://img.photobucket.com/albums/v672/Xandier/Forums/WoWScrnShot_052106_111856.jpg
-- http://rsmg.pbsrc.com/albums/v672/Xandier/Forums/WoWScrnShot_052106_111828.jpg~c100

SET @CONDITION := 67;

DELETE FROM `gossip_menu` WHERE `entry` = 5065 AND `text_id` IN (6109, 6158, 8541, 8542);
INSERT INTO `gossip_menu` VALUES
(5065, 6109, 0, @CONDITION),
(5065, 6158, 0, @CONDITION + 1),
(5065, 8541, 0, @CONDITION + 9),
(5065, 8542, 0, @CONDITION + 7);

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 5065;
INSERT INTO `gossip_menu_option` VALUES
(5065, 0, 0, '[PH] I desire an aqual quintessence, Duke Hydraxis.', 1, 1, -1, 0, 506501, 0, 0, '', @CONDITION + 6),
(5065, 1, 0, 'I desire this eternal quintessence, Duke Hydraxis.', 1, 1, -1, 0, 506502, 0, 0, '', @CONDITION + 9);

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @CONDITION AND @CONDITION + 9;
INSERT INTO `conditions` VALUES
(@CONDITION, 8, 6805, 0), -- Quest "Stormers and Rumblers" rewarded
(@CONDITION + 1, 8, 6824, 0), -- Quest "Hands of the Enemy" rewarded
(@CONDITION + 2, 30, 749, 5), -- Reputation Hydraxian Waterlords is at max Honored
(@CONDITION + 3, -1, @CONDITION + 1, @CONDITION + 2),
(@CONDITION + 4, 5, 749, 6), -- Reputation Hydraxian Waterlords is at least Revered
(@CONDITION + 5, 24, 17333, 1), -- Does not have item Aqual Quintessence
(@CONDITION + 6, -1, @CONDITION + 3, @CONDITION + 5),
(@CONDITION + 7, -1, @CONDITION + 1, @CONDITION + 4),
(@CONDITION + 8, 24, 22754, 1), -- Does not have item Eternal Quintessence
(@CONDITION + 9, -1, @CONDITION + 7, @CONDITION + 8);

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (506501, 506502);
INSERT INTO `dbscripts_on_gossip` VALUES
(506501, 0, 15, 21357, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'create aqual quintessence'),
(506502, 0, 15, 28439, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'create eternal quintessence');
