-- Added weapon for Kirtonos The Herald Ref. https://www.youtube.com/watch?v=FkxkmDNnv3Y
-- This closes #175
DELETE FROM creature_equip_template WHERE entry=10506;
INSERT INTO creature_equip_template (entry, equipentry1) VALUES (10506, 11365);
UPDATE creature_template SET EquipmentTemplateId=10506 WHERE (Entry=10506); 
