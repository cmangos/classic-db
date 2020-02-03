-- Sergeant Bly 7604 - Zul'Farrak
-- Make it so only one option shows eventhough both do the same
-- gossip corrected
-- Both options shoudlnt show up together - corrected
-- https://github.com/cmangos/issues/issues/2101#issuecomment-580074265
 
DELETE FROM conditions WHERE condition_entry IN (1599, 1600);
INSERT INTO conditions VALUES
-- (408, 9, 2768, 0, 'Quest ID 2768 Taken'),
(1599, -3, 408, 0, 'NOT (Quest ID 2768 Taken)'),
-- (409, -1, 408, 384, '(Quest ID 2768 Taken AND Source of Condition\'s Last Waypoint == 8)'), 2002 => 409
(1600, -1, 1599, 384, '(NOT (Quest ID 2768 Taken) AND Source of Condition\'s Last Waypoint == 8)');

-- Both options shoudlnt show up together
-- this option should be available only when q.2768 'Divino-matic Rod' is not active
UPDATE gossip_menu_option SET condition_id = 1600 WHERE menu_id = 941 AND id = 1;
