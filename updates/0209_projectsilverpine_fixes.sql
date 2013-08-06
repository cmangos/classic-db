-- Removes Unlit Poor Torch (6183) from vendors. It's not supposed to be available to players at all. Thanks Ghurok
DELETE FROM `npc_vendor` WHERE `item` = 6183;

-- Removes Mood Ring (7338) from dropping. It is only supposed to be available through purchase. Thanks Ghurok
DELETE FROM `gameobject_loot_template` WHERE `item` = 7338;

-- The Dragonmaw Shinbones will now drop if you have the quest. Thanks Ghurok
UPDATE `quest_template` SET `ReqSourceId1` = 7131 WHERE `entry` = 1846;

-- Corrects the completion text for the quest (5441) Thanks Ghurok
UPDATE `quest_template` SET `OfferRewardText` = "Good, good. Maybe they'll think twice before slacking next time! Thanks for the help!" WHERE `entry` = 5441;

-- Corrects the completion text for the quest (5482) Thanks Ghurok
UPDATE `quest_template` SET `OfferRewardText` = "Ah, my doom weed. Excellent!$B$B<Junior Apothecary Holland rubs his hands together greedily.>$B$BThese will come in quite handy. You\'ve done me, uh, the Lady, a fine service today $N. As promised here is the reward that you deserve." WHERE `entry` = 5482;

-- Corrects the completion text for the quest (6064) Thanks Ghurok
UPDATE `quest_template` SET `RequestItemsText` = "Don\'t worry, $Glad:lass;! You\'ll get ta try a few before you\'ll need to decide on just one." WHERE `entry` = 6064;

-- Corrects the completion text for the quest (6662) Thanks Ghurok
UPDATE `quest_template` SET `RequestItemsText` = "<Nipsy puts his index finger through one of the air holes in the carton.>$B$BAlive and kicking... and just in time!" WHERE `entry` = 6662;

-- Corrects the completion text for the quest (667)
UPDATE `quest_template` SET `OfferRewardText` = "We survived the attack!$B$BWe could not have done it without you, $N.$B$BWe\'ll be heading out as soon as the tide rises. If you weren\'t such a promising hero I\'d offer you a place on my crew. But I can tell you have bigger fish to fry.$B$BEven if you are a puny $r...." WHERE `entry` = 667;

-- Correct Questlevel for Quest 670 Sunken Treasure
UPDATE `quest_template` SET `MinLevel` = 36 WHERE `entry`=670;
