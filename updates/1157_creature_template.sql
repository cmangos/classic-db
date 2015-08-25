-- Updated NPC 5709 (Shade of Eranikus) in Sunken Temple: it is now unattackable
-- until Jammal'An is defeated
-- This closes #710 thanks at evilatwow for providing the details
-- Requires https://github.com/scriptdev2/scriptdev2-classic/commit/22f5d731089055c96bec77674be223bd18207f32
UPDATE `creature_template` SET `UnitFlags` = `UnitFlags` | 128 WHERE `Entry` = 5709;
