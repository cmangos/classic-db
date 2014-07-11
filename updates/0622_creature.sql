
-- RESPAWN ------

UPDATE `creature` SET `spawntimesecs`='21600' WHERE `id`='15324' AND `map`='509'; -- Qiraji Gladiator
UPDATE `creature` SET `spawntimesecs`='21600' WHERE `id`='15343' AND `map`='509'; -- Qiraji Swarmguard
UPDATE `creature` SET `spawntimesecs`='21600' WHERE `id`='15327' AND `map`='509'; -- Hive'Zara Stinger
UPDATE `creature` SET `spawntimesecs`='21600' WHERE `id`='15325' AND `map`='509'; -- Hive'Zara Wasp
UPDATE `creature` SET `spawntimesecs`='3600' WHERE `id`='15168' AND `map`='509'; -- Vile Scarab
UPDATE `creature` SET `spawntimesecs`='300' WHERE `id`='15475' AND `map`='509'; -- Beetle
UPDATE `creature` SET `spawntimesecs`='300' WHERE `id`='15476' AND `map`='509'; -- Scorpion
UPDATE `creature` SET `spawntimesecs`='300' WHERE `id`='4076' AND `map`='509'; -- Roach


-- BOSS ---------

-- Kurinnaxx
UPDATE `creature` SET `curhealth`='333100' WHERE `id`='15348';
UPDATE `creature` SET `position_x`='-8824.542', `position_y`='1629.523', `position_z`='20.44601', `spawndist`='5', `MovementType`='1' WHERE `id`='15348';

-- General Rajaxx
UPDATE `creature` SET `curhealth`='416375' WHERE `id`='15341';

-- Buru the Gorger
UPDATE `creature` SET `curhealth`='666250' WHERE `id`='15370';

-- Ayamiss the Hunter
UPDATE `creature` SET `curhealth`='333100' WHERE `id`='15369';

-- Moam
UPDATE `creature` SET `curhealth`='346450' WHERE `id`='15340';

-- Ossirian the Unscarred
UPDATE `creature` SET `curhealth`='499650' WHERE `id`='15339';

-- BOSS TRASH ---

-- Qiraji Warrior
UPDATE `creature` SET `curhealth`='31440' WHERE `id`='15387';

-- Swarmguard Needler
UPDATE `creature` SET `curhealth`='12576' WHERE `id`='15344';

-- Captain Qeez
UPDATE `creature` SET `curhealth`='56627' WHERE `id`='15391';

-- Captain Tuubid
UPDATE `creature` SET `curhealth`='56627' WHERE `id`='15392';

-- Captain Drenn
UPDATE `creature` SET `curhealth`='56627' WHERE `id`='15389';

-- Captain Xurrem
UPDATE `creature` SET `curhealth`='56627' WHERE `id`='15390';

-- Major Pakkon
UPDATE `creature` SET `curhealth`='56627' WHERE `id`='15388';

-- Major Yeggeth
UPDATE `creature` SET `curhealth`='56627' WHERE `id`='15386';

-- Colonel Zerran
UPDATE `creature` SET `curhealth`='56627' WHERE `id`='15385';

-- Buru Egg
UPDATE `creature` SET `curhealth`='26140' WHERE `id`='15514';

-- Hive'Zara Hatchling
UPDATE `creature` SET `curhealth`='15260' WHERE `id`='15521';

-- Hive'Zara Larva
UPDATE `creature` SET `curhealth`='3052' WHERE `id`='15555';

-- Hive'Zara Hornet
UPDATE `creature` SET `curhealth`='47160' WHERE `id`='15934';

-- Hive'Zara Swarmer
UPDATE `creature` SET `curhealth`='305' WHERE `id`='15546';

-- TRASH -----------------

-- Qiraji Swarmguard
UPDATE `creature` SET `curhealth`='25152' WHERE `id`='15343';

-- Qiraji Gladiator
UPDATE `creature` SET `curhealth`='50304' WHERE `id`='15324';

-- Hive'Zara Stinger
UPDATE `creature` SET `curhealth`='50304' WHERE `id`='15327';

-- Hive'Zara Wasp
UPDATE `creature` SET `curhealth`='25152' WHERE `id`='15325';

-- Vile Scarab
UPDATE `creature` SET `curhealth`='5228' WHERE `id`='15168';

-- Obsidian Destroyer
UPDATE `creature` SET `curhealth`='50300' WHERE `id`='15338';

-- Shrieker Scarab
UPDATE `creature` SET `curhealth`='12208' WHERE `id`='15461';

-- Spitting Scarab
UPDATE `creature` SET `curhealth`='12208' WHERE `id`='15462';

-- Flesh Hunter
UPDATE `creature` SET `curhealth`='51792' WHERE `id`='15335';

-- Anuibisath Guardian
UPDATE `creature` SET `curhealth`='61503' WHERE `id`='15355';

-- Silicate Feeder
UPDATE `creature` SET `curhealth`='5228', `curmana`='0' WHERE `id`='15333';

-- Hive'Zara Collector
UPDATE `creature` SET `curhealth`='24416' WHERE `id`='15319';

-- Hive'Zara Drone
UPDATE `creature` SET `curhealth`='12208' WHERE `id`='15318';

-- Hive'Zara Tail Lasher
UPDATE `creature` SET `curhealth`='28296' WHERE `id`='15336';

-- Hive'Zara Sandstalker
UPDATE `creature` SET `curhealth`='15720' WHERE `id`='15323';

-- Hive'Zara Soldier
UPDATE `creature` SET `curhealth`='31440' WHERE `id`='15320';

-- Canal Frenzy
UPDATE `creature` SET `curhealth`='9156' WHERE `id`='15505';


-- CRITTER ---------------

-- Beetle
UPDATE `creature` SET `curhealth`='8.4' WHERE `id`='15475';

-- Roach
UPDATE `creature` SET `curhealth`='8.4' WHERE `id`='4076';

-- Scorpion
UPDATE `creature` SET `curhealth`='8.4' WHERE `id`='15476';
