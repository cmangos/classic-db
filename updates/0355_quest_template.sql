-- Quests available only after 9233 Omarions Handbook
-- Source: http://www.wowwiki.com/Omarion%27s_Handbook
-- Thanks Ela for pointing and fixing
UPDATE `quest_template` SET `PrevQuestId` = 9233 WHERE `entry` IN (9234, 9235, 9236, 9237, 9238, 9239, 9240, 9241, 9242, 9243, 9244, 9245, 9246);

-- Fixed texts for quest 9238 (Glacial Wrists) as they were wrong (different from the 13 others)
-- New texts copied from other similar quest in same quest chain
UPDATE `quest_template` SET `OfferRewardText` = 'Here is your order, $N. Delivered as promised!', `RequestItemsText` = 'Have you brought the materials?' WHERE `entry` = 9238;
