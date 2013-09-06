-- Added missing creature addon for creature 4789 (Fallenroot Rogue) to grant them stealth aura
-- Source: TBC-DB
UPDATE `creature_addon` SET `auras` = '6408' WHERE `guid` IN (33173, 33175, 33176, 33177, 33178, 33179);
