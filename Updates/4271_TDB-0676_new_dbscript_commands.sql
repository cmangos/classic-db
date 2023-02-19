DELETE FROM command WHERE name IN('debug dbscript','debug dbscripttargeted','debug dbscriptsourced','debug dbscriptguided');
INSERT INTO command(name, security, help) VALUES
('debug dbscript',3,'.debug dbscript\r\n\r\nStarts dbscript type param0 id param1 from player(source) to selected(target)'),
('debug dbscripttargeted',3,'.debug dbscript\r\n\r\nStarts dbscript type param0 id param1 from selected(source) to param2 dbguid(target creature)'),
('debug dbscriptsourced',3,'.debug dbscript\r\n\r\nStarts dbscript type param0 id param1 from param2 dbguid(source creature) to selected(target)'),
('debug dbscriptguided',3,'.debug dbscript\r\n\r\nStarts dbscript type param0 id param1 from param2 dbguid(source creature) to param3 dbguid(target creature)');

