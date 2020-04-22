-- Add missing custom animation to GO 3644 (Bael Modan Flying Machine) used in quest 849 (Revenge of Gann)
-- Thanks @bdebaere for reporting. This closes https://github.com/cmangos/issues/issues/1737
UPDATE gameobject_template SET ExtraFlags=1, CustomData1=1 WHERE entry=3644;
