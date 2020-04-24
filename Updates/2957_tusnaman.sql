-- Add missing flavour script for NPC 11862 (Tsunaman) in Stonetalon Mountains
-- Timers are guess work for now.
-- Thanks @bdebaere for reporting. This closes https://github.com/cmangos/issues/issues/1736
-- Source: https://wow.gamepedia.com/Tsunaman
-- https://classic.wowhead.com/npc=11862/tsunaman#comments

-- Add waypoints
DELETE FROM creature_movement_template WHERE entry=11862;
INSERT INTO creature_movement_template VALUES
(11862, 0, 1, 820.882, 938.539, 154.973, 5.33142, 30000, 0, NULL),
(11862, 0, 2, 818.292, 942.649, 154.196, 2.13314, 10000, 1186201, NULL);

UPDATE creature SET MovementType=2 WHERE id=11862;

-- Add script to punch fire camp
DELETE FROM dbscripts_on_creature_movement WHERE id=1186201;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(1186201, 0, 0, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tsunaman - Pause WP movement'),
(1186201, 1000, 0, 1, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED'),
(1186201, 3000, 0, 1, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED'),
(1186201, 5000, 0, 1, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED'),
(1186201, 7000, 0, 1, 35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tsunaman - emote EMOTE_ONESHOT_ATTACKUNARMED'),
(1186201, 9000, 0, 20, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Tsunaman - movement changed to 2:waypoint');
