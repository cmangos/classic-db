-- Makes porting easier
DELETE FROM `areatrigger_involvedrelation` WHERE `quest` = 5156;
-- Fixes area trigger for q.5156 'Verifying the Corruption'
INSERT INTO `areatrigger_involvedrelation` (`id`, `quest`) VALUES
(2206, 5156),
(2207, 5156),
(2208, 5156);
