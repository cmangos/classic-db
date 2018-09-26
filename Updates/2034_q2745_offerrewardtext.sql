-- Fix OfferRewardText for quest 2745 (Infiltrating the Castle)
-- What are doing -> What are you doing
-- https://www.wowhead.com/quest=2745
UPDATE quest_template SET OfferRewardText='What the...?! Don''t sneak up on me like that! And keep your voice down! What in the name of the Shadow are you doing sneakin'' up on me for? Can''t you see I''m busy, you daft fool?$B$BWhat do you mean, what am I doing? I''m waiting for the next Dark Portal to open, what the heck do you think I''m doing? Speak your peace and be off with you... ''fore the guards notice the two of us hiding in the bushes together. I have a reputation to maintain.' WHERE entry=2745;
