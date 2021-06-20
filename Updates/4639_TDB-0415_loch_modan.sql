-- https://www.wowhead.com/classic/npc=1398/boss-galgosh
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1398;

-- https://www.wowhead.com/classic/npc=2476/large-loch-crocolisk
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 2925 AND `entry` IN (2476,1693); -- down from 80%
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 2476;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 57 WHERE `entry` = 2476 AND `item` = 2319;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 32 WHERE `entry` = 2476 AND `item` = 2318;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 7 WHERE `entry` = 2476 AND `item` = 4232;
DELETE FROM `skinning_loot_template` WHERE `entry` = 2476 AND `item` = 783;
INSERT INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(2476, 783, 4, 1, 1, 1, 0, 'Light Hide');

-- https://www.wowhead.com/classic/npc=1210/choksul
UPDATE `creature` SET `position_x` = -4756.23, `position_y` = -4192.34, `position_z` = 303.398, `orientation` = 0, `MovementType` = 1, `spawndist` = 2 WHERE `id` = 1210;
UPDATE `creature_template` SET `Faction` = 45, `UnitFlags` = 64, `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `PickpocketLootId` = 1210, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 1210;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1210;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
-- https://www.wowhead.com/classic/npc=6202/legashi-hellcaller#pickpocketing gist: gem 1% potion 10% rest as group 100%
(1210, 16882, 70, 1, 1, 1, 0, 'Battered Junkbox'),
(1210, 5373, 30, 1, 1, 1, 0, 'Lucky Charm'),
(1210, 929, 10, 0, 1, 1, 0, 'Healing Potion'),
(1210, 1206, 1, 0, 1, 1, 0, 'Moss Agate');

DELETE FROM `dbscript_random_templates` WHERE `id` = 909;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(909, 0, 1928, 0, 'Chok''sul 1210 - Texts'), -- Dat $R look gud to eat!
(909, 0, 1929, 0, 'Chok''sul 1210 - Texts'), -- Bash it!
(909, 0, 1930, 0, 'Chok''sul 1210 - Texts'), -- Me smash you!
(909, 0, 1931, 0, 'Chok''sul 1210 - Texts'); -- Huh? What dat?

-- https://www.wowhead.com/classic/npc=1399/magosh
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1399;

-- https://www.wowhead.com/classic/npc=2477/gradok
UPDATE `creature_template` SET `NpcFlags` = 0, `UnitFlags` = 64, `RangedBaseAttackTime` = 2000, `MovementType` = 0, `SpeedWalk` = 1 WHERE `entry` = 2477;
-- https://www.wowhead.com/classic/npc=2478/haren-swifthoof
UPDATE `creature_template` SET `NpcFlags` = 0, `UnitFlags` = 64, `RangedBaseAttackTime` = 2000, `MovementType` = 0, `SpeedWalk` = 1 WHERE `entry` = 2478;
-- https://www.wowhead.com/classic/npc=7170/thragomm
UPDATE `creature_template` SET `NpcFlags` = 0, `UnitFlags` = 32832, `RangedBaseAttackTime` = 2000, `DamageMultiplier` = 1.7, `MovementType` = 0, `SpeedWalk` = 1 WHERE `entry` = 7170;
DELETE FROM `spawn_group` WHERE id = 19047;
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(19047,'Loch Modan - Horde Runner Patrol (3) - 2477,2478,7170', 0, 0, 0, 2);
DELETE FROM `spawn_group_formation` WHERE id = 19047;
INSERT INTO `spawn_group_formation` (`Id`, `FormationType`, `FormationSpread`, `FormationOptions`, `PathId`, `MovementType`, `Comment`) VALUES
(19047, 3, 3, 0, 19047, 2, 'Loch Modan - Horde Runner Patrol (3) - 2477,2478,7170');
DELETE FROM `spawn_group_spawn` WHERE id = 19047;
INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(19047, 9203, 0),
(19047, 9204, 1),
(19047, 9205, 2);
REPLACE INTO `waypoint_path_name` (`PathId`, `Name`) VALUES (19047, 'Loch Modan - Horde Runner Patrol (3) - 2477,2478,7170');
DELETE FROM `creature_movement_template` WHERE `entry` IN (2477,2478,7170);
DELETE FROM `creature_movement` WHERE `id` IN (9203,9204,9205);
UPDATE `creature` SET `position_x` = -5715, `position_y` = -3532.59, `position_z` = 304.363, `MovementType` = 0 WHERE `id` IN (2477,2478,7170);
DELETE FROM `waypoint_path` WHERE `PathId` = 19047;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`, `Comment`) VALUES
(19047, 1, -5715, -3532.59, 304.363, 100, 0, 0, NULL), -- wotlkdb data
(19047, 2, -5708.71, -3539.77, 304.927, 100, 0, 0, NULL),
(19047, 3, -5696.26, -3549.28, 305.553, 100, 0, 0, NULL),
(19047, 4, -5696.04, -3563.09, 307.879, 100, 0, 0, NULL),
(19047, 5, -5683.63, -3578.94, 309.475, 100, 0, 0, NULL),
(19047, 6, -5673.26, -3598.36, 311.779, 100, 0, 0, NULL),
(19047, 7, -5668.69, -3618.71, 311.241, 100, 0, 0, NULL),
(19047, 8, -5656.84, -3631.12, 313.19, 100, 0, 0, NULL),
(19047, 9, -5637.64, -3647.74, 313.295, 100, 0, 0, NULL),
(19047, 10, -5628.38, -3653.29, 315.804, 100, 0, 0, NULL),
(19047, 11, -5611.56, -3663.43, 315.753, 100, 0, 0, NULL),
(19047, 12, -5599.39, -3675.01, 310.735, 100, 0, 0, NULL),
(19047, 13, -5593.27, -3682.56, 311.473, 100, 0, 0, NULL),
(19047, 14, -5583.53, -3692.58, 312.236, 100, 0, 0, NULL),
(19047, 15, -5558.26, -3718.74, 314.809, 100, 0, 0, NULL),
(19047, 16, -5547.13, -3729.79, 315.279, 100, 0, 0, NULL),
(19047, 17, -5532.32, -3736.85, 319.71, 100, 0, 0, NULL),
(19047, 18, -5518.84, -3743.2, 321.883, 100, 0, 0, NULL),
(19047, 19, -5507.82, -3747.65, 321.133, 100, 0, 0, NULL),
(19047, 20, -5495.93, -3748.09, 317.427, 100, 0, 0, NULL),
(19047, 21, -5485.81, -3751.94, 318.135, 100, 0, 0, NULL),
(19047, 22, -5469.53, -3755.6, 318.54, 100, 0, 0, NULL),
(19047, 23, -5440.11, -3763.5, 312.986, 100, 0, 0, NULL),
(19047, 24, -5425.37, -3766.01, 307.263, 100, 0, 0, NULL),
(19047, 25, -5416.88, -3767.38, 306.686, 100, 0, 0, NULL),
(19047, 26, -5405.11, -3769.28, 304.145, 100, 0, 0, NULL),
(19047, 27, -5381.23, -3768.62, 304.111, 100, 0, 0, NULL),
(19047, 28, -5364.66, -3773.09, 307.75, 100, 0, 0, NULL),
(19047, 29, -5335.57, -3772.66, 309.76, 100, 0, 0, NULL),
(19047, 30, -5313.28, -3774.64, 310.507, 100, 0, 0, NULL),
(19047, 31, -5294.28, -3774.4, 311.725, 100, 0, 0, NULL),
(19047, 32, -5283.5, -3773.5, 313.175, 100, 0, 0, NULL),
(19047, 33, -5269.97, -3770.9, 310.333, 100, 0, 0, NULL),
(19047, 34, -5252.31, -3764.21, 311.713, 100, 0, 0, NULL),
(19047, 35, -5229.61, -3764.81, 312.428, 100, 0, 0, NULL),
(19047, 36, -5209.89, -3759.83, 316.056, 100, 0, 0, NULL),
(19047, 37, -5195.93, -3757.96, 317.291, 100, 0, 0, NULL),
(19047, 38, -5181.29, -3767.63, 315.119, 100, 0, 0, NULL),
(19047, 39, -5171.83, -3774.92, 318.758, 100, 0, 0, NULL),
(19047, 40, -5160.5, -3771.2, 315.972, 100, 0, 0, NULL),
(19047, 41, -5147.19, -3764.44, 312.087, 100, 0, 0, NULL),
(19047, 42, -5140.54, -3761.92, 313.572, 100, 0, 0, NULL),
(19047, 43, -5131.09, -3758.43, 315.852, 100, 0, 0, NULL),
(19047, 44, -5117.03, -3750.7, 311.711, 100, 0, 0, NULL),
(19047, 45, -5106.87, -3743.72, 310.59, 100, 0, 0, NULL),
(19047, 46, -5090.94, -3742.13, 314.915, 100, 0, 0, NULL),
(19047, 47, -5078.41, -3737.28, 315.945, 100, 0, 0, NULL),
(19047, 48, -5069.79, -3734.66, 313.867, 100, 0, 0, NULL),
(19047, 49, -5057.92, -3724.99, 313.285, 100, 0, 0, NULL),
(19047, 50, -5047.39, -3714.41, 308.729, 100, 0, 0, NULL),
(19047, 51, -5035.13, -3699.37, 307.327, 100, 0, 0, NULL),
(19047, 52, -5029.97, -3694.52, 309.468, 100, 0, 0, NULL),
(19047, 53, -5018.97, -3687.51, 311.094, 100, 0, 0, NULL),
(19047, 54, -5005.5, -3679.48, 309.622, 100, 0, 0, NULL),
(19047, 55, -4992.95, -3670.7, 308.633, 100, 0, 0, NULL),
(19047, 56, -4983.18, -3664.49, 308.778, 100, 0, 0, NULL),
(19047, 57, -4974.57, -3659.26, 307.049, 100, 0, 0, NULL),
(19047, 58, -4965.17, -3653.17, 306.027, 100, 0, 0, NULL),
(19047, 59, -4953.16, -3645.6, 305.543, 100, 0, 0, NULL),
(19047, 60, -4936.53, -3629.55, 301.459, 100, 0, 0, NULL),
(19047, 61, -4918.53, -3615.76, 301.658, 100, 0, 0, NULL),
(19047, 62, -4909.42, -3608, 299.888, 100, 0, 0, NULL),
(19047, 63, -4899.41, -3601.47, 300.646, 100, 0, 0, NULL),
(19047, 64, -4883.72, -3592.13, 303, 100, 0, 0, NULL),
(19047, 65, -4874.71, -3586.8, 303.55, 100, 0, 0, NULL),
(19047, 66, -4858.9, -3579.51, 306.629, 100, 0, 0, NULL),
(19047, 67, -4843.63, -3573.52, 308.854, 100, 0, 0, NULL),
(19047, 68, -4821.6, -3565.26, 306.365, 100, 0, 0, NULL),
(19047, 69, -4808.92, -3569.72, 306.615, 100, 0, 0, NULL),
(19047, 70, -4807.43, -3583.79, 306.914, 100, 0, 0, NULL),
(19047, 71, -4812.13, -3600.65, 304.855, 100, 0, 0, NULL),
(19047, 72, -4819.79, -3613.01, 305.19, 100, 0, 0, NULL),
(19047, 73, -4834.75, -3631.45, 301.168, 100, 0, 0, NULL),
(19047, 74, -4850.36, -3634.94, 303.953, 100, 0, 0, NULL),
(19047, 75, -4869.61, -3639.31, 309.091, 100, 0, 0, NULL),
(19047, 76, -4883.67, -3643.09, 311.184, 100, 0, 0, NULL),
(19047, 77, -4899.46, -3654.56, 306.54, 100, 0, 0, NULL),
(19047, 78, -4911.03, -3659.76, 306.942, 100, 0, 0, NULL),
(19047, 79, -4934.39, -3678.28, 309.722, 100, 0, 0, NULL),
(19047, 80, -4950.92, -3680.97, 314.305, 100, 0, 0, NULL),
(19047, 81, -4967.22, -3692.79, 312.559, 100, 0, 0, NULL),
(19047, 82, -4980.66, -3703.46, 312.768, 100, 0, 0, NULL),
(19047, 83, -4993.64, -3710.89, 309.605, 100, 0, 0, NULL),
(19047, 84, -5012.97, -3714.74, 309.506, 100, 0, 0, NULL),
(19047, 85, -5021.8, -3720.27, 311.863, 100, 0, 0, NULL),
(19047, 86, -5042.86, -3734.46, 313.431, 100, 0, 0, NULL),
(19047, 87, -5056.44, -3743.58, 312.945, 100, 0, 0, NULL),
(19047, 88, -5074.08, -3754.02, 313.064, 100, 0, 0, NULL),
(19047, 89, -5086.43, -3759.33, 315.71, 100, 0, 0, NULL),
(19047, 90, -5121.39, -3770.12, 317.671, 100, 0, 0, NULL),
(19047, 91, -5137.71, -3776.47, 314.535, 100, 0, 0, NULL),
(19047, 92, -5156.44, -3786.46, 319.694, 100, 0, 0, NULL),
(19047, 93, -5171.74, -3796.54, 320.909, 100, 0, 0, NULL),
(19047, 94, -5192.41, -3807.62, 326.627, 100, 0, 0, NULL),
(19047, 95, -5205.32, -3804.04, 323.667, 100, 0, 0, NULL),
(19047, 96, -5222.53, -3816.4, 319.621, 100, 0, 0, NULL),
(19047, 97, -5241.03, -3804.78, 314.503, 100, 0, 0, NULL),
(19047, 98, -5255.6, -3804.21, 321.447, 100, 0, 0, NULL),
(19047, 99, -5270.32, -3806.16, 322.783, 100, 0, 0, NULL),
(19047, 100, -5284.83, -3805.6, 319.087, 100, 0, 0, NULL),
(19047, 101, -5303.21, -3800.79, 316.619, 100, 0, 0, NULL),
(19047, 102, -5320.5, -3803.47, 317.329, 100, 0, 0, NULL),
(19047, 103, -5331.87, -3808.22, 319.848, 100, 0, 0, NULL),
(19047, 104, -5353.68, -3816.81, 321.646, 100, 0, 0, NULL),
(19047, 105, -5372.14, -3824.82, 324.627, 100, 0, 0, NULL),
(19047, 106, -5392.87, -3824.3, 325.009, 100, 0, 0, NULL),
(19047, 107, -5412.06, -3832.56, 328.74, 100, 0, 0, NULL),
(19047, 108, -5425.14, -3829.5, 326.605, 100, 0, 0, NULL),
(19047, 109, -5441.55, -3824.69, 319.735, 100, 0, 0, NULL),
(19047, 110, -5448.59, -3802.57, 312.419, 100, 0, 0, NULL),
(19047, 111, -5451.77, -3790.4, 314.842, 100, 0, 0, NULL),
(19047, 112, -5462.93, -3777.33, 317.202, 100, 0, 0, NULL),
(19047, 113, -5481.86, -3759.86, 318.398, 100, 0, 0, NULL),
(19047, 114, -5490.5, -3756.27, 318.159, 100, 0, 0, NULL),
(19047, 115, -5502.08, -3749.4, 319.484, 100, 0, 0, NULL),
(19047, 116, -5513.5, -3743.5, 321.614, 100, 0, 0, NULL),
(19047, 117, -5528.06, -3739.88, 320.744, 100, 0, 0, NULL),
(19047, 118, -5550.57, -3731.97, 316.075, 100, 0, 0, NULL),
(19047, 119, -5562.59, -3718.69, 315.128, 100, 0, 0, NULL),
(19047, 120, -5584.17, -3693.93, 312.437, 100, 0, 0, NULL),
(19047, 121, -5586.19, -3680.67, 308.662, 100, 0, 0, NULL),
(19047, 122, -5586.75, -3659.4, 307.935, 100, 0, 0, NULL),
(19047, 123, -5598.77, -3642.8, 310.471, 100, 0, 0, NULL),
(19047, 124, -5613.19, -3624.67, 312.083, 100, 0, 0, NULL),
(19047, 125, -5628.16, -3608.16, 310.771, 100, 0, 0, NULL),
(19047, 126, -5641.76, -3598.29, 311.739, 100, 0, 0, NULL),
(19047, 127, -5655.46, -3590.58, 309.931, 100, 0, 0, NULL),
(19047, 128, -5669.56, -3570.82, 308.149, 100, 0, 0, NULL),
(19047, 129, -5683.45, -3553.73, 305.661, 100, 0, 0, NULL),
(19047, 130, -5697.93, -3542.56, 305.626, 100, 0, 0, NULL),
(19047, 131, -5714.33, -3524.31, 303.827, 100, 0, 0, NULL);

