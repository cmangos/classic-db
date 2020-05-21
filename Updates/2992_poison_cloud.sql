 -- Add missing aura 26575 (Toxin) to NPC 15933 (Poison Cloud) in Temple of Ahn'Qiraj
 UPDATE creature_template_addon SET auras='25786 26575' WHERE entry=15933;
