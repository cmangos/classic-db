-- vendor slots corrected
DELETE FROM `npc_vendor` WHERE entry IN (1198,2046);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
-- Rallic Finn 1198
('1198','2506','0','0','5','0','Hornwood Recurve Bow'),
('1198','2507','0','0','6','0','Laminated Recurve Bow'),
('1198','2512','0','0','3','0','Rough Arrow'),
('1198','2515','0','0','4','0','Sharp Arrow'),
('1198','5439','0','0','1','0','Small Quiver'),
('1198','11303','1','9000','7','0','Fine Shortbow'),
('1198','11362','0','0','2','0','Medium Quiver'),
-- Andrew Krighton 2046
('2046','1201','0','0','8','0','Dull Heater Shield'),
('2046','2392','0','0','1','0','Light Mail Armor'),
('2046','2393','0','0','2','0','Light Mail Belt'),
('2046','2394','0','0','3','0','Light Mail Leggings'),
('2046','2395','0','0','4','0','Light Mail Boots'),
('2046','2396','0','0','5','0','Light Mail Bracers'),
('2046','2397','0','0','6','0','Light Mail Gloves'),
('2046','17186','0','0','7','0','Small Targe');

