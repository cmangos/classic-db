-- Add missing random texts for NPC 1239 (First Mate Fitzsimmons)
DELETE FROM dbscript_random_templates WHERE id=11;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(11, 0, -348, 0, 'First Mate Fitzsimmons 1239 - Random OOC Texts'),
(11, 0, -349, 0, 'First Mate Fitzsimmons 1239 - Random OOC Texts'),
(11, 0, -350, 0, 'First Mate Fitzsimmons 1239 - Random OOC Texts'),
(11, 0, -351, 0, 'First Mate Fitzsimmons 1239 - Random OOC Texts'),
(11, 0, -352, 0, 'First Mate Fitzsimmons 1239 - Random OOC Texts');
