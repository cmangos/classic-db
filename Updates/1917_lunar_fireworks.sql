-- Added missing scripts for quest 8867 (Lunar Fireworks)
DELETE FROM dbscripts_on_go_template_use WHERE id IN (180771, 180850, 180868, 180772, 180859, 180869);
INSERT INTO dbscripts_on_go_template_use VALUES
(180771, 0, 8, 15893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Lunar Fireworks Fired Credit'),
(180850, 0, 8, 15893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Lunar Fireworks Fired Credit'),
(180868, 0, 8, 15893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Lunar Fireworks Fired Credit'),
(180772, 0, 8, 15894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Lunar Fireworks Cluster Fired Credit'),
(180859, 0, 8, 15894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Lunar Fireworks Cluster Fired Credit'),
(180869, 0, 8, 15894, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Lunar Festival - Lunar Fireworks Cluster Fired Credit');
