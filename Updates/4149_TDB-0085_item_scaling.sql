-- bit of a backstory - there is a 50% chance this is a tbc blizzlike bug
-- these are dmg hit items which do a fixed amount on hits and they used to scale through spell power
-- through some part of TBC
-- removing this for other expansions (vanilla,wotlk) and for tbc so we do not have a broken rogue spell damage build
DELETE FROM spell_bonus_data WHERE entry IN(7714,7712,6297,16614,39445);
INSERT INTO spell_bonus_data(entry,direct_bonus) VALUES
(7714,0), -- Fire Strike
(7712,0), -- Fire Strike
(6297,0), -- Fiery Blaze
(16614,0); -- Lightning Strike
-- (39445,0); -- Vengeance (TBC+)

