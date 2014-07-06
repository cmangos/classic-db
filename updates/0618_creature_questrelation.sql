
SET @QUEST_DA := 3763; SET @NPC_DA := 6735; -- Darnassus
SET @QUEST_SW := 3789; SET @NPC_SW := 6740; -- Stormwind
SET @QUEST_IF := 3790; SET @NPC_IF := 5111; -- Ironforge

-- ---------------------------------

DELETE FROM `creature_questrelation` WHERE `id`=@NPC_IF and`quest`=@QUEST_DA;
UPDATE `creature_questrelation` SET `id`=@NPC_SW WHERE `id`=@NPC_IF and`quest`=@QUEST_SW;
UPDATE `creature_questrelation` SET `id`=@NPC_IF WHERE `id`=@NPC_SW and`quest`=@QUEST_IF;
