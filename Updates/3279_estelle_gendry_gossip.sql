-- Correct gossip menu option for NPC 6566 (Estelle Gendry) in Undercity
UPDATE gossip_menu_option SET option_text="Mennet said I should ask you for a set of thieves' tools.", option_broadcast_text=2621, action_script_id=52402 WHERE menu_id=161 AND id=1;
