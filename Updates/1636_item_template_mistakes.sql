-- Fix https://github.com/cmangos/classic-db/issues/45
-- was 'BKP Sparrow"" Smallbore"'
UPDATE `item_template` SET `name`='"Mage-Eye" Blunderbuss' WHERE `entry`='3041';
-- was 'Mage-Eye"" Blunderbuss"'
UPDATE `item_template` SET `name`='BKP "Sparrow" Smallbore' WHERE `entry`='3042';
