-- Correct spell_affect for Remorseless Attacks - Remorseless 14143
-- Critical strike chance for your next Sinister Strike, Backstab, Mutilate, Ambush, Hemorrhage, or Ghostly strike increased by $s1%.
UPDATE `spell_affect` SET `SpellFamilyMask` =
8388610 + -- Sinister Strike SpellFamilyFlags
8388612 + -- Backstab SpellFamilyFlags
8589934592 + -- Mutilate SpellFamilyFlags (MH)
17179869184 + -- Mutilate SpellFamilyFlags (OH)
8389120 + -- Ambush SpellFamilyFlags
41943040 + -- Hemorrhage SpellFamilyFlags
1140850688 -- Ghostly Strike SpellFamilyFlags
WHERE `entry` = 14143; -- 25870467590 befor (2,4,512,33554432,67108864,8589934592,17179869184) -- 26977763846
