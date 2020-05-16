-- Fix completion text for quest 4297 (Food for Baby) in Hinterlands: add gender check for father/mother
UPDATE quest_template SET OfferRewardText="These'll do nicely, and if I'm not mistaken, your little egg's just about ready to hatch. How does it feel? You know, you about to be a $gfather:mother;? Haha, didn't think ya'd have to deal with such responsibility, now did ya?" WHERE entry=4297;
