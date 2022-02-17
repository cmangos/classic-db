-- Add missing area triggers relations with quest: required for completion
DELETE FROM areatrigger_involvedrelation WHERE quest BETWEEN 9260 AND 9265;
INSERT INTO areatrigger_involvedrelation (id, quest) VALUES
-- Stormwind
(4096, 9260),
(4095, 9260),
(4094, 9260),
(4092, 9260),
-- Ironforge
(4099, 9261),
(4098, 9261),
-- Darnassus
(4104, 9262),
(4105, 9262),
-- Orgrimmar
(4101, 9263),
(4102, 9263),
-- Thunderbluff
(4103, 9264),
-- Undercity
(4100, 9265);

-- Add missing completion texts for investigating Scourge invasions in capital cities quests
UPDATE quest_template SET RequestItemsText="Have you investigated the invasion yet? There's no time for dawdling!", OfferRewardText="Hmm. From what you've told me, the voices within the circles... they must be used for communication of some kind. I shudder to think what unnatural minds are contacted through such magic. Regardless, you seem to have emerged whole and sane.  The Argent Dawn appreciates your service." WHERE entry BETWEEN 9260 AND 9265;
