-- Fix, again, GameObject 180797 (PX-238 Winter Wondervolt): wrong radius and not hidden to players
-- This closes https://github.com/cmangos/issues/issues/1811
UPDATE gameobject_template SET data2=8, data9=1 WHERE entry=180797;
