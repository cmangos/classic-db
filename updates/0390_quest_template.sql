-- Fixed minlevel for Warlock class quest 1796 (Components for the Enchanted Gold Bloodrobe)
-- Thanks Neotmiren for pointing and fixing
-- Source: http://www.wowwiki.com/Quest:Components_for_the_Enchanted_Gold_Bloodrobe
UPDATE `quest_template` SET `MinLevel` = 31 WHERE `entry` = 1796 AND `MinLevel` = 25;
