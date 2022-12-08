UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2400' WHERE `entry`='1663'; -- Dextren Ward (for classic, already correct in tbc)
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='1696'; -- Targorr the Dread (3H)(1P)(2D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='1707'; -- Defias Captive (3H)(1P)(3D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2600' WHERE `entry`='1715'; -- Defias Insurgent (for classic, already correct in tbc)
-- https://vanilla-wow-archive.fandom.com/wiki/Shadowfang_Whitescalp
UPDATE `creature_template` SET `SchoolImmuneMask`='16' WHERE `entry`='3851'; -- Shadowfang Whitescalp (for classic, already correct in tbc)
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2000', `MinLootGold`='95', `MaxLootGold`='129', `SkinningLootId`='3854' WHERE `entry`='3854'; -- Shadowfang Wolfguard (3H)(1P)(2.3D)(1A)
REPLACE INTO `skinning_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`, `comments`) VALUES
(3854, 783, 8, 1, 1, 1, 0, 'Light Hide'),
(3854, 2318, 65, 1, 1, 2, 0, 'Light Leather'),
(3854, 2319, 25, 1, 1, 2, 0, 'Medium Leather'),
(3854, 4232, 2, 1, 1, 1, 0, 'Medium Hide');
-- https://vanilla-wow-archive.fandom.com/wiki/Shadowfang_Keep
UPDATE `creature_template` SET `SchoolImmuneMask`='32' WHERE `entry`='3855'; -- Shadowfang Darksoul (for classic, already correct in tbc)
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='3857'; -- Shadowfang Glutton (3H)(1P)(1.7D)(1A)
UPDATE `creature_template` SET `MaxLevel`='19', `DamageMultiplier`='1.7' WHERE `entry`='3862'; -- Slavering Worg (Boss summoned ones are bosslevel due to being guardians)
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='3864'; -- Fel Steed (3H)(1P)(4D)(1A)
UPDATE `creature_template` SET `MinLootGold`='207', `MaxLootGold`='276' WHERE `entry`='3872'; -- Deathsworn Captain
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='3873'; -- Tormented Officer (3H)(1P)(3D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='3877'; -- Wailing Guardsman (3H)(1P)(3D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='2.45' WHERE `entry`='3886'; -- Razorclaw the Butcher (4H)(1P)(2.5D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.7', `DamageVariance` = '0.07' WHERE `entry`='3914'; -- Rethilgore (4H)(1P)(1.6D)(1A) 54-62
UPDATE `creature_template` SET `DamageMultiplier`='2.4' WHERE `entry`='3974'; -- Houndmaster Loksey (8H)(1P)(2.5D)(1A) 121-140 lvl 34 2.4 correct max, 2.75 correct min
UPDATE `creature_template` SET `DamageMultiplier`='2.4' WHERE `entry`='3976'; -- Scarlet Commander Mograine (4.5H)(2P)(2.45D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='2' WHERE `entry`='3977'; -- High Inquisitor Whitemane (4H)(5P)(2.1D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1' WHERE `entry`='3981'; -- Vorrel Sengutz (1H)(1P)(2D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='2' WHERE `entry`='3983'; -- Interrogator Vishas (6H)(1P)(1.9D)(1A)
-- UPDATE `creature_template` SET `modelid1`='2352' WHERE `entry`='4274'; -- Fenrus the Devourer - 7359_V2_2_3_7359\2007-10-18 11-25-33_MUUGI.sqlite [13] (145) UNIT_FIELD_DISPLAYID: 20180
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='4286'; -- Scarlet Soldier (3H)(1P)(1.7D)(1.48361A)
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='4288'; -- Scarlet Beastmaster (3H)(1P)(1.7D)(0.988347A)
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='4290'; -- Scarlet Guardsman (3H)(1P)(2.4D)(0.964189A)
UPDATE `creature_template` SET `PowerMultiplier`='2', `MeleeBaseAttackTime`='1700', `DamageMultiplier`='2.0' WHERE `entry`='4295'; -- Scarlet Myrmidon (for classic, already correct in tbc)
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='4298'; -- Scarlet Defender (3H)(1P)(1.7D)(1.48446A)
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='2.75' WHERE `entry`='4301'; -- Scarlet Centurion (3H)(1P)(2.8D)(0.966194A) 145-198 2.75 correct overall for min/max level dependend
UPDATE `creature_template` SET `MaxLevel`='33', `PowerMultiplier`='2', `DamageMultiplier`='1.7' WHERE `entry`='4304'; -- Scarlet Tracking Hound (33-34 and 38-39, 1.65D) 59-78
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='4306'; -- Scarlet Torturer (3H)(1P)(2D)(0.322528A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='4308'; -- Unfettered Spirit (1H)(1P)(1D)(1.48379A)
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='4425'; -- Blind Hunter (5H)(1P)(2.5D)(1A) 65-87
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='4519'; -- Death's Head Seer (3H)(1P)(2D)(0.984216A) 56-77
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='4531'; -- Razorfen Beast Trainer (3H)(1P)(1.79D)(1A)
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='4540'; -- Scarlet Monk (3H)(1P)(2.4D)(0.274627A)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='4627'; -- Arugal's Voidwalker (for classic, already correct in tbc)
UPDATE `creature_template` SET `ArmorMultiplier`='1.345' WHERE `entry`='4805'; -- Blackfathom Sea Witch (for classic, already correct in tbc) 1034-1076 770-800 basearmor
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='4810'; -- Twilight Reaver (3H)(1P)(1.7D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='4814'; -- Twilight Elementalist (3H)(1.5P)(1.65D)(1A) 48-55 1.7 correct max, 2.05 correct min
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='4815'; -- Murkshallow Snapclaw (3H)(1P)(1.75D)(1A) 54-72
UPDATE `creature_template` SET `ArmorMultiplier`='1.48276' WHERE `entry`='4823'; -- Barbed Crustacean (for classic, already correct in tbc) 1419 957 basearmor
UPDATE `creature_template` SET `ArmorMultiplier`='966.6' WHERE `entry`='4887'; -- Ghamoo-ra (6H)(1P)(1.7D)(2.61546A) -- 957 base armor, 925032 classic uses 1000 multi
UPDATE `creature_template` SET `ArmorMultiplier`='1.5', `MinLootGold`='0', `MaxLootGold`='0', `LootId`='0' WHERE `entry`='4977'; -- Murkshallow Softshell (0.3H)(1P)(0.75D)(1.48276A) 1419 armor
DELETE FROM `creature_loot_template` WHERE `entry` = '4977'; -- (for classic, already correct in tbc)
UPDATE `creature_template` SET `UnitFlags`='64', `MinLootGold`='0', `MaxLootGold`='0', `ResistanceFire`='0', `ResistanceFrost`='0', `ResistanceNature`='0', `ResistanceShadow`='0', `ResistanceArcane`='0', `MovementType`='0' WHERE `entry`='4978'; -- (for classic, already correct in tbc)
UPDATE `creature_template` SET `MeleeBaseAttackTime`='2000' WHERE `entry`='5043'; -- Defias Rioter (1H)(1P)(1D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1', `MeleeBaseAttackTime`='1500', `LootId`='0' WHERE `entry`='5058'; -- Wolfguard Worg (1.02H)(1P)(1D)(1A) 22-29
DELETE FROM `creature_loot_template` WHERE `entry` = '5058'; -- (for classic, already correct in tbc)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='5648'; -- Sandfury Shadowcaster (3H)(2P)(2.8D)(1.36043A) 1234 basearmor, max is typo in bestiary
UPDATE `creature_template` SET `MeleeBaseAttackTime`='1200', `DamageMultiplier`='2.4' WHERE `entry`='6243'; -- Gelihast (6H)(1P)(2.4D)(1A) 50-66 1200speed
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='6426'; -- Anguished Dead (3H)(1P)(1.7D)(1A)
UPDATE `creature_template` SET `PowerMultiplier`='2', `ArmorMultiplier`='1.96759' WHERE `entry`='6427'; -- Haunting Phantasm (3H)(1P)(1.7D)(1.96759A) 2428 armor at 31
UPDATE `creature_template` SET `PowerMultiplier`='2' WHERE `entry`='6488'; -- Fallen Champion (3H)(1P)(4D)(1A)
UPDATE `creature_template` SET `PowerMultiplier`='2', `DamageMultiplier`='1.7', `MeleeBaseAttackTime`='2000', `ArmorMultiplier`='1.96772' WHERE `entry`='6489'; -- Ironspine (3H)(1P)(2.5D)(1.96772A) 76-101 2499armor
UPDATE `creature_template` SET `DamageMultiplier`='1.25', `ArmorMultiplier`='1' WHERE `entry`='7012'; -- Earthen Sculptor (1.2H)(1P)(1.13D)(0.970226A) 42-61 915 armor
UPDATE `creature_template` SET `DamageMultiplier`='1.25' WHERE `entry`='7077'; -- Earthen Hallshaper (0.25H)(1P)(1.24D)(1A) 46-65
UPDATE `creature_template` SET `DamageMultiplier`='3', `ArmorMultiplier`='1' WHERE `entry`='7321'; -- Stonevault Flameweaver (3H)(1P)(1.95D)(0.970226A) 113-155
UPDATE `creature_template` SET `DamageMultiplier`='1.8' WHERE `entry`='7327'; -- Withered Warrior (3H)(1P)(4D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.3' WHERE `entry`='7328'; -- Withered Reaver (3H)(1P)(3D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.8' WHERE `entry`='7329'; -- Withered Quilguard (3H)(1P)(4D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1.8' WHERE `entry`='7332'; -- Withered Spearhide (3H)(1P)(4D)(1A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='7341'; -- Skeletal Frostweaver (3H)(1P)(1.8D)(0.967621A)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7349'; -- Tomb Fiend (for classic, already correct in tbc)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7351'; -- Tomb Reaver (for classic, already correct in tbc)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='7352'; -- Frozen Soul (3H)(1P)(1.8D)(0.965964A)
UPDATE `creature_template` SET `MinLootGold`='435', `MaxLootGold`='573' WHERE `entry`='7354'; -- Ragglesnout (for classic, already correct in tbc)
UPDATE `creature_template` SET `MinLootGold`='0', `MaxLootGold`='0' WHERE `entry`='7355'; -- Tuten'kash (for classic, already correct in tbc)
UPDATE `creature_template` SET `MinLootGold`='575', `MaxLootGold`='756' WHERE `entry`='7356'; -- Plaguemaw the Rotting (for classic, already correct in tbc)
UPDATE `creature_template` SET `DamageMultiplier`='2.4' WHERE `entry`='7357'; -- Mordresh Fire Eye (8H)(3P)(2.3D)(1A) 88-117 2.3 for 117 max, 2.4 for 88min
UPDATE `creature_template` SET `ArmorMultiplier`= (1769 / 1325) WHERE `entry`='7358'; -- Amnennar the Coldbringer (8H)(8P)(4D)(1.33509A)
UPDATE `creature_template` SET `MinLevel`='61', `MaxLevel`='61' WHERE `entry`='8717'; -- Felguard Elite (for classic, already correct in tbc)
UPDATE `creature_template` SET `PowerMultiplier`='3', `DamageMultiplier`='5.7', `MinLootGold`='0', `MaxLootGold`='0', `LootId`='0' WHERE `entry`='10000'; -- Arugal (dummy npc for 4275, also different powermulti)
DELETE FROM `creature_loot_template` WHERE `entry` = '10000'; -- (for classic, already correct in tbc)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='11318'; -- Ragefire Trogg (3H)(1P)(1.7D)(0.949778A)
UPDATE `creature_template` SET `DamageMultiplier`='1.7' WHERE `entry`='11319'; -- Ragefire Shaman (3H)(1P)(3D)(1A)
UPDATE `creature_template` SET `ArmorMultiplier`='1.25' WHERE `entry`='11321'; -- Molten Elemental (3H)(1P)(1.7D)(1.24077A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='11322'; -- Searing Blade Cultist (3H)(1.5P)(1.7D)(0.948763A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='11323'; -- Searing Blade Enforcer (3H)(1P)(1.7D)(0.951256A)
UPDATE `creature_template` SET `ArmorMultiplier`='1' WHERE `entry`='11324'; -- Searing Blade Warlock (3H)(1.5P)(2D)(0.947658A)
UPDATE `creature_template` SET `DamageMultiplier`='2.4' WHERE `entry`='11520'; -- Taragaman the Hungerer (5.25H)(1P)(2D)(1A) 56-74 2000speed
UPDATE `creature_template` SET `DamageMultiplier`='1.9', `MinLootGold`='0', `MaxLootGold`='0', `ResistanceFire`='0', `ResistanceFrost`='75', `ResistanceNature`='0', `ResistanceShadow`='0', `ResistanceArcane`='0' WHERE `entry`='12876'; -- Baron Aquanis (3H)(1P)(1.9D)(1A) 69-80
UPDATE `creature_template` SET `DamageMultiplier`='7.5' WHERE `entry`='15462'; -- Spitting Scarab (4H)(1P)(12D)(1A)
UPDATE `creature_template` SET `DamageMultiplier`='1' WHERE `entry`='15578'; -- Elder Wildmane (1.2H)(1P)(2D)(1A)

