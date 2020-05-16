-- Fix completion text for quest 4298 (Becoming a Parent) in Hinterlands: add gender check for dadda/momma
UPDATE quest_template SET OfferRewardText="Here, take the egg... better you have it so it bonds to you and looks to you to be its $gdadda:momma;.$B$BCongrats, $N. You're a parent... kinda." WHERE entry=4298;
