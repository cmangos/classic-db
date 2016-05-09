-- Fixed name and model ID of mount NPC 4778 (Frost Ram) and 4780 (Black Ram)
-- Thanks @Vanillafanatic for pointing. This closes #838 
-- Black Rams should be black.
UPDATE `creature_template` SET `Name`='Black Ram', `ModelId1`=2784 WHERE `entry`=4780;
-- Frost Rams should be.. frosty.
UPDATE `creature_template` SET `Name`='Frost Ram', `ModelId1`=2787 WHERE `entry`=4778;
