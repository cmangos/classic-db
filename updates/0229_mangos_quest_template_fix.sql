-- Fixed required creature for quest 6661 (Deep Run Roundup)
-- Thanks scotty0100 for pointing
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 13017 WHERE  `entry` = 6661;