-- https://www.wowhead.com/classic/npc=1225/ol-sooty
-- wrong resistance values from being a tamed pet!
UPDATE `creature_template` SET `ResistanceFire` = 0, `ResistanceNature` = 0, `ResistanceFrost` = 0, `ResistanceShadow` = 0, `ResistanceArcane` = 0 WHERE `entry` = 1225;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 23 WHERE `entry` = 1225 AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 70 WHERE `entry` = 1225 AND `item` = 2318; -- Light Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `entry` = 1225 AND `item` = 4232; -- Medium Hide
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 3 WHERE `entry` = 1225 AND `item` = 783; -- Light Hide

-- https://www.wowhead.com/classic/npc=1180/mogrosh-brute
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 3000, `PickpocketLootId` = 1180, `MovementType` = 0, `ExtraFlags` = `ExtraFlags`|1048576, `MeleeBaseAttackTime` = 3000 WHERE `entry` = 1180;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1180;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1180, 5379, 40, 1, 1, 1, 0, 'Boot Knife'),
(1180, 4541, 20, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1180, 858, 20, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1180, 2287, 20, 1, 1, 1, 0, 'Haunch of Meat'),
(1180, 1210, 0.5, 2, 1, 1, 0, 'Shadowgem'),
(1180, 818, 0.5, 2, 1, 1, 0, 'Tigerseye');

