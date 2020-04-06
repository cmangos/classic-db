-- ossirian should be immune to taunt
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00000100 WHERE entry IN(15339);
