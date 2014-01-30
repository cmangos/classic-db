-- Fixed nature aura of creature 16034 (Plague Beast) in Naxxramas Plague Wing
-- The spell 30110 should be cast at spawn and not only when entering combat
UPDATE `creature_ai_scripts` SET `event_type` = 11 WHERE `id` = 1603402;
