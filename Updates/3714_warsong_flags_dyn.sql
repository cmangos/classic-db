-- make WSG flags move to dynguid system
UPDATE gameobject_template SET ExtraFlags=ExtraFlags|0x00000002 WHERE entry IN(179830,179831);
