-- Fix manually set faction for rare NPCs with sniff data as per
-- https://gist.githubusercontent.com/Kinzcool/e81137dab3bc828631ada717f7da5159/raw/796cd141ede5c02299a55ecd3037cdd460b5944c/creaturedifficulty.sql
-- Based on https://github.com/cmangos/tbc-db/commit/f66eafac3b1182f310fcfdadafc3ab9a9ed512ef
UPDATE creature_template SET Faction=16 WHERE Entry=1837; -- Scarlet Judge
UPDATE creature_template SET Faction=16 WHERE Entry=1838; -- Scarlet Interrogator
UPDATE creature_template SET Faction=16 WHERE Entry=1839; -- Scarlet High Clerist
UPDATE creature_template SET Faction=16 WHERE Entry=1843; -- Foreman Jerris
UPDATE creature_template SET Faction=14 WHERE Entry=1844; -- Foreman Marcrid
UPDATE creature_template SET Faction=16 WHERE Entry=1848; -- Lord Maldazzar
UPDATE creature_template SET Faction=14 WHERE Entry=1885; -- Scarlet Smith
UPDATE creature_template SET Faction=16 WHERE Entry=6648; -- Antilos
UPDATE creature_template SET Faction=74 WHERE Entry=6649; -- Lady Sesspira
UPDATE creature_template SET Faction=74 WHERE Entry=6650; -- General Fangferror
UPDATE creature_template SET Faction=152 WHERE Entry=7895; -- Ambassador Bloodrage
UPDATE creature_template SET Faction=189 WHERE Entry=8213; -- Ironback
UPDATE creature_template SET Faction=795 WHERE Entry=8218; -- Witherheart the Stalker
UPDATE creature_template SET Faction=45 WHERE Entry=9602; -- Hahk'Zor
UPDATE creature_template SET Faction=471 WHERE Entry=10817; -- Duggan Wildhammer
UPDATE creature_template SET Faction=16 WHERE Entry=10821; -- Hed'mush the Rotting
UPDATE creature_template SET Faction=16 WHERE Entry=10823; -- Zul'Brin Warpbranch
UPDATE creature_template SET Faction=16 WHERE Entry=10825; -- Gish the Unmoving
UPDATE creature_template SET Faction=189 WHERE Entry=14224; -- 7:XT
UPDATE creature_template SET Faction=189 WHERE Entry=14492; -- Verifonix
UPDATE creature_template SET Faction=1630 WHERE Entry=14697; -- Lumbering Horror
UPDATE creature_template SET Faction=1630 WHERE Entry=16379; -- Spirit of the Damned
UPDATE creature_template SET Faction=1630 WHERE Entry=16380; -- Bone Witch
