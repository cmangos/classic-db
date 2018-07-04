-- Added script for Gordok Ogre Suit event in Dire Maul

-- -------------------------------------------
-- Captain Kromcrush
-- -------------------------------------------

SET @TEXT := 2000000268;
SET @CONDITION := 928;

-- Added specific condition for wearing Ogre Suit
DELETE FROM conditions WHERE condition_entry=@CONDITION;
INSERT INTO conditions VALUES
(@CONDITION, 1, 22736, 0, 'Has aura 22736');  -- Gordok Ogre Suit

-- Made quest 1317 a 7703 (Unfinished Gordok Business) only available when player has King of the Gordok aura
UPDATE quest_template SET RequiredCondition=976 WHERE entry IN (1318, 7703);

-- Added conditions to make gossip related to King of the Gordok only display when aura is present
UPDATE gossip_menu SET condition_id=976 WHERE entry=5739 AND text_id=6914;
UPDATE gossip_menu_option SET condition_id=976 WHERE menu_id=5739 AND id=1;

-- Added missing gossip menus and options for Ogre Suit event
DELETE FROM gossip_menu WHERE entry=5738 OR (entry=5739 AND text_id=6913);
INSERT INTO gossip_menu VALUES
(5738, 6915, 0, 0),
(5739, 6913, 0, @CONDITION);

DELETE FROM gossip_menu_option WHERE menu_id=5738 OR (menu_id=5739 AND id=0);
INSERT INTO gossip_menu_option VALUES
(5739, 0, 0, 'Um, I\'m taking some prisoners we found outside before the king for punishment.', 1, 1, 5738, 0, 0, 0, 0, '', @CONDITION),
(5738, 0, 0, 'Er... that\'s how I found them.  I wanted to show the king that they were a threat!  Say Captain... I overheard Guard Fengus calling you a fat, useless gnoll lover!', 1, 1, -1, 0, 573801, 0, 0, '', 0);

-- Added missing scripts for Ogre Suit event (Captain Kromcrush changes and movement)
DELETE FROM dbscripts_on_gossip WHERE id=573801;
INSERT INTO dbscripts_on_gossip VALUES
(573801, 0, 15, 8599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - cast Enrage'),
(573801, 0, 0, 0, 0, 0, 0, 0, 0, @TEXT, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - 1st yell'),
(573801, 0, 2, 59, 32768+33554432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - Set UnitFlags to Unselectable'),
(573801, 1, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - set active'),
(573801, 1, 29, 3, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - npcFlags removed'),
(573801, 1, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - Start WP movement'),
(573801, 1, 14, 8599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - remove Enrage aura');

DELETE FROM dbscripts_on_creature_movement WHERE id=1432501;
INSERT INTO dbscripts_on_creature_movement VALUES
(1432501, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - stop WP movement'),
(1432501, 0, 2, 59, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - Remove Unselectable UnitFlags'),
(1432501, 0, 29, 3, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - npcFlags added'),
(1432501, 0, 22, 45, 0x01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - Change faction to Ogre'),
(1432501, 0, 0, 0, 0, 0, 0, 0, 0, @TEXT + 1, 0, 0, 0, 0, 0, 0, 0, 'Captain Kromcrush - 2st yell');

DELETE FROM dbscript_string WHERE entry IN (@TEXT, @TEXT + 1);
INSERT INTO dbscript_string VALUES
(@TEXT, 'Hey, who Fengus callin\' a gnoll lover?!  Take da prisoners to da king; you smart to bring them with their weapons and show da king that they a threat.  I\'ll go see if Fengus talk smack when I give him da beatdown!  HAR!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'Captain Kromcrush - Yell Fengus 1'),
(@TEXT + 1, 'OK Fengus, where you at?!  You come call me a gnoll lover while I give you da hammer upside da head!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 6, 0, 0, 'Captain Kromcrush - Yell Fengus 2');

-- Added waypoints for NPC 14325 (Captain Kromcrush)
DELETE FROM creature_movement_template WHERE entry=14325;
INSERT INTO creature_movement_template VALUES
(14325, 0, 1, 537.6137, 481.9839, 29.463390, 100, 0, 0, NULL),
(14325, 0, 2, 492.9615, 482.6955, 29.462610, 100, 0, 0, NULL),
(14325, 0, 3, 491.6125, 531.2999, 27.914310, 100, 0, 0, NULL),
(14325, 0, 4, 540.2087, 535.6834, 27.918610, 100, 0, 0, NULL),
(14325, 0, 5, 585.9129, 535.8292, 6.7701660, 100, 0, 0, NULL),
(14325, 0, 6, 586.8547, 563.0961, -4.755411, 100, 0, 0, NULL),
(14325, 0, 7, 587.0049, 593.8651, -4.755402, 100, 0, 0, NULL),
(14325, 0, 8, 538.3655, 591.8546, -4.754774, 100, 0, 0, NULL),
(14325, 0, 9, 491.1774, 591.8058, -21.82413, 100, 0, 0, NULL),
(14325, 0, 10, 478.2634, 591.4266, -25.40611, 100, 0, 0, NULL),
(14325, 0, 11, 478.0584, 579.1732, -25.40207, 100, 0, 0, NULL),
(14325, 0, 12, 527.7573, 579.9644, -25.40256, 100, 0, 0, NULL),
(14325, 0, 13, 558.3123, 582.1360, -25.40273, 100, 0, 0, NULL),
(14325, 0, 14, 558.1668, 541.2151, -25.39999, 100, 0, 0, NULL),
(14325, 0, 15, 512.6095, 542.4402, -25.39569, 100, 0, 0, NULL),
(14325, 0, 16, 467.3795, 542.8689, -24.54045, 100, 0, 0, NULL),
(14325, 0, 17, 431.9923, 543.8799, -18.33062, 100, 0, 0, NULL),
(14325, 0, 18, 409.5372, 536.0345, -17.20103, 100, 0, 0, NULL),
(14325, 0, 19, 390.5341, 511.5883, -12.77050, 100, 0, 0, NULL),
(14325, 0, 20, 385.6642, 462.6257, -7.219532, 100, 0, 0, NULL),
(14325, 0, 21, 385.2750, 413.1416, -1.672127, 100, 0, 0, NULL),
(14325, 0, 22, 384.2351, 365.1471, 0.7192566, 100, 0, 0, NULL),
(14325, 0, 23, 385.7366, 335.8043, 2.8715980, 100, 0, 0, NULL),
(14325, 0, 24, 385.6665, 297.6332, 11.203720, 100, 0, 0, NULL),
(14325, 0, 25, 384.4298, 255.9361, 11.439550, 100, 0, 1432501, NULL),
(14325, 0, 26, 384.4298, 255.9361, 11.439550, 100, 0, 0, NULL);
