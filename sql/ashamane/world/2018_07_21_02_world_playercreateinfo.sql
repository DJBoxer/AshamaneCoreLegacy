DELETE FROM `playercreateinfo_cast_spell` WHERE spell IN (72792,72857,95759,77534);
INSERT INTO `playercreateinfo_cast_spell` (`raceMask`, `classMask`, `spell`, `note`) values
('2097152','1437','72792','Worgen - Learn Racials'),
('2097152','1437','72857','Worgen - Learn Two Forms'),
('2097152','1437','95759','Worgen - Learn Darkflight'),
('256','477','77534','Goblin - Pack Hobgoblin');

DELETE FROM `playercreateinfo` WHERE race IN (9,22) AND NOT class = 6;
INSERT INTO `playercreateinfo` (`race`, `class`, `map`, `zone`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
('9','1','1','14','-618.518','-4251.67','38.718','1.55428'),
('9','3','1','14','-618.518','-4251.67','38.718','1.55428'),
('9','4','1','14','-618.518','-4251.67','38.718','1.55428'),
('9','5','1','14','-618.518','-4251.67','38.718','1.55428'),
('9','7','1','14','-618.518','-4251.67','38.718','1.55428'),
('9','8','1','14','-618.518','-4251.67','38.718','1.55428'),
('9','9','1','14','-618.518','-4251.67','38.718','1.55428'),
('22','1','0','9','-8914.57','-133.909','80.5378','5.13806'),
('22','3','0','9','-8914.57','-133.909','80.5378','5.13806'),
('22','4','0','9','-8914.57','-133.909','80.5378','5.13806'),
('22','5','0','9','-8914.57','-133.909','80.5378','5.13806'),
('22','8','0','9','-8914.57','-133.909','80.5378','5.13806'),
('22','9','0','9','-8914.57','-133.909','80.5378','5.13806'),
('22','11','0','9','-8914.57','-133.909','80.5378','5.13806');