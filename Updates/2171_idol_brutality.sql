-- Idol of Brutality i.23198 should only drop from Magistrate Barthilas c.10435
DELETE FROM creature_loot_template WHERE item=23198 AND entry !=10435;
