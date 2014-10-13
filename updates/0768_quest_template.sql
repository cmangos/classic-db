-- Fixed quest 2518 (Tears of the Moon) which was having another quest as prerequist while it does not have one
-- this closes #620
-- Source: http://www.wowwiki.com/Quest:The_Temple_of_the_Moon 
UPDATE `quest_template` SET `PrevQuestId`='0' WHERE `entry`='2518';
