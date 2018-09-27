-- Miscelleanous fixes

-- Remove non-existing spells from TBC
DELETE FROM spell_affect WHERE entry IN (32403, 34246);

-- Fix spawn distance of a roaming NPC
UPDATE creature SET spawndist=5 WHERE guid=29078;

-- Fix health/mana of spawned creatures not matching their template
UPDATE creature, creature_template SET creature.curhealth=creature_template.MinLevelHealth, creature.curmana=creature_template.MinLevelMana WHERE creature.id=creature_template.Entry AND RegenerateStats&1;
