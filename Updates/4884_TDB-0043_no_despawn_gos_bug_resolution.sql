-- meant to be equal to removed lynchpin in core for
-- if (!GetGOInfo()->GetDespawnPossibility() && !GetGOInfo()->IsDespawnAtAction() && data->spawntimesecsmin >= 0)
-- https://github.com/cmangos/mangos-tbc/commit/e0999474b7ce6d8243913737bba48010726ef4ca#commitcomment-203393269
-- makes gos not despawn through old feature of 0 respawn time, previously done with a faulty condition in core
UPDATE gameobject SET spawntimesecsmin=0, spawntimesecsmax=0
WHERE spawntimesecsmin >= 0 AND EXISTS (SELECT entry FROM gameobject_template WHERE gameobject.id=gameobject_template.entry
-- get despawn possibility
AND (NOT ((type = 0 AND data3!=0) OR (type=1 AND data4!=0) OR (type=10 AND data11 != 0) OR (type=24 AND data5!=0) OR (type=26 AND data3 != 0) OR (type NOT IN(0,1,10,24,26))))
-- is despawn at action
AND (NOT ((type = 3 AND data3 != 0) OR (type = 10 AND data5 != 0))));

