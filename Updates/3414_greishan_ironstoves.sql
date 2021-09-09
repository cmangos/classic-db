-- Add missing random texts for NPC 3291 (Greishan Ironstove)
DELETE FROM dbscript_random_templates WHERE id=896;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(896, 0, -224, 0, 'Greishan Ironstove 3291 - Random OOC Texts'),
(896, 0, -225, 0, 'Greishan Ironstove 3291 - Random OOC Texts'),
(896, 0, -226, 0, 'Greishan Ironstove 3291 - Random OOC Texts'),
(896, 0, -227, 0, 'Greishan Ironstove 3291 - Random OOC Texts');
