-- Fixed quest 7838 (Arean Grand Master) in Stranglethorn Vale
-- Thanks scotty0100 for pointing. This closes #172 
UPDATE `quest_template` SET `Method` = 2 WHERE `entry` = 7838;
