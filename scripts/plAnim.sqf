waitUntil{(!isNull (findDisplay 46))};
key_5 = (findDisplay 46) displayAddEventHandler ["KeyDown",{if((_this select 2) isEqualTo 5) then {player playActionNow "gestureFreeze";}; true}];