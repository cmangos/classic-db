-- Add DB support for Kel'Thuzad encounter phase 2 and 3

-- Add missing target for summoning spell in Kel'Thuzad encounter
DELETE FROM spell_script_target WHERE entry=28455;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(28455, 1, 17286, 0);

-- These NPCs are used to summon the Guardian of Icecrown NPCs in phase 3
-- It is more than possible that those are in fact summoned by the four GO portal windows but we are missing GO spell casting for that
DELETE FROM creature WHERE guid BETWEEN 5331047 AND 5331050;
INSERT INTO creature VALUES
(5331047,17286,533,0,0,3760.57,-5173.32,143.804,1.896,25,25,0,0,0,0,0,0),
(5331048,17286,533,0,0,3701.34,-5180.58,143.761,4.4619,25,25,0,0,0,0,0,0),
(5331049,17286,533,0,0,3732.47,-5029.1,143.906,1.30774,25,25,0,0,0,0,0,0),
(5331050,17286,533,0,0,3782.52,-5063.37,143.774,0.560825,25,25,0,0,0,0,0,0);

-- Fix faction, flag and speed for creature 16441 (Guardian of Icecrown) in Naxxramas
UPDATE creature_template SET Faction=21, UnitFlags=526336, SpeedWalk=(12 / 2.5), SpeedRun=(12 / 7) WHERE Entry=16441;

-- Fix faction for creature 15990 (Kel'Thuzad) in Naxxramas
UPDATE creature_template SET Faction=21 WHERE Entry=15990;
