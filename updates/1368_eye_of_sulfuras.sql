-- Eye of Sulfuras gave the error that it is on cooldown. This change fixes that.
UPDATE item_template SET spellcharges_1 = 1 WHERE entry = 17204;
