-- Fixed NPC vendors items for vendors 10856 (Argent Quartermaster Hasana ), 10857 (Argent Quartermaster Lightspark ) & 11536 (Quartermaster Miranda Breechlock )
-- items are now available only once the related quests are completed
-- Also removed repeat flag for quest 5517, 5521, 5524 (Chromatic Mantle of the Dawn)
-- Prevented players to complete all Mantle of the Dawn quests as they should be able to do only one by tier (two tiers)
-- Author: @trulynullified
-- thanks the thetrueanimal for pointing. This closes #742

SET @ENTRY := 151;

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN @ENTRY + 1 AND @ENTRY + 10;
INSERT INTO `conditions` VALUES 
(@ENTRY + 1, '8', '5513', '0'),
(@ENTRY + 2, '8', '5507', '0'),
(@ENTRY + 3, '8', '5504', '0'),
(@ENTRY + 4, '-2', @ENTRY + 1, @ENTRY + 2),
(@ENTRY + 5, '-2', @ENTRY + 3, @ENTRY + 4),
(@ENTRY + 6, '8', '5524', '0'),
(@ENTRY + 7, '8', '5521', '0'),
(@ENTRY + 8, '8', '5517', '0'),
(@ENTRY + 9, '-2', @ENTRY + 6, @ENTRY + 7),
(@ENTRY + 10, '-2', @ENTRY + 8, @ENTRY + 9);
UPDATE `npc_vendor` SET `condition_id` = @ENTRY + 5 WHERE `item` IN (18169,18170,18171,18172,18173);
UPDATE `npc_vendor` SET `condition_id` = @ENTRY + 10 WHERE `item` = '18182';
UPDATE `quest_template` SET `ExclusiveGroup` = '5504' WHERE `entry` IN (5504,5507,5513);
UPDATE `quest_template` SET `ExclusiveGroup` = '5517', `SpecialFlags` = '0' WHERE `entry` IN (5517,5521,5524);
