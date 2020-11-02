-- Fix startup warnings about spawn distance not null for non-moving NPCs
UPDATE creature SET spawndist=0 WHERE guid IN (51395, 51396);
