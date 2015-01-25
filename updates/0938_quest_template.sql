-- Quest 7046 (The Scepter of Celebras) needs quest 7044 (Legends of Maraudon) as prerequist
-- Reference: http://www.wowhead.com/quest=7046/the-scepter-of-celebras#comments
UPDATE `quest_template` SET `PrevQuestId`= 7044 WHERE `entry` = 7046;
