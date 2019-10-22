-- Add Start Script for q.804 Sarkoth (q.790 followup)
UPDATE quest_template SET StartScript=804 WHERE entry=804;
DELETE FROM dbscripts_on_quest_end WHERE id=790 AND delay=5; -- Remove Text from q.790
DELETE FROM dbscripts_on_quest_start WHERE id=804;
INSERT INTO dbscripts_on_quest_start (id, delay, command, buddy_entry, search_radius, data_flags, dataint, comments) VALUES
(804, 4, 0, 0, 0, 0, 2000000002, 'Force Hana''zua 3287 - Text');
