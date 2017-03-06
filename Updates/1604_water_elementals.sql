-- Fixed speed and immunity of NPCs 10756 (Scalding Elemental) and 10757 (Boiling Elemental)
UPDATE creature_template SET SchoolImmuneMask = 16, SpeedRun = 0.85714 WHERE entry IN (10756,10757);
