-- Removed duplicate addon for creature 5109 (Myra Tyrngaarde) in Ironforge
-- preventing her from holding its bread, showing players how tasteful it is
-- Thanks Tobschinski for pointing. This closes #679
DELETE FROM `creature_addon` WHERE `guid` = (SELECT `guid` FROM `creature` WHERE `id` = 5109);
