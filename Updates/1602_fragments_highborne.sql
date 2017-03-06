-- Added scripts for GO 175888, 175891, 175892 & 175893 (Highborne Relic Fragment)
-- Two Anguished/Suffering Highborne will now spawn when they are used
DELETE FROM dbscripts_on_go_template_use WHERE id IN (175888, 175891, 175892, 175893);
INSERT INTO dbscripts_on_go_template_use VALUES
(175888, 4, 10, 7523, 3*60*1000, 0, 0, 0, 0, 0, 0, 0, 6494.13, -4235.87, 658.44, 0.6939, 'Spawn Suffering Highborn'),
(175888, 4, 10, 7524, 3*60*1000, 0, 0, 0, 0, 0, 0, 0, 6504.59, -4227.14, 658.70, 3.7947, 'Spawn Anguished Highborn'),

(175891, 4, 10, 7523, 3*60*1000, 0, 0, 0, 0, 0, 0, 0, 6561.26, -3935.64, 658.31, 1.9505, 'Spawn Suffering Highborn'),
(175891, 4, 10, 7524, 3*60*1000, 0, 0, 0, 0, 0, 0, 0, 6552.91, -3932.10, 658.35, 0.4394, 'Spawn Suffering Highborn'),

(175892, 4, 10, 7523, 3*60*1000, 0, 0, 0, 0, 0, 0, 0, 6484.14, -4103.29, 658.32, 2.8326, 'Spawn Suffering Highborn'),
(175892, 4, 10, 7524, 3*60*1000, 0, 0, 0, 0, 0, 0, 0, 6474.30, -4105.41, 658.68, 0.9947, 'Spawn Anguished Highborn'),
	
(175893, 4, 10, 7523, 3*60*1000, 0, 0, 0, 0, 0, 0, 0, 6563.37, -4032.24, 658.38, 5.4919, 'Spawn Suffering Highborn'),
(175893, 4, 10, 7524, 3*60*1000, 0, 0, 0, 0, 0, 0, 0, 6564.89, -4044.05, 658.34, 1.0278, 'Spawn Suffering Highborn');
