--
-- Scripts optimization
--
-- The purpose of this SQL file is to contain queries which help keeping content
-- in the mangos-zero scripts database in a clean state.


-- Re-order content tables
--
-- Content tables are ordered by specific keys to allow for easier tracking of
-- changes in the version control system.
--

ALTER TABLE `custom_texts` ORDER BY `entry` ASC;
ALTER TABLE `gossip_texts` ORDER BY `entry` ASC;
ALTER TABLE `script_texts` ORDER BY `entry` ASC;
ALTER TABLE `script_waypoint` ORDER BY `entry` ASC, `pointid` ASC;
