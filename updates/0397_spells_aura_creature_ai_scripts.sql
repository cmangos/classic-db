-- Fixed spell Arcane Explosion for creature 15981 (Naxxramas Acolyte) in Naxxramas Spider Wing
-- as it was using a normal version instead of the Naxxramas raid one
UPDATE `creature_ai_scripts` SET `action1_param1` = 28450 WHERE `id` = 1598101;
