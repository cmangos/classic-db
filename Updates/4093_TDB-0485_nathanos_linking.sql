DELETE FROM `creature_linking_template` where `master_entry` IN (11878);
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(11885, 0, 11878, (1+2+128+1024+16384), 0); -- Blighthound 11885 -> Nathanos Blightcaller 11878


