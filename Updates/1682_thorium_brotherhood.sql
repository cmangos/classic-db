-- Improved gossip for two Thorium Brotherhood NPCs: they will change depending on the
-- reputation players have with that faction
-- Fixed the gossip for getting the Sulfuron Hammer in Blackrock Depths
SET @COND := 125;

DELETE FROM conditions WHERE condition_entry = @COND;
INSERT INTO conditions VALUES
(@COND, 5, 59, 5);

UPDATE gossip_menu SET condition_id = @COND WHERE entry = 5962 AND text_id = 7121;

-- IDs are temporary, with need sniffs for the correct ones
DELETE FROM npc_text WHERE ID IN (7006, 7007, 7008);
INSERT INTO `npc_text` VALUES
(7006, 'A Sulfuron ingot?!??! Impossible! I must have it! I must! I must!$B$B$R, I am authorized to make you a grand deal for that ingot. Perhaps you would be interested to know the secrets of the Hand of Ragnaros? Sulfuras, idiot! The legendary hammer of the Firelord.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(7007, 'In exchange for one Sulfuron Ingot, I am authorized to grant you one copy of the plans to forge a Sulfuron hammer.$B$BNow an adventurer like yourself is probably thinking to $ghimself:herself;, "What would I ever need a hammer like that for when what I already own is far superior?"$B$BWell let me tell you something, $gmister:missy;, there ain\'t nothing more superior than what the Sulfuron hammer can become!', NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(7008, 'You see, all you gotta do is forge the Sulfuron hammer and find yourself the Eye of Sulfuras. Combine the Eye of Sulfuras with the Sulfuron hammer and it will become Sulfuras! Now I\'m not going to bog you down with any technical information as to where or how or when you can get an Eye of Sulfuras. I\'m sure you\'ll figure that stuff out. Just sign this here contract so that our agreement is binding and our business will be done.', NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM gossip_menu WHERE text_id IN (7006, 7007, 7008);
INSERT INTO gossip_menu VALUES
(4781, 7006, 0, 356),
(5847, 7007, 0, 0),
(5846, 7008, 0, 0);

UPDATE gossip_menu_option SET action_script_id = 0, action_menu_id = 5847 WHERE menu_id =4781 AND id= 1;
DELETE FROM gossip_menu_option WHERE menu_id IN (5847, 5846);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`)
VALUES
(5847, 0, 0, 'You\'ve got my attention.', 1, 1, 5846, 0, 0, 0, 0, NULL, 0),
(5846, 0, 0, 'Give me the contract.', 1, 1, -1, 0, 584601, 0, 0, NULL, 0);

UPDATE dbscripts_on_gossip SET id = 584601 WHERE ID = 4781;
