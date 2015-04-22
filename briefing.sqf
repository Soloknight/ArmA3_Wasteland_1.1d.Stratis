// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: briefing.sqf

if (!hasInterface) exitWith {};

waitUntil {!isNull player};

player createDiarySubject ["changelog", "Changelog"];
player createDiarySubject ["addons", "Supported Addons"];
player createDiarySubject ["keys", "Custom Keys"];
player createDiarySubject ["credits", "Credits"];



player createDiaryRecord ["changelog",
[
"Latest Updates",
"
<br/> [Adjusted] Hide Body to $1000
<br/> [New] UI Status bar
<br/> [Adjusted] Aidrop Spawn locations
<br/> [Added] Revamped Airdrop 
<br/> [Added] Streamlined UI and server Cleanup
<br/> [Added] Video settings action moved to player menu
<br/> [Added] High Value Target Bounty !
<br/> [Added] Minor fixes and performance improvements
<br/> [Added] GID Object system 
<br/> [Added] Added DLC Weapons
<br/> [Added] Improved Server Cleanup
<br/> [Added] License Vehicle 
<br/> [Reduced] Concurrent active missions to 4
<br/> [Removed] Food/Water/Repair Kit at spawn
<br/> [Removed] Insurgent Easter Egg
<br/> [Removed] Crappy vehicle textures
<br/> [Added] Vehicle actions
<br/> [Removed] 3D Markers - double click on the map
<br/> [Added] Explosive Specialist Class
<br/> [Added] Insurgent Class

"
]];

player createDiaryRecord ["addons",
[
"Supported Client Addons",
"
<br/> JSRS 3.0 DragonFyre Sound Mod
<br/> Blastcore Phoenix
<br/> LSD Fullscreen Adjustable Nightvision
<br/> Midrange Texture Replacement Pack
<br/> Community Base Addons RC4 and RC6
<br/> VTS Weapon Resting
<br/> Jump on teamspeak or head over to http://www.gamersinc.co.za for download links!
"
]];

player createDiaryRecord ["keys",
[
"Custom Wasteland Functions",
"
<br/>END = Earplugs
<br/>DEL = Emergency Eject
<br/>H = Holster your weapon
<br/>V = Jump or Open / Cut Parachute
<br/>Left CTRL+R = Mag Repack
<br/>Shift+PGUP/PGDWN = Adjust NVGs if you have the mod installed
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


