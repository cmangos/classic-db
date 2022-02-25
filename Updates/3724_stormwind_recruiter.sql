UPDATE `broadcast_text` SET `EmoteID1`=1 WHERE `Id`=7900;
UPDATE `broadcast_text` SET `EmoteID1`=5 WHERE `Id`=7901;

DELETE FROM `dbscripts_on_relay` WHERE `id`=16;
INSERT INTO `dbscripts_on_relay` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(16, 3000, 0, 36, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Justine Demalier - Face Player"),
(16, 5000, 0, 1, 25, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Justine Demalier - Do Emote OneShotPoint"),
(16, 8000, 0, 0, 0, 0, 0, 0, 0, 2, 7900, 0, 0, 0, 0, 0, 0, 0, 0, "Justine Demalier - Say Line 7900"),
(16, 11500, 0, 36, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Justine Demalier - Reset Orientation"),
(16, 11700, 0, 36, 0, 0, 0, 12480, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Justine Demalier - Face Player (Melris Malagan)"),
(16, 12000, 0, 0, 0, 0, 0, 12480, 20, 3, 7901, 0, 0, 0, 0, 0, 0, 0, 0, "Justine Demalier - Say Line 7901 (Melris Malagan)"),
(16, 15000, 0, 1, 1, 0, 0, 12480, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Justine Demalier - Do Emote OneShotTalk (Melris Malagan)"),
(16, 18000, 0, 1, 25, 0, 0, 12480, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Justine Demalier - Do Emote OneShotPoint (Melris Malagan)"),
(16, 21000, 0, 36, 1, 0, 0, 12480, 20, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Justine Demalier - Reset Orientation (Melris Malagan)"),
(16, 500000, 0, 35, 6, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, "Justine Demalier - Send Custom Event B to Self");

