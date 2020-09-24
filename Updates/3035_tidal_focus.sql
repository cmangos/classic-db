-- add missing earth shield and chain heal mask for Tidal Focus talent
REPLACE INTO spell_affect(entry, effectId, SpellFamilyMask) VALUES
('16179', '0', 0x00400000001C0);
