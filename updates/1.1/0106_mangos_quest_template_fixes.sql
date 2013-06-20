-- Updates level for quests in paladin quests chain The Tome of Valor
-- Min level should be 20 and quest level should be 25
-- source: http://www.wowwiki.com/Quest:The_Tome_of_Valor
UPDATE `quest_template` SET `MinLevel` = 20, `QuestLevel` = 25 WHERE `entry` IN (1649, 1650, 1651, 1652);

-- Updates level for quests in paladin quests chain The Test of Righteousness
-- Min level should be 20 and quest level should be 21
-- source: http://www.wowwiki.com/Quest:The_Test_of_Righteousness_(1)
UPDATE `quest_template` SET `MinLevel` = 20, `QuestLevel` = 21 WHERE `entry` IN (1653, 1654, 1806);

-- Adds dwarf priest quest 5647 (A Lack of Fear) from Night Elf priest trainers 
-- It is currently only existing in DB for Human and Dwarf priest trainers
-- source: http://www.wowhead.com/quest=5647
DELETE FROM `quest_template` WHERE `entry` = 5647;
INSERT INTO `quest_template` VALUES
(5647, 2, -262, 20, 20, 0, 16, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 5641, 0, 0, 0, 0, 'A Lack of Fear', 'Your race is so very strong, $N. We are proud to call you allies. And as each day\'s sun sets, you and your kin grow closer to not only finding your true origins, but find great confidence that you are on the right path in so many things. That feeling must make you feel so triumphant.$B$BWord came from Ironforge just recently. It asked that you return there and speak to High Priest Rohan in the Mystic Ward. I would not keep him waiting. May Elune guide your travels.', 'Speak to High Priest Rohan in Ironforge.', 'You\'ve got the makings of a great $C, $N. Keep up the good work!$B$BYou\'ve already shown you\'re ready for battle. Perhaps it\'s time we taught ya a little somethin\' more.', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 19337, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
-- Link quest to creature 4092 (Lariia <Priest Trainer>) as she is the Night Elf priest trainer
-- redirecting other races to their respective trainers for racial quests (like Desperate Prayer)
DELETE FROM `creature_questrelation` WHERE `id` = 4092 AND `quest` = 5647;
INSERT INTO `creature_questrelation` (`id`, `quest`) VALUES (4092, 5647);
-- Updates target creature 11406 (High Priest Rohan) to complete the quest 
DELETE FROM `creature_involvedrelation` WHERE `id` = 11406 AND `quest` = 5647;
INSERT INTO `creature_involvedrelation` (`id`, `quest`) VALUES (11406, 5647);
