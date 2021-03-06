-- The Wakening 24960
SET @Valdred   :=   49231;  
SET @Marshal   :=   49230; 
SET @Lilian    :=   38895;  

DELETE FROM `smart_scripts` WHERE `entryorguid` = @Valdred  AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Valdred*100  AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Marshal  AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Marshal*100  AND `source_type` = 9;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Lilian  AND `source_type` = 0;
DELETE FROM `smart_scripts` WHERE `entryorguid` = @Lilian*100  AND `source_type` = 9;

UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Valdred;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Marshal;
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry`=@Lilian;

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(@Valdred, 0, 0, 0, 62, 0, 100, 0, 12489, 0, 0, 0, 80, @Valdred*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Valdred - On Gossip Select - Actionlist'),
(@Valdred*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Valdred - Actionlist - Close gossip'),
(@Valdred*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, @Valdred, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Valdred - Actionlist - Credit quest'),
(@Valdred*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Valdred - Actionlist - Talk1'),
(@Valdred*100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 28, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Valdred - Actionlist - remove aura state kneels'),
(@Valdred*100, 9, 4, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1689.709961, 1674.790039, 135.675003, 0.349066, 'Valdred - Action list - Go to point'),
(@Valdred*100, 9, 5, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Valdred - Actionlist - Talk2'),
(@Valdred*100, 9, 6, 0, 0, 0, 100, 0, 5000, 5000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Valdred - Actionlist - Despawn'),
(@Valdred, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 75, 68442, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Valdred - On spawn - add aura state kneels'),
(@Marshal, 0, 0, 0, 62, 0, 100, 0, 12486, 0, 0, 0, 80, @Marshal*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marshal - On Gossip Select - Actionlist'),
(@Marshal*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Marshal - Actionlist - Close gossip'),
(@Marshal*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, @Marshal, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Marshal - Actionlist - Credit quest'),
(@Marshal*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marshal - Actionlist - Talk1'),
(@Marshal*100, 9, 4, 0, 0, 0, 100, 0, 3000, 3000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1753.036621, 1613.100586, 113.051300, 2.014602, 'Marshal - Action list - Go to point'),
(@Marshal*100, 9, 6, 0, 0, 0, 100, 0, 4000, 4000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Marshal - Actionlist - Despawn'),
(@Lilian, 0, 0, 0, 62, 0, 100, 0, 12484, 0, 0, 0, 80, @Lilian*100, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian - On Gossip Select - Actionlist'),
(@Lilian*100, 9, 0, 0, 0, 0, 100, 0, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lilian - Actionlist - Close gossip'),
(@Lilian*100, 9, 1, 0, 0, 0, 100, 0, 0, 0, 0, 0, 33, @Lilian, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lilian - Actionlist - Credit quest'),
(@Lilian*100, 9, 2, 0, 0, 0, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian - Actionlist - Talk1'),
(@Lilian*100, 9, 3, 0, 0, 0, 100, 0, 0, 0, 0, 0, 17, 30, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian - Actionlist - Set state none'),
(@Lilian*100, 9, 4, 0, 0, 0, 100, 0, 1000, 1000, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 1727.873535, 1629.106567, 118.862335, 5.497842, 'Lilian - Action list - Go to point'),
(@Lilian*100, 9, 6, 0, 0, 0, 100, 0, 6000, 6000, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian - Actionlist - Despawn'),
(@Lilian, 0, 1, 0, 54, 0, 100, 0, 0, 0, 0, 0, 17, 431, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 'Lilian - On spawn - set emote state');

UPDATE `creature_template` SET `gossip_menu_id`=12487, `npcflag`=1 WHERE (`entry`=@Valdred);
UPDATE `creature_template` SET `gossip_menu_id`=12485, `npcflag`=1 WHERE (`entry`=@Marshal);
UPDATE `creature_template` SET `gossip_menu_id`=12483, `npcflag`=1 WHERE (`entry`=@Lilian);

-- Valdred
UPDATE `npc_text` SET `BroadcastTextID0`=49348 WHERE `ID`=17569;
UPDATE `npc_text` SET `BroadcastTextID0`=49349 WHERE `ID`=17570;
UPDATE `npc_text` SET `BroadcastTextID0`=49350 WHERE `ID`=17571;

DELETE FROM `gossip_menu` WHERE `MenuId`=12487 AND `TextId`=17569;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (12487,17569,33369);
DELETE FROM `gossip_menu` WHERE `MenuId`=12488 AND `TextId`=17570;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (12488,17570,33369);
DELETE FROM `gossip_menu` WHERE `MenuId`=12489 AND `TextId`=17571;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (12489,17571,33369);

DELETE FROM `gossip_menu_option` WHERE `MenuId` = 12487;
INSERT INTO `gossip_menu_option` (`MenuId`,`OptionIndex`,`OptionIcon`,`OptionText`,`OptionBroadcastTextId`,`OptionType`,`OptionNpcFlag`,`VerifiedBuild`)  VALUES (12487,0,0,'Don\'t you remember? You died.',49352,1,1,0);

DELETE FROM `gossip_menu_option` WHERE `MenuId` = 12488;
INSERT INTO `gossip_menu_option` (`MenuId`,`OptionIndex`,`OptionIcon`,`OptionText`,`OptionBroadcastTextId`,`OptionType`,`OptionNpcFlag`,`VerifiedBuild`)  VALUES (12488,0,0,'Calm down, Valdred. Undertaker Mordo probably sewed some new ones on for you.',49353,1,1,0);

DELETE FROM `gossip_menu_option` WHERE `MenuId` = 12489;
INSERT INTO `gossip_menu_option` (`MenuId`,`OptionIndex`,`OptionIcon`,`OptionText`,`OptionBroadcastTextId`,`OptionType`,`OptionNpcFlag`,`VerifiedBuild`) VALUES (12489,0,0,'You talk to Undertaker Mordo. He\'ll tell you what to do. That\'s all I know.',49354,1,1,0);
-- End Valdred

-- Marshal
UPDATE `npc_text` SET `BroadcastTextID0`=49343 WHERE `ID`=17566;
UPDATE `npc_text` SET `BroadcastTextID0`=49344 WHERE `ID`=17567;

DELETE FROM `gossip_menu` WHERE `MenuId`=12485 AND `TextId`=17566;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (12485,17566,33369);
DELETE FROM `gossip_menu` WHERE `MenuId`=12486 AND `TextId`=17567;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (12486,17567,33369);

DELETE FROM `gossip_menu_option` WHERE `MenuId` = 12485;
INSERT INTO `gossip_menu_option` (`MenuId`,`OptionIndex`,`OptionIcon`,`OptionText`,`OptionBroadcastTextId`,`OptionType`,`OptionNpcFlag`,`VerifiedBuild`) VALUES (12485,0,0,'I\'m not here to fight you. I\'ve only been asked to speak with you.',49346,1,1,0);

DELETE FROM `gossip_menu_option` WHERE `MenuId` = 12486;
INSERT INTO `gossip_menu_option` (`MenuId`,`OptionIndex`,`OptionIcon`,`OptionText`,`OptionBroadcastTextId`,`OptionType`,`OptionNpcFlag`,`VerifiedBuild`) VALUES (12486,0,0,'You are free to do whatever you like.',49347,1,1,0);
-- End Marshal

-- Lilian
UPDATE `npc_text` set `BroadcastTextID0`=49334 WHERE `ID`=17564;
UPDATE `npc_text` set `BroadcastTextID0`=49335 WHERE `ID`=17565;

DELETE FROM `gossip_menu` WHERE `MenuId`=12483 AND `TextId`=17564;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (12483,17564,33369);
DELETE FROM `gossip_menu` WHERE `MenuId`=12484 AND `TextId`=17565;
INSERT INTO `gossip_menu` (`MenuId`, `TextId`, `VerifiedBuild`) VALUES (12484,17565,33369);

DELETE FROM `gossip_menu_option` WHERE `MenuId` = 12483;
INSERT INTO `gossip_menu_option` (`MenuId`,`OptionIndex`,`OptionIcon`,`OptionText`,`OptionBroadcastTextId`,`OptionType`,`OptionNpcFlag`,`VerifiedBuild`) VALUES (12483,0,0,'I\'m not an abomination, I\'m simply undead. I just want to speak with you.',49339,1,1,0);

DELETE FROM `gossip_menu_option` WHERE `MenuId` = 12484;
INSERT INTO `gossip_menu_option` (`MenuId`,`OptionIndex`,`OptionIcon`,`OptionText`,`OptionBroadcastTextId`,`OptionType`,`OptionNpcFlag`,`VerifiedBuild`) VALUES (12484,0,0,'Lilian, do you realize that you are undead yourself?',49340,1,1,0);
-- End Lilian

DELETE FROM `creature_text` WHERE `CreatureID` IN (@Valdred, @Marshal, @Lilian);
INSERT INTO `creature_text` (`CreatureID`, `groupid`, `id`, `text`, `type`, `language`, `probability`, `emote`, `duration`, `sound`, `comment`, `BroadcastTextID`) VALUES
(@Valdred, 0, 0, 'I see. Well then, let''s get to work, $n! The Dark Lady needs us, right?', 12, 0, 100, 1, 0, 0, 'Valdred', 49351),
(@Valdred, 1, 0, 'Valdred Moray, reporting for duty, sir!', 14, 0, 100, 1, 0, 0, 'Valdred', 49408),
(@Marshal, 0, 0, 'Who are you calling a monster? You''re the monster! I''m just a man who died.', 12, 0, 100, 1, 0, 0, 'Marshal', 49345),
(@Lilian, 0, 0, 'No. You''re lying! My father will protect me!', 12, 0, 100, 0, 0, 0, 'Lilian', 49337);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=12487;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,12487,0,0,9,24960,0,0,0,'','Show gossip menu if player accept The_Wakening');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=12485;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,12485,0,0,9,24960,0,0,0,'','Show gossip menu if player accept The_Wakening');
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=12483;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`, `ErrorTextId`,`ScriptName`,`Comment`) VALUES
(15,12483,0,0,9,24960,0,0,0,'','Show gossip menu if player accept The_Wakening');

DELETE FROM `creature` WHERE `guid` = '210219208'; 
DELETE FROM `creature` WHERE (`id`=38895);
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('280007721','38895','0','0','0','0','0','0','0','-1','0','0','1754.79','1666.84','121.394','3.35932','300','0','0','31','60','0','0','0','0','0','0','','0');
DELETE FROM `creature` WHERE (`id`=49230);
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('280007722','49230','0','0','0','0','0','0','0','-1','0','0','1752.44','1639.88','117.503','2.47339','300','0','0','31','60','0','0','0','0','0','0','','0');
DELETE FROM `creature` WHERE (`id`=49231);
insert into `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `phaseUseFlags`, `PhaseId`, `PhaseGroup`, `terrainSwapMap`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) values('280007723','49231','0','0','0','0','0','0','0','-1','0','0','1739.99','1704.5','128.823','1.58353','300','0','0','31','60','0','0','0','0','0','0','','0');

DELETE FROM `creature_template_addon` WHERE (`entry`=49231);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (49231, 0, 0, 8, 0, 0, 0, '');


