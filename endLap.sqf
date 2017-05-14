if (playerRacing) then {
  playerRacing = false;

  _message = format ["Player %1 finished the lap with a time of %2!", name player, (diag_tickTime - timeStarted) call formatTime];
  _message remoteExec ["systemChat"];
};