-- https://www.wowhead.com/classic/npc=1183/mogrosh-mystic
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `PickpocketLootId` = 1183, `MovementType` = 0, `ExtraFlags` = `ExtraFlags`|1048576, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1183;
DELETE FROM creature_loot_template where item = 6992; -- Jordan's Ore Shipment -> Inside object 92420
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1183;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1183, 5379, 35, 1, 1, 1, 0, 'Boot Knife'),
(1183, 4541, 20, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1183, 858, 20, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1183, 2287, 25, 1, 1, 1, 0, 'Haunch of Meat'),
(1183, 818, 1, 2, 1, 1, 0, 'Tigerseye'),
(1183, 7288, 0.2, 3, 1, 1, 0, 'Pattern: Rugged Leather Pants'); -- https://www.wowhead.com/classic/item=7288/pattern-rugged-leather-pants#pick-pocketed-from;0+9-10+1

-- https://www.wowhead.com/classic/npc=1393/berserk-trogg
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `PickpocketLootId` = 1393 WHERE `entry` = 1393;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1393;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1393, 5379, 50, 1, 1, 1, 0, 'Boot Knife'),
(1393, 1210, 30, 1, 1, 1, 0, 'Shadowgem'),
(1393, 4541, 10, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1393, 2287, 10, 1, 1, 1, 0, 'Haunch of Meat'),
(1393, 858, 5, 0, 1, 1, 0, 'Lesser Healing Potion');

