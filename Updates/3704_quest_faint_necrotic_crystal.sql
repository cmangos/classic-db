-- Fix completion of quest 9310 (Faint Necrotic Crystal)
-- Add missing relation with quest taker NPC
DELETE FROM creature_involvedrelation WHERE quest=9310;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(16494, 9310);

-- Add missing completion text
UPDATE quest_template SET RequestItemsText="Can I help you with something?", OfferRewardText="You say this was taken from a wight attacking the city?$B$BWe have received word about the necropolis base camps that are being summoned by the Scourge. I suspect they were trying to create one in the Undercity. We will have to be vigilant in the future." WHERE entry=9310;
