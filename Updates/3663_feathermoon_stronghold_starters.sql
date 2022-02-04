-- https://tbc.wowhead.com/quest=7494/feathermoon-stronghold
-- add missing quest Feathermoon Stronghold (7494) to Crier Goodman (2198) and Herald Moonstalker (10878)
DELETE FROM creature_questrelation WHERE id IN (10878,2198) AND quest=7494;
INSERT INTO creature_questrelation (id, quest) VALUES
(10878, 7494), -- https://tbc.wowhead.com/npc=10878/herald-moonstalker
(2198, 7494); -- https://tbc.wowhead.com/npc=2198/crier-goodman
