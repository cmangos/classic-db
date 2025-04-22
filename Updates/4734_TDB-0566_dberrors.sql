-- ----------------
-- Fix some DBerrors that came with reguiding 
-- ---------------

-- Correct all despawns
UPDATE dbscripts_on_quest_end SET search_radius = 720001 WHERE id = 2523 AND search_radius = 900001;
UPDATE dbscripts_on_quest_end SET search_radius = 720002 WHERE id = 4465 AND search_radius = 900002;
UPDATE dbscripts_on_quest_end SET search_radius = 720003 WHERE id = 4464 AND search_radius = 900003;
UPDATE dbscripts_on_quest_end SET search_radius = 720004 WHERE id = 2878 AND search_radius = 900004;
UPDATE dbscripts_on_quest_end SET search_radius = 720005 WHERE id = 3363 AND search_radius = 900005;
UPDATE dbscripts_on_quest_end SET search_radius = 720006 WHERE id = 4113 AND search_radius = 900006;
UPDATE dbscripts_on_quest_end SET search_radius = 720007 WHERE id = 4114 AND search_radius = 900007;
UPDATE dbscripts_on_quest_end SET search_radius = 720008 WHERE id = 4116 AND search_radius = 900008;
UPDATE dbscripts_on_quest_end SET search_radius = 720009 WHERE id = 4118 AND search_radius = 900009;
UPDATE dbscripts_on_quest_end SET search_radius = 720010 WHERE id = 4401 AND search_radius = 900010;
UPDATE dbscripts_on_quest_end SET search_radius = 720021 WHERE id = 4115 AND search_radius = 900021;
UPDATE dbscripts_on_quest_end SET search_radius = 720022 WHERE id = 1514 AND search_radius = 900022;
UPDATE dbscripts_on_quest_end SET search_radius = 720023 WHERE id = 998 AND search_radius = 900023;
UPDATE dbscripts_on_quest_end SET search_radius = 720024 WHERE id = 996 AND search_radius = 900024;
UPDATE dbscripts_on_quest_end SET search_radius = 720025 WHERE id = 4403 AND search_radius = 900025;
UPDATE dbscripts_on_quest_end SET search_radius = 720026 WHERE id = 4343 AND search_radius = 900026;
UPDATE dbscripts_on_quest_end SET search_radius = 720027 WHERE id = 4222 AND search_radius = 900027;
UPDATE dbscripts_on_quest_end SET search_radius = 720028 WHERE id = 4221 AND search_radius = 900028;
UPDATE dbscripts_on_quest_end SET search_radius = 720029 WHERE id = 4466 AND search_radius = 900029;
UPDATE dbscripts_on_quest_end SET search_radius = 720030 WHERE id = 4467 AND search_radius = 900030;
UPDATE dbscripts_on_quest_end SET search_radius = 720041 WHERE id = 4447 AND search_radius = 900041;
UPDATE dbscripts_on_quest_end SET search_radius = 720042 WHERE id = 4119 AND search_radius = 900042;
UPDATE dbscripts_on_quest_end SET search_radius = 720043 WHERE id = 4462 AND search_radius = 900043;
UPDATE dbscripts_on_quest_end SET search_radius = 720044 WHERE id = 4448 AND search_radius = 900044;
UPDATE dbscripts_on_quest_end SET search_radius = 720049 WHERE id = 4117 AND search_radius = 900049;
UPDATE dbscripts_on_quest_end SET search_radius = 720050 WHERE id = 4443 AND search_radius = 900050;
UPDATE dbscripts_on_quest_end SET search_radius = 720051 WHERE id = 4444 AND search_radius = 900051;
UPDATE dbscripts_on_quest_end SET search_radius = 720052 WHERE id = 4445 AND search_radius = 900052;
UPDATE dbscripts_on_quest_end SET search_radius = 720053 WHERE id = 4446 AND search_radius = 900053;
UPDATE dbscripts_on_quest_end SET search_radius = 720054 WHERE id = 4461 AND search_radius = 900054;

-- Correct all respawns
UPDATE dbscripts_on_quest_end SET datalong = 720011 WHERE id = 2523 AND datalong = 900011;

UPDATE dbscripts_on_quest_end SET datalong = 720012 WHERE id = 4465 AND datalong = 900012;
UPDATE dbscripts_on_quest_end SET datalong = 720013 WHERE id = 4464 AND datalong = 900013;
UPDATE dbscripts_on_quest_end SET datalong = 720014 WHERE id = 2878 AND datalong = 900014;
UPDATE dbscripts_on_quest_end SET datalong = 720015 WHERE id = 3363 AND datalong = 900015;
UPDATE dbscripts_on_quest_end SET datalong = 720016 WHERE id = 4113 AND datalong = 900016;
UPDATE dbscripts_on_quest_end SET datalong = 720017 WHERE id = 4114 AND datalong = 900017;
UPDATE dbscripts_on_quest_end SET datalong = 720018 WHERE id = 4116 AND datalong = 900018;
UPDATE dbscripts_on_quest_end SET datalong = 720019 WHERE id = 4118 AND datalong = 900019;

UPDATE dbscripts_on_quest_end SET datalong = 720020 WHERE id = 4401 AND datalong = 900020;

UPDATE dbscripts_on_quest_end SET datalong = 720031 WHERE id = 4115 AND datalong = 900031;
UPDATE dbscripts_on_quest_end SET datalong = 720032 WHERE id = 4467 AND datalong = 900032;
UPDATE dbscripts_on_quest_end SET datalong = 720033 WHERE id = 1514 AND datalong = 900033;
UPDATE dbscripts_on_quest_end SET datalong = 720034 WHERE id = 4343 AND datalong = 900034;
UPDATE dbscripts_on_quest_end SET datalong = 720035 WHERE id = 4222 AND datalong = 900035;
UPDATE dbscripts_on_quest_end SET datalong = 720036 WHERE id = 998 AND datalong = 900036;
UPDATE dbscripts_on_quest_end SET datalong = 720037 WHERE id = 996 AND datalong = 900037;
UPDATE dbscripts_on_quest_end SET datalong = 720038 WHERE id = 4403 AND datalong = 900038;
UPDATE dbscripts_on_quest_end SET datalong = 720039 WHERE id = 4221 AND datalong = 900039;

UPDATE dbscripts_on_quest_end SET datalong = 720040 WHERE id = 4466 AND datalong = 900040;

UPDATE dbscripts_on_quest_end SET datalong = 720045 WHERE id = 4448 AND datalong = 900045;
UPDATE dbscripts_on_quest_end SET datalong = 720046 WHERE id = 4119 AND datalong = 900046;
UPDATE dbscripts_on_quest_end SET datalong = 720047 WHERE id = 4447 AND datalong = 900047;
UPDATE dbscripts_on_quest_end SET datalong = 720048 WHERE id = 4462 AND datalong = 900048;

UPDATE dbscripts_on_quest_end SET datalong = 720055 WHERE id = 4117 AND datalong = 900055;
UPDATE dbscripts_on_quest_end SET datalong = 720056 WHERE id = 4443 AND datalong = 900056;
UPDATE dbscripts_on_quest_end SET datalong = 720057 WHERE id = 4444 AND datalong = 900057;
UPDATE dbscripts_on_quest_end SET datalong = 720058 WHERE id = 4445 AND datalong = 900058;
UPDATE dbscripts_on_quest_end SET datalong = 720059 WHERE id = 4446 AND datalong = 900059;

UPDATE dbscripts_on_quest_end SET datalong = 720060 WHERE id = 4461 AND datalong = 900060;
