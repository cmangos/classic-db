-- NPC Thamarian (Auberdine) misdirected players to Stormwind and Exodar due to WotLK gossip text
-- Thanks Neotmiren for pointing and fixing. This closes #459 
UPDATE `npc_text` SET `text0_0` = "On the northern dock, you can board a ship that will carry you to Rut'theran Village and Darnassus. From the southern dock, you can find passage across the Great Sea to Menethil Harbor on Khaz Modan. Safe journeys to you!" WHERE ID IN (10555,5480);
