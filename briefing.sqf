// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: briefing.sqf

if (!hasInterface) exitWith {};

waitUntil {!isNull player};

player createDiarySubject ["changelog", "Changelog"];
player createDiarySubject ["credits", "Credits"];


player createDiaryRecord ["changelog",
[
"Latest Updates",
"
<br/> [New*] Added DLC Weapons ( Testing )
<br/> [New*] Improved Server Cleanup
<br/> [Added] License Vehicle 
<br/> [Reduced] Concurrent active missions to 4
<br/> [Improved] Server Cleanup
<br/> [Removed] Food/Water/Repair Kit at spawn
<br/> [Removed] Insurgent Easter Egg
<br/> [Removed] Crappy vehicle textures
<br/> [Added] Vehicle actions
<br/> [Added] 3D Markers - double click on the map
<br/> [Added] Explosive Specialist Class
<br/> [Added] Insurgent Class

"
]];

player createDiaryRecord ["credits",
[
"Credits",
"
<br/><font size='16' color='#BBBBBB'>Developed by A3Wasteland.com:</font>
<br/>	* AgentRev and everyone over at the A3W forums !
<br/><font size='16'>Thanks A LOT to everyone involved for the help and inspiration!</font>
"
]];


