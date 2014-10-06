-- Removed equipment of creatures 2177 & 2176
-- Writhing Highborne / Cursed Highbourne in Darkshore
-- Both of these creatures are weilding daggers, when they shouldn't.
-- This closes #610 
-- Source (Writhing) : http://wow.zamimg.com/uploads/screenshots/normal/13879.jpg
-- Source (Cursed): http://wow.zamimg.com/uploads/screenshots/resized/192461.jpg
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `Entry`='2177';
UPDATE `creature_template` SET `EquipmentTemplateId`='0' WHERE `Entry`='2176';
