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
