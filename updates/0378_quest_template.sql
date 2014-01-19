-- Fixed texts in quest 193 (Panther Mastery 4)
-- Source: http://wowpedia.org/Quest:Panther_Mastery_(4)
UPDATE `quest_template` SET `RequestItemsText` = 'Bhag\'thera can prove to be an elusive beast. How fares the hunt?', `OfferRewardText` = 'So the great Bhag\'thera is dead! Cheers to you, $N. You are a mighty $C indeed!' WHERE `entry` = 193;
-- Removed wrong progress text in quest 191 (Panther Mastery 2) as it was using quest 193 progress text
UPDATE `quest_template` SET `RequestItemsText` = '' WHERE `entry` = 191;
