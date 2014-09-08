-- Corrected name tag in Progress Text for quest 263;
-- Thanks to Zingzah for pointing. This closes #536 
UPDATE `quest_template` SET `RequestItemsText`='Back so soon? In case I didn\'t make myself clear we need you to kill 10 Stonesplinter Shaman and 10 Stonesplinter Bonesnappers, $N. Now go get \'em, Trogg-Slayer!' WHERE `entry`='263';
