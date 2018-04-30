-- Added weapon for Deathknight Cavalier
-- This closes #173
DELETE FROM creature_equip_template WHERE entry=16163;
INSERT INTO creature_equip_template (entry, equipentry1) VALUES (16163, 23328);
UPDATE creature_template SET EquipmentTemplateId=16163 WHERE Entry=16163;
