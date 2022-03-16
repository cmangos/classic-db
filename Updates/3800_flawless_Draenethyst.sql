-- Fix faction and flags for creatures involved in quest To Serve Kum'isha
UPDATE creature_template SET Faction=91, ExtraFlags=64 WHERE Entry IN (7364, 7365, 7409);
