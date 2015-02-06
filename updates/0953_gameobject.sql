-- Removed wrong spawn of GO 103680 (Mana Rift) in Stormwind
DELETE FROM `gameobject` WHERE `guid` = 42889;
