-- Removed weapon for NPC 3693 (Terenthis)
-- It should not have one. Thanks @brotalnia for reporting, this closes https://github.com/cmangos/issues/issues/1403
-- Sources:
-- https://youtu.be/nSSOfjaTiTI?t=5m53s
-- https://youtu.be/_S8TMimuYxU?t=2m
UPDATE creature_template SET EquipmentTemplateId=0 WHERE Entry=3693;
