_layer = 85125; 

while {true} do 
{ 
    if (currentVisionMode player == 2) then
        { 
              //hint "Thermals are active";
            _layer    cutText ["Thermal Imaging currently OFFLINE!.","BLACK",-1];
			playSound "FD_CP_Not_Clear_F";
            waituntil {currentVisionMode player != 2};
            _layer cutText ["", "PLAIN"];
        };
        sleep 1; 
}  