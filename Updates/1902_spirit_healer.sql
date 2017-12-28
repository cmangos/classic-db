-- Removed Spirit Healer from a graveyard added in patch 2.2
-- Thanks @RichardGe for pointing out. This closes https://github.com/cmangos/issues/issues/1523
DELETE FROM creature WHERE guid=5724;
