-- Moved to DB gossip menu/gossip menus options used in quests 4001 (What Is Going On) and 4342 (Kharan's Tale) by NPC 9021 (Kharan Mighthammer)

SET @CONDITION := 1098;
SET @CONDITION_HORDE := 3;
SET @CONDITION_ALLIANCE := 4;

DELETE FROM conditions WHERE condition_entry IN (@CONDITION, @CONDITION + 1);
INSERT INTO conditions VALUES
(@CONDITION, 9, 4001, 0),   -- Horde quest
(@CONDITION + 1, 9, 4342, 0);   -- Alliance quest

DELETE FROM gossip_menu WHERE entry BETWEEN 1823 AND 1830;
INSERT INTO gossip_menu VALUES
(1823, 2482, 182301, @CONDITION_HORDE),
(1823, 2482, 182302, @CONDITION_ALLIANCE),
(1824, 2481, 0, 0),
(1825, 2480, 0, 0),
(1826, 2479, 0, 0),
(1827, 2478, 0, 0),
(1828, 2477, 0, 0),
(1829, 2476, 0, 0),
(1830, 2475, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id BETWEEN 1822 AND 1830;
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, condition_id) VALUES
(1822, 0, 0, 'I need to know where the princess are, Kharan!', 1, 1, 1830, 0, 0, 0, 0, '', @CONDITION),
(1822, 1, 0, 'All is not lost, Kharan!', 1, 1, 1828, 0, 0, 0, 0, '', @CONDITION + 1),
(1830, 0, 0, 'Gor\'shak is my friend, you can trust me.', 1, 1, 1829, 0, 0, 0, 0, '', 0),
(1829, 0, 0, 'Not enough, you need to tell me more.', 1, 1, 1828, 0, 0, 0, 0, '', 0),
(1828, 0, 0, 'So what happened?', 1, 1, 1827, 0, 0, 0, 0, '', 0),
(1827, 0, 0, 'Continue...', 1, 1, 1826, 0, 0, 0, 0, '', 0),
(1826, 0, 0, 'So you suspect that someone on the inside was involved? That they were tipped off?', 1, 1, 1825, 0, 0, 0, 0, '', 0),
(1825, 0, 0, 'Continue with your story please.', 1, 1, 1824, 0, 0, 0, 0, '', 0),
(1824, 0, 0, 'Indeed.', 1, 1, 1823, 0, 0, 0, 0, '', 0),
(1823, 0, 0, 'The door is open, Kharan. You are a free man.', 1, 1, -1, 0, 0, 0, 0, '', 0);

DELETE FROM dbscripts_on_gossip WHERE id IN (182301, 182302);
INSERT INTO dbscripts_on_gossip VALUES
(182301, 0, 7, 4001, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(182302, 0, 7, 4342, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
