-- Fixed modelid of creature 16119 (Bone Minion)
-- This closes #490 
-- Source: http://www.wowhead.com/npc=16119/bone-minion#screenshots:id=119558
UPDATE `creature_template` SET `ModelId1` = 158 WHERE `Entry` = 16119;
