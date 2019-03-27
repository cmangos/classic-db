-- Give CREATURE_EXTRA_FLAG_INVISIBLE flag to 15214
UPDATE creature_template SET ExtraFlags=ExtraFlags|128 WHERE Entry=15214;
