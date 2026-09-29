-- extend holiday end time so that they happen
Update game_event_time set end_time = "2050-12-30 23:00:00" where entry IN (
1, -- Midsummer Fire Festival
2, -- Feast of Winter Veil
4, -- Darkmoon Faire (Elwynn Forest) - July 2020 - Darkmoon Faire Open
5, -- Darkmoon Faire (Mulgore) - June 2020 - Darkmoon Faire Open
6, -- New Year's Eve
8, -- Love is in the Air
10, -- Children's Week 
11, -- Elemental Invasion: Air
12, -- Hallow's End
13, -- Elemental Invasion: Fire
14, -- Fishing Extravaganza Announce
15, -- Fishing Extravaganza
16, -- Gurubashi Arena Booty Run
18, -- Call to Arms: Alterac Valley!
19, -- Call to Arms: Warsong Gulch!
20, -- Call to Arms: Arathi Basin!
21, -- Winter Veil: Gifts
-- 22, -- AQ War Effort
23, -- Darkmoon Faire (Elwynn Forest) - July 2020 - Building Stage 1
24, -- Hallow's End - Wickerman Ember's
25, -- Hallow's End - Banshee Queen
26, -- Darkmoon Faire (Elwynn Forest) - July 2020 - Building Stage 2
27, -- Nights
28, -- Darkmoon Faire (Mulgore) - June 2020 - Building Stage 1
29, -- Edge of Madness, Gri'lek
30, -- Edge of Madness, Hazza'rah
31, -- Edge of Madness, Renataki
32, -- Edge of Madness, Wushoolay
33, -- Harvest Festival
34, -- Fishing Extravaganza Turn-in
35, -- Winter Season Fishing
36, -- Summer Season Fishing
37, -- Darkmoon Faire (Mulgore) - June 2020 - Building Stage 2
38, -- Elemental Invasion: Water
39, -- Elemental Invasion: Earth
400, -- DayTime 7AM to 8PM
401, -- DayTime 7AM to 12AM
1024 -- Hourly Bells
);

