-- Stormpike Bowman 13358 & Frostwolf Bowman 13359
-- Detection adjustment doesnt work out due to Z-Level difference, npcs cant detect player on much (~5yard) lower z level
UPDATE creature_template SET SpeedWalk=(2.5 / 2.5), SpeedRun=(8 / 7), Detection=40, HealthMultiplier=1.5, PowerMultiplier=1.5, MovementType=0, MinLevelHealth=4442, MaxLevelHealth=4578, ArmorMultiplier=1 WHERE entry IN (13358,13359);
DELETE FROM creature_template_addon WHERE entry IN (13358,13359);
INSERT INTO creature_template_addon (entry, b2_0_sheath) VALUES
(13358, 2),(13359, 2);
