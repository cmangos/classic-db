-- Removed equipment from NPC 2057 (Huldar) in Loch Modan
-- He never seemed to wield one: http://de.wowhead.com/npc=2057/huldar#screenshots:id=36110
-- This closes https://github.com/cmangos/issues/issues/1532
UPDATE creature_template SET EquipmentTemplateId=0 WHERE Entry=2057;
