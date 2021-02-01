-- q.489 'Seek Redemption!' - update
-- spell target corrected for s.3329 Creature - Frog Form
UPDATE dbscripts_on_quest_end SET data_flags = 4 WHERE id = 489 AND datalong = 3329; -- classicmangos script is different, more extensive then what tbc/wotlkmangos currently have

