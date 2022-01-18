-- https://youtu.be/D9O903Wnmb4?t=1h41m35s
-- https://youtu.be/D9O903Wnmb4?t=11m6s
UPDATE creature SET MovementType=1, spawndist=1 WHERE guid=15287; -- Innkeeper Shay should have random movement
UPDATE creature SET MovementType=1, spawndist=1 WHERE guid=15302; -- Delia Verana should have random movement
UPDATE creature SET MovementType=1, spawndist=3 WHERE guid=15520; -- Mallen Swain should have random movement
-- UPDATE creature SET MovementType=1, spawndist=3 WHERE guid=15542; -- High Executor Darthalia should have random movement (already have this)
UPDATE creature SET MovementType=1, spawndist=3 WHERE guid=15532; -- Deathguard Samsa should have random movement
UPDATE creature SET MovementType=1, spawndist=3 WHERE guid=15288; -- Derak Nightfall should have random movement
UPDATE creature SET MovementType=1, spawndist=3 WHERE guid=15289; -- Vinna Wayne should have random movement no path
DELETE FROM creature_movement WHERE id=15289;
