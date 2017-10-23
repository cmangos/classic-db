-- Makes Firegut Ogre Mage wield a staff (item 1907) instead of a hammer. See issue issue 1485
-- Closes #139 and closes https://github.com/cmangos/issues/issues/1485
UPDATE creature_equip_template SET equipentry1=1907 WHERE entry=7034;
