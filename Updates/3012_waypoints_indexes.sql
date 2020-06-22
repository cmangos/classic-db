-- ---------------------------------------------------------------------------
-- Fix waypoint paths using CONDITION_LAST_WAYPOINT and starting at index 0
-- ---------------------------------------------------------------------------

-- None found

-- ---------------------------------------------------------------------------
-- Fix waypoint paths from creature_movement_template starting at index 0
-- ---------------------------------------------------------------------------

ALTER TABLE creature_movement_template
DROP PRIMARY KEY;

-- Rexxar, Champion of the Horde
UPDATE creature_movement_template SET point=point+1 WHERE Entry=10182;

-- Nefarian
UPDATE creature_movement_template SET point=point+1 WHERE Entry=11583;

-- Xorothian Imp
UPDATE creature_movement_template SET point=point+1 WHERE Entry=14482;

-- Dread Guard
UPDATE creature_movement_template SET point=point+1 WHERE Entry=14483;

-- Ayamiss the Hunter
UPDATE creature_movement_template SET point=point+1 WHERE Entry=15369;

-- Princess Huhuran
UPDATE creature_movement_template SET point=point+1 WHERE Entry=15509;

-- Battleguard Sartura
UPDATE creature_movement_template SET point=point+1 WHERE Entry=15516;

ALTER TABLE creature_movement_template
ADD PRIMARY KEY (entry, pathId, point);

-- ---------------------------------------------------------------------------
-- Fix waypoint paths from creature_movement starting at index 0
-- ---------------------------------------------------------------------------

ALTER TABLE creature_movement
DROP PRIMARY KEY;

-- Magregan Deepshadow
UPDATE creature_movement SET point=point+1 WHERE id=8194;

-- Felguard
UPDATE creature_movement SET point=point+1 WHERE id=20872;
UPDATE creature_movement SET point=point+1 WHERE id=20874;
UPDATE creature_movement SET point=point+1 WHERE id=20876;

-- Maraudine Priest
UPDATE creature_movement SET point=point+1 WHERE id=29075;

-- Bloodhound
UPDATE creature_movement SET point=point+1 WHERE id=45915;
UPDATE creature_movement SET point=point+1 WHERE id=45924;
UPDATE creature_movement SET point=point+1 WHERE id=47830;

-- Anvilrage Warden
UPDATE creature_movement SET point=point+1 WHERE id=47825;

-- Shadowforge Commander
UPDATE creature_movement SET point=point+1 WHERE id=69114;

-- Vekniss Warrior
UPDATE creature_movement SET point=point+1 WHERE id=87672;
UPDATE creature_movement SET point=point+1 WHERE id=87675;

-- Vekniss Hive Crawler
UPDATE creature_movement SET point=point+1 WHERE id=87939;
UPDATE creature_movement SET point=point+1 WHERE id=87941;
UPDATE creature_movement SET point=point+1 WHERE id=87943;

-- Necromancer
UPDATE creature_movement SET point=1 WHERE id=91940;
UPDATE creature_movement SET point=1 WHERE id=91946;
UPDATE creature_movement SET point=1 WHERE id=92235;
UPDATE creature_movement SET point=1 WHERE id=92264;

-- Mannoroc Lasher
UPDATE creature_movement SET point=point+1 WHERE id=108860;
UPDATE creature_movement SET point=point+1 WHERE id=108863;

-- Felguard
UPDATE creature_movement SET point=point+1 WHERE id=108881;
UPDATE creature_movement SET point=point+1 WHERE id=108882;
UPDATE creature_movement SET point=point+1 WHERE id=108883;
UPDATE creature_movement SET point=point+1 WHERE id=108884;
UPDATE creature_movement SET point=point+1 WHERE id=108885;

-- Qiraji Scorpion
UPDATE creature_movement SET point=point+1 WHERE id=151303;
UPDATE creature_movement SET point=point+1 WHERE id=151304;
UPDATE creature_movement SET point=point+1 WHERE id=151305;
UPDATE creature_movement SET point=point+1 WHERE id=151306;
UPDATE creature_movement SET point=point+1 WHERE id=151307;

-- Qiraji Scarab
UPDATE creature_movement SET point=point+1 WHERE id=151308;
UPDATE creature_movement SET point=point+1 WHERE id=151320;
UPDATE creature_movement SET point=point+1 WHERE id=151321;
UPDATE creature_movement SET point=point+1 WHERE id=151322;

ALTER TABLE creature_movement
ADD PRIMARY KEY (id, point);
