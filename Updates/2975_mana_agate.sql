-- Revert class of item 5514 (Mana Agate) according to sniff
-- The values need to be updated to 0/3 in a custom way though, to match other mana gems data
UPDATE item_template SET class=4, subclass=0 WHERE entry=5514;
