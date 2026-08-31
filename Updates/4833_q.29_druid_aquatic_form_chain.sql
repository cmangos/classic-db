-- Fix Druid Aquatic Form quest chain (q.26/27/28/29) - cmangos/issues#4029
-- The "A Lesson to Learn" -> "Trial of the Lake" links were crossed between the
-- Alliance (Night Elf) and Horde (Tauren) versions of the chain, so the Aqua form
-- followup was offered to the wrong race and failed with "That quest is not
-- available to your race".
--
-- Correct chains per Wowhead:
--   Alliance (RequiredRaces 8):  26 -> 29 -> 272 -> 5061
--   https://www.wowhead.com/classic/quest=26/a-lesson-to-learn
--   Horde    (RequiredRaces 32): 27 -> 28 -> 30  -> 31
--   https://www.wowhead.com/classic/quest=27/a-lesson-to-learn

-- Alliance: A Lesson to Learn (26) -> Trial of the Lake (29)
UPDATE `quest_template` SET `NextQuestInChain` = 29 WHERE `entry` = 26;
UPDATE `quest_template` SET `PrevQuestId` = 26 WHERE `entry` = 29;

-- Horde: A Lesson to Learn (27) -> Trial of the Lake (28)
UPDATE `quest_template` SET `NextQuestInChain` = 28 WHERE `entry` = 27;
UPDATE `quest_template` SET `PrevQuestId` = 27 WHERE `entry` = 28;
