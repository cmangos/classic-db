-- Allow Frostbolt, Polymorph, and Scorch to be affected by Icy Veins
UPDATE spell_affect SET SpellFamilyMask=SpellFamilyMask|(1572896+16777216+16) WHERE entry=12472;
