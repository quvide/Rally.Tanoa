_timeSeconds = floor _this;

_timeMinutes = floor (_timeSeconds / 60);
_timeSeconds = _timeSeconds - _timeMinutes * 60;

_timeHours = floor (_timeMinutes / 60);
_timeMinutes = _timeMinutes - _timeHours * 60;

_zeroPad = {
  _num = _this;
  if (_num < 10) then {
    format["0%1", _num];
  } else {
    _num;
  };
};

_timeSeconds = _timeSeconds call _zeroPad;
_timeMinutes = _timeMinutes call _zeroPad;
_timeHours = _timeHours call _zeroPad;


format ["%1:%2:%3", _timeHours, _timeMinutes, _timeSeconds];
