-- Some water+ground creatures cannot be enagaged into combat because of wrong InhabitType
-- Thanks Neotmiren for pointing and fixing. This closes #460 
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `Entry` IN (4821,4822,4823, 4686,4687, 5467);
-- Skittering/Snapping/Barbed Crustacean (BFD), Deepstrider Giant/Searcher (Desolace), Deep Dweller (Tanaris)
