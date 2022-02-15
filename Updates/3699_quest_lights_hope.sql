-- Fix completion of quest 9154 (Light's Hope Chapel)
-- Add missing relation with quest taker NPC
DELETE FROM creature_involvedrelation WHERE quest=9154;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(16281, 9154);
-- Add missing completion text
UPDATE quest_template SET RequestItemsText="You've come to join our order, have you not?", OfferRewardText="The Argent Dawn placed the call for aid, and you, among others, have answered. There is no time for us to provide you with training. Our faith is placed in your abilities, and that you will join us in throwing back this Scourge threat." WHERE entry=9154;
