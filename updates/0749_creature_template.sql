-- Fixed out of range level for 5 creatures
-- Thanks @Metalica for contributing. This closes #584 
UPDATE creature_template SET HealthMultiplier=1, MinLevelHealth=42, MaxLevelHealth=42, MinLevel=1, MaxLevel=1, armormultiplier=1 WHERE Entry=16082; -- Naxxramas Trigger
UPDATE creature_template SET MinLevelHealth=3052, MaxLevelHealth=3052, MinLevel=60, MaxLevel=60, armormultiplier=1 WHERE Entry=16129; -- Shadow Fissure
UPDATE creature_template SET HealthMultiplier=4, MinLevelHealth=12208, MaxLevelHealth=12208, MinLevel=60, MaxLevel=60, armormultiplier=1 WHERE Entry=16419; -- Ghost of Naxxramas
UPDATE creature_template SET HealthMultiplier=160, MinLevelHealth=532960, MaxLevelHealth=532960, SpeedWalk=1, MinLevel=63, MaxLevel=63, armormultiplier=1 WHERE Entry=16775; -- Spirit of Mograine
UPDATE creature_template SET HealthMultiplier=150, MinLevelHealth=499650, MaxLevelHealth=499650, armormultiplier=1 WHERE Entry=16776; -- Spirit of Blaumeux
UPDATE creature_template SET HealthMultiplier=150, MinLevelHealth=499650, MaxLevelHealth=499650, armormultiplier=1 WHERE Entry=16777; -- Spirit of Zeliek
UPDATE creature_template SET HealthMultiplier=180, MinLevelHealth=599580, MaxLevelHealth=599580, armormultiplier=1 WHERE Entry=16778; -- Spirit of Korth'azz
UPDATE creature_template SET MinLevelHealth=42, MaxLevelHealth=42, MinLevel=1, MaxLevel=1, armormultiplier=1 WHERE Entry=16988; -- Festival Flamekeeper Costume: Human
