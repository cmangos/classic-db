-- Fixed GO used in King of the Foulweald quest
-- Data are from Trinity DB
-- Thanks @Trystanosaurus for reporting, this closes https://github.com/cmangos/issues/issues/1538
UPDATE gameobject_template SET entry=178206, name='Foulweald Totem Mound', displayId=0, data1=7, data3=1, flags=20 WHERE entry=300131;
UPDATE gameobject SET id=178206 WHERE guid=99996;
