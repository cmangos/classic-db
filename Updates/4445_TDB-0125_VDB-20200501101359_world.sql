-- Add your query below.
-- https://github.com/vmangos/core/commit/2565e82eb732d5857117dd0cd6b974420b0e6416

-- Hakkar
UPDATE `creature_template` SET `SpeedWalk` = 1, `MechanicImmuneMask` = `MechanicImmuneMask`|(32+33554432), `MovementType` = 0 WHERE `entry` = 14834; -- 1079325 hp 262000 mana //deathgrip/silence

