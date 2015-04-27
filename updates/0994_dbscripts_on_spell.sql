-- Fixed NPCs involved in quest 7003 (Zapped Giants)
-- They will now attack cast and revert to their original form after 5 min
-- Thanks 249CAAFE40 for reporting. This closes #655
DELETE FROM `dbscripts_on_spell` WHERE `id` = 23359;
INSERT INTO `dbscripts_on_spell` VALUES
(23359, 0, 26, 0, 0, 0, 0, 0x02, 0, 0, 0, 0, 0, 0, 0, 0, 'Giant/Strider attacks player on Transmogrify Spell Hit');

-- Fixed Hit Points of NPC 5360 (Deep Strider) in Feralas that were previously too low
UPDATE `creature_template` SET `HealthMultiplier` = 3, `MinLevelHealth` = 4776, `MaxLevelHealth` = 5130 WHERE `Entry` = 5360;
