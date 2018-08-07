-- Classic NPC names and minor fixes
UPDATE `creature_template` SET `name` = 'Ghoul' WHERE `entry` = '846';
UPDATE `creature_template` SET `name` = 'Darkmist Lurker' WHERE `entry` = '4377';
UPDATE `creature_template` SET `name` = 'Sentry Point Captain' WHERE `entry` = '5086';
UPDATE `creature_template` SET `name` = 'Practice Dummy' WHERE `entry` = '5652';
UPDATE `creature_template` SET `name` = 'Felguard' WHERE `entry` = '6115';
UPDATE `creature_template` SET `name` = 'Abomination' WHERE `entry` = '8545';
UPDATE `creature_template` SET `name` = 'Crypt Fiend' WHERE `entry` = '8555';
UPDATE `creature_template` SET `name` = 'Tiny Walking Bomb' WHERE `entry` = '9656';
UPDATE `creature_template` SET `name` = 'Draenei Exile' WHERE `entry` = '11198';
UPDATE `creature_template` SET `name` = 'Horde Peon' WHERE `entry` ='11656';
UPDATE `creature_template` SET `name` = 'Horde Grunt' WHERE `entry` ='11682';
UPDATE `creature_template` SET `name` = 'Horde Shaman' WHERE `entry` ='11683';
UPDATE `creature_template` SET `name` = 'Draka' WHERE `entry` = '12121';
UPDATE `creature_template` SET `name` = 'Elder Bladeleaf' WHERE `entry` = '15595'; -- incorrectly used same name as other entry
UPDATE `creature_template` SET `name` = 'Kwee Q. Peddlefeet' WHERE `entry` = '16075'; -- was missing a dot

