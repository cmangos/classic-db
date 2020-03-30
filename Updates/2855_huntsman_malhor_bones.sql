-- Huntsman Malkhor's Bones should only drop from skull pile
DELETE FROM creature_loot_template WHERE item IN(19070);
