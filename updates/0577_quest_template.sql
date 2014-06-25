-- Fixed a quest text using real player name instead of $N string
-- Quest 716 (Stone is Better than Cloth)
UPDATE `quest_template` SET `RequestItemsText` = "I wouldn't wait too long to get that bracer, $N.$B$BWho knows what's going to happen next?" WHERE `entry` = 716;
