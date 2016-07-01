-- Fixed fight with NPC 16387 (Atiesh) in Stratholme
-- Fixed stats
-- Added equipment
-- Added or fixed GO and items involved in the encounter
-- Thanks @Metalica for pointing, this closes #561
-- Sources:
-- https://www.youtube.com/watch?v=ZNHCkd5AvKI
-- https://www.youtube.com/watch?v=D5wP695sdao
-- http://wowwiki.wikia.com/wiki/Atiesh
-- http://www.wowhead.com/npc=16387/atiesh#comments

SET @ID := 2440;

-- Fixed stats of creature 16387 (Atiesh)
UPDATE creature_template SET SpeedWalk=1, MinLevel=63, MaxLevel=63, HealthMultiplier=75, ArmorMultiplier=1, DamageMultiplier=40, MinMeleeDmg=110, MaxMeleeDmg=146, MinRangedDmg=0, MaxRangedDmg=0, MeleeAttackPower=268, RangedAttackPower=32, MeleeBaseAttackTime=2000, RangedBaseAttackTime=2000, EquipmentTemplateId=@ID WHERE Entry = 16387;

-- Added equipment template for Atiesh
DELETE FROM creature_equip_template_raw WHERE entry IN (@ID);
INSERT INTO creature_equip_template_raw VALUES
(@ID, 35151, 35151, 0, 50267138, 50267138, 0, 781, 781, 0);

-- Updated the tooltip of the corrupted Atiesh's staff
UPDATE item_template SET description = "An entity of great evil is imprisoned within the staff." WHERE entry = 22737;

-- Added missing GO 181207 (Runed Demonic Blade)
DELETE FROM gameobject_template WHERE entry = 181207;
INSERT INTO `gameobject_template` VALUES
(181207, 3, 4175, 'Runed Demonic Blade', 0, 0, 1.5, 1085, 181207, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Added loot for GO 181207
DELETE FROM gameobject_loot_template WHERE entry = 181207;
INSERT INTO gameobject_loot_template VALUES
(181207, 22736, 100, 0, 1, 1, 0);
