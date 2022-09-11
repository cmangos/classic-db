-- https://github.com/cmangos/mangos-tbc/pull/552

-- Scorpid Group before Enchanting Trainer Annora
-- Put Annora into an spawn_group with worldstate, let her spawn when all scorpids are dead
-- add waypoints
UPDATE `creature_template` SET `MovementType`='0' WHERE (`Entry`='11073');

DELETE FROM worldstate_name WHERE Id = 20000;
INSERT INTO `worldstate_name` (`Id`, `Name`) VALUES 
('20000', 'Uldaman - Andora Spawn');

DELETE FROM conditions WHERE condition_entry = 12002;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value3`, `comments`) VALUES 
('12002', '42', '20000', '1', 'Uldaman - Andora Spawn');

