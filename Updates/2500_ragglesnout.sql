-- Correct Faction & Speed for Ragglesnout 7354 - Strangly enough Elite not Rare Elite
UPDATE creature_template SET Faction=152, SpeedWalk=(2.5 / 2.5), SpeedRun=(8 / 7) WHERE entry=7354;
