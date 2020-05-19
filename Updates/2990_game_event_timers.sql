-- Synchronise most game events with their 2020 occurrence

-- ---------------
-- Holidays
-- ---------------

-- Lunar Festival
UPDATE game_event_time SET start_time="2020-01-24 22:00:00", end_time="2030-12-31 22:59:59" WHERE entry=7;
-- Love is in the Air
UPDATE game_event_time SET start_time="2020-02-08 22:00:00", end_time="2030-12-31 22:59:59" WHERE entry=8;
-- Noblegarden
UPDATE game_event_time SET start_time="2020-04-13 20:00:00", end_time="2030-12-31 22:59:59" WHERE entry=9;
-- Children's Week
UPDATE game_event_time SET start_time="2020-05-01 20:00:00", end_time="2030-12-31 22:59:59" WHERE entry=10;
-- Midsummer Fire Festival
UPDATE game_event_time SET start_time="2020-06-21 20:00:00", end_time="2030-12-31 22:59:59" WHERE entry=1;
-- Harvest Festival
UPDATE game_event_time SET start_time="2020-09-29 22:00:00", end_time="2030-12-31 22:59:59" WHERE entry=33;
-- Hallow's End
UPDATE game_event_time SET start_time="2020-10-18 20:00:00", end_time="2030-12-31 22:59:59" WHERE entry=12;
-- Hallow's End - Wickerman Ember's
UPDATE game_event_time SET start_time="2020-10-18 20:01:07", end_time="2030-12-31 22:59:59" WHERE entry=24;
-- Hallow's End - Banshee Queen
UPDATE game_event_time SET start_time="2020-10-18 19:30:00", end_time="2030-12-31 22:59:59" WHERE entry=25;
-- Feast of Winter Veil
UPDATE game_event_time SET start_time="2020-12-16 23:00:00", end_time="2030-12-31 22:59:59" WHERE entry=2;
-- New Year's Eve
UPDATE game_event_time SET start_time="2020-12-31 21:00:00", end_time="2030-12-31 22:59:59" WHERE entry=6;

-- ---------------
-- Zul'Gurub
-- ---------------

-- Edge of Madness, Gri'lek
UPDATE game_event_time SET start_time="2020-06-10 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=29;
-- Edge of Madness, Hazza'rah
UPDATE game_event_time SET start_time="2020-06-23 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=30;
-- Edge of Madness, Renataki
UPDATE game_event_time SET start_time="2020-05-12 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=31;
-- Edge of Madness, Wushoolay
UPDATE game_event_time SET start_time="2020-05-26 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=32;

-- ---------------
-- Battlegrounds
-- ---------------

-- Call to Arms: Alterac Valley!
UPDATE game_event_time SET start_time="2020-05-01 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=18;
-- Call to Arms: Warsong Gulch!
UPDATE game_event_time SET start_time="2020-05-08 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=19;
-- Call to Arms: Arathi Basin! 20
UPDATE game_event_time SET start_time="2020-05-15 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=20;

-- Fix periodicity of Call to Arms events for a three week periodicity as there were only three battlegrounds in Classic
UPDATE game_event SET occurence=30240 WHERE entry IN (18, 19, 20);

-- ---------------
-- Darkmoon Fair
-- ---------------

-- Synchronise game_event naming
UPDATE game_event SET description="Darkmoon Faire (Elwynn Forest) - July 2020 - Building Stage 1" WHERE entry=23;
UPDATE game_event_time SET start_time="2020-07-03 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=23;
UPDATE game_event SET description="Darkmoon Faire (Elwynn Forest) - July 2020 - Building Stage 2" WHERE entry=26;
UPDATE game_event_time SET start_time="2020-07-04 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=26;
UPDATE game_event SET description="Darkmoon Faire (Elwynn Forest) - July 2020 - Darkmoon Faire Open" WHERE entry=4;
UPDATE game_event_time SET start_time="2020-07-06 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=4;
UPDATE game_event SET description="Darkmoon Faire (Mulgore) - June 2020 - Building Stage 1" WHERE entry=28;
UPDATE game_event_time SET start_time="2020-06-05 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=28;
UPDATE game_event SET description="Darkmoon Faire (Mulgore) - June 2020 - Building Stage 2" WHERE entry=37;
UPDATE game_event_time SET start_time="2020-06-06 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=37;
UPDATE game_event SET description="Darkmoon Faire (Mulgore) - June 2020 - Darkmoon Faire Open" WHERE entry=5;
UPDATE game_event_time SET start_time="2020-06-08 00:00:01", end_time="2030-12-31 22:59:59" WHERE entry=5;