-- Classic Vendor subnames
-- General Goods Vendor
UPDATE `creature_template` SET `subname` = 'General Goods Vendor' WHERE `entry` IN ('227', '1285', '3350', '4170', '4241', '4555', '5101', '8362', '12027', '12959');
-- Mining and Smithing Supplies
UPDATE `creature_template` SET `subname`= 'Mining and Smithing Supplies' WHERE `entry` = '790';
-- Arcane Goods Vendor
UPDATE `creature_template` SET `subname` = 'Arcane Goods Vendor' WHERE `entry` IN ('983', '1257');
-- Trade Goods
UPDATE `creature_template` SET `subname` = 'Trade Goods' WHERE `entry` IN ('989', '3556');
-- Reagent Vendor
UPDATE `creature_template` SET `subname` = 'Reagent Vendor' WHERE `entry` IN ('1275', '1351', '1463', '1673', '3500', '3562', '3700', '4220', '4562', '5110', '5151', '8361', '12784', '12795', '14739', '15175');
-- Trade Supplier
UPDATE `creature_template` SET `subname` = 'Trade Supplier' WHERE `entry` IN ('1286', '5100', '5163', '12957');
-- Herbalism Supplier
UPDATE `creature_template` SET `subname` = 'Herbalism Supplier' WHERE `entry` IN ('1303', '3014', '3405', '4216', '4615', '5138', '5503');
-- Poison Supplier
UPDATE `creature_template` SET `subname` = 'Poison Supplier' WHERE `entry` IN ('1326', '3090', '3135');
-- Engineering & General Goods Supplier
UPDATE `creature_template` SET `subname`= 'Engineering & General Goods Supplier' WHERE `entry` = '1448';
-- Ale and Wine
UPDATE `creature_template` SET `subname`= 'Ale and Wine' WHERE `entry` = '1697';
-- Tackle and Bait
UPDATE `creature_template` SET `subname`= 'Tackle and Bait' WHERE `entry` = '2383';
-- Fisherman
UPDATE `creature_template` SET `subname` = 'Fisherman' WHERE `entry` IN ('2626', '3178', '3572');
-- Scrolls & Potions
UPDATE `creature_template` SET `subname`= 'Scrolls & Potions' WHERE `entry` = '2805';
-- Food and Drink
UPDATE `creature_template` SET `subname` = 'Food and Drink' WHERE `entry` IN ('2832', '4255', '10367', '12785', '12794');
-- Cloth Armor and Accessories
UPDATE `creature_template` SET `subname`= 'Cloth Armor and Accessories' WHERE `entry` = '2849';
-- Mining Supplier
UPDATE `creature_template` SET `subname` = 'Mining Supplier' WHERE `entry` IN ('3002', '3358', '4256', '4599', '5514', '6298');
-- Sword and Dagger Merchant
UPDATE `creature_template` SET `subname`= 'Sword and Dagger Merchant' WHERE `entry` = '3021';
-- Cooking Supplier
UPDATE `creature_template` SET `subname` = 'Cooking Supplier' WHERE `entry` IN ('3027', '3400', '4223', '4553', '5160', '5483', '14738');
-- Fishing Supplier
UPDATE `creature_template` SET `subname` = 'Fishing Supplier' WHERE `entry` IN ('3029', '4222', '4574', '5162', '5494');
-- Armorer and Shieldcrafter
UPDATE `creature_template` SET `subname` = 'Armorer and Shieldcrafter' WHERE `entry` IN ('3075', '3080');
-- Engineering and Mining Supplies
UPDATE `creature_template` SET `subname`= 'Engineering and Mining Supplies' WHERE `entry` = '3133';
-- Zeppelin Master
UPDATE `creature_template` SET `subname` = 'Zeppelin Master' WHERE `entry` IN ('3149', '3150', '9564', '9566', '12136', '12137');
-- General Goods Merchant
UPDATE `creature_template` SET `subname`= 'General Goods Merchant' WHERE `entry` = '3313';
-- Guns and Ammo Merchant
UPDATE `creature_template` SET `subname`= 'Guns and Ammo Merchant' WHERE `entry` = '3322';
-- Reagents Vendor
UPDATE `creature_template` SET `subname` = 'Reagents Vendor' WHERE `entry` IN ('3323', '3335', '3351');
-- Poison Vendor
UPDATE `creature_template` SET `subname` = 'Poison Vendor' WHERE `entry` IN ('3334', '3561', '4585', '6779');
-- Blacksmithing Supplier
UPDATE `creature_template` SET `subname` = 'Blacksmithing Supplier' WHERE `entry` IN ('3356', '3477', '4597');
-- General Trade Goods Merchant
UPDATE `creature_template` SET `subname` = 'General Trade Goods Merchant' WHERE `entry` IN ('3367', '5817');
-- Reagents and Herbs
UPDATE `creature_template` SET `subname`= 'Reagents and Herbs' WHERE `entry` = '3490';
-- Engineering Goods
UPDATE `creature_template` SET `subname`= 'Engineering Goods' WHERE `entry` = '3495';
-- Trade Goods Supplies
UPDATE `creature_template` SET `subname` = 'Trade Goods Supplies' WHERE `entry` IN ('3779', '11189');
-- General Trade Supplier
UPDATE `creature_template` SET `subname` = 'General Trade Supplier' WHERE `entry` IN ('4229', '4561', '6301');
-- Reagent Supplier
UPDATE `creature_template` SET `subname`= 'Reagent Supplier' WHERE `entry` = '4575';
-- Engineering Supplier
UPDATE `creature_template` SET `subname` = 'Engineering Supplier' WHERE `entry` IN ('4587', '5519', '8678');
-- General Trade Goods Vendor
UPDATE `creature_template` SET `subname` = 'General Trade Goods Vendor' WHERE `entry` IN ('4775', '8934', '15179');
-- Guild Tabard Vendor
UPDATE `creature_template` SET `subname`= 'Guild Tabard Vendor' WHERE `entry` = '5049';
-- Reagents & Poisons
UPDATE `creature_template` SET `subname` = 'Reagents & Poisons' WHERE `entry` IN ('5139', '10364');
-- Tabard Vendor
UPDATE `creature_template` SET `subname`= 'Tabard Vendor' WHERE `entry` = '5193';
-- Food and Drinks
UPDATE `creature_template` SET `subname`= 'Food and Drinks' WHERE `entry` = '5620';
-- Blue Moon Odds and Ends
UPDATE `creature_template` SET `subname`= 'Blue Moon Odds and Ends' WHERE `entry` = '7683';
-- Superior Armor Crafter
UPDATE `creature_template` SET `subname`= 'Superior Armor Crafter' WHERE `entry` = '8129';
-- Trade Goods Supplier
UPDATE `creature_template` SET `subname`= 'Trade Goods Supplier' WHERE `entry` = '8363';
-- Fisherman Supplies
UPDATE `creature_template` SET `subname`= 'Fisherman Supplies' WHERE `entry` = '8508';
-- Officer Accessories Quartermaster
UPDATE `creature_template` SET `subname` = 'Officer Accessories Quartermaster' WHERE `entry` IN ('12781', '12793');
-- Mount Vendor
UPDATE `creature_template` SET `subname`= 'Mount Vendor' WHERE `entry` = '12783';
-- Mount Quartermaster
UPDATE `creature_template` SET `subname`= 'Mount Quartermaster' WHERE `entry` = '12796';
-- Demon Master
UPDATE `creature_template` SET `subname`= 'Demon Master' WHERE `entry` = '12807';
-- Potions, Scrolls and Reagents
UPDATE `creature_template` SET `subname`= 'Potions, Scrolls and Reagents' WHERE `entry` = '13476';
-- Zandalar Supplies and Repair
UPDATE `creature_template` SET `subname`= 'Zandalar Supplies and Repair' WHERE `entry` = '14921';
-- Bait and Tackle Supplier
UPDATE `creature_template` SET `subname`= 'Bait and Tackle Supplier' WHERE `entry` = '1678';

