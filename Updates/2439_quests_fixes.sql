DELETE FROM `creature_questrelation` WHERE `id` IN (233,237,240,963) AND `quest`=109;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES 
(233,109),
(237,109),
(240,109),
(963,109);

UPDATE `quest_template` SET `RequestItemsText` = "Greetings and welcome, $Gmaster:madam;. Have you yet tried one of our fine wines?", `OfferRewardText` = "Ah, so you've seen Renato? Well here you are, $Gsir:ma'am;. A bottle of our special pinot noir. You'll not find its equal in all of Azeroth!" WHERE `entry` = 332;


