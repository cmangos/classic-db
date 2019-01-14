-- Correct Dropchance for Magic Dust 2091
-- https://classic.wowhead.com/item=2091/magic-dust
-- https://web.archive.org/web/20080610163527/http://wow.allakhazam.com/db/item.html?witem=2091
-- https://web.archive.org/web/20111107010641/http://www.wowhead.com/item=2091 (maybe relevant for if wotlk wants to keep higher chance 25 out of 87
DELETE FROM creature_loot_template WHERE item=2091;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, mincountOrRef, maxcount, comments) VALUES
(832, 2091, 20, 1, 1, 'Magic Dust'), -- Dust Devil (47.392)
(1936, 2091, 10, 1, 1, 'Magic Dust'), -- Farmer Solliden
(99, 2091, 5, 1, 1, 'Magic Dust'), -- Morgaine the Sly
(5809, 2091, 5, 1, 1, 'Magic Dust'); -- Watch Commander Zalaphil
