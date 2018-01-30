-- Added missing script for spell 25716
DELETE FROM dbscripts_on_spell WHERE id=25716;
INSERT INTO dbscripts_on_spell (id, command, datalong, comments) VALUES
(25716, 1, 2, 'Force Self - Bow - emote');
