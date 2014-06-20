-- Fixed spell used by creature 11669 (Flame Imp) in Molten Core
-- Decreased spawn time to 7 min. This closes #478 
-- Source:  http://www.wowhead.com/npc=11669/flame-imp
-- http://www.blizzardguides.com/wow_molten_core_guide.html
UPDATE `creature_ai_scripts` SET `action1_param1` = 20602 WHERE `creature_id` = 11669;

UPDATE `creature` SET `spawntimesecs` = (7 * 60) WHERE `id` = 11669;
