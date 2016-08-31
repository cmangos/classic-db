-- Removed wrong flag from Succubus Minion
-- thx to: @Phatcat
UPDATE creature_template SET ExtraFlags = 0 WHERE Entry = 10928;
