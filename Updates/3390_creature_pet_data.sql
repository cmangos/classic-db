-- Correct Player Controlled Data in creature_template_addon
UPDATE creature_template_addon SET bytes1=0, b2_1_flags=16, auras=NULL WHERE entry IN (
157, -- Goretusk
454, -- Young Goretusk
728, -- Bhag'thera
731, -- King Bangalash
3100, -- Elder Mottled Boar
4277, -- Eye of Kilrogg
7384, -- Cornish Rex
7456, -- Winterspring Screecher
7550, -- Wood Frog
7560, -- Snowshoe Rabbit
8960, -- Felpaw Scavenger
10200, -- Rak'shiri
11361, -- Zulian Tiger
14832, -- Kerri Hicks
16117 -- Plagued Swine
);

DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (
157, -- Goretusk
454, -- Young Goretusk
728, -- Bhag'thera
731, -- King Bangalash
3100, -- Elder Mottled Boar
4277, -- Eye of Kilrogg
7384, -- Cornish Rex
7456, -- Winterspring Screecher
7550, -- Wood Frog
7560, -- Snowshoe Rabbit
8960, -- Felpaw Scavenger
10200, -- Rak'shiri
11361, -- Zulian Tiger
14832, -- Kerri Hicks
16117 -- Plagued Swine
));
