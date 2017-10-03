-- Fixed stand state of NPC 13020 (Vaelastrasz the Corrupt): it is handled in SD2
UPDATE creature_template_addon SET bytes1=0 WHERE entry=13020;
