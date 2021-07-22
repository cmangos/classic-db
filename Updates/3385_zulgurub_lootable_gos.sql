-- Jinxed Hoodoo Pile
UPDATE gameobject SET spawntimesecsmin=7200, spawntimesecsmax=7200 WHERE id=180229;
UPDATE gameobject SET spawntimesecsmin=604800, spawntimesecsmax=604800 WHERE map=309 AND id IN (
180215, -- Hakkari Thorium Vein
180168, -- Dreamfoil
180167, -- Golden Sansam
180166, -- Mountain Silversage
180165, -- Purple Lotus
180164  -- Sungrass
);
