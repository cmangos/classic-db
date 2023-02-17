-- baelgar summon emote
UPDATE `broadcast_text` SET `ChatTypeId` = 2 WHERE `Id` = 5283; -- %s begins to summon a lava spawn!

-- Bonus:
-- Add passive aura for Arcanite Dragonling 12473
REPLACE INTO `creature_template_addon` (`entry`, `mount`, `stand_state`, `sheath_state`, `emote`, `moveflags`, `auras`) VALUES
(12473, 0, 0, 1, 0, 0, '23052'); -- Arcanite Dragonling

