-- Update ArmorMultiplier of Warlock pets. Current ArmorMultiplier value of -1 leads to negative armor leading to an armor value of 0.
UPDATE `creature_template`
SET `ArmorMultiplier` = 1
WHERE `Entry` IN (416, 417, 1860, 1863);