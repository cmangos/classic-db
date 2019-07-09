DELETE FROM dbscripts_on_quest_end WHERE id IN (8728);
INSERT INTO dbscripts_on_quest_end (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(8728, 0, 38, 123, 0, 0, 0, 0, 0, 86400, 0, 0, 0, 0, 0, 0, 0, 'Send Mail on QuestReward');
UPDATE quest_template SET CompleteScript='8728' WHERE entry =8728;