-- https://www.wowhead.com/classic/npc=1224/young-threshadon
UPDATE `creature_template` SET `SpeedWalk` = 1 WHERE `entry` = 1224; 
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 17 WHERE `entry` = 1224 AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 75 WHERE `entry` = 1224 AND `item` = 2318; -- Light Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `entry` = 1224 AND `item` = 4232; -- Medium Hide
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 4 WHERE `entry` = 1224 AND `item` = 783; -- Light Hide

-- https://www.wowhead.com/classic/npc=14266/shanda-the-spinner
UPDATE `creature_template` SET `UnitFlags` = 0 WHERE `entry` = 14266;

-- https://www.wowhead.com/classic/npc=14267/emogg-the-crusher
UPDATE `creature_template` SET `PickpocketLootId` = 14267, `MovementType` = 0, `ExtraFlags` = `ExtraFlags`|1048576 WHERE `entry` = 14267; -- https://web.archive.org/web/20080430051606/http://wow.allakhazam.com/db/mob.html?wmob=14267
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 14267 AND `item` = 60122; -- NPC LOOT (Green World Drop) - (Item Levels: 18-22) - (NPC Levels: 19)
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 14267;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(14267, 16882, 55, 1, 1, 1, 0, 'Battered Junkbox'),
(14267, 5373, 15, 1, 1, 1, 0, 'Lucky Charm'),
(14267, 4542, 15, 1, 1, 1, 0, 'Moist Cornbread'),
(14267, 3770, 15, 1, 1, 1, 0, 'Mutton Chop');

-- https://www.wowhead.com/classic/npc=1179/mogrosh-enforcer
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `MovementType` = 0, `ExtraFlags` = `ExtraFlags`|1048576, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1179;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1179;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1179, 5379, 60, 1, 1, 1, 0, 'Boot Knife'),
(1179, 4541, 20, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1179, 2287, 20, 1, 1, 1, 0, 'Haunch of Meat'),
(1179, 858, 10, 0, 1, 1, 0, 'Lesser Healing Potion'),
(1179, 818, 1, 0, 1, 1, 0, 'Tigerseye');

-- https://www.wowhead.com/classic/npc=1178/mogrosh-ogre
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `ExtraFlags` = `ExtraFlags`|1048576, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1178;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1178;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1178, 5379, 50, 1, 1, 1, 0, 'Boot Knife'),
(1178, 4541, 25, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1178, 2287, 25, 1, 1, 1, 0, 'Haunch of Meat'),
(1178, 1210, 0.5, 2, 1, 1, 0, 'Shadowgem'),
(1178, 818, 0.5, 2, 1, 1, 0, 'Tigerseye'),
(1178, 858, 10, 0, 1, 1, 0, 'Lesser Healing Potion');

-- https://www.wowhead.com/classic/npc=1181/mogrosh-shaman
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `MovementType` = 0, `ExtraFlags` = `ExtraFlags`|1048576, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1181;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1181;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1181, 5379, 50, 1, 1, 1, 0, 'Boot Knife'),
(1181, 4541, 25, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1181, 2287, 25, 1, 1, 1, 0, 'Haunch of Meat'),
(1181, 1210, 1, 2, 1, 1, 0, 'Shadowgem'),
(1181, 858, 10, 0, 1, 1, 0, 'Lesser Healing Potion');

-- https://www.wowhead.com/classic/npc=1169/dark-iron-insurgent
UPDATE `creature_template` SET `SpeedWalk` = 1, `ResistanceArcane` = 0 WHERE `entry` = 1169;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1169;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1169, 5368, 55, 1, 1, 1, 0, 'Empty Wallet'),
(1169, 414, 15, 1, 1, 1, 0, 'Dalaran Sharp'),
(1169, 4541, 15, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1169, 4537, 15, 1, 1, 1, 0, 'Tel\'Abim Banana'),
(1169, 858, 10, 0, 1, 1, 0, 'Lesser Healing Potion');

-- https://www.wowhead.com/classic/npc=1167/stonesplinter-digger
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1167;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1167;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1167, 5379, 50, 1, 1, 1, 0, 'Boot Knife'),
(1167, 4541, 25, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1167, 2287, 25, 1, 1, 1, 0, 'Haunch of Meat'),
(1167, 1210, 0.5, 2, 1, 1, 0, 'Shadowgem'),
(1167, 818, 0.5, 2, 1, 1, 0, 'Tigerseye'),
(1167, 858, 10, 0, 1, 1, 0, 'Lesser Healing Potion');

