-- Fix stats of NPC 12922 (Imp Minion) used as pet
-- based on pet_levelstats values
-- Thanks @canidae for pointing the error
UPDATE creature_template SET MinLevelHealth=605, MaxLevelHealth=605, MinLevelMana=1514, MaxLevelMana=1514, HealthMultiplier=0.45, PowerMultiplier=0.33, ArmorMultiplier=0.75 WHERE entry=12922;
