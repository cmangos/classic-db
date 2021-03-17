-- pulled from wotlk sniffs - contains corrections even for CDB
DELETE FROM creature_template_spells WHERE entry IN(11859);
INSERT INTO creature_template_spells(entry, setId, spell1, spell2, spell3, spell4, spell5, spell6, spell7, spell8, spell9, spell10) VALUES
('11859', '0', '19474', '19482', '89', '21949', '0', '0', '0', '0', '0', '0');


