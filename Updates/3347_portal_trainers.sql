-- thx @Tonymomo
-- Resolve Mage Trainer / Portal Trainer Teleport Spell Errors
-- Default Price for TBC Portals corrected, which were corrupted by faction discount
UPDATE creature_template SET TrainerTemplateId=0 WHERE entry=4987;
DELETE FROM npc_trainer_template WHERE entry=2060; -- 4987 World Mage Trainer Mage Trainer
DELETE FROM npc_trainer_template WHERE entry=71 AND spell IN (
665, -- Teleport: Stormwind
3581, -- Teleport: Ironforge
3577, -- Teleport: Undercity
3578, -- Teleport: Darnassus
3579, -- Teleport: Thunder Bluff
3580, -- Teleport: Orgrimmar
1851, -- Portal: Stormwind
11421, -- Portal: Ironforge
11423, -- Portal: Orgrimmar
11425, -- Portal: Undercity
11422, -- Portal: Darnassus
11424); -- Portal: Thunder Bluff

DELETE FROM npc_trainer WHERE entry IN (
2485, -- Larimaine Purdue (Portal Trainer)
2489, -- Milstaff Stormeye (Portal Trainer)
2492, -- Lexington Mortaim (Portal Trainer)
4165, -- Elissa Dumas (Portal Trainer)
5957, -- Birgitte Cranston (Portal Trainer)
5958); -- Thuul (Portal Trainer)

INSERT INTO npc_trainer (entry, spell, spellcost, reqskill, reqskillvalue, reqlevel, condition_id) VALUES
-- Stormwind
(2485, 665, 2000, 0, 0, 20, 0), -- Teleport: Stormwind
(2485, 1851, 15000, 0, 0, 40, 0), -- Portal: Stormwind
-- Ironforge
(2489, 3581, 2000, 0, 0, 20, 0), -- Teleport: Ironforge
(2489, 11421, 15000, 0, 0, 40, 0), -- Portal: Ironforge
-- Undercity
(2492, 3577, 2000, 0, 0, 20, 0), -- Teleport: Undercity
(2492, 11425, 15000, 0, 0, 40, 0), -- Portal: Undercity
-- Darnassus
(4165, 3578, 8000, 0, 0, 30, 0), -- Teleport: Darnassus
(4165, 11422, 32000, 0, 0, 50, 0), -- Portal: Darnassus
-- Thunder Bluff
(5957, 3579, 8000, 0, 0, 30, 0), -- Teleport: Thunder Bluff
(5957, 11424, 32000, 0, 0, 50, 0), -- Portal: Thunder Bluff
-- Orgrimmar
(5958, 3580, 2000, 0, 0, 20, 0), -- Teleport: Orgrimmar
(5958, 11423, 15000, 0, 0, 40, 0); -- Portal: Orgrimmar

-- 18 Player ClassMask: 128=Mage
-- 23 Player ClassMask: 1407=Not Mage
UPDATE creature_template SET GossipMenuId=4825 WHERE entry=5957; -- wotlk-db

DELETE FROM gossip_menu WHERE entry IN (4821,4822,4823,4824,4825,4826,4827,8268,8433,9578,9581);
REPLACE INTO gossip_menu (entry, text_id, condition_id) VALUES
-- unsure why these are not displayed and directly skipped into trainer window for mages
(4821, 5873, 23),
(4821, 5874, 18),
(4822, 5875, 23), -- (2485 Larimaine Purdue)
(4822, 5876, 18),
(4823, 5877, 23),
(4823, 5878, 18),
(4824, 5879, 23),
(4824, 5880, 18),
(4825, 5881, 18),
(4825, 5882, 23),
(4826, 5883, 23), -- (5958 Thuul)
(4826, 5884, 18),
(4827, 5885, 23),
(4827, 5886, 18);

-- Should not let mages reset talents as they are not a real class trainer 
DELETE FROM gossip_menu_option WHERE menu_id IN (4821,4822,4823,4824,4825,4826,4827,8268,8433,9578,9581);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_broadcast_text, option_id, npc_option_npcflag, action_menu_id, action_poi_id, action_script_id, box_coded, box_money, box_text, box_broadcast_text, condition_id) VALUES
-- Needed as Talent Reset for Mages should not be offered by "Portal Trainer"
(4821, 0, 3, 'Please teach me.', 8442, 5, 16, 0, 0, 0, 0, 0, '', 0, 18), -- 4165 Elissa Dumas
(4822, 0, 3, 'Please teach me.', 8442, 5, 16, 0, 0, 0, 0, 0, '', 0, 18), -- 2485 Larimaine Purdue
(4823, 0, 3, 'Please teach me.', 8442, 5, 16, 0, 0, 0, 0, 0, '', 0, 18), -- 2489 Milstaff Stormeye
(4824, 0, 3, 'Please teach me.', 8442, 5, 16, 0, 0, 0, 0, 0, '', 0, 18), -- 16654 Narinth & 16755 Lunaraa
(4825, 0, 3, 'Please teach me.', 8442, 5, 16, 0, 0, 0, 0, 0, '', 0, 18), -- 5957 Birgitte Cranston
(4826, 0, 3, 'Please teach me.', 8442, 5, 16, 0, 0, 0, 0, 0, '', 0, 18), -- 5958 Thuul
(4827, 0, 3, 'Please teach me.', 8442, 5, 16, 0, 0, 0, 0, 0, '', 0, 18); -- 2492 Lexington Mortaim

DELETE FROM npc_gossip WHERE npc_guid IN (SELECT guid from creature where id IN (2485,2489,2492,4165,5957,5958)); -- Remove old static texts
