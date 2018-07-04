-- Added casting speed immunity to NPC 11662 (Flamewaker Priest) in Molten Core
-- They should be immune to Curse of Tongues or Mind-numbing Poison
-- Source: https://wow.gamepedia.com/Sulfuron_Harbinger
UPDATE creature_template SET ExtraFlags=4194304 WHERE Entry=11662;
