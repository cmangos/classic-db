-- Removed TBC texts
-- Thanks @M2us for pointing. This closes #120
DELETE FROM page_text WHERE entry IN (2930, 2931, 2932, 2933, 2934);
