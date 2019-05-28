DELETE FROM item_loot_template WHERE item IN (22259, 21812, 21813, 22218, 22261, 22200, 22279, 22235);

DELETE FROM reference_loot_template WHERE entry=24015;
INSERT INTO reference_loot_template VALUES 
(24015, 22259, 97, 0, 2, 4, 0, 'Unbestowed Friendship Bracelet'),
(24015, 21812, 15, 0, 1, 1, 0, 'Box of Chocolates'),
(24015, 22218, 15, 0, 5, 5, 0, 'Handful of Rose Petals'),
(24015, 22261, 14, 0, 3, 5, 0, 'Love Fool'),
(24015, 22200, 14, 0, 1, 1, 0, 'Silver Shafted Arrow'),
(24015, 21813, 11, 0, 1, 1, 0, 'Bag of Candies'),
(24015, 22279, 7, 0, 1, 1, 0, 'Lovely Black Dress'),
(24015, 22235, 1, 0, 1, 1, 0, 'Truesilver Shafted Arrow');

DELETE FROM reference_loot_template_names WHERE entry=24015;
INSERT INTO reference_loot_template_names VALUES
(24015, 'Pledge-Gift of Adoration loots');

DELETE FROM item_loot_template WHERE item=24015 AND mincountOrRef=-24015 AND entry IN (21979, 21980, 21981, 22164, 22165, 22166, 21975, 22154, 22155, 22156, 22157, 22158);
INSERT INTO item_loot_template VALUES
(21979, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(21980, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(21981, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(22164, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(22165, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(22166, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(21975, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(22154, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(22155, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(22156, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(22157, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots'),
(22158, 24015, 100, 0, -24015, 1, 0, 'Pledge-Gift of Adoration loots');
