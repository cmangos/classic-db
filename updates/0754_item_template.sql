-- Fixed proc rate of two weapons that were procing on every hit
-- This closes #592 
-- Source: TBC-DB/UDB
-- Ebon Hilt of Marduk
UPDATE `item_template` SET `spellppmRate_1` = 1.0 WHERE `entry` = 14576;
-- Skullforge Reaver
UPDATE `item_template` SET `spellppmRate_1` = 1.8 WHERE `entry` = 13361;
