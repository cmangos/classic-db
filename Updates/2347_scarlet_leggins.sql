-- Move Scarlet Leggings 10330 from High Inquisitor Whitemane 3977 to Scarlet Commander Mograine 3976
-- https://web.archive.org/web/20050108143618/http://wow.allakhazam.com:80/db/mob.html?wmob=3976
-- https://web.archive.org/web/20041227024943/http://wow.allakhazam.com/db/mob.html?wmob=3977 
DELETE FROM creature_loot_template WHERE item=10330;
INSERT INTO creature_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id, comments) VALUES
(3976, 10330, 14, 0, 1, 1, 0, 'Scarlet Leggings');
