-- Fix rank of creature 7057 (Digmaster Shovelphlange) in Uldaman
-- Thanks @AnonXS for pointing
-- Source: http://wowwiki.wikia.com/wiki/Digmaster_Shovelphlange?direction=next&oldid=773095
UPDATE creature_template SET `Rank`=2 WHERE Entry=7057;
