-- Dark Strand Assassin 3879 - should not dualwield
-- https://www.youtube.com/watch?v=dAzrys4w6lg&t=70s
UPDATE `creature_equip_template` SET `equipentry2` = 0 WHERE `entry` = 3879; -- wotlk has a other template for this

