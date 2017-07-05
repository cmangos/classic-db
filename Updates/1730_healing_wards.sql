-- Add periodic healing spells to healing wards
DELETE FROM creature_template_spells WHERE entry IN (2992, 8179);

-- Add missing spells
INSERT INTO creature_template_spells (entry, spell1)
VALUES (2992, 4972), (8179, 11901);

-- Update AI to Totem
UPDATE creature_template SET AIName='TotemAI' WHERE Entry IN (2992, 3560, 3844, 8179, 10218);