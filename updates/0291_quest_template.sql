-- Thanks Neotmiren for pointing
-- Priestess Josetta (Goldshire) offers invalid versions of Night Elf "Returning Home" quests.
-- Updates level, exclusivegroup, nextquestid and reward text of all "Returning Home" quests for raciel NE priest quest
UPDATE `quest_template` SET `MinLevel` = 10, `QuestLevel` = 10, `ExclusiveGroup` = 5631, `NextQuestId` = 5627, `NextQuestInChain` = 5627, `OfferRewardText` = 'Wonderful, you\'ve returned home, $N. It always pleases Tyrande and myself when those we\'ve trained go out into the world and return to us safely. How have things been with you? Does Elune still bless your travels? Perhaps after we speak more about the business at hand, you could tell me more of your travels.' WHERE `entry` BETWEEN 5628 AND 5633;
-- Assigned various "Returning Home" quests to corresponding low level NPCs priest trainers in Teldrassil
-- Elwynn Forest, Stormwind (Park and Cathedral) and Ironforge (Hall of Mysteries)
UPDATE `creature_questrelation` SET `id` = 3600 WHERE `quest` = 5629; -- Laurna Morninglight
UPDATE `creature_questrelation` SET `id` = 377  WHERE `quest` = 5628; -- Prietress Josetta
UPDATE `creature_questrelation` SET `id` = 1226 WHERE `quest` = 5630; -- Maxan Anvol
UPDATE `creature_questrelation` SET `id` = 5489 WHERE `quest` = 5631; -- Brother Joshua
UPDATE `creature_questrelation` SET `id` = 11397 WHERE `quest` = 5632; -- Nara Meideros
UPDATE `creature_questrelation` SET `id` = 5142 WHERE `quest` = 5633; -- Braenna Flintcrag
