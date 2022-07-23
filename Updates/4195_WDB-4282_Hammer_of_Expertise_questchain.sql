-- Hammer of Expertise - quest CHAIN updates

-- q.2764 'Galvan's Finest Pupil'
-- becomes available after quests completed:
	-- q.2761 'Smelt On, Smelt Off'
	-- q.2763 'The Art of the Imbue'
	-- q.2762 'The Great Silver Deceiver'
UPDATE quest_template SET RequiredCondition = 0, ExclusiveGroup = 0 WHERE entry IN (2761,2762,2763);
DELETE FROM conditions WHERE condition_entry BETWEEN 3820 AND 3823;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES 
(3820, 8, 2761,0,0,0),
(3821, 8, 2762,0,0,0),
(3822, 8, 2763,0,0,0),
(3823, -1, 3822,3821,3820,0);
UPDATE quest_template SET RequiredCondition = 3823, PrevQuestId = 0 WHERE entry = 2764;

-- q.2771 'A Good Head On Your Shoulders'
-- q.2772 'The World At Your Feet'
-- q.2773 'The Mithril Kid'
-- All three starts after q.2764 'Galvan's Finest Pupil' completed
UPDATE quest_template SET PrevQuestId = 2764, ExclusiveGroup = 0, NextQuestId = 0 WHERE entry IN (2771,2772,2773);

-- q.3321 'Did You Lose This?'
-- becomes available after quests completed:
	-- q.2771 'A Good Head On Your Shoulders'
	-- q.2772 'The World At Your Feet'
	-- q.2773 'The Mithril Kid'
DELETE FROM conditions WHERE condition_entry BETWEEN 3824 AND 3827;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4) VALUES 
(3824, 8, 2771,0,0,0),
(3825, 8, 2772,0,0,0),
(3826, 8, 2773,0,0,0),
(3827, -1, 3826,3825,3824,0);
UPDATE quest_template SET RequiredCondition = 3827 WHERE entry = 3321;

-- q.2765 'Expert Blacksmith!'
UPDATE quest_template SET PrevQuestId = 3321 WHERE entry = 2765;

-- Script Fix
-- (2765, 2000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12033.3, -1009.85, 49.87, 5.42, 0, 0, '');
-- (2765, 4000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- (2765, 8000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12040, -1006.27, 49.62, 2.55, 0, 0, '');
-- (2765, 12000, 0, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- (2765, 14000, 0, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- (2765, 18000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12037.8, -1004.74, 49.53, 2.18, 0, 0, '');
-- (2765, 22000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- (2765, 28000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12040.7, -1009.02, 49.42, 3.63, 0, 0, '');
-- (2765, 32000, 0, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- (2765, 34000, 0, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
-- (2765, 37000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12035.4, -1006.07, 49.5, 3.78, 0, 0, '');
-- (2765, 40000, 0, 7, 2765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 2765;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
(2765, 1000, 0, 29, 2, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '7802 - npc_flag removed'),
(2765, 2000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12033.3, -1009.85, 49.87, 5.42, 0, 0, ''),
(2765, 7000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2765, 12000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2765, 14000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12040, -1006.27, 49.62, 2.55, 0, 0, ''),
(2765, 18000, 0, 1, 69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2765, 23000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2765, 25000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12037.8, -1004.74, 49.53, 2.18, 0, 0, ''),
(2765, 29000, 0, 1, 16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2765, 35000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12040.7, -1009.02, 49.42, 3.63, 0, 0, ''),
(2765, 40000, 0, 1, 233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2765, 45000, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2765, 47000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -12033.3, -1004.47, 49.78, 3, 0, 0, ''),
(2765, 52000, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.96, 0, 0, ''),
(2765, 53000, 0, 29, 2, 1, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '7802 - npc_flag added'),
(2765, 54000, 0, 7, 2765, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

