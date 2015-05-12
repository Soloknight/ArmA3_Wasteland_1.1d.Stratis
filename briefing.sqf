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
<br/> [Added] Effects toggle on Player Menu (small FPS boost)
<br/> [Removed] Slit throat for further testing
<br/> [Changed] Corpse and Item Cleanup for optimized
<br/> [Changed] Airdrop to the original system - better performance
<br/> [Changed] Attack Helis can no longer airlift
<br/> [Fixed] Thermal Balance
<br/> [Fixed] Backend Performance Optimizations
<br/> [Fixed] Airdrop fixes
<br/> [Fixed] Players now spawn with loaded guns
<br/> [Added] Owned vehicles will be locked on restarts
<br/> [Added] Slit Throat ( live and wounded players )
<br/> [Added] Base objects only save for 5 days
<br/> [Added] Beacon Saving
<br/> [Added] Players can only deploy 1 beacon
<br/> [Added] Limited Thermals
<br/> [Added] UAV Control Restrictions (Owner)
<br/> [Added] Town spawn Cooldown

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


