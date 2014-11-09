-- missing cat figurine (YTDB)
DELETE FROM gameobject_template WHERE entry=12653;
INSERT INTO gameobject_template (entry,type,displayId,name,faction,flags,size,data0,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20,data21,data22,data23,mingold,maxgold,ScriptName) VALUES
('12653','6','1287','Cat Figurine Trap','14','0','1','0','0','0','5968','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','');
