-- Correct Dropchance for Snuff 3910
-- https://www.wowhead.com/quest=587/up-to-snuff#comments:id=98807 (Patch 2.1.1) ~5%
-- https://www.wowhead.com/quest=587/up-to-snuff#comments:id=98807:reply=315188  (Patch 2.2.3) ~50-75% extremly lucky
-- https://www.wowhead.com/quest=587/up-to-snuff#comments:id=45749 (Patch 2.0.8) ~ This isn't a bad quest, but it is a bit of a pain. The drop rate is pretty bad
-- https://www.wowhead.com/quest=587/up-to-snuff#comments:id=51840 (Patch 2.0.10) ~ Bloodsail Swashbucklers(23.2%) and the Bloodsail Warlocks(22.8%)
-- https://www.wowhead.com/quest=587/up-to-snuff#comments:id=228377 (Patch 2.3.3) Easy to accomplish as of 2.3 update. At about 30,88 there are 3 boats anchored. Swim out to one, go thru it... and so on. I had 13 of the required 15 snuff (~60+ mobs) by the time I made it thru the 3 ships
-- https://www.wowhead.com/quest=587/up-to-snuff#comments:id=210439 (Patch 2.3.0) ~ this quest takes some time.
-- http://web.archive.org/web/20071028090637/http://wow.allakhazam.com:80/db/item.html?witem=3910
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 3910 AND `entry` IN (
1563, -- Bloodsail Swashbuckler
1561, -- Bloodsail Raider
1564, -- Bloodsail Warlock
1562, -- Bloodsail Mage
2545 -- "Pretty Boy" Duncan
);

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 3910 AND `entry` IN (
4505, -- Bloodsail Deckhand
4506, -- Bloodsail Swabby
2551, -- Brutus
1565, -- Bloodsail Sea Dog
1653, -- Bloodsail Elder Magus
2550, -- Captain Stillwater
2549, -- Garr Salthoof
2547, -- Ironpatch
2548, -- Captain Keelhaul
2546 -- Fleet Master Firallon
);
