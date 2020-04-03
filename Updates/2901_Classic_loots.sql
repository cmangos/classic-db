-- should not drop from elementals
DELETE FROM creature_loot_template WHERE item=20378 AND entry IN(11744,11746);
-- removal of some herbs again
DELETE FROM creature_loot_template WHERE entry IN(4494,1839) AND item IN(785,2449,2450,3356,3357,3820,3821,4625,8838,8839,8846,13463,13464,13465);
DELETE FROM creature_loot_template WHERE item=13926; -- golden pearls drop only from clams
