UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00000100 WHERE `Rank`=3;
-- zukkash worker, venture co drudger
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00000100 WHERE entry IN(5246,3284);
