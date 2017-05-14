startLap setTriggerActivation ["ANYPLAYER", "PRESENT", true];
startLap setTriggerStatements ["this", "", "[] execVM 'startLap.sqf'"];

endLap setTriggerActivation ["ANYPLAYER", "PRESENT", true];
endLap setTriggerStatements ["this", "", "[] execVM 'endLap.sqf'"];

cheat1 setTriggerActivation ["ANYPLAYER", "PRESENT", true];
cheat2 setTriggerActivation ["ANYPLAYER", "PRESENT", true];

cheat1 setTriggerStatements ["this", "[] execVM 'cheatDetect.sqf'", ""];
cheat2 setTriggerStatements ["this", "[] execVM 'cheatDetect.sqf'", ""];

formatTime = compile preprocessFileLineNumbers "formatTime.sqf";

_units = nearestObjects [getMarkerPos "cheatTarget", ["Car", "CAManBase"], 1000];
{ _x allowDamage false; } forEach _units;

player addAction ["Spawn car", "spawnCar.sqf"];
player addAction ["Restart lap", {
  vehicle player setPos getMarkerPos "cheatTarget";
  hint "You were teleported to the starting area.";
}];

player addAction ["Enable damage", {
    vehicle player allowDamage true;
}];

player addAction ["Disable damage", {
    vehicle player allowDamage false;
}];
