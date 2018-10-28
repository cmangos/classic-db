-- Fix OfferRewardText for quest 567 (Dangerous!)
-- You are quite the bounty -> You are quite the bounty hunter.
-- Source: https://www.wowhead.com/quest=567/deprecated-dangerous
UPDATE quest_template SET OfferRewardText='You are quite the bounty hunter, $C. Well done.' WHERE entry=567; 
