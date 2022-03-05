DELETE FROM `command` WHERE `name`='debug areatriggers';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('debug areatriggers', 1, 'Syntax: .debug areatriggers\n\nToggle debug mode for areatriggers. In debug mode GM will be notified if reaching an areatrigger.');

DELETE FROM `mangos_string` WHERE `entry` IN (183, 184, 185);
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES
(183, 'Areatrigger debugging turned on.'),
(184, 'Areatrigger debugging turned off.'),
(185, 'You have reached areatrigger %u.');

DELETE FROM `command` WHERE `name`='list areatriggers';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('list areatriggers', 3, 'Syntax: .list areatriggers\n\nShow areatriggers within the same map (if inside an instanceable map) or area (if inside a continent) as the user.');

DELETE FROM `mangos_string` WHERE `entry`=555;
INSERT INTO `mangos_string` (`entry`, `content_default`) VALUES
(555, 'Showing all areatriggers in %s %s:');

DELETE FROM `command` WHERE `name`='go warp';
INSERT INTO `command` (`name`, `security`, `help`) VALUES
('go warp', 1, 'Syntax: .go warp #axis #value\n\nTeleports the user by the specified value along the specified axis.\nUse a positive value to move forward the axis, and a negative value to move backward the axis.\nValid axis are x (+forward/-backward), y (+right/-left), z (+above/-below), o (orientation, value is specified in degrees).');

