-- Thanks @AnonXS for confirming.

-- https://github.com/TrinityCore/TrinityCore/commit/145b9c05d7119d28002f0b87fd6f46eb19d056c1#diff-03bd12f55a38e268d4353ec63731468e
-- None of the creatures should drop Scarlet Cannonball
DELETE FROM creature_loot_template WHERE item=12973; 
