UPDATE gameobject_template SET ExtraFlags=ExtraFlags|0x00000002 WHERE data4=1 AND type=1;
UPDATE gameobject_template a SET ExtraFlags=ExtraFlags|0x00000002 WHERE data2>0 AND type=10 AND exists(select guid from gameobject b where map IN(30,37,489));
