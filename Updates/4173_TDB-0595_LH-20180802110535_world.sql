-- Add your query below.
-- https://github.com/lh-server/core/commit/019c20128ded93cf31d9c361333c7165bb6f17d4

-- Add missing OOC text for Augustus the Touched.
-- https://www.wowhead.com/tbc/npc=12384/augustus-the-touched#comments:id=2832606
DELETE FROM `dbscript_random_templates` WHERE `id` = 25;
INSERT INTO `dbscript_random_templates` (`id`, `type`, `target_id`, `chance`, `comments`) VALUES
(25, 0, 7622, 0, 'Augustus the Touched 12384 - Random OOC Texts'), -- Commerce!  I crave it!
(25, 0, 7627, 0, 'Augustus the Touched 12384 - Random OOC Texts'), -- You won't find better prices anywhere!
(25, 0, 7628, 0, 'Augustus the Touched 12384 - Random OOC Texts'), -- I'm Augustus, and my prices are INSANE!
(25, 0, 7629, 0, 'Augustus the Touched 12384 - Random OOC Texts'); -- I'm Augustus!  You want it, I got it!  You wanna sell it, then I want it!

UPDATE `broadcast_text` SET `ChatTypeId`=1 WHERE `ID` IN (7622, 7627, 7628, 7629);

-- first slots start at 7, sadly classic vendors is totally different from tbcmangos!
UPDATE `npc_vendor` SET `Slot` = 1 WHERE `item` = 4604;
UPDATE `npc_vendor` SET `Slot` = 2 WHERE `item` = 4605;
UPDATE `npc_vendor` SET `Slot` = 3 WHERE `item` = 4606;
UPDATE `npc_vendor` SET `Slot` = 4 WHERE `item` = 4607;
UPDATE `npc_vendor` SET `Slot` = 5 WHERE `item` = 4608;
UPDATE `npc_vendor` SET `Slot` = 6 WHERE `item` = 8948;

