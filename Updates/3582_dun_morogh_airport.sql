-- Improve Linking for Gnomeregan Evacuee Entry: 7843
-- https://github.com/vmangos/core/commit/f2d8c5e4c76df502825b3fe758cf202505604b3f#diff-58d9a99f987841c2ffe670daef3e7d4be25be4b73dacfac18bb4c65d91001a3dR223
UPDATE creature_linking SET flag=flag|8192 WHERE master_guid=191185; -- should despawn on master despawn (path end)

-- https://github.com/vmangos/core/commit/f2d8c5e4c76df502825b3fe758cf202505604b3f#diff-58d9a99f987841c2ffe670daef3e7d4be25be4b73dacfac18bb4c65d91001a3dR456
DELETE FROM creature_linking WHERE master_guid=191197;
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(191184, 191197, 1);
