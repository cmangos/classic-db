-- Correct Min Skill Value for Engineering specialization re-learning with Book "Soothsaying for Dummies"
-- Followup for https://github.com/cmangos/classic-db/commit/81d0863059807b0be03ae83c3fd9d98365aae8ee
-- https://wowpedia.fandom.com/wiki/Goblin_Engineering?oldid=1556893
-- https://www.reddit.com/r/classicwow/comments/d269ai/psa_how_to_switch_from_gnomish_to_goblin_vice/
-- https://us.forums.blizzard.com/en/wow/t/gnome-goblin-engineer-switch/342227/8
UPDATE `conditions` SET `value2` = 200, `comments` = 'Has Skill ID 202, Minimum Skill Value 200' WHERE `condition_entry` = 10997; -- 10997	7	202	225	0	0	0	Has Skill ID 202, Minimum Skill Value 225
UPDATE `conditions` SET `value2`=11159, `comments`="((NOT Player Has Learned Spell: 20219 AND NOT Player Has Learned Spell: 20222) AND (Quest ID 3639 Rewarded OR (Quest ID 3643 Rewarded OR Quest ID 3641 Rewarded))) AND Has Skill ID 202, Minimum Skill Value 200"
WHERE `condition_entry`=11004; -- 11004	-1	11003	10997	0	0	0	((NOT Player Has Learned Spell: 20219 AND NOT Player Has Learned Spell: 20222) AND (Quest ID 3639 Rewarded OR (Quest ID 3643 Rewarded OR Quest ID 3641 Rewarded))) AND Has Skill ID 202, Minimum Skill Value 225

