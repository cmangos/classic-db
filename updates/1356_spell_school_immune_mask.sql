-- Added immunities for a few creature as a (valid) example for previous commit
UPDATE creature_template SET SchoolImmuneMask = 124 WHERE entry = 10485; -- Risen Aberration immune to magic except holy
UPDATE creature_template SET SchoolImmuneMask = 1 WHERE entry = 11284; -- Dark Shade immune to physical damage
UPDATE creature_template SET SchoolImmuneMask = 4 WHERE entry = 2760; -- Burning Exile immune to fire damage
UPDATE creature_template SET SchoolImmuneMask = 16 WHERE entry = 2761; -- Cresting Exile immune to frost damage