-- https://www.wowhead.com/classic/npc=1165/stonesplinter-geomancer
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1165;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1165;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1165, 5379, 50, 1, 1, 1, 0, 'Boot Knife'),
(1165, 4541, 25, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1165, 2287, 25, 1, 1, 1, 0, 'Haunch of Meat'),
(1165, 1210, 0.5, 2, 1, 1, 0, 'Shadowgem'),
(1165, 818, 0.5, 2, 1, 1, 0, 'Tigerseye'),
(1165, 6344, 0.1, 3, 1, 1, 0, 'Formula: Enchant Bracer - Minor Spirit'),
(1165, 2555, 0.1, 3, 1, 1, 0, 'Recipe: Swiftness Potion'),
(1165, 858, 10, 0, 1, 1, 0, 'Lesser Healing Potion');

-- https://www.wowhead.com/classic/npc=1185/wood-lurker
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1185;

-- https://www.wowhead.com/classic/npc=1222/dark-iron-sapper
UPDATE `creature_template` SET `UnitFlags` = 32768, `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `PickpocketLootId` = 1222, `ResistanceArcane` = 0, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1222;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1222;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1222, 5368, 55, 1, 1, 1, 0, 'Empty Wallet'),
(1222, 414, 20, 1, 1, 1, 0, 'Dalaran Sharp'),
(1222, 4541, 20, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1222, 858, 10, 0, 1, 1, 0, 'Lesser Healing Potion'),
(1222, 818, 1, 2, 1, 1, 0, 'Tigerseye');

-- https://www.wowhead.com/classic/npc=1205/grawmug
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1205;

-- https://www.wowhead.com/classic/npc=1189/black-bear-patriarch
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1189;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `entry` = 1189 AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 72 WHERE `entry` = 1189 AND `item` = 2318; -- Light Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 1189 AND `item` = 4232; -- Medium Hide
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 6 WHERE `entry` = 1189 AND `item` = 783; -- Light Hide

-- https://www.wowhead.com/classic/npc=1192/elder-mountain-boar
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1192;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `entry` = 1192 AND `item` = 2319; -- Medium Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 72 WHERE `entry` = 1192 AND `item` = 2318; -- Light Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 2 WHERE `entry` = 1192 AND `item` = 4232; -- Medium Hide
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 6 WHERE `entry` = 1192 AND `item` = 783; -- Light Hide

-- https://www.wowhead.com/classic/npc=1207/brawler
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1207;

-- https://www.wowhead.com/classic/npc=1206/gnasher
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1206;

-- https://www.wowhead.com/classic/npc=14268/lord-condar
UPDATE `creature_template` SET `Faction` = 14, `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 14268;

-- https://www.wowhead.com/classic/npc=1194/mountain-buzzard
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1194;

-- https://www.wowhead.com/classic/npc=1164/stonesplinter-bonesnapper
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1164;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1164;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1164, 5379, 55, 1, 1, 1, 0, 'Boot Knife'),
(1164, 4541, 15, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1164, 858, 15, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1164, 2287, 15, 1, 1, 1, 0, 'Haunch of Meat'),
(1164, 1210, 1, 2, 1, 1, 0, 'Shadowgem');

-- https://www.wowhead.com/classic/npc=1197/stonesplinter-shaman
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1197;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1197;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1197, 5379, 55, 1, 1, 1, 0, 'Boot Knife'),
(1197, 4541, 15, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1197, 858, 15, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1197, 2287, 15, 1, 1, 1, 0, 'Haunch of Meat');

-- https://www.wowhead.com/classic/npc=1425/grizlak
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1425;

-- https://www.wowhead.com/classic/npc=1693/loch-crocolisk
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1693;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 1693 AND `item` = 2318; -- Light Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 35 WHERE `entry` = 1693 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` = 1693 AND `item` = 783; -- Light Hide

-- https://www.wowhead.com/classic/npc=1191/mangy-mountain-boar
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 1191 AND `item` = 2318; -- Light Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 35 WHERE `entry` = 1191 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` = 1191 AND `item` = 783; -- Light Hide

-- https://www.wowhead.com/classic/npc=2149/dark-iron-raider
UPDATE `creature_template` SET `SpeedWalk` = 1, `RangedBaseAttackTime` = 2000, `ResistanceArcane` = 0 WHERE `entry` = 2149;

-- https://www.wowhead.com/classic/npc=1177/tunnel-rat-surveyor
UPDATE `creature_template` SET `MinLevel` = 14, `MaxLevel` = 14, `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1177;

-- https://www.wowhead.com/classic/npc=1184/cliff-lurker
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000 WHERE `entry` = 1184;

-- https://www.wowhead.com/classic/npc=1188/grizzled-black-bear
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 1188 AND `item` = 2318; -- Light Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 35 WHERE `entry` = 1188 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` = 1188 AND `item` = 783; -- Light Hide

-- https://www.wowhead.com/classic/npc=1166/stonesplinter-seer
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1166;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1166, 5379, 50, 1, 1, 1, 0, 'Boot Knife'),
(1166, 2287, 20, 1, 1, 1, 0, 'Haunch of Meat'),
(1166, 4541, 20, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1166, 858, 10, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1166, 1210, 0.5, 2, 1, 1, 0, 'Shadowgem'),
(1166, 818, 0.5, 2, 1, 1, 0, 'Tigerseye'),
(1166, 4292, 0.1, 3, 1, 1, 0, 'Pattern: Green Woolen Bag'),
(1166, 7288, 0.1, 3, 1, 1, 0, 'Pattern: Rugged Leather Pants');

-- https://www.wowhead.com/classic/npc=1163/stonesplinter-skullthumper
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1163;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1163, 5379, 50, 1, 1, 1, 0, 'Boot Knife'),
(1163, 2287, 20, 1, 1, 1, 0, 'Haunch of Meat'),
(1163, 4541, 20, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1163, 858, 10, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1163, 4292, 0.2, 3, 1, 1, 0, 'Schematic: Small Seaforium Charge');

-- https://www.wowhead.com/classic/npc=1193/loch-frenzy

