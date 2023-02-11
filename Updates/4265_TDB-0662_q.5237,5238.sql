-- Correct ReqRace for q.5237,5238 Mission Accomplished!
UPDATE `quest_template` SET `PrevQuestId` = 5226, `RequiredRaces` = 77, `CompleteScript` = 5237, `RewMailDelaySecs` = 0 WHERE `entry` = 5237; -- Alliance Quest - https://www.wowhead.com/tbc/quest=5237/mission-accomplished
UPDATE `quest_template` SET `PrevQuestId` = 5236, `RequiredRaces` = 178, `CompleteScript` = 5238, `RewMailDelaySecs` = 0 WHERE `entry` = 5238; -- Horde Quest - https://www.wowhead.com/tbc/quest=5238/mission-accomplished

UPDATE `creature_questrelation` SET `id` = 10837 WHERE `quest` = 5238; -- https://www.wowhead.com/tbc/npc=10837/high-executor-derrington
UPDATE `creature_involvedrelation` SET `id` = 10837 WHERE `quest` = 5238;

UPDATE `creature_questrelation` SET `id` = 10838 WHERE `quest` = 5237; -- https://www.wowhead.com/tbc/npc=10838/commander-ashlam-valorfist
UPDATE `creature_involvedrelation` SET `id` = 10838 WHERE `quest` = 5237;

-- Send Mail on QuestReward
-- UPDATE `dbscripts_on_quest_end` SET `datalong` = 107 WHERE `id` = 5237; -- Alliance Quest - 101
-- UPDATE `dbscripts_on_quest_end` SET `datalong` = 101 WHERE `id` = 5238; -- Horde Quest - 107

-- 101		0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	16711884	My friend - though my arm is weary from the battle we continue to wage in the Plaguelands, it is always strong enough to pen this missive to a hero such as you.  It pleases me to know the aid you rendered us continues to yield benefits, ones we try to enact upon on a daily basis.

-- Should you find yourself in the Western Plaguelands soon, please stop by the Bulwark.  Your seasoned hand would be most welcomed in a cauldron run!

-- Yours in the Darkness:
-- High Executor Derrington	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	16712190

-- 107		0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	16711884	Greetings my friend - though my arm is weary from the battle we continue to wage in the ruins of Lordaeron, it is always strong enough to pen this missive to a hero such as you.  It pleases me to know the aid you lent us days ago continues to yield benefits, ones we try to enact upon on a daily basis.

-- Should you find yourself in the Western Plaguelands soon, please stop by the camp.  Your seasoned hand would be most welcomed in a cauldron run!

-- For Stormwind!
-- Commander Ashlam Valorfist	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	16712190

-- missing
DELETE FROM `dbscripts_on_quest_end` WHERE `id` IN (5237,5238);
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(5237, 0, 0, 38, 107, 0, 0, 0, 0, 0, 86400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Send Mail on QuestReward'),
(5238, 0, 0, 38, 101, 0, 0, 0, 0, 0, 86400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Send Mail on QuestReward');

