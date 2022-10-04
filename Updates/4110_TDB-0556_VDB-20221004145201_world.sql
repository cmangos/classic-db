-- Add your query below.
-- https://github.com/vmangos/core/commit/bd8c31f51ac91e5b295beba6b2b20ea344826f0c
-- https://guybrushgit.github.io/WarriorSim/

-- Correct PPM of Jeklik's Crusher.
-- https://old.reddit.com/r/classicwow/comments/gxsawo/jekliks_crusher_stats_2024_chanceonhit_4ppm_its/
UPDATE `item_template` SET `spellppmrate_1`=4 WHERE `entry`=19918; -- spelltrigger_1 = 2

