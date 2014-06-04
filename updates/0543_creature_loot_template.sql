-- Stormwind City Guard drops quest item called 'Shipment of Boots' 
-- Thanks Neotmiren for poiting and fixing. This closes #455 
DELETE FROM `creature_loot_template` WHERE `item` = 5076 AND `entry` = 68;