-- https://www.wowhead.com/classic/npc=1175/tunnel-rat-digger
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1175;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1175;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1175, 2287, 45, 1, 1, 1, 0, 'Haunch of Meat'),
(1175, 5369, 45, 1, 1, 1, 0, 'Gnawed Bone'),
(1175, 858, 10, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1175, 1210, 0.5, 2, 1, 1, 0, 'Shadowgem'),
(1175, 818, 0.5, 2, 1, 1, 0, 'Tigerseye');

-- https://www.wowhead.com/classic/npc=1174/tunnel-rat-geomancer
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1174;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1174;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1174, 2287, 45, 1, 1, 1, 0, 'Haunch of Meat'),
(1174, 5369, 45, 1, 1, 1, 0, 'Gnawed Bone'),
(1174, 858, 10, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1174, 1210, 0.5, 2, 1, 1, 0, 'Shadowgem'),
(1174, 818, 0.5, 2, 1, 1, 0, 'Tigerseye');

-- https://www.wowhead.com/classic/npc=1186/elder-black-bear
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 1186 AND `item` = 2318; -- Light Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 35 WHERE `entry` = 1186 AND `item` = 2934; -- Ruined Leather Scraps
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 5 WHERE `entry` = 1186 AND `item` = 783; -- Light Hide

-- https://www.wowhead.com/classic/npc=1162/stonesplinter-scout
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1162;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1162;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1162, 5379, 50, 1, 1, 1, 0, 'Boot Knife'),
(1162, 2287, 20, 1, 1, 1, 0, 'Haunch of Meat'),
(1162, 4541, 20, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1162, 858, 10, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1162, 1210, 0.5, 2, 1, 1, 0, 'Shadowgem'),
(1162, 818, 0.5, 2, 1, 1, 0, 'Tigerseye'),
(1162, 2555, 0.2, 3, 1, 1, 0, 'Recipe: Swiftness Potion');

-- https://www.wowhead.com/classic/npc=1161/stonesplinter-trogg
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1161;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1161;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1161, 5379, 50, 1, 1, 1, 0, 'Boot Knife'),
(1161, 2287, 20, 1, 1, 1, 0, 'Haunch of Meat'),
(1161, 4541, 20, 1, 1, 1, 0, 'Freshly Baked Bread'),
(1161, 858, 10, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1161, 1210, 0.5, 2, 1, 1, 0, 'Shadowgem'),
(1161, 818, 0.5, 2, 1, 1, 0, 'Tigerseye'),
(1161, 6716, 0.1, 3, 1, 1, 0, 'Schematic: EZ-Thro Dynamite'),
(1161, 6348, 0.1, 3, 1, 1, 0, 'Formula: Enchant Weapon - Minor Beastslayer'),
(1161, 4293, 0.1, 3, 1, 1, 0, 'Pattern: Hillman\'s Leather Vest');

-- https://www.wowhead.com/classic/npc=1176/tunnel-rat-forager
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1176;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1176;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1176, 2287, 45, 1, 1, 1, 0, 'Haunch of Meat'),
(1176, 5369, 45, 1, 1, 1, 0, 'Gnawed Bone'),
(1176, 858, 10, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1176, 2408, 0.2, 3, 1, 1, 0, 'Pattern: Fine Leather Gloves');

-- https://www.wowhead.com/classic/npc=1202/tunnel-rat-kobold
UPDATE `creature_template` SET `RangedBaseAttackTime` = 2000, `MeleeBaseAttackTime` = 2000 WHERE `entry` = 1202;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1202;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1202, 2287, 55, 1, 1, 1, 0, 'Haunch of Meat'),
(1202, 5369, 35, 1, 1, 1, 0, 'Gnawed Bone'),
(1202, 858, 10, 1, 1, 1, 0, 'Lesser Healing Potion'),
(1202, 1210, 0.5, 2, 1, 1, 0, 'Shadowgem'),
(1202, 818, 0.5, 2, 1, 1, 0, 'Tigerseye');

-- https://www.wowhead.com/classic/npc=1195/forest-lurker

-- https://www.wowhead.com/classic/npc=1190/mountain-boar
UPDATE `creature_template` SET `Faction` = 189 WHERE `entry` = 1190;
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 40 WHERE `entry` = 1190 AND `item` = 2318; -- Light Leather
UPDATE `skinning_loot_template` SET `ChanceOrQuestChance` = 60 WHERE `entry` = 1190 AND `item` = 2934; -- Ruined Leather Scraps

-- https://www.wowhead.com/classic/npc=1173/tunnel-rat-scout
UPDATE `creature_template` SET `MeleeBaseAttackTime` = 2000, `RangedBaseAttackTime` = 2000 WHERE `entry` = 1173;
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1173;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1173, 5364, 60, 1, 1, 1, 0, 'Dry Salt Lick'),
(1173, 117, 30, 1, 1, 1, 0, 'Tough Jerky'),
(1173, 118, 10, 1, 1, 1, 0, 'Minor Healing Potion'),
(1173, 774, 1, 2, 1, 1, 0, 'Malachite'),
(1173, 3609, 0.2, 3, 1, 1, 0, 'Plans: Copper Chain Vest');

