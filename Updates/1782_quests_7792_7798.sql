-- Added Reward text for quest 7792 & 7798
-- Closes #115
-- Source: https://youtu.be/BboTLo1_-O8?t=22s
UPDATE quest_template SET OfferRewardText='Wonderful! We thank you for your generous donation, $N!' WHERE entry IN (7792, 7798);
