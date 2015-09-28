-- Fixed movement animation of water-only NPCs and of some NPCs that should walk
-- at water bottom instead of swimming
-- This closes #795
-- Thanks @Neotmiren for reporting and providing many data on how to fix this
-- Requires CMaNGOS core updates https://github.com/cmangos/mangos-classic/commit/7800ce6cdc171062751ac2b19aba51a1b7055fba
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x8000 WHERE (InhabitType&2)!=0 AND (CreatureType IN (5) OR family IN (8));
UPDATE creature_template SET ExtraFlags=ExtraFlags|0x10000 WHERE (InhabitType&2)!=0 AND (CreatureType IN (5));
