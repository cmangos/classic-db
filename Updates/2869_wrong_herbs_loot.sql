-- remove herb drops from Jaedenar Adept and Angerclaw Mauler
DELETE FROM creature_loot_template WHERE entry IN(8958,7115) AND item IN(785,2449,2450,3356,3357,3820,4625,8838,8839,8846,13463,13464,13465);
