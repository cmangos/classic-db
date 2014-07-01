-- Removed some 'null' gossip option for Paladin/Shaman/Mage/Rogue trainers
-- Thanks Neotmiren for pointing and fixing. This closes #500 
DELETE FROM gossip_menu_option WHERE id=2 AND option_text IS NULL AND option_id=16 AND npc_option_npcflag=16 AND action_menu_id=0 AND condition_id=0;
