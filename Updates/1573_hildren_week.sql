-- *******************Orphan Changes**********************************************

/* Removing polearm from Horde Orphans.  They could stick an eye out with that thing! */
UPDATE `creature_template` SET `EquipmentTemplateId`= 0 WHERE `Entry`= 14499;

/* Removing spawned Orcish and Human Orphans. They should only be summoned via their respective whistles */
DELETE FROM `creature` WHERE `id` IN (14305, 14444);

/* Removing Orphan Matrons Nightingale and Battlewail as event npcs.  They should be permanently spawned */
DELETE FROM `game_event_creature` WHERE `guid` IN (6512, 79806);

/* Adding gossip menu for Orcish Orphan */
DELETE FROM `gossip_menu` WHERE `entry` = 5820;
INSERT `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(5820, 6993, 0, 0);
UPDATE `creature_template` SET `NpcFlags`= 3, `GossipMenuId`= 5820 WHERE `Entry`= 14444;


-- **************** Quest Changes ********************************************
/* Adding Special Flags to complete quests with area trigger script */
UPDATE `quest_template` SET `SpecialFlags`= 2 WHERE `entry` IN (1687, 1558, 1479, 1800, 910, 911);

/* Reducing Min level of quests 1479, 558, 910, 911 and 925 from 60 to 10 */
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` IN (1479, 558, 910, 911, 925);


-- ******* Alliance Quests ************

/* Removing NextQuestInChain entries to allow for 3 separate quests in stage 2 of chain */
UPDATE `quest_template` SET `NextQuestInChain`= 0 WHERE `entry`= 1468;

/* Removing NextQuestInChain entries to allow for 2 separate quests in stage 3 chain */
UPDATE `quest_template` SET `NextQuestInChain`= 0 WHERE `entry` IN (1687, 1558, 1479);

