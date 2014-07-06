
SET @ID     := 3322;            -- NPC_KAJA
SET @FLAG   := 1 + 4 + 16384;   -- UNIT_NPC_FLAG_GOSSIP + UNIT_NPC_FLAG_VENDOR + UNIT_NPC_FLAG_REPAIR;

-- -----------------------

UPDATE `creature_template` SET `NpcFlags`=@FLAG WHERE `entry`=@ID;
