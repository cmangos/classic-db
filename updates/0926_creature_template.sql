-- Prevent NPCs 12238 (Zaetar's Spirit) and 13716 (Celebras the Redeemed) to roam
-- around their spawn point. Now, players will be able to speak with them
-- and get the quest they offer without having the window abruptly closed
-- every few seconds
UPDATE `creature_template` SET `MovementType` = 0 WHERE `Entry` IN (12238, 13716);
