-- Add missing Mantles of the Dawn items to Argent Dawn Vendors after completing quest 5504
-- https://tbc.wowhead.com/item=18169/flame-mantle-of-the-dawn#comments:id=3166975
-- https://tbc.wowhead.com/quest=5504/mantles-of-the-dawn
-- 905	-2	903	904	0	0	0	(Quest ID 5504 Rewarded OR (Quest ID 5513 Rewarded OR Quest ID 5507 Rewarded))

-- https://tbc.wowhead.com/item=18182/chromatic-mantle-of-the-dawn
-- 910	-2	908	909	0	0	0	(Quest ID 5517 Rewarded OR (Quest ID 5524 Rewarded OR Quest ID 5521 Rewarded))

DELETE FROM `npc_vendor` WHERE `entry` IN (10856,10857,11536); -- add to template used by all 3 npcs in tbcmangos
DELETE FROM `npc_vendor_template` WHERE `entry` = 10; -- unused
INSERT INTO `npc_vendor_template` (`entry`, `item`, `maxcount`, `incrtime`, `slot`, `condition_id`, `comments`) VALUES
(10, 13482, 0, 0, 0, 0, 'Recipe: Transmute Air to Fire'), -- should not be in limited supply (1	10800)
(10, 13724, 0, 0, 0, 0, 'Enriched Manna Biscuit'),
(10, 13810, 0, 0, 0, 0, 'Blessed Sunfruit'),
(10, 13813, 0, 0, 0, 0, 'Blessed Sunfruit Juice'),
(10, 18169, 0, 0, 0, 156, 'Flame Mantle of the Dawn'), -- 156	-2	154	155	0	0	0	(Quest ID 5504 Rewarded OR (Quest ID 5513 Rewarded OR Quest ID 5507 Rewarded))
(10, 18170, 0, 0, 0, 156, 'Frost Mantle of the Dawn'),
(10, 18171, 0, 0, 0, 156, 'Arcane Mantle of the Dawn'),
(10, 18172, 0, 0, 0, 156, 'Nature Mantle of the Dawn'),
(10, 18173, 0, 0, 0, 156, 'Shadow Mantle of the Dawn'),
(10, 18182, 0, 0, 0, 161, 'Chromatic Mantle of the Dawn'), -- 161	-2	159	160	0	0	0	(Quest ID 5517 Rewarded OR (Quest ID 5524 Rewarded OR Quest ID 5521 Rewarded))
(10, 19203, 0, 0, 0, 0, 'Plans: Girdle of the Dawn'),
(10, 19205, 0, 0, 0, 0, 'Plans: Gloves of the Dawn'),
(10, 19216, 0, 0, 0, 0, 'Pattern: Argent Boots'),
(10, 19217, 0, 0, 0, 0, 'Pattern: Argent Shoulders'),
(10, 19328, 0, 0, 0, 0, 'Pattern: Dawn Treaders'),
(10, 19329, 0, 0, 0, 0, 'Pattern: Golden Mantle of the Dawn'),
(10, 19442, 0, 0, 0, 0, 'Formula: Powerful Anti-Venom'),
(10, 19446, 0, 0, 0, 0, 'Formula: Enchant Bracer - Mana Regeneration'),
(10, 19447, 0, 0, 0, 0, 'Formula: Enchant Bracer - Healing'),
(10, 22014, 0, 0, 0, 0, 'Hallowed Brazier');

UPDATE `creature_template` SET `VendorTemplateId` = 10 WHERE `entry` IN (10856,10857,11536);

