-- Thanks Neotmiren for pointing and fixing
-- Fixed omitted quest  in the Missing Diplomat quest chain
-- Note that to be 100% blizzlike, an updated is required
-- on SD2 or core. In the meantime, the missing quest will
-- not be available until a server restart
UPDATE `quest_template` SET `NextQuestId` = 0 WHERE `entry` = 1249;
UPDATE `quest_template` SET `PrevQuestId` = 1250 WHERE `entry` = 1264;
