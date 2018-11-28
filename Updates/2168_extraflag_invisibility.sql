-- remove extra flag invisibility from mobs which have unselectable flag, since this flag makes them invisible to players
-- assumption: if it has not selectable, means we sniffed it, means the extra flag is not applicable (it only applies to few truly never sent mobs)
UPDATE creature_template SET ExtraFlags=ExtraFlags&~128 WHERE UnitFlags&0x2000000;
