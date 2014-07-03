-- Fixed missing gossip text for creature 3936 (Shandris Feathermoon) in Feralas
UPDATE `npc_text` SET `text0_1` = "The forces of the Sentinel Army hold back the Horde across all of Kalimdor. While the war continues in Ashenvale and Stonetalon, our forces are also needed here, to protect these remaining wilds and prevent our enemies from gaining further footholds." WHERE `id` = 15719;