-- Classic Riding trainer subnames
UPDATE `creature_template` SET `subname`= 'Kodo Riding Instructor' WHERE `entry` = '3690';
UPDATE `creature_template` SET `subname`= 'Horse Riding Instructor' WHERE `entry` = '4732';
UPDATE `creature_template` SET `subname`= 'Wolf Riding Instructor' WHERE `entry` = '4752';
UPDATE `creature_template` SET `subname`= 'Nightsaber Riding Instructor' WHERE `entry` = '4753';
UPDATE `creature_template` SET `subname`= 'Ram Riding Instructor' WHERE `entry` = '4772';
UPDATE `creature_template` SET `subname`= 'Undead Horse Riding Instructor' WHERE `entry` = '4773';
UPDATE `creature_template` SET `subname`= 'Raptor Riding Trainer' WHERE `entry` = '7953';
UPDATE `creature_template` SET `subname`= 'Wintersaber Trainers' WHERE `entry` = '10618';

-- Classic Skinning trainer subnames
UPDATE `creature_template` SET `subname` = 'Skinner' WHERE `entry` IN ('6287', '6288', '6289', '6290', '6306', '6387');

-- Classic Mining trainers subnames
UPDATE `creature_template` SET `subname` = 'Miner' WHERE `entry` IN ('3175', '3555', '8128');

-- Classic Blacksmith trainers subnames
UPDATE `creature_template` SET `subname` = 'Journeyman Blacksmith' WHERE `entry` IN ('514', '957', '1241', '3174', '3557', '4605', '6299', '10266', '10277', '10278');
UPDATE `creature_template` SET `subname` = 'Expert Blacksmith' WHERE `entry` IN ('1383', '2998', '3136', '3478', '4596', '5511', '10276');
UPDATE `creature_template` SET `subname` = 'Artisan Blacksmith' WHERE `entry` IN ('3355', '4258');
UPDATE `creature_template` SET `subname` = 'Master Blacksmith' WHERE `entry` = '2836';
UPDATE `creature_template` SET `subname` = 'Armor Crafter' WHERE `entry` IN ('5164', '5508', '7230');
UPDATE `creature_template` SET `subname` = 'Special Weapon Crafter' WHERE `entry` = '11146';
UPDATE `creature_template` SET `subname` = 'Weapon Crafter' WHERE `entry` IN ('7231', '7232');

