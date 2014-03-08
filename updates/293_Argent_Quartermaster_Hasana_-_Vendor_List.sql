-- File:	SQL
-- Name:	293_Argent_Quartermaster_Hasana_-_Vendor_List
-- Desc:	Corrections to Argent Quartermaster Hasana' Vendor List (remove Major Mana and Healing Potions)
-- Auth:	Tobschinski
-- Date:	2014/03/08

-- -------------------------------------------------------------------------

DELETE FROM `mangos`.`npc_vendor` WHERE `entry`='10856' AND (`item`='13444' OR `item`='13446');