-- https://www.wowhead.com/classic/npc=1172/tunnel-rat-vermin
DELETE FROM `pickpocketing_loot_template` WHERE `entry` = 1172;
INSERT INTO `pickpocketing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(1172, 5364, 50, 1, 1, 1, 0, 'Dry Salt Lick'),
(1172, 117, 40, 1, 1, 1, 0, 'Tough Jerky'),
(1172, 118, 10, 1, 1, 1, 0, 'Minor Healing Potion'),
(1172, 774, 1, 2, 1, 1, 0, 'Malachite'),
(1172, 3609, 0.2, 3, 1, 1, 0, 'Plans: Copper Chain Vest');

-- https://www.wowhead.com/classic/npc=1981/dark-iron-ambusher
UPDATE `creature_template` SET `UnitFlags` = 32768, `SpeedWalk` = 1, `SpeedRun` = 0.857143 WHERE `entry` = 1981;

-- https://www.wowhead.com/classic/npc=1380/saean
UPDATE `creature_template` SET `Faction` = 54, `UnitFlags` = 32768, `SpeedWalk` = 1 WHERE `entry` = 1380;

-- ===================
-- Mo'grosh Stronghold
-- ===================
UPDATE `creature` SET `position_x` = -5013.97, `position_y` = -3879.08, `position_z` = 311.70, `orientation` = 0 WHERE `guid` = 8367;
UPDATE `creature` SET `spawndist` = 5, `MovementType` = 1 WHERE `guid` = 9364;
UPDATE `creature` SET `position_x` = -4941.950195, `position_y` = -4032.989990, `position_z` = 301.019012, `orientation` = 1.466080, `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 9217;
UPDATE `creature` SET `position_x` = -4877.97, `position_y` = -3943.80, `position_z` = 300.24, `orientation` = 0 WHERE `guid` = 160674;
UPDATE `creature` SET `position_x` = -4740.959961, `position_y` = -4125.549805, `position_z` = 307.928009, `orientation` = 2.652900, `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 9221; 
UPDATE `creature` SET `position_x` = -4900.189941, `position_y` = -3900.360107, `position_z` = 301.506012, `orientation` = 4.171340, `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 9371; -- patrol
UPDATE `creature` SET `position_x` = -4784.41, `position_y` = -4182.00, `position_z` = 304.33, `orientation` = 0, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 160688;
UPDATE `creature` SET `position_x` = -4881.20, `position_y` = -4017.70, `position_z` = 308.79, `orientation` = 0 WHERE `guid` = 160671;
UPDATE `creature` SET `position_x` = -4868.240234, `position_y` = -4047.110107, `position_z` = 315.273987, `orientation` = 1.221730, `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 160672;
UPDATE `creature` SET `position_x` = -4825.08, `position_y` = -4078.45, `position_z` = 309.95, `orientation` = 0, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 160673;
UPDATE `creature` SET `position_x` = -4812.75, `position_y` = -4116.14, `position_z` = 308.57, `orientation` = 0, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 160677;
UPDATE `creature` SET `position_x` = -4780.75, `position_y` = -4100.54, `position_z` = 308.86, `orientation` = 0, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 160678;
UPDATE `creature` SET `position_x` = -4818.31, `position_y` = -4135.20, `position_z` = 304.80, `orientation` = 0, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 160679;
UPDATE `creature` SET `position_x` = -4833.62, `position_y` = -4136.91, `position_z` = 305.30, `orientation` = 0, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 160680;
UPDATE `creature` SET `position_x` = -4795.41, `position_y` = -4136.23, `position_z` = 305.19, `orientation` = 0, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 160681;
UPDATE `creature` SET `position_x` = -4878.08, `position_y` = -4047.51, `position_z` = 314.73, `orientation` = 0, `spawndist` = 3, `MovementType` = 1 WHERE `guid` = 160682; -- patrol?
UPDATE `creature` SET `position_x` = -4862.370117, `position_y` = -4040.159912, `position_z` = 314.694000, `orientation` = 3.134440, `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 160683; -- patrol!
UPDATE `creature` SET `position_x` = -4906.930176, `position_y` = -3910.139893, `position_z` = 301.567993, `orientation` = 0.890118, `spawndist` = 0, `MovementType` = 0 WHERE `guid` = 160684; -- patrol!
UPDATE `creature` SET `spawndist` = 3 WHERE `guid` IN (160686,160685);
UPDATE `creature` SET `position_x` = -4866.89, `position_y` = -3995.76, `position_z` = 302.01, `orientation` = 0 WHERE `guid` = 160687;

DELETE FROM `creature` WHERE `guid` BETWEEN 160488 AND 160505; -- classic and wotlk used different guid range, but they are seemingly free now
DELETE FROM `creature` WHERE `guid` BETWEEN 160671 AND 160688;
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `spawndist`, `MovementType`) VALUES
(160671, 0, 0, 1, -4881.20000000000000000000, -4017.70000000000000000000, 308.79000000000000000000, 0.00000000000000000000, 240, 480, 5, 1),
(160672, 0, 0, 1, -4868.24023400000000000000, -4047.11010700000000000000, 315.27398700000000000000, 1.22173000000000000000, 240, 480, 0, 0),
(160673, 0, 0, 1, -4825.08000000000000000000, -4078.45000000000000000000, 309.95000000000000000000, 0.00000000000000000000, 240, 480, 3, 1),
(160674, 0, 0, 1, -4877.97000000000000000000, -3943.80000000000000000000, 300.24000000000000000000, 0.00000000000000000000, 240, 480, 5, 1),
(160675, 0, 0, 1, -4785.00000000000000000000, -4114.00000000000000000000, 307.96301269531250000000, 3.54999995231628400000, 240, 480, 9, 1),
(160676, 0, 0, 1, -4776.00000000000000000000, -4155.00000000000000000000, 303.46499633789060000000, 4.89799976348876950000, 240, 480, 9, 1),
(160677, 0, 0, 1, -4812.75000000000000000000, -4116.14000000000000000000, 308.57000000000000000000, 0.00000000000000000000, 240, 480, 3, 1),
(160678, 0, 0, 1, -4780.75000000000000000000, -4100.54000000000000000000, 308.86000000000000000000, 0.00000000000000000000, 240, 480, 3, 1),
(160679, 0, 0, 1, -4818.31000000000000000000, -4135.20000000000000000000, 304.80000000000000000000, 0.00000000000000000000, 240, 480, 3, 1),
(160680, 0, 0, 1, -4833.62000000000000000000, -4136.91000000000000000000, 305.30000000000000000000, 0.00000000000000000000, 240, 480, 3, 1),
(160681, 0, 0, 1, -4795.41000000000000000000, -4136.23000000000000000000, 305.19000000000000000000, 0.00000000000000000000, 240, 480, 3, 1),
(160682, 0, 0, 1, -4878.08000000000000000000, -4047.51000000000000000000, 314.73000000000000000000, 0.00000000000000000000, 240, 480, 3, 1),
(160683, 0, 0, 1, -4862.37011700000000000000, -4040.15991200000000000000, 314.69400000000000000000, 3.13444000000000000000, 240, 480, 0, 0),
(160684, 0, 0, 1, -4906.93017600000000000000, -3910.13989300000000000000, 301.56799300000000000000, 0.89011800000000000000, 240, 480, 0, 0),
(160685, 0, 0, 1, -4820.00000000000000000000, -4105.00000000000000000000, 305.69900512695310000000, 4.98299980163574200000, 240, 480, 3, 1),
(160686, 0, 0, 1, -4811.00000000000000000000, -4131.00000000000000000000, 304.61801147460940000000, 6.26200008392334000000, 240, 480, 3, 1),
(160687, 0, 0, 1, -4866.89000000000000000000, -3995.76000000000000000000, 302.01000000000000000000, 0.00000000000000000000, 240, 480, 9, 1),
(160688, 0, 0, 1, -4784.41000000000000000000, -4182.00000000000000000000, 304.33000000000000000000, 0.00000000000000000000, 240, 480, 3, 1);

