-- Greater Fleshripper shouldn't drop blindweed.
DELETE FROM creature_loot_template WHERE (entry = 154) AND (item = 8839);
