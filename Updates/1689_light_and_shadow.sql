-- Fixed reward text for quest 7266 (The Balance of Light and Shadow)
-- Thanks @MantisLord for pointing out
UPDATE quest_template SET OfferRewardText='Your tenacity and courage are astounding, $gpriest:priestess;. You have earned the right to hold the Splinter of Nordrassil. Only one task remains: The Eye of Shadow must be recovered. Scour the world.' WHERE entry=7622;
