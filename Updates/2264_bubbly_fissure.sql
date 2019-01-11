-- data based on sniffs - 177524 is not meant to give the buff in any way
UPDATE gameobject_template SET data2=8 WHERE entry IN(180057);
UPDATE gameobject_template SET type=8,data1=10,data2=0,data3=0 WHERE entry IN(177524);