/* Removing Uneeded entries for stage 4 chain */
UPDATE `quest_template` SET `NextQuestInChain`= 0 WHERE `entry` IN (558, 4822);
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry`= 4822;

/* Setting Exclusive group for quests 1687, 1558, 1479. All must be completed to proceed to next quests */
UPDATE `quest_template` SET `ExclusiveGroup` = -1687 WHERE `entry` IN (1687, 1558, 1479);

/* Setting Exclusive group for quests 558, 4822. Both must be completed to proceed to next quest */
UPDATE `quest_template` SET `ExclusiveGroup` = -558 WHERE `entry` IN (558, 4822);

/* Correct Prev/Next quest Ids of quests to maintain questline orders */
UPDATE `quest_template` SET `PrevQuestId`= 1468 WHERE `entry` IN (1687, 1558, 1479);
UPDATE `quest_template` SET `NextQuestId`= 4822 WHERE `entry`= 1687;
UPDATE `quest_template` SET `PrevQuestId`= -4822 WHERE `entry`= 558;

/* Correcting NextQuestId for entry 558. Only need to specify one of the quests due to exclusive grouping */
UPDATE `quest_template` SET  `NextQuestId`= 171 WHERE `entry`= 558; 

/* Removing unnecessary entry for quest 171 */
UPDATE `quest_template` SET `PrevQuestId`= 0 WHERE `entry`= 171;

-- ******************** Horde Quests ********************************
UPDATE `quest_template` SET `PrevQuestId` = 172 WHERE `entry` IN (910, 1800);

/* Setting Exclusive group for quests 1800, 910, 911. All must be completed to proceed to next quests */
UPDATE `quest_template` SET `ExclusiveGroup` = -1800 WHERE `entry` IN (1800, 910, 911);

/* Setting Exclusive group for quests 915 and 925. Both must be completed to proceed to next quest */
UPDATE `quest_template` SET `ExclusiveGroup` = -925 WHERE `entry` IN (915, 925);

/* Adding Ice Scream as next quest Id for quest 1800 */
UPDATE `quest_template` SET `NextQuestId`= 915 WHERE `entry`= 1800;
UPDATE `quest_template` SET `PrevQuestId`= 0 WHERE `entry`= 915;

/* Adding Cairne's Hoofprint quest as dependant on having Ice Scream in log */
UPDATE `quest_template` SET `PrevQuestId`= -915 WHERE `entry`= 925;

/* Correcting NextQuestId for entry 925. Only need to specify one of the quests due to exclusive grouping */
UPDATE `quest_template` SET `NextQuestId`= 5502 WHERE `entry`= 925;

/* Removing unnecessary entry for quest 5502 */
UPDATE `quest_template` SET `PrevQuestId`= 0 WHERE `entry`= 5502;

/* Changing model of Piglet Collar, Mr Wiggles ain't no turtle!! */
UPDATE `creature_template` SET `ModelId1`= 16257 WHERE `Entry`= 16548;

/* Adding 5 Gold amount to Curmudgeon's Payoff */
UPDATE `item_template` SET `minMoneyLoot`= 50000, `maxMoneyLoot`= 50000 WHERE `entry`= 23022;

-- *****************************Quest Text Corrections*****************************************************

/* Changing Trukaos to player's name to prevent excessive thanks from further bloating Trukaos' awesomeness */
UPDATE `quest_template` SET `OfferRewardText`= 'WOW, that was a real life ghost! That was so awesome - I can\'t wait to tell everyone back at the orphanage. Captain Grayson... he even looked like a pirate! When I grow up I wanna be a ghost pirate too!$B$BThanks for taking me to Westfall, $N. I know there are scary things out there in the wilds of Westfall, and I hope I wasn\'t too much of a pain. You\'re awesome!' WHERE `entry`= 1687;

/* Adding gender test - Big Sisters would love to take out some orphans too! */
UPDATE `quest_template` SET `OfferRewardText`= 'Zug zug! My name is Grunth, and I guess you\'re looking after me? You\'re an adventurer, like my mom and dad were. My matron says that they died with honor in battle. I\'m happy to meet you.$B$BI hope we\'ll do plenty of things together. I have some things I\'d like to do, and the matron says you\'ll be like a big $gbrother:sister; to me during this week. I\'d like that a whole bunch.' WHERE `entry`= 172;

UPDATE `quest_template` SET `OfferRewardText`= 'Um... hi. My name is Randis, and I guess you\'re looking after me? You\'re an adventurer, like my mom and dad were. I\'m happy to meet you.$B$BI hope we\'ll have a lot of fun together. I have some things I\'d like to do, and the matron says you\'ll be like a big $gbrother:sister; to me during this week. I\'d like that a whole bunch, yes $gsir:lady;.' WHERE `entry`= 1468;

/* Strangely enough, I am not and have never been Yohaan */
UPDATE `quest_template` SET `OfferRewardText`= 'Wow, Ashenvale is where real adventure happens! Have you ever fought in Ashenvale, $N? When I become a hero when I grow up, I wanna come to Ashenvale and fight for the glory of the Horde!$B$BThank you for taking me to the frontier, $N. You\'re the best!' WHERE `entry`= 911;

UPDATE `quest_template` SET `OfferRewardText`= 'That throne room was scary, $N! Even though it was empty, it felt like a great evil had happened there. I felt mad... but I also felt sad too. I understand why the matrons tell us such stories; I will never betray my people like that!$B$BThank you for taking me to the throne room, $N. I learned a lot.' WHERE `entry`= 1800;

UPDATE `quest_template` SET `RequestItemsText`='Are we there yet?' WHERE `entry` IN (1687, 1558, 1479, 1800, 910, 911);

/* Adding missing gossip option text for Cairne */
UPDATE `gossip_menu_option` SET `option_text`= 'Chief Bloodhoof, this may sound like an odd request... but I have a young ward who is quite shy. You are a hero to him, and he asked me to get your hoofprint.' WHERE `menu_id`= 5851;
