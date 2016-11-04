-- All Mechanical NPC Are Immune To Bleed Effects
UPDATE creature_template SET MechanicImmuneMask=MechanicImmuneMask|16384 WHERE CreatureType=9;
