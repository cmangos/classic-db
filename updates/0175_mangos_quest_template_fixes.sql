-- Corrected minLevel for quest 383 (Vital Intelligence)
-- Source: http://www.wowwiki.com/Quest:Vital_Intelligence?oldid=556531
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 383;

-- Corrected minLevel for quest 382 (The Red Messenger)
-- Source: http://www.wowwiki.com/Quest:The_Red_Messenger?oldid=556517
UPDATE `quest_template` SET `MinLevel` = 3 WHERE `entry` = 382;

-- Corrected Questlevel for Quest Welcome! all factions it should be level 1
-- Source: http://www.wowwiki.com/Quest:Welcome!_(Northshire_Abbey)
UPDATE `quest_template` SET `QuestLevel` = 1 WHERE `entry` IN (5841, 5842, 5843, 5844, 5847);

-- Corrected Required Races for Quest 1049 Compendium of the fallen. Not available to Undead
-- Source: http://www.wowwiki.com/Quest:Compendium_of_the_Fallen
UPDATE `quest_template` SET `RequiredRaces` = 162 WHERE `entry` = 1049;

-- Corrected Required Races for Quest 656 Summoning the Princess. This quest is available to all
-- Source: http://www.wowwiki.com/Quest:Summoning_the_Princess
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 656;

