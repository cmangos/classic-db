-- Added missing equipment to rare/named mobs
-- This closes #485 

-- Add Accursed Slitherblade's missing weapon.
-- source: http://www.wowhead.com/npc=14229#screenshots:id=12957
UPDATE creature_template SET EquipmentTemplateId = 639 WHERE entry = 14229;

-- Add Ruul Onestone's missing weapon.
-- source: http://wow.zamimg.com/uploads/screenshots/normal/66323.jpg
UPDATE creature_template SET EquipmentTemplateId = 96 WHERE entry = 2602;

-- Add Deathsworn Captain's missing weapon.
-- source: http://www.wowhead.com/npc=3872#screenshots:id=272604
UPDATE creature_template SET EquipmentTemplateId = 150 WHERE entry = 3872;


-- Add missing weapon to Gordok Captain.
-- source: http://www.wowhead.com/npc=11445#screenshots:id=38093
UPDATE creature_template SET EquipmentTemplateId = 155 WHERE entry = 11445;

-- Add missing weapon to King Gordok.
-- http://www.wowhead.com/npc=11501#screenshots:id=64100
UPDATE creature_template SET EquipmentTemplateId = 1248 WHERE entry = 11501;
