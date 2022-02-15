-- Fix completion of quest 9247 (The Keeper's Call)
-- Add missing relation with quest taker NPC
DELETE FROM creature_involvedrelation WHERE quest=9247;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(16281, 9247);
-- Add missing completion text
UPDATE quest_template SET RequestItemsText="Ah, $n, it is good to see you.", OfferRewardText="Simply by answering the call, we are in your debt, $n. The Argent Dawn is certain that through your shining example, others that are here to aid us will gain great insight into how best to throw back this Scourge Invasion!" WHERE entry=9247;
