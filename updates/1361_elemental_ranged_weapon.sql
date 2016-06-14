-- Correct data for some ranged weapons
-- http://wow.gamepedia.com/Patch_1.12.0
-- Ranged Elemental Damage: Our ranged combat system does not allow a ranged weapon to do a mix of Elemental (Fire, Frost, Arcane, etc.) and Physical damage. Many ranged weapons existed
-- which were listed as doing Elemental damage and did not function properly (the damage was dealt, but was treated as Physical). All of those weapons have been changed to deliver the -- Elemental damage as a chance on hit effect. [Hurricane] was previously changed this way in 1.11. The following ranged weapons are also fixed in 1.12:
UPDATE `item_template` SET `dmg_min2` = 0, `dmg_max2` = 0, `dmg_type2` = 0, `spellid_1` = 29625, `spelltrigger_1` = 1 WHERE `entry` = 2099;
UPDATE `item_template` SET `dmg_min2` = 0, `dmg_max2` = 0, `dmg_type2` = 0, `spellid_1` = 29624, `spelltrigger_1` = 1 WHERE `entry` = 2825;
UPDATE `item_template` SET `dmg_min2` = 0, `dmg_max2` = 0, `dmg_type2` = 0, `spellid_1` = 29636, `spelltrigger_1` = 1 WHERE `entry` = 6469;
UPDATE `item_template` SET `dmg_min2` = 0, `dmg_max2` = 0, `dmg_type2` = 0, `spellid_1` = 29633, `spelltrigger_1` = 1 WHERE `entry` = 9412;
UPDATE `item_template` SET `dmg_min2` = 0, `dmg_max2` = 0, `dmg_type2` = 0, `spellid_1` = 29634, `spelltrigger_1` = 1 WHERE `entry` = 10567;
UPDATE `item_template` SET `dmg_min2` = 0, `dmg_max2` = 0, `dmg_type2` = 0, `spellid_1` = 29626, `spelltrigger_1` = 1 WHERE `entry` = 13040;
UPDATE `item_template` SET `dmg_min2` = 0, `dmg_max2` = 0, `dmg_type2` = 0, `spellid_1` = 29635, `spelltrigger_1` = 1 WHERE `entry` = 13146;
UPDATE `item_template` SET `dmg_min2` = 0, `dmg_max2` = 0, `dmg_type2` = 0, `spellid_1` = 29632, `spelltrigger_1` = 1 WHERE `entry` = 16004;
UPDATE `item_template` SET `dmg_min2` = 0, `dmg_max2` = 0, `dmg_type2` = 0, `spellid_1` = 29637, `spelltrigger_1` = 1 WHERE `entry` = 17753;
