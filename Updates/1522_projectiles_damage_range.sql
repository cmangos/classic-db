-- Do not use damage range for projectiles
UPDATE `item_template` SET `dmg_min1`='20', `dmg_max1`='20' WHERE (`entry`='12654'); 		-- Doomshot
UPDATE `item_template` SET `dmg_min1`='17.5', `dmg_max1`='17.5' WHERE (`entry`='18042'); 	-- Thorium Headed Arrow
UPDATE `item_template` SET `dmg_min1`='16.5', `dmg_max1`='16.5' WHERE (`entry`='19316'); 	-- Ice Threaded Arrow
UPDATE `item_template` SET `dmg_min1`='13', `dmg_max1`='13' WHERE (`entry`='11285'); 		-- Jagged Arrow
UPDATE `item_template` SET `dmg_min1`='11.5', `dmg_max1`='11.5' WHERE (`entry`='9399'); 	-- Precision Arrow
UPDATE `item_template` SET `dmg_min1`='9.5', `dmg_max1`='9.5' WHERE (`entry`='3464'); 		-- Feathered Arrow
UPDATE `item_template` SET `dmg_min1`='7.5', `dmg_max1`='7.5' WHERE (`entry`='3030'); 		-- Razor Arrow
UPDATE `item_template` SET `dmg_min1`='3.5', `dmg_max1`='3.5' WHERE (`entry`='2515'); 		-- Sharp Arrow
UPDATE `item_template` SET `dmg_min1`='1.5', `dmg_max1`='1.5' WHERE (`entry`='2512'); 		-- Rough Arrow
-- Bullets
UPDATE `item_template` SET `dmg_min1`='1.5', `dmg_max1`='1.5' WHERE (`entry`='2516'); 		-- Light Shot
UPDATE `item_template` SET `dmg_min1`='2', `dmg_max1`='2' WHERE (`entry`='4960'); 			-- Flash Pellet
UPDATE `item_template` SET `dmg_min1`='2', `dmg_max1`='2' WHERE (`entry`='8067'); 			-- Crafted Light Shot
UPDATE `item_template` SET `dmg_min1`='3.5', `dmg_max1`='3.5' WHERE (`entry`='2519'); 		-- Heavy Shot
UPDATE `item_template` SET `dmg_min1`='4', `dmg_max1`='4' WHERE (`entry`='5568'); 			-- Smooth Pebble
UPDATE `item_template` SET `dmg_min1`='4.5', `dmg_max1`='4.5' WHERE (`entry`='8068'); 		-- Crafted Heavy Shot
UPDATE `item_template` SET `dmg_min1`='7.5', `dmg_max1`='7.5' WHERE (`entry`='3033'); 		-- Solid Shot
UPDATE `item_template` SET `dmg_min1`='8.5', `dmg_max1`='8.5' WHERE (`entry`='8069'); 		-- Crafted Solid Shot
UPDATE `item_template` SET `dmg_min1`='9', `dmg_max1`='10' WHERE (`entry`='3465'); 			-- Exploding Shot: only ammo with damage range
UPDATE `item_template` SET `dmg_min1`='12.5', `dmg_max1`='12.5' WHERE (`entry`='10512'); 	-- Hi-Impact Mithril Slugs
UPDATE `item_template` SET `dmg_min1`='13', `dmg_max1`='13' WHERE (`entry`='11284'); 		-- Accurate Slugs
UPDATE `item_template` SET `dmg_min1`='15', `dmg_max1`='15' WHERE (`entry`='10513'); 		-- Mithril Gyro-Shot
UPDATE `item_template` SET `dmg_min1`='16.5', `dmg_max1`='16.5' WHERE (`entry`='19317'); 	-- Ice Threaded Bullet
UPDATE `item_template` SET `dmg_min1`='17.5', `dmg_max1`='17.5' WHERE (`entry`='15997'); 	-- Thorium Shells
UPDATE `item_template` SET `dmg_min1`='18', `dmg_max1`='18' WHERE (`entry`='11630'); 		-- Rockshard Pellets
UPDATE `item_template` SET `dmg_min1`='20.5', `dmg_max1`='20.5' WHERE (`entry`='13377'); -- Miniature Cannon Balls
