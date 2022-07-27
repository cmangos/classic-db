-- https://github.com/cmangos/mangos-classic/commit/7800ce6cdc171062751ac2b19aba51a1b7055fba#commitcomment-77677882
-- Revert CREATURE_EXTRA_FLAG_HAVE_NO_SWIM_ANIMATION - was removed and Civilian Flag was added in its stead
-- Based  on https://github.com/cmangos/mangos-classic/commit/7800ce6cdc171062751ac2b19aba51a1b7055fba -> http://pastebin.com/yJVnyVHk
UPDATE creature_template SET ExtraFlags=ExtraFlags&~0x10000 WHERE (CreatureType IN (5)) and `entry` NOT IN (2041); -- Ancient Protector

-- these too - https://www.diffchecker.com/B5ApiL4g
-- 4686	Deepstrider Giant
-- 4687	Deepstrider Searcher
-- 5467	Deep Dweller
-- 1494	Negolash

