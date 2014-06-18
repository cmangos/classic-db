-- Fixed creatures using visual blue/white box placeholder instead of their equipment when using throwing weapons
-- Thanks Neotmiren for fixing. This closes #480 and #103 
UPDATE `creature_equip_template_raw` SET `equipinfo3` = 0x19011002 WHERE `equipinfo3` = 33492994 AND `equipslot3` = 25; -- InvType(25) Material(1) Subclass(16) Class(2)
