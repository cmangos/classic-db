-- Remove wrong gossip from Sprok (added in ~cata)
-- https://github.com/cmangos/tbc-db/commit/e316ac6bdb02efc269473b0cd3f3b21697990693
-- https://github.com/cmangos/issues/issues/2792
UPDATE `creature_template` SET `NpcFlags` = `NpcFlags`&~1, `GossipMenuId` = 0 WHERE `entry` = 8320;
DELETE FROM `gossip_menu` WHERE `entry` = 12741;
DELETE FROM `npc_text` WHERE `id` = 17880;

