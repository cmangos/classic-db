-- Remove bad cases that had it added incorrectly
UPDATE gameobject_template SET ExtraFlags=ExtraFlags&~0x00000002 WHERE ExtraFlags=ExtraFlags|0x00000002; -- Remove wrong cases

UPDATE gameobject_template SET ExtraFlags=ExtraFlags|0x00000002 WHERE data4=1 AND type=1;
UPDATE gameobject_template a SET ExtraFlags=ExtraFlags|0x00000002 WHERE data2>0 AND type=10 AND exists(select guid from gameobject b where map IN(30,37,489,529));

-- https://github.com/cmangos/tbc-db/blob/7e3d53e065cf52005e7105d841dd4a67f684216b/Updates/0010_spawn_groups.sql#L67
UPDATE gameobject_template SET ExtraFlags=ExtraFlags|0x00000002 WHERE entry IN (176150,176151); -- spawn_group 1 - EPL - Musty Tome - Annals of Darrowshire
