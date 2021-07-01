-- Readd scripts on event for Plaguewood Tower PvP event that were (wrongly) dropped somewhere/somehow
DELETE FROM dbscripts_on_event WHERE id IN (10700, 10701);
INSERT INTO dbscripts_on_event (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(10700, 0, 10, 17209, 0, 0, 0, 8, 0, 0, 0, 0, 2987.5, -3049.11, 120.126, 5.75959, 'Horde Plaguewood Tower progress event - summon William Kielar'),
(10701, 0, 10, 17209, 0, 0, 0, 8, 0, 0, 0, 0, 2987.5, -3049.11, 120.126, 5.75959, 'Alliance Plaguewood Tower progress event - summon William Kielar');
