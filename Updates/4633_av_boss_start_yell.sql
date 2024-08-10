-- Add AV Boss Start Yells
-- 7295	Vanndar is here.  Come on, hordelings!  Show me what you got!
-- 7294	I'm here!  Come and get me you alliance pansies!
-- 9057	The Stormpike Graveyard was taken by the Alliance!
-- 9067	The Frostwolf Graveyard was taken by the Horde!

UPDATE `broadcast_text` SET `ChatTypeId` = 6 WHERE `Id` IN (7294,7295,9057,9067);


