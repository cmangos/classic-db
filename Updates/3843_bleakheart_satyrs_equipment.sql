-- Remove equipment from NPCs 3767 (Bleakheart Trickster) and 3770 (Bleakheart Shadowstalker) that were added in Cataclysm expansion
-- Sources: https://www.youtube.com/watch?v=ZeNsIGM-M_w
-- https://classic.wowhead.com/npc=3770/bleakheart-shadowstalker
-- https://classic.wowhead.com/npc=3767/bleakheart-trickster
UPDATE creature_template SET EquipmentTemplateId=0 WHERE Entry IN (3767, 3770);
DELETE FROM creature_equip_template WHERE entry IN (3767, 3770);
