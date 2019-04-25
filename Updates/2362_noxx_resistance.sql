-- Correct Resistances for "Noxxio" Npcs
UPDATE creature_template SET ResistanceFire=0, ResistanceShadow=0, ResistanceArcane=0, ResistanceNature=144 WHERE entry IN (
13282, -- Noxxion
13456, -- Noxxion's Spawn
13696, -- Noxxious Scion
13736 -- Noxxious Essence
);
