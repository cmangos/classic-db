-- -------------------------------
-- CMaNGOS custom DB updates
-- -------------------------------

-- This file holds SQL updates to DB contents that are known to be different from official/sniff data
-- These updates are applied to ensure expected functionning from a gameplay point of view
-- (aka "Blizzlike") when using CMaNGOS core.
--
-- These updates SHOULD NOT be part of a full DB dump (like for DB release) or inserted in a regular 
-- SQL update file as we need to keep DB data as "pure" as possible to analyse them and
-- deduce proper core behaviour from them.
-- 
-- Possible but non-exhaustive reasons for these updates to be needed:
--	- CMaNGOS core does not properly handle the data these updates are fixing (yet)
--	- Official/sniff data are from a different expansion/patch and where possibly changed since Classic
--	- Official/sniff data from client are different from what they are server-side
--	- Data or their parsing were wrong


-- -------------------------------
-- Gameobject custom changes
-- -------------------------------

-- Make Moonwell GO server-side (visible by GM only)
UPDATE gameobject_template SET data3=1 WHERE entry=177272; 

-- Set radius of Supply Crate trap to zero to prevent trap from triggering with coming by players (it should trigger on player usage of original GO)
UPDATE gameobject_template SET data2=0 WHERE entry IN (175534, 175535, 175536, 175537);

-- Make Dawn's Gambit Trap only visible by GM
UPDATE gameobject_template SET data2=5, data3=0, data8=0 WHERE entry=176110;
-- Dawn's Gambit: add data from GO trap 176110 until we are able to trigger trap GOs without spells
UPDATE gameobject_template SET data2=5, data3=18110, data4=1, data8=1 WHERE entry=177304; 

-- The Demon Seed GO: make it despawnable on use with short autoclose value
UPDATE gameobject_template SET data3=65536, data5=1 WHERE entry=3524;

-- Add missing GO template 175622 spawn by GO Rookery Egg 175124 (guessed data)
DELETE FROM gameobject_template WHERE entry=175622;
INSERT INTO `gameobject_template` (`entry`, `type`, `displayId`, `name`, `size`, `Data0`, `Data1`, `Data2`, `Data3`, `Data4`, `Data5`, `Data6`, `Data7`, `Data8`, `Data9`, `Data10`, `Data11`, `Data12`, `Data13`, `Data14`, `Data15`, `Data16`, `Data17`, `Data18`, `Data19`, `Data20`, `Data21`, `Data22`, `Data23`) VALUES
(175622, 6, 477, 'Rookery Egg Spawner', 1, 0, 0, 2, 15745, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Set 10 yards radius to Night Elven Bear Trap GO because it needs to be triggered by SD2 script otherwise (and said script do not exist yet)
UPDATE gameobject_template SET data2=10 WHERE entry=109515;

-- Set a 70 yards diameter for Ragnaros GO because because it needs to be triggered by SD2 script otherwise (and said script do not exist yet)
UPDATE gameobject_template SET data2=70 WHERE entry=178088;


-- Currently the core cannot make a GO usable for a specific quest if the items it holds are not objectives of the quest

-- Link Hive'Ashi Pod GO to quest 1126 so it is usable by players on the quest
UPDATE gameobject_template SET data8=1126 WHERE entry=178553; 

-- Link Azsharite GOs to quest 3602 so they are usable by players on the quest
UPDATE gameobject_template SET data8=3602 WHERE entry IN (152620, 152621, 152622, 152631);

-- Link Crate with Holes, Snufflenose Command Stick and Snufflenose Owner's Manual GOs to quest 1221 so they are usable by players on the quest
UPDATE gameobject_template SET data8=1221 WHERE entry IN (68865, 21530, 21277);

-- -------------------------------
-- Creature custom changes
-- -------------------------------

-- None

-- -------------------------------
-- Quest custom changes
-- -------------------------------

-- None
