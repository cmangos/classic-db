-- Add missing Double Attack 19818
UPDATE creature_template_addon SET auras='19818' WHERE entry IN (1045, -- Red Dragonspawn
8717, -- Felguard Elite
11441, -- Gordok Brute
14887, -- Ysondre
14888, -- Lethon
14889, -- Emeriss
14890, -- Taerar
15932, -- Gluth
15952, -- Maexxna
16447); -- Plagued Ghoul

-- Add missing Double Attack 19818
UPDATE creature_template_addon SET auras='18943' WHERE entry IN (15956, -- Anub'Rekhan
15976); -- Venom Stalker

-- Add missing Double Attack
UPDATE creature_template_addon SET auras='8279 18943' WHERE entry IN (10662, 10664); -- Spellmaw, Scryer
UPDATE creature_template_addon SET auras='18943 18950' WHERE entry=11374; -- Hooktooth Frenzy
UPDATE creature_template_addon SET auras='19818 24692' WHERE entry=14834; -- Hakkar
UPDATE creature_template_addon SET auras='18943 18950' WHERE entry=11374; -- Hooktooth Frenzy

-- Add missing Thrash 8876
UPDATE creature_template_addon SET auras='8876' WHERE entry IN (6581, -- Ravasaur Matriarch
7452, -- Crazed Owlbeast
7728, -- Kirith the Damned
8532, -- Diseased Flayer
9042, -- Verek
9677); -- Ograbisi

-- Add missing Thrash 12787
UPDATE creature_template_addon SET auras='12787' WHERE entry IN (13217, -- Thanthaldis Snowgleam
13219); -- Jekyll Flandring

UPDATE creature_template_addon SET auras='8876 14111' WHERE entry=6511; -- Bloodpetal Thresher
UPDATE creature_template_addon SET auras='8876 12254' WHERE entry=7355; -- Tuten'kash
