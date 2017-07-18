{player removeAllEventHandlers _x} forEach["Engine","EpeContact","EpeContactEnd","EpeContactStart","FiredMan","Fuel","Gear","GetInMan","GetOutMan","HandleDamage","HandleHeal","IncomingMissile","SeatSwitchedMan"];
player addEventHandler["Respawn",{player setPos (getMarkerPos selectRandom["respawn_civilian","respawn_civilian_1","respawn_civilian_2","respawn_civilian_3","respawn_civilian_4","respawn_civilian_5","respawn_civilian_6","respawn_civilian_7"]);}];



