-- Prevent Horde Warlock to take twice the quest "In Search of Menara Voidrender"
-- Alliance quests already had their exclusive group set.
-- This closes #825
UPDATE quest_template SET ExclusiveGroup = 4737 WHERE entry IN (4736, 4739);
