-- The name Mac was hard-coded, changed to $N
-- Changed "...may come.$B$BMac, as promised..." to "...may come.$B$B$N, as promised..."
UPDATE `quest_template` SET `OfferRewardText` = 'Great Spirit Totem! This is dire news indeed. I must begin to plan for whatever may come.$B$B$N, as promised, here is your reward for your brave service.$B$B' WHERE `entry` = '5064' LIMIT 1;
