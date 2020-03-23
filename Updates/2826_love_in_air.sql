-- 8981 Gift Giving (Horde)
-- 8993 Gift Giving (Alliance)

-- 22263 Horde Gift Collection
-- 22262 Alliance Gift Collection

-- Kwee Q. Peddlefeet 16075
-- 8312 Who's the most popular hero of the realm, you ask?  Well here are the current standings!$B$BThrall: $2200w$BCairne: $2201w$BSylvanas: $2202w$BTotal Horde: $2207w$B$BBolvar: $2203w$BMagni: $2204w$BTyrande: $2205w$BTotal Alliance: $2206w$B$BIf you want to cast your vote, be sure to turn in your gift collections!
-- 8315 Here are the final standings!$B$BThrall: $2200w$BCairne: $2201w$BSylvanas: $2202w$BTotal Horde: $2207w$B$BBolvar: $2203w$BMagni: $2204w$BTyrande: $2205w$BTotal Alliance: $2206w$B$BThe Alliance has the most popular hero!
-- There should be an equivalent text to 8315 but for Horde winning?

-- Kwee should offer both Horde and Alliance versions of the quest
DELETE FROM creature_questrelation WHERE id=16075 AND quest=8993;
INSERT INTO creature_questrelation (id, quest) VALUES
(16075, 8993);
DELETE FROM creature_involvedrelation WHERE id=16075 AND quest=8993;
INSERT INTO creature_involvedrelation (id, quest) VALUES
(16075, 8993);

UPDATE quest_template SET CompleteScript=8981, RewSpellCast=0 WHERE entry=8981;
UPDATE quest_template SET CompleteScript=8993, RewSpellCast=0 WHERE entry=8993;
DELETE FROM dbscripts_on_quest_end WHERE id IN (8981,8993);
INSERT INTO dbscripts_on_quest_end (id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
('8981', '0', '0', '15', '27663', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Holiday - Valentine, gift given'),
('8993', '0', '0', '15', '27663', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Cast Holiday - Valentine, gift given');

DELETE FROM gameobject_template WHERE entry BETWEEN 181088 AND 181093;
INSERT INTO gameobject_template (entry, type, displayId, name, faction, flags, ExtraFlags, size, data0, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data16, data17, data18, data19, data20, data21, data22, data23, CustomData1, mingold, maxgold, ScriptName) VALUES
('181088', '6', '327', 'Event Trap, Thrall', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('181089', '6', '327', 'Event Trap, Bolvar', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('181090', '6', '327', 'Event Trap, Magni', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('181091', '6', '327', 'Event Trap, Tyrande', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('181092', '6', '327', 'Event Trap, Cairne', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ''),
('181093', '6', '327', 'Event Trap, Sylvanas', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '');

-- place corresponding event trap near each one of the six spawns of Kwee
DELETE FROM gameobject WHERE guid BETWEEN 9804 AND 9809;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, animprogress, state) VALUES
(9804, 181092, 1, -1199.99, -118.787, 163.882, 3.10669, 300, 300, 100, 1),
(9805, 181088, 1, 1929.58, -4137.4, 40.4708, 4.17134, 300, 300, 100, 1),
(9806, 181089, 0, -8435.29, 323.431, 121.829, 1.76278, 300, 300, 100, 1),
(9807, 181090, 0, -4867.87, -1032.22, 502.273, 5.49779, 300, 300, 100, 1),
(9808, 181091, 1, 9670.28, 2534.94, 1360.08, 5.34071, 300, 300, 100, 1),
(9809, 181093, 0, 1302.19, 343.649, -64.944, 1.55334, 300, 300, 100, 1);

DELETE FROM game_event_gameobject WHERE guid BETWEEN 9804 AND 9809;
INSERT INTO game_event_gameobject (guid, event) VALUES
(9804, 8),
(9805, 8),
(9806, 8),
(9807, 8),
(9808, 8),
(9809, 8);

-- 27663 Holiday - Valentine, gift given
DELETE FROM spell_script_target WHERE entry=27663;
INSERT INTO spell_script_target (entry, type, targetEntry, inverseEffectMask) VALUES
(27663, 0, 181088, 0),
(27663, 0, 181089, 0),
(27663, 0, 181090, 0),
(27663, 0, 181091, 0),
(27663, 0, 181092, 0),
(27663, 0, 181093, 0);

-- Love Tokens should be sold in unlimited supply, in stacks of 10
UPDATE npc_vendor_template SET incrtime=0, maxcount=0 WHERE item=21815;
UPDATE npc_vendor SET incrtime=0, maxcount=0 WHERE item=21815;
UPDATE item_template SET BuyCount=10 WHERE entry=21815;
