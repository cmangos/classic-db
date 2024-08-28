-- Add your query below.
-- https://github.com/vmangos/core/commit/ce50f98c9b3d0e1dfb87d903198a8dd246ffaf1a

-- Fix gossip of Xizk Goodstitch.
DELETE FROM `gossip_menu` WHERE `entry`=2685;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(2685, 3357, 0, 0), -- missing
(2685, 3358, 0, 19); -- Player ClassMask: 256


-- End of migration.

