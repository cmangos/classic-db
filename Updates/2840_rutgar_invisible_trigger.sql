-- Make NPC 15222 (Rutgar Invisible Trigger) invisible. (no way...)
UPDATE creature_template SET ExtraFlags=ExtraFlags|128 WHERE Entry=15222;
