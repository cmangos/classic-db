-- Fix q.1795 - The Binding
-- Vanilla ONLY! Flags have changed in TBC+
-- Old value was 51 which is correct in >= TBC.
-- 32 is Spirit healer in Vanilla which causes Strahad Farsan to become un-interactable and disappear when walking away from him.
-- 16 is Trainer but no data shows that he should be a trainer in Vanilla, so we remove both to get a value of 3.
UPDATE `dbscripts_on_relay` SET `datalong`='3' WHERE `id`=17950 AND `delay`=13000 AND `command`=29;

-- Full Removal/Insert for historical preservation
-- DELETE FROM `dbscripts_on_relay` WHERE `id`=17950 AND `delay`=13000 AND `command`=29;
-- INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `datafloat`, `x`, `y`, `z`, `o`, `speed`, `condition_id`, `comments`) VALUES
-- (17950, 13000, 0, 29, 3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'The Binding: Strahad Farsan - Add Npc Flags');