-- Classic Leatherworking trainers subnames
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` IN ('223', '1466', '1632', '3008', '3069', '3605', '3549', '5784', '5811', '11083', '11096');
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker' WHERE `entry` IN ('1385', '3365', '3703', '3967', '4588', '5127', '5564', '8153', '8153', '11081', '11084');
UPDATE `creature_template` SET `subname` = 'Artisan Leatherworker' WHERE `entry` IN ('3007', '4212');
UPDATE `creature_template` SET `subname` = 'Master Leatherworking Trainer' WHERE `entry` = '11097';
UPDATE `creature_template` SET `subname` = 'Master Leatherworker' WHERE `entry` = '11098';
UPDATE `creature_template` SET `subname` = 'Master Dragonscale Leatherworker' WHERE `entry` IN ('7866', '7867');
UPDATE `creature_template` SET `subname` = 'Master Elemental Leatherworker' WHERE `entry` IN ('7868', '7869');
UPDATE `creature_template` SET `subname` = 'Tribal Leatherworking Trainer' WHERE `entry` = '7870';
UPDATE `creature_template` SET `subname` = 'Master Tribal Leatherworker' WHERE `entry` = '7871';

-- Classic Alchemist trainers subnames
UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist' WHERE `entry` IN ('1215', '1246', '1470', '2132', '3184', '3603', '5500', '11041', '11044', '11046', '11047');
UPDATE `creature_template` SET `subname` = 'Expert Alchemist' WHERE `entry` IN ('2391', '2837', '3009', '3347', '3964', '4900', '4609', '5177', '5499', '11042');
UPDATE `creature_template` SET `subname` = 'Artisan Alchemist' WHERE `entry` IN ('4160', '4611');
UPDATE `creature_template` SET `subname` = 'Master Alchemist' WHERE `entry` IN ('1386', '7948');

-- Classic Enchanting trainers subnames
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter' WHERE `entry` IN ('3606', '5695', '11065', '11066', '11067', '11068', '11070', '11071');
UPDATE `creature_template` SET `subname` = 'Expert Enchanter' WHERE `entry` IN ('1317', '3011', '3345', '4213', '4616', '5157', '7949');
UPDATE `creature_template` SET `subname` = 'Artisan Enchanter' WHERE `entry` IN ('11072', '11074');
UPDATE `creature_template` SET `subname` = 'Master Enchanter' WHERE `entry` = '11073';

-- Classic Herbalism trainers subnames
UPDATE `creature_template` SET `subname` = 'Apprentice Herbalist' WHERE `entry` = '2114';
UPDATE `creature_template` SET `subname` = 'Herbalist' WHERE `entry` IN ('1473', '2390', '3185', '3604', '3965', '4898', '12025');
UPDATE `creature_template` SET `subname` = 'Superior Herbalist' WHERE `entry` IN ('908', '2856');

-- Classic Fishing trainers subnames
UPDATE `creature_template` SET `subname` = 'Fisherman' WHERE `entry` IN ('1651', '1683', '1700', '2367', '3607', '5690', '5938', '5941', '7946', '12032', '12961');
UPDATE `creature_template` SET `subname` = 'Superior Fisherman' WHERE `entry` = '2834';

-- Classic Engineering subnames
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer' WHERE `entry` IN ('1702', '2857', '3290', '3494', '4586', '10993', '11025', '11026', '11028', '11037');
UPDATE `creature_template` SET `subname` = 'Expert Engineer' WHERE `entry` IN ('1676', '3412', '5518', '11029', '11031');
UPDATE `creature_template` SET `subname` = 'Artisan Engineer' WHERE `entry` IN ('5174', '11017');
UPDATE `creature_template` SET `subname` = 'Master Engineer' WHERE `entry` = '8736';
UPDATE `creature_template` SET `subname` = 'Master Gnome Engineer' WHERE `entry` IN ('7406', '7944');
UPDATE `creature_template` SET `subname` = 'Master Goblin Engineer' WHERE `entry` IN ('8126', '8738');

-- Classic Tailoring subnames
UPDATE `creature_template` SET `subname` = 'Artisan Tailor' WHERE `entry` IN ('1346', '4576');
UPDATE `creature_template` SET `subname` = 'Master Tailor' WHERE `entry` IN ('2399', '11052');
UPDATE `creature_template` SET `subname` = 'Expert Tailor' WHERE `entry` IN ('2627', '3004', '3363', '3704', '4159', '5153', '5567', '11049');

-- Correct subnames
UPDATE `creature_template` SET `subname` = 'Armorsmith' WHERE `entry` = '11177';
UPDATE `creature_template` SET `subname` = 'Weaponsmith' WHERE `entry` = '11178';
