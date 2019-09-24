-- Remove Mana Regeneration for Obsidian Nullifier 15312
UPDATE creature_template SET RegenerateStats=1 WHERE entry=15312;
