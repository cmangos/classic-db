-- Fixed proc rate of item 10803 (Blade of the Wretched)
-- Thanks Scotty0100 for pointing. This closes #554
-- Source: TBC-DB
UPDATE `item_template` SET `spellppmRate_1` = 1.7 WHERE `entry` = 10803;
