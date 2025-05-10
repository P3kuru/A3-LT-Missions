// Include custom briefing
null = execVM "briefing.sqf";

// MAKE SURE THE PLAYER INITIALIZES PROPERLY
if (!isDedicated && player != player) then {
    waitUntil {player == player && time > 0.3};
} else {
    waitUntil {time > 0.3};
};

// INTRO SEQUENCE
waitUntil {time > 0};
cutText ["", "BLACK FADED", 10, true];
player enableSimulation false;

// Run all template settings during black screen
#include "\lt_template_base\Scripts\Missioninit.sqf"
#include "Scripts\customInit.sqf"

sleep 4;

// Display mission info
private _randomColor = selectRandom ["#F09595","#F095E4","#BC95F0","#95C7F0","#95EEF0","#95F0CA","#A9F095","#D6F095","#F0F095","#F0C495"];
[
    [
        ["OP Draadspringen","align = 'center' shadow = '2' size = '1.3' font='PuristaBold'","#FFBA26"],
        ["","<br/>"],
        [format ["by: "],"align = 'center' shadow = '2' size = '0.55' font='PuristaBold'","#FFFFFF"],
        ["Pek","align = 'center' shadow = '2' size = '0.55' font='PuristaBold'",_randomColor],
        ["","<br/>"]
    ],safeZoneX+0.0,safeZoneY+0.8
] spawn BIS_fnc_typeText2;

// Wait for text to be fully displayed before fading in
sleep 3;

// Fade in
cutText ["", "BLACK IN", 10, true];
player enableSimulation true;

Diag_log "LT DEBUG:(Init) init is loaded";
if (["lt_debug",0] call bis_fnc_getParamValue == 1) then 
{
    systemChat "LT DEBUG:(Init) init is loaded";
};