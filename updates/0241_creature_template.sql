-- Updated scale of creatures 4810 (Twilight Reaver), 4812 (Twilight Loreseeker) and 4814 (Twilight Elementalist)
-- as they were bigger than other NPCs in the area
UPDATE `creature_template` SET `scale` = 0 WHERE `entry` IN (4810, 4812, 4814);
