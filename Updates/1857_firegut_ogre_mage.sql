-- Makes Firegut Ogre Mage wield a staff (#1907) instead of a hammer. See issue #1485
UPDATE creature_equip_template SET equipentry1=1907 WHERE entry=7034;
