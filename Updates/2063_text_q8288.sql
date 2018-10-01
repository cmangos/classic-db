-- Fix upper case in OfferRewardText for quest 8288 (Only One May Rise)
UPDATE quest_template SET OfferRewardText="Could you be the first to earn favor among the Bronze Flight in a thousand years?" WHERE entry=8288;
