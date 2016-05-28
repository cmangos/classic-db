-- Fixed event scripts used in Darkmaster Gandling encounter in Scholomance
-- The wrong NPC was used.
-- Sources: https://www.youtube.com/watch?v=SlPU8fF785k
-- https://www.youtube.com/watch?v=-cXIkndubFw
-- https://www.youtube.com/watch?v=lC3-w771En0
UPDATE dbscripts_on_event SET datalong = 11598 WHERE id IN (5618, 5619, 5620, 5621, 5622, 5623);
