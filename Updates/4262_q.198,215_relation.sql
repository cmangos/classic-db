-- 198	Supplies to Private Thorsen
-- 215	Jungle Secrets
-- While one can not be taken while being in the rebel camp, the other one should be able to be turned in in and outside the rebel camp
-- this was currently not possible as the npc starts out with no questgiver flags while being in the rebel camp, even if sniffs point out he should have this flag.
-- hence the way this is handled is that jungle secrets should not be available to be taken while being in the rebelcamp, which is confirmed by the quest text.
UPDATE `creature_template` SET `NpcFlags` = 3 WHERE `entry` = 738;

DELETE FROM `conditions` WHERE `condition_entry` = 1900 AND `type` = 4;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(1900, 4, 99, 1); -- not in rebel camp

UPDATE `quest_template` SET `RequiredCondition` = 1900 WHERE `entry` = 215; -- Jungle Secrets

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (73801,73807) AND `command` = 29;
INSERT INTO `dbscripts_on_creature_movement` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `comments`) VALUES
(73801, 0, 2, 29, 2, 0, 'Private Thorsen - Remove UNIT_NPC_FLAG_QUESTGIVER'), -- remove questgiver flags on patrol start
(73807, 1000, 1, 29, 2, 1, 'Private Thorsen - Add UNIT_NPC_FLAG_QUESTGIVER'); -- add questgiver flags on patrol end

