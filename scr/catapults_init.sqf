_plane = _this select 0;

_pilot = driver _plane;
_pilot_grp = group _pilot;

/*cpult1 = "catapult1" createvehicle(_plane selectionposition "catapult1");
cpult2 = "catapult2" createvehicle(_plane selectionposition "catapult2");
cpult3 = "catapult3" createvehicle(_plane selectionposition "catapult3");
cpult4 = "catapult4" createvehicle(_plane selectionposition "catapult4");*/
fwrw1 = "forward_roadway" createvehicle(_plane selectionposition "froadway"); 
fwrw2 = "ff_roadway" createvehicle(_plane selectionposition "froadway2");
bkrw1 = "back_roadway" createvehicle(_plane selectionposition "broadway");
bkrw2 = "bb_roadway" createvehicle(_plane selectionposition "broadway2"); 

/*cpult1 attachTo [_plane,[0.0,0.0,0.0],"catapult1"];
cpult2 attachTo [_plane,[0.0,0.0,0.0],"catapult2"];
cpult3 attachTo [_plane,[0.0,0.0,0.0],"catapult3"];
cpult4 attachTo [_plane,[0.0,0.0,0.0],"catapult4"];*/
fwrw1 attachTo [_plane,[0.0,0.0,0.0],"froadway"];
fwrw2 attachTo [_plane,[0.0,0.0,0.0],"froadway2"];
bkrw1 attachTo [_plane,[0.0,0.0,0.0],"broadway"];
bkrw2 attachTo [_plane,[0.0,0.0,0.0],"broadway2"];

trt1 = "granit_turret1" createvehicle(_plane selectionposition "turret1");
trt2 = "granit_turret2" createvehicle(_plane selectionposition "turret2");
trt3 = "granit_turret3" createvehicle(_plane selectionposition "turret3");
trt4 = "granit_turret4" createvehicle(_plane selectionposition "turret4");
trt5 = "granit_turret5" createvehicle(_plane selectionposition "turret5");
trt6 = "granit_turret6" createvehicle(_plane selectionposition "turret6");
trt7 = "granit_turret7" createvehicle(_plane selectionposition "turret7");
trt8 = "granit_turret8" createvehicle(_plane selectionposition "turret8");

trt1 attachTo [_plane,[0.0,0.0,0.0],"turret1"];
trt2 attachTo [_plane,[0.0,0.0,0.0],"turret2"];
trt3 attachTo [_plane,[0.0,0.0,0.0],"turret3"];
trt4 attachTo [_plane,[0.0,0.0,0.0],"turret4"];
trt5 attachTo [_plane,[0.0,0.0,0.0],"turret5"];
trt6 attachTo [_plane,[0.0,0.0,0.0],"turret6"];
trt7 attachTo [_plane,[0.0,0.0,0.0],"turret7"];
trt8 attachTo [_plane,[0.0,0.0,0.0],"turret8"];

"RU_Soldier" createunit [getpos _plane, _pilot_grp,"", 0.7, "PRIVATE"];
"RU_Soldier" createunit [getpos _plane, _pilot_grp,"", 0.7, "PRIVATE"];
"RU_Soldier" createunit [getpos _plane, _pilot_grp,"", 0.7, "PRIVATE"];
"RU_Soldier" createunit [getpos _plane, _pilot_grp,"", 0.7, "PRIVATE"];
"RU_Soldier" createunit [getpos _plane, _pilot_grp,"", 0.7, "PRIVATE"];
"RU_Soldier" createunit [getpos _plane, _pilot_grp,"", 0.7, "PRIVATE"];
"RU_Soldier" createunit [getpos _plane, _pilot_grp,"", 0.7, "PRIVATE"];
"RU_Soldier" createunit [getpos _plane, _pilot_grp,"", 0.7, "PRIVATE"];

_tunits = units _pilot_grp;

gunner1 = _tunits select (count(_tunits) -8);
gunner2 = _tunits select (count(_tunits) -7);
gunner3 = _tunits select (count(_tunits) -6);
gunner4 = _tunits select (count(_tunits) -5);
gunner5 = _tunits select (count(_tunits) -4);
gunner6 = _tunits select (count(_tunits) -3);
gunner7 = _tunits select (count(_tunits) -2);
gunner8 = _tunits select (count(_tunits) -1);

gunner1 moveingunner trt1;
gunner2 moveingunner trt2;
gunner3 moveingunner trt3;
gunner4 moveingunner trt4;
gunner5 moveingunner trt5;
gunner6 moveingunner trt6;
gunner7 moveingunner trt7;
gunner8 moveingunner trt8;

trt1 setcombatmode "RED";
trt1 setbehaviour "COMBAT" ;
trt2 setcombatmode "RED";
trt2 setbehaviour "COMBAT" ;
trt3 setcombatmode "RED";
trt3 setbehaviour "COMBAT" ;
trt4 setcombatmode "RED";
trt4 setbehaviour "COMBAT" ;
trt5 setcombatmode "RED";
trt5 setbehaviour "COMBAT" ;
trt6 setcombatmode "RED";
trt6 setbehaviour "COMBAT" ;
trt7 setcombatmode "RED";
trt7 setbehaviour "COMBAT" ;
trt8 setcombatmode "RED";
trt8 setbehaviour "COMBAT" ;

vmfFlag = "FlagCarrier" createVehicle(_plane selectionposition "catapult1");
vmfFlag setflagtexture "\ulyanovsk\icons\vmf.paa";
vmfFlag setFlagOwner (gunner _plane);