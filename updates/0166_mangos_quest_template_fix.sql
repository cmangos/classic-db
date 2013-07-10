-- Changed XP reward for quest 4402 (Galgar's Cactus Apple Surprise) to 380XP instead of 400XP
-- Source: http://www.wowwiki.com/Quest:Galgar%27s_Cactus_Apple_Surprise?oldid=363670
-- Thanks to Kokeszko for pointing
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 228 WHERE `entry` = 4402;
