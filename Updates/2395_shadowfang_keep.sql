-- Add missing areatrigger when fall from Shadowfang Keep
-- Closes 
DELETE FROM areatrigger_teleport WHERE id=2406;
INSERT INTO areatrigger_teleport VALUES
(2406, 'Shadowfang Keep - Falling out', 0, 0, 0, 0, 0, -233.011, 1567.5, 76.8921, 4.27606, NULL, 0);
