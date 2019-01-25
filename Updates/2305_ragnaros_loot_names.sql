-- Name reference_loot_templates for Ragnaros epic items
DELETE FROM reference_loot_template_names WHERE entry IN (34030, 34069, 34070);
INSERT INTO reference_loot_template_names (entry, name) VALUES
(34030, 'Molten Core (Boss Loot) - Ragnaros - Epic Items (T2 Legs)'),
(34069, 'Molten Core (Boss Loot) - Ragnaros - Epic Items (Group 1)'),
(34070, 'Molten Core (Boss Loot) - Ragnaros - Epic Items (Group 2)');
