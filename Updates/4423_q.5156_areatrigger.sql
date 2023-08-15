
-- Fixes area trigger for q.5156 'Verifying the Corruption'
INSERT INTO `areatrigger_involvedrelation` (`id`, `quest`) VALUES
(2206, 5156),
(2207, 5156),
(2208, 5156);

-- Table `areatrigger_involvedrelation` has record (id: 2206) for not quest 5156, but quest not have flag QUEST_SPECIAL_FLAG_EXPLORATION_OR_EVENT. Trigger or quest flags must be fixed, quest modified to require objective.
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 5156; -- Makes the quest only completable by some external event (an entry in areatrigger_involvedrelation,, spell effect quest complete or an entry in spell_scripts with command 7 as some examples)

