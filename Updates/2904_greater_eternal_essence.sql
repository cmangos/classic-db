-- Set 2 maxcount for Greater Eternal Essence 16203 disenchanted items
UPDATE disenchant_loot_template SET maxcount=2 WHERE entry IN (11,31) AND item=16203; -- Greater Eternal Essence
