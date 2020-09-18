-- Increase NPC 15589 (Eye of C'Thun) aggro radius so he attacks players as soon they enter the room in Temple of Ahn'Qiraj
UPDATE creature_template SET detection=95 WHERE Entry=15589;

DELETE FROM spell_script_target WHERE entry=26399;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(26399, 1, 15725, 5),	-- Clawn Tentacle
(26399, 1, 15726, 5),	-- Eye Tentacle
(26399, 1, 15904, 5),	-- Tentacle Portal

(26399, 1, 15728, 6),	-- Giant Claw Tentacle
(26399, 1, 15334, 6),	-- Giant Eye Tentacle
(26399, 1, 15910, 6);	-- Giant Tentacle Portal
