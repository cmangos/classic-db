-- Move permanent/passive auras to template addon
UPDATE creature_template_addon SET auras='8876 12539' WHERE entry=8532; -- Diseased Flayer
UPDATE creature_template_addon SET auras='18950' WHERE entry=8538; -- Unseen Servant
UPDATE creature_template_addon SET auras='8279' WHERE entry=8539; -- Eyeless Watcher
UPDATE creature_template_addon SET auras='3417 8734' WHERE entry=8546; -- Dark Adept
UPDATE creature_template_addon SET auras='16592' WHERE entry=8553; -- Necromancer
UPDATE creature_template_addon SET auras='3417' WHERE entry=712; -- Redridge Thrasher
UPDATE creature_template_addon SET auras='3417' WHERE entry=723; -- Mosh'Ogg Butcher

-- Update addon of a few NPCs 8546 (Dark Adept) that don't have all the auras from their template
UPDATE creature_addon SET auras='3417' WHERE guid IN (SELECT guid FROM creature WHERE id=8546);

-- Remove creature addons for NPC 8553 (Necromancer) so they all use template addon. The ones with aura 9734 (Blackfathom Channeling) are now handled by DBScripts to avoid conflict with summoning spell
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id=8553);

-- Add waypoints to get scripts for NPC 8553 (Necromancer) casting aura 9734 (Blackfathom Channeling)
DELETE FROM creature_movement WHERE id IN (91940, 91946, 92235, 92264);
INSERT INTO creature_movement VALUES
(91940, 0, 2814.52, -3757.79, 122.507, 100, 0, 855301, 'Necromancer - Cast Blackfathom Channeling'),
(91946, 0, 2855.31, -3232.34, 134.27, 100, 0, 855301, 'Necromancer - Cast Blackfathom Channeling'),
(92235, 0, 3135.96, -3867.93, 135.447, 100, 0, 855301, 'Necromancer - Cast Blackfathom Channeling'),
(92264, 0, 3185.53, -3456.8, 165.529, 100, 0, 855301, 'Necromancer - Cast Blackfathom Channeling');

UPDATE creature SET MovementType=2 WHERE guid IN (91940, 91946, 92235, 92264);

DELETE FROM dbscripts_on_creature_movement WHERE id=855301;
INSERT INTO dbscripts_on_creature_movement VALUES
(855301, 0, 14, 8734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Remove Aura Blackfathom Channeling'),
(855301, 5, 15, 8734, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Blackfathom Channeling');
