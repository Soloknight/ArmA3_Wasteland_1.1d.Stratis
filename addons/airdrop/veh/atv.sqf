// Airdrop Request v0.1
// Author CRE4MPIE
// Date 22-01-2015
// Filename:atv.sqf

private ["_playermoney","_price","_confirmMsg","_getInOut"];

_playerMoney = player getVariable ["bmoney", 0];
_price = 1500;
if (_price > _playerMoney) exitWith
			{
				hint format["You don't have enough money in the bank to request this airdrop!"];
				playSound "FD_CP_Not_Clear_F";
			};
			
_confirmMsg = format ["This airdrop will deduct $1,500 from your bank account<br/>"];
_confirmMsg = _confirmMsg + format ["<br/><t font='EtelkaMonospaceProBold'>1</t> x ATV"];

		// Display confirm message
		if ([parseText _confirmMsg, "Confirm", "DROP", true] call BIS_fnc_guiMessage) then
		{	
		
		if (!isNil "vehicleStore_lastPurchaseTime") then
{	// Include vehicle store cooldown timer

	_timeLeft = (["A3W_vehiclePurchaseCooldown", 60] call getPublicVar) - (diag_tickTime - vehicleStore_lastPurchaseTime);

	if (_timeLeft > 0) then
	{
		hint format ["You need to wait %1s before requesting another airdrop!", ceil _timeLeft];
		playSound "FD_CP_Not_Clear_F";
		breakOut "buyVehicles";
	};
};
		
		player setVariable["bmoney",(player getVariable "bmoney")-_price,true];
		vehicleStore_lastPurchaseTime = diag_tickTime;
			

			
		_posplr = [((getPos player) select 0) + 2, ((getPos player) select 1) + 2, 250];
		_para = createVehicle ["B_Parachute_02_F", _posplr, [], 0, ""];
			_spwnveh = "B_G_Quadbike_01_F" createVehicle _posplr;
			_spwnveh setDir random 360;
			_spwnveh setPos (_posplr);
			_spwnveh attachTo [_para,[0,0,-1.5]];
			clearMagazineCargoGlobal _spwnveh;
			clearWeaponCargoGlobal _spwnveh;
			clearItemCargoGlobal _spwnveh;
			
		if (["A3W_playerSaving"] call isConfigOn) then
		{
				[] spawn fn_savePlayerData;
		};
			WaitUntil {(((position _spwnveh) select 2) < 100)};
			_smoke1= "SmokeShellGreen" createVehicle getPos _spwnveh;
			_smoke1 attachto [_spwnveh,[0,0,-0.5]];
			_flare1= "F_40mm_Green" createVehicle getPos _spwnveh;
			_flare1 attachto [_spwnveh,[0,0,-0.5]];
			WaitUntil {(((position _spwnveh) select 2) < 60)};
			_flare1= "F_40mm_Green" createVehicle getPos _spwnveh;
			_flare1 attachto [_spwnveh,[0,0,-0.5]];
			
			WaitUntil {((((position _spwnveh) select 2) < 1.5) || (isNil "_para"))};
			detach _spwnveh;
			_spwnveh setVariable ["A3W_missionVehicle", true, true];	
			_spwnveh setVariable ["ownerN", name player, true];
			_spwnveh setVariable ["ownerUID", getPlayerUID player, true];		
			_getInOut =
		{
			_spwnveh = _this select 0;
			_unit = _this select 2;

			_unit setVariable ["lastVehicleRidden", netId _spwnveh, true];
			_unit setVariable ["lastVehicleOwner", owner _spwnveh == owner _unit, true];

			_spwnveh setVariable ["vehSaving_hoursUnused", 0];
			_spwnveh setVariable ["vehSaving_lastUse", diag_tickTime];
		};

			_spwnveh addEventHandler ["GetIn", _getInOut];
			_spwnveh addEventHandler ["GetOut", _getInOut];
			
		};						