-- Everlook and Gadgetzan Transporters schematics can now be removed from goblin Buzzek Bracketswing (Gadgetzan)
-- Thanks Neotmiren for pointing and fixing. This closes #468 

DELETE FROM `npc_trainer` WHERE `spell` IN (23490,23491) AND `entry` = 8736;
