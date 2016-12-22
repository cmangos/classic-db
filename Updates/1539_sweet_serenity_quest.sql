-- Removed quest 8869 (Sweet Serenity) which is a duplicate
-- Thanks @RichardGe for reporting and researching.
-- This closes https://github.com/classicdb/database/issues/915
DELETE FROM creature_questrelation WHERE quest=8869;
DELETE FROM creature_involvedrelation WHERE quest=8869;
