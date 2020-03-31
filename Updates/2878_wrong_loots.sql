-- Remove wrong loot from Skeletal Flayer 1783 & Diseased Grizzly 1816
DELETE FROM creature_loot_template WHERE item IN (2449,2838,3357,3818,3858,3864,7909,7910,7911,7912,8836,8838,8846,13465,13466,3356,10620,12365,13463) AND entry IN (1783,1816);
