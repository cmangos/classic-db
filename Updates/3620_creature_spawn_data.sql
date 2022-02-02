-- deprecated behaviour of dataint2 and 3 for spawn command moved to spawn data template in order to free command space
INSERT INTO creature_spawn_data_template(Entry,Faction)
VALUES(100,132);
UPDATE dbscripts_on_quest_end SET dataint4=100,dataint2=0 WHERE id IN(1371) AND command=10;
