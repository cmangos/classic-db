-- Anachronos 15192
-- https://tbc.wowhead.com/npc=15192/anachronos#comments:id=2818949 - 70 tank - he only hits for 1400-1700
-- https://github.com/vmangos/core/blob/a01720f547f0d042b7989085a1a3558cc6e92a64/sql/old_migrations/20190429082223_world.sql
-- He hits for 4184. - https://classic.wowhead.com/npc=15192/anachronos#comments:id=2818795
-- https://classic.wowhead.com/npc=15192/anachronos#comments:id=2918257
-- https://classic.wowhead.com/npc=15192/anachronos#comments:id=2918259
UPDATE `creature_template` SET `DamageMultiplier` = 35 WHERE `entry` = 15192; -- wotlk-db

