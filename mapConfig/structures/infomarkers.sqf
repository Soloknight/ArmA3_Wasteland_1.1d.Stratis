//@file Version: 1.0
//@file Name: infomarkers.sqf
//@file Author: Cael817, GID Positioning System
//@file Desc: For placing markers

//Spawn island warning
_pos = [2000,1000];
_object = createMarkerLocal ["Info_6", _pos];
_object setMarkerShapeLocal "ELLIPSE";
_object setMarkerTextLocal "...";
_object setMarkerColorLocal "ColorRed";	
_object setMarkerTypeLocal "mil_unknown";
_object setMarkerSize [120,120];
//Spawn island warning text and icon
_pos = [2000,1000,0];
_object = createMarkerLocal ["Info_7", _pos];
_object setMarkerShapeLocal "ICON";
_object setMarkerTextLocal "Dont go or Build here, you might get BANNED for doing so.";
_object setMarkerColorLocal "ColorBlack";	
_object setMarkerTypeLocal "mil_warning";