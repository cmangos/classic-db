-- Improve scripts for q.1920 'Investigate the Blue Recluse' and q.1960 'Investigate the Alchemist Shop'
-- Based on sniffs and this video: https://www.youtube.com/watch?v=M9XbZWgzHpM

-- Loot is not from the creature but from g.103574 LootId 4589
DELETE FROM creature_loot_template WHERE entry=6492;
UPDATE creature_template SET LootId=0 WHERE entry=6492;

-- Add missing trap from trinitycore
DELETE FROM gameobject_template WHERE entry=103575;
INSERT INTO gameobject_template (entry,type,displayId,name,size,data0,data1,data2,data3) VALUES
(103575,6,327,'Containment Coffer TRAP',1,0,0,0,9012);

DELETE FROM `dbscripts_on_go_template_use` WHERE `id` IN(122088);
INSERT INTO `dbscripts_on_go_template_use` (`id`,`delay`,`command`,`datalong`,`datalong2`,`datalong3`,`dataint`,`dataint2`,`dataint3`,`dataint4`,`buddy_entry`,`search_radius`,`data_flags`,`comments`,`x`,`y`,`z`,`o`) VALUES
(122088,1,40,0,0,0,0,0,0,0,0,0,0,'Containment Coffer - Despawn Self on Use',0,0,0,0);

-- The NPCs are invisible on spawn so we have no way to get sniffed spawn coords.
-- Rework it based on wowhead comments: https://www.wowhead.com/quest=1920/investigate-the-blue-recluse
-- Basement: 1
-- Kitchen: 1
-- Balcony: 1
-- Main Room: 3
DELETE FROM creature WHERE id=6492;
INSERT INTO `creature` VALUES (160759, 6492, 0, 0, 0, -9077, 831.549, 108.419, 2.3646, 180, 180, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature` VALUES (107727, 6492, 0, 0, 0, 1403.48, 356.513, -66, 5.263, 180, 180, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature` VALUES (107728, 6492, 0, 0, 0, 1406.23, 335.627, -66, 4.15, 180, 180, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature` VALUES (107729, 6492, 0, 0, 0, 1411.44, 343.888, -66, 5.275, 180, 180, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature` VALUES (107730, 6492, 0, 0, 0, 1416.12, 358.485, -66, 1.162, 180, 180, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature` VALUES (107731, 6492, 0, 0, 0, -9104.65, 833.212, 97.6289, 3.7165, 180, 180, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature` VALUES (107732, 6492, 0, 0, 0, -9090.42, 826.235, 115.668, 2.49835, 180, 180, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature` VALUES (107733, 6492, 0, 0, 0, -9068.78, 839.768, 108.419, 5.41217, 180, 180, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature` VALUES (107734, 6492, 0, 0, 0, -9065.41, 831.277, 108.419, 0.813664, 180, 180, 5, 0, 0, 0, 0, 1);
INSERT INTO `creature` VALUES (160760, 6492, 0, 0, 0, -9102.94, 836.88, 105.122, 5.86749, 180, 180, 5, 0, 0, 0, 0, 1);
