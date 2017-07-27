-- Add missing quest completion text for quest 2986 (Call of Water)
-- Closes #113
UPDATE quest_template SET OfferRewardText='The wind approaches you quickly from the horizon; the earth is steady beneath your feet; and your spirit is already warmed by fire--I would say it is time for you to learn about the purity of water.$B$BYour path has led you this far, and your spirit will give you the strength to carry on even further. But the first step is yours to take.' WHERE Entry=2986;
