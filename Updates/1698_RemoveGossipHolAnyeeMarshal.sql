-- Removed gossip option from creature Hol'anyee Marshal 9271
-- This gossip option was added to Petra Grossen 9273, the owner of the Kodo
-- It then makes sense to remove this from Hol'anyee Marshal 9271
-- See: http://lizarddude.kontek.net/WoW/Allusion1.jpg
UPDATE
	creature_template
SET
	`GossipMenuId` = 0
WHERE
	`entry` = 9271;
