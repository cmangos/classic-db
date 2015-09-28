-- Scripted quest 3982 (What is Going On?) in Blackrock Depths
-- This closes #688
-- Due to very little sources, timers, spawn points
-- and numbers of NPC per waves are educated guesswork
-- based on the following sources:
-- https://web.archive.org/web/20070105160522/http://wow.allakhazam.com/db/quest.html?wquest=3982
-- http://www.wowhead.com/quest=3982
-- http://www.wowhead.com/npc=9020

SET @WAVE_TIMER := 40; -- in seconds
SET @QUEST_CREDIT_TIMER := 50 + @WAVE_TIMER; -- in seconds
SET @ENTRY := 2000000186;

UPDATE `quest_template` SET `SpecialFlags` = 3, `StartScript` = 3982 WHERE `entry` = 3982;

DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 3982;
INSERT INTO dbscripts_on_quest_start (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(3982,0,21,1,0,0,0,0,0,0,0,0,0,0,0,0,'Gor\'shak active'),
(3982,1,22,495,0x01,0,0,0,0,0,0,0,0,0,0,0,'temp faction'),
(3982,1,0,0,0,0,0,0,@ENTRY,0,0,0,0,0,0,0,'say'),
(3982,3,10,8891,300000,0,0,0,0,0,0,0,379.509,-191.971,-69.718,3.4033,'1st wave'),
(3982,4,3,0,8891,20,0,0,0,0,0,0,372.17,-178.30,-70.03,3.4033,'move inside cell'),
(3982,4,10,8891,300000,0,0,0,0,0,0,0,376.053,-192.092,-70.561,1.8162,'1st wave'),
(3982,4,10,8891,300000,0,0,0,0,0,0,0,374.817,-190.909,-70.725,1.2256,'1st wave'),
-- (3982,6,10,9020,300000,0,0,0,0,0,0,0,375.294,-191.466,-70.710,1.8413,'1st wave'),
-- (3982,6,10,9020,300000,0,0,0,0,0,0,0,377.584,-191.558,-70.226,1.8413,'1st wave'),
(3982,3 + @WAVE_TIMER,34,317,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3982,4 + @WAVE_TIMER,34,318,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3982,5 + @WAVE_TIMER,10,9398,300000,0,0,0,0,0,0,0,379.509,-191.971,-69.718,3.4033,'2nd wave'),
(3982,6 + @WAVE_TIMER,3,0,9398,20,0,0,0,0,0,0,372.17,-178.30,-70.03,3.4033,'move inside cell'),
(3982,6 + @WAVE_TIMER,10,8891,300000,0,0,0,0,0,0,0,376.053,-192.092,-70.561,1.8162,'2nd wave'),
(3982,6 + @WAVE_TIMER,10,8891,300000,0,0,0,0,0,0,0,374.817,-190.909,-70.725,1.2256,'2nd wave'),
-- (3982,9 + @WAVE_TIMER,10,9020,300000,0,0,0,0,0,0,0,375.294,-191.466,-70.710,1.8413,'2nd wave'),
-- (3982,9 + @WAVE_TIMER,10,9020,300000,0,0,0,0,0,0,0,377.584,-191.558,-70.226,1.8413,'2nd wave'),
(3982,7 + @QUEST_CREDIT_TIMER,34,317,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if player is dead or out of range'),
(3982,7 + @QUEST_CREDIT_TIMER,34,318,3382,0,0,0,0,0,0,0,0,0,0,0,'Stop script if npc is dead'),
(3982,8 + @QUEST_CREDIT_TIMER,7,3982,0,0,0,0,0,0,0,0,0,0,0,0,'quest credit'),
(3982,9 + @QUEST_CREDIT_TIMER,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'Gor\'shak unactive');

DELETE FROM `db_script_string` WHERE `entry` = @ENTRY;
INSERT INTO `db_script_string` VALUES (@ENTRY, 'Defend yourself, fool!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);
