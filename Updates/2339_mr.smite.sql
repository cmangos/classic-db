-- Add CREATURE_EXTRA_FLAG_NO_CALL_ASSIST Mr. Smite 646 - Scripted Encounter
-- Aggro Linking is done in creature_linking, callforassist pulse chainpulls other nonrelated mobs
UPDATE creature_template SET ExtraFlags=ExtraFlags|2048 WHERE entry=646;
