-- Fixed healthmultiplier of two NPCs
UPDATE `creature_template` SET HealthMultiplier = 1.2 WHERE `Entry` = 5237; -- Gordunni Ogre Mage
UPDATE creature_template SET HealthMultiplier = 8 WHERE Entry = 14302; -- Chromatic Drakonid
