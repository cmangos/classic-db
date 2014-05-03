-- Added missing areatrigger relation for quest 2240 (The Hidden Chamber) in Uldaman
-- The quest is now completable
DELETE FROM `areatrigger_involvedrelation` WHERE `id` = 822;
INSERT INTO `areatrigger_involvedrelation` (`id`, `quest`) VALUES (822, 2240);
