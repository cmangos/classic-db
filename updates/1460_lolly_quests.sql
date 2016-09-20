/* Fixed Lolly Quests
These quests involve Jesper and Spoops. They require the player to visit innkeepers in each capital, perform an emote and receive their lollies. Currently the initial quest from Jesper(8311) is unavailable as are the quests from the alliance capital innkeepers. The innkeepers also do not respond to the correct emote to complete the quest. All of these issues have been corrected.

Spoops has the quest(8312) available but is incorrectly designated an innkeeper with gossip. These have been corrected. Npcs involved in these quests have available their respective quests once quest 8312 is accepted but are unable to complete these quests upon receiving the correct emote. These issues have been corrected.
*/

-- Spoops and Quest 8312

-- Adding Spoops (guid 99966) to Hallow's End npcs
DELETE FROM `game_event_creature` WHERE guid = 99966;
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES (99966, 12);

-- Removing Gossip and Innkeeper functionality from Spoops (Should only be a questgiver)
UPDATE `creature_template` SET `NpcFlags`= 2 WHERE `Entry`= 15309;

-- Removing repeatability from Quest 8312
UPDATE `quest_template` SET `SpecialFlags`= 0 WHERE `entry`= 8312;

-- Horde
-- Quest 8359
-- Adding support for Alliance/Horde lolly collecting quests
UPDATE `quest_template` SET `QuestFlags`= 2, `SpecialFlags`= 2 WHERE `entry` IN (8353, 8354, 8355, 8356, 8357, 8358, 8359, 8360);

-- Removing casting creature requirement from quest 8359 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE `quest_template` SET `ReqCreatureOrGOId1`= 0, `DetailsEmote1`= 1, `OfferRewardEmote1`= 4 WHERE `entry`= 8359;

-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE `quest_template` SET `ObjectiveText1`= '', `EndText`= 'Flex for Innkeeper Gryshka' WHERE `entry`= 8359;

-- Quest 8358
-- Removing casting creature requirement from quest 8358 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE `quest_template` SET `ReqCreatureOrGOId1`= 0, `DetailsEmote1`= 1, `OfferRewardEmote1`= 4 WHERE `entry`= 8358;

-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE `quest_template` SET `ObjectiveText1`= '', `EndText`= 'Do the "train" for Kali Remik' WHERE `entry`= 8358;

-- Quest 8360
-- Removing casting creature requirement from quest 8360 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE `quest_template` SET `ReqCreatureOrGOId1`= 0, `DetailsEmote1`= 1, `OfferRewardEmote1`= 4 WHERE `entry`= 8360;

-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE `quest_template` SET `ObjectiveText1`= '', `EndText`= 'Dance for Innkeeper Pala' WHERE `entry`= 8360;

-- Quest 8354
-- Removing casting creature requirement from quest 8360 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE `quest_template` SET `ReqCreatureOrGOId1`= 0, `DetailsEmote1`= 1, `OfferRewardEmote1`= 4 WHERE `entry`= 8354;

-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE `quest_template` SET `ObjectiveText1`= '', `EndText`= 'Cluck like a chicken for Innkeeper Norman' WHERE `entry`= 8354;


-- Alliance
-- Quest 8356

-- Removing casting creature requirement from quest 8355 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE `quest_template` SET `ReqCreatureOrGOId1`= 0, `DetailsEmote1`= 1, `OfferRewardEmote1`= 4 WHERE `entry`= 8356;

-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE `quest_template` SET `ObjectiveText1`= '', `EndText`= 'Flex for Innkeeper Allison' WHERE `entry`= 8356;

-- Quest 8355

-- Removing casting creature requirement from quest 8355 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE `quest_template` SET `ReqCreatureOrGOId1`= 0, `DetailsEmote1`= 1, `OfferRewardEmote1`= 4 WHERE `entry`= 8355;

-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE `quest_template` SET `ObjectiveText1`= '', `EndText`= 'Do the "train" for Talvash' WHERE `entry`= 8355;

-- Quest 8353

-- Removing casting creature requirement from quest 8353 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE `quest_template` SET `ReqCreatureOrGOId1`= 0, `DetailsEmote1`=1, `OfferRewardEmote1`= 4 WHERE `entry`= 8353;

-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE `quest_template` SET `ObjectiveText1`= '', `EndText`= 'Cluck like a chicken for Innkeeper Firebrew' WHERE `entry`= 8353;

-- Quest 8357

-- Removing casting creature requirement from quest 8357 and adding talk emote on quest details plus cheer emote on reaching reward page
UPDATE `quest_template` SET `ReqCreatureOrGOId1`= 0, `ReqCreatureOrGOCount1` = 0, `DetailsEmote1`= 1, `OfferRewardEmote1`= 4 WHERE `entry`= 8357;

-- Moving ObjectText1 to EndText due to SpecialFlags being changed to 2
UPDATE `quest_template` SET `ObjectiveText1`= '', `EndText`= 'Dance for Innkeeper Saelienne' WHERE `entry`= 8357;