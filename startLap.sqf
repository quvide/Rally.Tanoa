playerRacing = true;

timeStarted = diag_tickTime;

_message = name player + " started the lap!";
_message remoteExec ["systemChat"];

while {playerRacing} do {
  _time = (diag_tickTime - timeStarted) call formatTime;

  hint _time;
  sleep 1;
}
