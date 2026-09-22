-- Eastvale Peasant (11328) waypoint script: make the played sounds distance-dependent.
--
-- Script 1132803 plays 6288 (B_PeasantWhat3) and 6242 (B_PeasantYesAttack3) with
-- datalong2 = 0, so every player in visibility range of the peasant hears them at
-- full volume, regardless of distance. Every other SCRIPT_COMMAND_PLAY_SOUND entry
-- in dbscripts_on_creature_movement already sets the distance-dependent bit.
--
-- datalong2 = 2 -> SCRIPT_FLAG_PLAY_SOUND_DISTANCE_DEPENDENT.
UPDATE `dbscripts_on_creature_movement`
  SET `datalong2` = 2
  WHERE `id` = 1132803 AND `command` = 16 AND `datalong` IN (6288,6242);