-- ===================
-- 1178:
UPDATE `creature` SET `spawntimesecsmin` = 240, `spawntimesecsmax` = 480 WHERE `id` IN (1178,1179,1180,1181,1183);
UPDATE `creature` SET `id` = 0 WHERE `id` IN (1178,1179,1180,1181,1183);
REPLACE INTO `creature_spawn_entry` (`guid`, `entry`) VALUES
(8257, 1178),(8257, 1179),(8257, 1181),
(8367, 1178),(8367, 1181),
(8798, 1178),(8798, 1179),(8798, 1181),
(9090, 1178),(9090, 1179),(9090, 1181),
(9094, 1178),(9094, 1181),
(9109, 1178),(9109, 1179),(9109, 1181),
(9208, 1178),(9208, 1181),
(9210, 1178),(9210, 1181),
(9214, 1178),(9214, 1179),(9214, 1181),
(9361, 1178),(9361, 1179),(9361, 1181),
(9364, 1178),(9364, 1181),
(9367, 1178),(9367, 1179),(9367, 1181),
(9368, 1178),(9368, 1179),(9368, 1181),
(9370, 1178),(9370, 1179),
(9375, 1178),(9375, 1179),(9375, 1181),
-- 1179:
(8366, 1178),(8366, 1179),(8366, 1181),
(8789, 1178),(8789, 1179),(8789, 1181),
(9082, 1178),(9082, 1179),(9082, 1181),
(9211, 1179),(9211, 1181),
(9216, 1178),(9216, 1179),(9216, 1181),
(9217, 1178),(9217, 1179),(9217, 1181),
(9227, 1178),(9227, 1179),(9227, 1181), -- patrol
(9362, 1178),(9362, 1179),(9362, 1181),
(9363, 1178),(9363, 1179),(9363, 1181),
(9365, 1178),(9365, 1179),(9365, 1181), -- duplicates 160683
(9376, 1178),(9376, 1179),(9376, 1181),
(160671, 1178),(160671, 1179),(160671, 1181),
(160672, 1178),(160672, 1179),
(160673, 1180),(160673, 1183),
(160674, 1178),(160674, 1179),(160674, 1181),
(160675, 1179),(160675, 1180),
(160676, 1179),(160676, 1180),(160676, 1183),
(160677, 1180),(160677, 1183),
(160678, 1180),(160678, 1183),
(160679, 1180),(160679, 1183),
-- 1180:
(9215, 1180),(9215, 1183),
(9219, 1180),(9219, 1183),
(9220, 1180), -- patrol
(9221, 1180),(9221, 1183),
(9222, 1180),
(9359, 1180),
(9360, 1180),
(9373, 1180),(9373, 1183),
(9374, 1180),(9374, 1183),
-- 1181:
(8258, 1178),(8258, 1179),(8258, 1181),
(9209, 1178),(9209, 1179),(9209, 1181),
(9371, 1178),(9371, 1179),(9371, 1181), -- patrol campfire
(9372, 1178),(9372, 1179),(9372, 1181),
(9377, 1179),(9377, 1181),
(160680, 1180),(160680, 1183),
(160681, 1180),(160681, 1183),
(160682, 1181),
(160683, 1178),(160683, 1179),(160683, 1181),
(160684, 1178),(160684, 1179),(160684, 1181),
(160687, 1178),(160687, 1179),(160687, 1181),
(160685, 1180),(160685, 1183),
(160686, 1180),(160686, 1183),
(160688, 1180),(160688, 1183),
-- 1183:
(9212, 1180),(9212, 1183),
(9213, 1180),(9213, 1183),
(9218, 1180),(9218, 1183),
(9366, 1180),(9366, 1183),
(9369, 1180),(9369, 1183);

-- Bonus:

-- Remove wrong flat ResistanceArcane from "Dark Iron" npcs
UPDATE `creature_template` SET `ResistanceArcane` = 0 WHERE `entry` IN ( -- SELECT entry,name,ResistanceArcane FROM creature_template where name LIKE '%Dark Iron%';
1051, -- Dark Iron Dwarf (100)
1052, -- Dark Iron Saboteur (100)
1053, -- Dark Iron Tunneler (100)
1054, -- Dark Iron Demolitionist (100)
1169, -- Dark Iron Insurgent (100)
1222, -- Dark Iron Sapper (100)
1981, -- Dark Iron Ambusher (100)
2575, -- Dark Iron Supplier (100)
2577, -- Dark Iron Shadowcaster (100)
4062, -- Dark Iron Bombardier (100)
5839, -- Dark Iron Geologist (100)
5840, -- Dark Iron Steamsmith (100)
5844, -- Dark Iron Slaver (100)
5846, -- Dark Iron Taskmaster (100)
6123, -- Dark Iron Spy (100)
6212, -- Dark Iron Agent (100)
6228, -- Dark Iron Ambassador (100)
6523, -- Dark Iron Rifleman (100)
8337, -- Dark Iron Steelshifter (100)
8338, -- Dark Iron Marksman (100)
8504, -- Dark Iron Sentry (100)
8566, -- Dark Iron Lookout (100)
8637, -- Dark Iron Watchman (100)
15692); -- Dark Iron Kidnapper (100)

