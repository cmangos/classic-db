-- Narillasanz (Rare)(Elite)

-- Narillasanz is completely immune to fire damage
-- Also beware that he is immune to snare effects and to Stun and Sleep mechanics (can't hibernate this dragon).
UPDATE creature_template SET MechanicImmuneMask = 3584, SchoolImmuneMask = 4 WHERE entry = 2447;

-- Corrected skinning loot drop
DELETE FROM skinning_loot_template WHERE  entry = 2447;
INSERT INTO skinning_loot_template (entry,item,ChanceOrQuestChance,groupid,mincountOrRef,maxcount,condition_id) VALUES
(2447,4304,47,1,1,2,0),
(2447,4234,28,1,1,2,0),
(2447,4235,5,1,1,1,0),
(2447,8165,5,1,1,2,0),
(2447,8269,15,1,1,1,0);