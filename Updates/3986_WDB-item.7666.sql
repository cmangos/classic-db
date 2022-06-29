-- q.2198 'The Shattered Necklace' - Alliance & q.2283 'Necklace Recovery' - Horde
-- Horde version for Shattered Necklace
UPDATE quest_template SET RequiredRaces=690 WHERE entry = 2283;
-- item must be available for both factions
-- UPDATE item_template SET ExtraFlags=2,Flags2=0 WHERE entry=7666;
/*
-- Shattered Necklace i.7666
- drops for alliance as random drop that begins a quest
- horde must have q.2283 in quest log
- player hasnt dropped yet
- player havent finish quest from it yet
*/
DELETE FROM conditions WHERE condition_entry BETWEEN 3802 AND 3811;
INSERT INTO conditions (condition_entry, type, value1, value2, value3, value4, flags) VALUES 
-- alliance
(3802, 9, 2198, 0, 0, 0, 1), -- player must havent started quest yet
(3803, 8, 2198, 0, 0, 0, 1), -- player havent finish quest yet
(3804, -1, 3803, 3802, 4, 0, 0), -- above + alliance only
-- horde
(3805, 9, 2283, 0, 0, 0, 0), -- player must have quest in quest log (Horde)
(3806, 8, 2283, 0, 0, 0, 1), -- player havent finish quest yet
(3808, -1, 3806, 3805, 3, 0, 0), -- above + horde only
-- both
(3809, -2, 3808, 3804, 0, 0, 0),
(3810, 23, 7666, 1, 0, 0, 1), -- player has less than count of items (including inventory stored in the bank)
(3811, -1, 3810, 3809, 0, 0, 0); -- final
UPDATE creature_loot_template SET condition_id = 3811 WHERE item = 7666;
