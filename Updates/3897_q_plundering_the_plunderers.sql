/* condition_id=1091 is "Quest ID 2381 Taken" */
UPDATE gossip_menu_option
SET condition_id=1091
WHERE menu_id=524 AND id=0; /*Press the yellow button labeled 'Thieves' Tools.'*/
UPDATE gossip_menu_option
SET condition_id=1091
WHERE menu_id=524 AND id=1; /*Press the red button labeled 'E.C.A.C.'*/
