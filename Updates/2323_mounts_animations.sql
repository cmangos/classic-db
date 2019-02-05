-- Add spawn animation for Felsteed/Dreadsteed Charger/Warhorse
DELETE FROM dbscripts_on_spell WHERE id IN (231, 5784, 23214, 13819);
INSERT INTO dbscripts_on_spell(id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(23161, 0, 15, 31725, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Dreadsteed Spell Effect'),
(5784, 0, 15, 31725, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Felsteed Spell Effect'),
(23214, 0, 15, 31726, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Charger Spell Effect'),
(13819, 0, 15, 31726, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Warhorse Spell Effect');
