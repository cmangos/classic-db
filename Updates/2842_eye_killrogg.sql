-- make eye of kilrogg unable to melee
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x00020000 WHERE entry IN(4277);
