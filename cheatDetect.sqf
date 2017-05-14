if (playerRacing) then {
  playerRacing = false;

  _message = format ["Player %1 tried to cheat!", name player];
  _message remoteExec ["systemChat"];

  vehicle player setPos getMarkerPos "cheatTarget";
  hint "You were teleported to the starting area.";
};
