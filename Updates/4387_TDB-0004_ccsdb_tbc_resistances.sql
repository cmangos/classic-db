-- Add/Correct static npc resistances

-- arcane_res
UPDATE `creature_template` SET `ResistanceArcane` = 75 WHERE `entry` = 819; -- Servant of Ilgalar
UPDATE `creature_template` SET `ResistanceArcane` = 66 WHERE `entry` = 2691; -- Highvale Outrunner
UPDATE `creature_template` SET `ResistanceArcane` = 67 WHERE `entry` = 2692; -- Highvale Scout
UPDATE `creature_template` SET `ResistanceArcane` = 68 WHERE `entry` = 2693; -- Highvale Marksman
UPDATE `creature_template` SET `ResistanceArcane` = 70 WHERE `entry` = 2694; -- Highvale Ranger
UPDATE `creature_template` SET `ResistanceArcane` = 45 WHERE `entry` = 4515; -- Death's Head Acolyte
UPDATE `creature_template` SET `ResistanceArcane` = 45 WHERE `entry` = 4516; -- Death's Head Adept
UPDATE `creature_template` SET `ResistanceArcane` = 88 WHERE `entry` = 8563; -- Woodsman
UPDATE `creature_template` SET `ResistanceArcane` = 90 WHERE `entry` = 8564; -- Ranger
UPDATE `creature_template` SET `ResistanceArcane` = 87 WHERE `entry` = 8565; -- Pathstrider
UPDATE `creature_template` SET `ResistanceArcane` = 40 WHERE `entry` = 10157; -- Moonkin Oracle
UPDATE `creature_template` SET `ResistanceArcane` = 100 WHERE `entry` = 18437; -- Vicious Teromoth

-- frost_res
UPDATE `creature_template` SET `ResistanceFrost` = 75 WHERE `entry` = 6010; -- Felhound
UPDATE `creature_template` SET `ResistanceFrost` = 25 WHERE `entry` = 13737; -- Marandis' Sister

-- shadow_res
UPDATE `creature_template` SET `ResistanceShadow` = 50 WHERE `entry` = 434; -- Rabid Shadowhide Gnoll
UPDATE `creature_template` SET `ResistanceShadow` = 50 WHERE `entry` = 568; -- Shadowhide Warrior
UPDATE `creature_template` SET `ResistanceShadow` = 100 WHERE `entry` = 2318; -- Argus Shadow Mage
UPDATE `creature_template` SET `ResistanceShadow` = 250 WHERE `entry` = 2647; -- Vilebranch Soul Eater
UPDATE `creature_template` SET `ResistanceShadow` = 50 WHERE `entry` = 4054; -- Laughing Sister
UPDATE `creature_template` SET `ResistanceShadow` = 90 WHERE `entry` = 4679; -- Nether Maiden
UPDATE `creature_template` SET `ResistanceShadow` = 105 WHERE `entry` = 5617; -- Wastewander Shadow Mage
UPDATE `creature_template` SET `ResistanceShadow` = 75 WHERE `entry` = 6010; -- Felhound
UPDATE `creature_template` SET `ResistanceShadow` = 45 WHERE `entry` = 6073; -- Searing Infernal
UPDATE `creature_template` SET `ResistanceShadow` = 88 WHERE `entry` = 8546; -- Dark Adept
UPDATE `creature_template` SET `ResistanceShadow` = 81 WHERE `entry` = 8547; -- Death Cultist
UPDATE `creature_template` SET `ResistanceShadow` = 85 WHERE `entry` = 8548; -- Vile Tutor
UPDATE `creature_template` SET `ResistanceShadow` = 90 WHERE `entry` = 8550; -- Shadowmage
UPDATE `creature_template` SET `ResistanceShadow` = 84 WHERE `entry` = 8551; -- Dark Summoner
UPDATE `creature_template` SET `ResistanceShadow` = 91 WHERE `entry` = 8553; -- Necromancer
UPDATE `creature_template` SET `ResistanceShadow` = 50 WHERE `entry` = 9862; -- Jaedenar Legionnaire
UPDATE `creature_template` SET `ResistanceShadow` = 177 WHERE `entry` = 10398; -- Thuzadin Shadowcaster
UPDATE `creature_template` SET `ResistanceShadow` = 45 WHERE `entry` = 11697; -- Mannoroc Lasher
UPDATE `creature_template` SET `ResistanceShadow` = 25 WHERE `entry` = 13737; -- Marandis' Sister

-- nature_res
UPDATE `creature_template` SET `ResistanceNature` = 75 WHERE `entry` = 3797; -- Cenarion Protector
UPDATE `creature_template` SET `ResistanceNature` = 80 WHERE `entry` = 3833; -- Cenarion Vindicator
UPDATE `creature_template` SET `ResistanceNature` = 52 WHERE `entry` = 4050; -- Cenarion Caretaker
UPDATE `creature_template` SET `ResistanceNature` = 48 WHERE `entry` = 4051; -- Cenarion Botanist
UPDATE `creature_template` SET `ResistanceNature` = 54 WHERE `entry` = 4052; -- Cenarion Druid
UPDATE `creature_template` SET `ResistanceNature` = 50 WHERE `entry` = 4054; -- Laughing Sister
UPDATE `creature_template` SET `ResistanceNature` = 80 WHERE `entry` = 4056; -- Mirkfallon Keeper
UPDATE `creature_template` SET `ResistanceNature` = 75 WHERE `entry` = 6010; -- Felhound
UPDATE `creature_template` SET `ResistanceNature` = 25 WHERE `entry` = 13737; -- Marandis' Sister

-- fire_res
UPDATE `creature_template` SET `ResistanceFire` = 90 WHERE `entry` = 4676; -- Lesser Infernal
UPDATE `creature_template` SET `ResistanceFire` = 75 WHERE `entry` = 6010; -- Felhound
UPDATE `creature_template` SET `ResistanceFire` = 45 WHERE `entry` = 6073; -- Searing Infernal
UPDATE `creature_template` SET `ResistanceFire` = 54, `ResistanceNature` = 0, `ResistanceFrost` = 0, `ResistanceShadow` = 0, `ResistanceArcane` = 0 WHERE `entry` = 6498; -- Devilsaur
UPDATE `creature_template` SET `ResistanceFire` = 0, `ResistanceNature` = 0, `ResistanceFrost` = 0, `ResistanceShadow` = 0, `ResistanceArcane` = 0 WHERE `entry` = 6499; -- Ironhide Devilsaur
UPDATE `creature_template` SET `ResistanceFire` = 0, `ResistanceNature` = 0, `ResistanceFrost` = 0, `ResistanceShadow` = 0, `ResistanceArcane` = 0 WHERE `entry` = 6500; -- Tyrant Devilsaur
UPDATE `creature_template` SET `ResistanceFire` = 50 WHERE `entry` = 9862; -- Jaedenar Legionnaire
UPDATE `creature_template` SET `ResistanceFire` = 25 WHERE `entry` = 13737; -- Marandis' Sister

