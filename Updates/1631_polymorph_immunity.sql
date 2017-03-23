-- Added missing spell target for spell 21087 (Immunity)
DELETE FROM `spell_script_target` WHERE entry=21087;
INSERT INTO `spell_script_target` VALUES (21087, 1, 11663, 0);

-- Removed Polymorph immunity from NPC 11663 (Flamewaker Healer)
-- it will now be handled by SD2
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask-65536 WHERE Entry=11663;
