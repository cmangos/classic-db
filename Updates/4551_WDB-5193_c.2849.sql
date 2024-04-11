-- Sly Garrett 2622
-- vendor list corrected
UPDATE `npc_vendor` SET `slot`=6 WHERE `entry`=2622 && `item`=2928; -- Dust of Decay
UPDATE `npc_vendor` SET `slot`=8 WHERE `entry`=2622 && `item`=2930; -- Essence of Pain
UPDATE `npc_vendor` SET `slot`=2 WHERE `entry`=2622 && `item`=3371; -- Empty Vial
UPDATE `npc_vendor` SET `slot`=3 WHERE `entry`=2622 && `item`=3372; -- Leaded Vial
UPDATE `npc_vendor` SET `slot`=1 WHERE `entry`=2622 && `item`=5060; -- Thieves' Tools
UPDATE `npc_vendor` SET `slot`=5 WHERE `entry`=2622 && `item`=5140; -- Flash Powder
UPDATE `npc_vendor` SET `slot`=10 WHERE `entry`=2622 && `item`=5173; -- Deathweed
UPDATE `npc_vendor` SET `slot`=9 WHERE `entry`=2622 && `item`=8923; -- Essence of Agony
UPDATE `npc_vendor` SET `slot`=7 WHERE `entry`=2622 && `item`=8924; -- Dust of Deterioration
UPDATE `npc_vendor` SET `slot`=4 WHERE `entry`=2622 && `item`=8925; -- Crystal Vial

-- https://www.wowhead.com/classic/item=3777/lethargy-root#comments:id=3017124
-- "Gray item as of 1.12, no longer sold by poison vendors"
DELETE FROM `npc_vendor` WHERE `item` = 3777;
DELETE FROM `npc_vendor_template` WHERE `item` = 3777;

