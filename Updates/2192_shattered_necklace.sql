-- Shattered Necklace should drop without quest requirement. Use wotlk-db dropchance
UPDATE creature_loot_template SET ChanceOrQuestChance=8 WHERE item=7666;
