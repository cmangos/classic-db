-- Fix models for NPC 15760 (Winter Reveler) by adding dedicated spells in game event data
-- This closes https://github.com/cmangos/issues/issues/1815
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id=15760);
INSERT INTO game_event_creature_data (guid, spell_start, event) VALUES
(89359, 26239, 2),  -- Humans
(89360, 26240, 2),
(89361, 26239, 2),
(89362, 26240, 2),
(89363, 26240, 2),
(89364, 26239, 2),
(89365, 26240, 2),
(89366, 26239, 2),
(89367, 26239, 2),
(89368, 26240, 2),
(89369, 26241, 2),  -- Dwarves
(89370, 26242, 2),
(89371, 26241, 2),
(89372, 26242, 2),
(89375, 26245, 2),  -- Night Elves
(89376, 26246, 2),
(89379, 26243, 2),  -- Goblins
(89380, 26244, 2),
(89381, 26247, 2),  -- Orcs
(89382, 26248, 2),
(89383, 26247, 2),
(89384, 26248, 2),
(89385, 26249, 2),  -- Taurens
(89386, 26250, 2),
(89387, 26253, 2),  -- Undeads
(89388, 26254, 2),
(89389, 26253, 2),
(89390, 26254, 2),
(89391, 26253, 2),
(89392, 26254, 2),
(89393, 26247, 2),  -- Orcs
(89394, 26248, 2),
(89395, 26249, 2),  -- Taurens
(89396, 26250, 2),
(89397, 26247, 2),  -- Orcs
(89398, 26248, 2),
(89405, 26239, 2),  -- Humans
(89406, 26240, 2);
