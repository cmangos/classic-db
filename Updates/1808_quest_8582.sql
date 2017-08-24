-- Fixed reward text of quest 8582 (The Horde Needs Purple Lotus!)
-- Thanks @M2us for pointing. This closes #118
UPDATE quest_template SET OfferRewardText="A commendable effort, $c. I will measure these specimens for their appropriate usage and note your contribution. The purple lotus will then need to be properly stored until I am ready for them. As for you, if you are still available I should imagine that I'll still need more purple lotus. Please check back with me in a moment." WHERE entry=8582;

