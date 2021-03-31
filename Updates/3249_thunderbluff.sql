-- Make some of Npcs walk correctly on theirs path
-- RecastDemo shows second invisible lake .. in center of ThunderBluff that is avoided by all.

-- Bluffwatcher 3084
UPDATE creature_template SET InhabitType = 3 WHERE entry = 3084;

-- Chepi 8361
UPDATE creature_template SET InhabitType = 3 WHERE entry = 8361;

-- Bluff Runner Windstrider 10881
UPDATE creature_template SET InhabitType = 3 WHERE entry = 10881;

-- Hunter Sagewind 14440
UPDATE creature_template SET InhabitType = 3 WHERE entry = 14440;

-- Hunter Ragetotem 14441
UPDATE creature_template SET InhabitType = 3 WHERE entry = 14441;
