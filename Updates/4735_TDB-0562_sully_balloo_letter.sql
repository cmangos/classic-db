-- ----------------
-- Ironforge
-- Quest Sully Balloo's Letter (637)
-- ---------------

-- New script
DELETE FROM dbscripts_on_quest_end WHERE id = 637;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(637, 0, 0, 21, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sully Balloo\'s Letter - Sara Balloo - Set ActiveObject'),
(637, 0, 1, 29, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sully Balloo\'s Letter - Sara Balloo - Remove NpcFlags'),
(637, 0, 2, 0, 0, 0, 0, 0, 0, 0, 792, 0, 0, 0, 0, 0, 0, 0, 'Sully Balloo\'s Letter - Sara Balloo - Say EmotedText'),
(637, 6000, 0, 1, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sully Balloo\'s Letter - Sara Balloo - Emote Roar'),
(637, 6000, 1, 0, 0, 0, 0, 0, 0, 0, 793, 0, 0, 0, 0, 0, 0, 0, 'Sully Balloo\'s Letter - Sara Balloo - Say Text'),
(637, 10000, 0, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sully Balloo\'s Letter - Sara Balloo - Emote Cry'),
(637, 15000, 0, 1, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sully Balloo\'s Letter - Sara Balloo - Emote Beg'),
(637, 20000, 0, 29, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sully Balloo\'s Letter - Sara Balloo - Add NpcFlags'),
(637, 20000, 1, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Sully Balloo\'s Letter - Sara Balloo - Remove ActiveObject');

UPDATE broadcast_text SET ChatTypeID = 2 WHERE Id = 792;
