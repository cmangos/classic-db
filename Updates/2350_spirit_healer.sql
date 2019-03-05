-- Remove two NPCS from TBC: two NPCs 6491 (Spirit Healer) in Winterspring related to graveyards added in TBC
DELETE FROM creature WHERE guid IN (6876, 5752);
