// Weather description functions
private _getOvercastDesc = {
    params ["_value"];
    private _desc = switch (true) do {
        case (_value < 0.2): {"Helder"};
        case (_value < 0.4): {"Licht bewolkt"};
        case (_value < 0.6): {"Bewolkt"};
        case (_value < 0.8): {"Zwaar bewolkt"};
        default {"Dichte bewolking"};
    };
    _desc
};

private _getRainDesc = {
    params ["_value"];
    private _desc = switch (true) do {
        case (_value < 0.1): {"Droog"};
        case (_value < 0.3): {"Lichte regen"};
        case (_value < 0.6): {"Regen"};
        case (_value < 0.8): {"Zware regen"};
        default {"Stortregen"};
    };
    _desc
};

private _getFogDesc = {
    params ["_value"];
    private _desc = switch (true) do {
        case (_value < 0.1): {"Geen mist"};
        case (_value < 0.3): {"Lichte mist"};
        case (_value < 0.6): {"Mistig"};
        case (_value < 0.8): {"Dichte mist"};
        default {"Zeer dichte mist"};
    };
    _desc
};

// Get weather information
private _fog = fog;
private _overcast = overcast;
private _rain = rain;
private _windStr = windStr;
private _gusts = gusts;
private _waves = waves;

// Get forecast information from mission.sqm
private _forecastWeather = missionNamespace getVariable ["forecastWeather", 0];
private _forecastWind = missionNamespace getVariable ["forecastWind", 0.1];
private _forecastWaves = missionNamespace getVariable ["forecastWaves", 0.1];
private _forecastLightnings = missionNamespace getVariable ["forecastLightnings", 0.1];
private _forecastFogDecay = missionNamespace getVariable ["forecastFogDecay", 0.014];

// Weather (created first, appears last)
player creatediaryrecord ["Diary",[format ["5. Meteorologie"],format ["
<font face='PuristaBold' color='#FE8D00'>Huidige Weer:</font>
<br/><font color='#D7DBD5'>• Luchtgesteldheid: %1</font>
<br/><font color='#D7DBD5'>• Neerslag: %2</font>
<br/><font color='#D7DBD5'>• Zicht: %3</font>
<br/><font color='#D7DBD5'>• Wind: %4 km/h</font>
<br/><font color='#D7DBD5'>• Windstoten: %5 km/h</font>
<br/><font color='#D7DBD5'>• Golven: %6 m</font>
<br/><font color='#D7DBD5'>• Onweer: %7</font>
<br/><br/><font face='PuristaBold' color='#FE8D00'>Weersverwachting:</font>
<br/><font color='#D7DBD5'>• Luchtgesteldheid: %9</font>
<br/><font color='#D7DBD5'>• Neerslag: %11</font>
<br/><font color='#D7DBD5'>• Zicht: %12</font>
<br/><font color='#D7DBD5'>• Wind: %14</font>
<br/><font color='#D7DBD5'>• Golven: %16</font>
<br/><font color='#D7DBD5'>• Onweerskans: %17</font>",
[_overcast] call _getOvercastDesc,
[_rain] call _getRainDesc,
[_fog] call _getFogDesc,
round (_windStr * 3.6),
round (_gusts * 3.6),
round (_waves * 10),
if (lightnings > 0.5) then {"Aanwezig"} else {"Niet aanwezig"},
[_forecastWeather] call _getOvercastDesc,
if (_forecastWeather > _overcast) then {"Verslechterend"} else {"Verbeterend"},
[_forecastWeather] call _getRainDesc,
if (_forecastWeather > _rain) then {"Toenemend"} else {"Afnemend"},
if (_forecastFogDecay > 0) then {"Verbeterend"} else {"Verslechterend"},
round (_forecastWind * 3.6),
if (_forecastWind > _windStr) then {"Toenemend"} else {"Afnemend"},
round (_forecastWaves * 10),
if (_forecastWaves > _waves) then {"Toenemend"} else {"Afnemend"},
if (_forecastLightnings > 0.5) then {"Aanwezig"} else {"Niet aanwezig"}
]]];

// Signalen (created second, appears second to last)
player creatediaryrecord ["Diary",[format ["4. Signalen"],format ["
<font face='PuristaBold' color='#FE8D00'>Communicatie</font>
<br/><font color='#D7DBD5'>• GPC/TL: AN-RPC152 Kanaal 1, Blok 1 (01-FMLOSVOC01)</font>
<br/><font color='#D7DBD5'>• Alpha AN-PRC434 Kanaal 1/font>
<br/><font color='#D7DBD5'>• Bravo AN-PRC434 Kanaal 2</font>
<br/><font color='#D7DBD5'>• Charlie AN-PRC434 Kanaal 3</font>
<br/><font color='#D7DBD5'>• Delta AN-PRC434 Kanaal 4</font>
<br/><br/><font face='PuristaBold' color='#FE8D00'>Signalen</font>
<br/><font color='#D7DBD5'>• Wit/Blauw/Gele rook: Maskering</font>
<br/><font color='#D7DBD5'>• Groene rook: Locatie veilig</font>
<br/><font color='#D7DBD5'>• Rode rook: Vijandige positie</font>
"]]];

// Logistics (created third, appears third to last)
player creatediaryrecord ["Diary",[format ["3. Logistiek"],format ["
<font face='PuristaBold' color='#FE8D00'>Bevoorrading</font>
<br/><font color='#D7DBD5'>• Initieel standaard munitie loadout</font>
<br/><font color='#D7DBD5'>• Herbevoorrading d.m.v 'burger' dropping</font>
<br/><br/><font face='PuristaBold' color='#FE8D00'>Transport</font>
<br/><font color='#D7DBD5'>• Te voet verplaatsing, geen voertuigondersteuning</font>
"]]];

// Mission (created fourth, appears fourth to last)
player creatediaryrecord ["Diary",[format ["2. Missie"],format ["
<font color='#D7DBD5'>We zijn diep achter vijandelijke linies, met als primaire opdracht het verstoren van kritieke vijandelijke capaciteiten en het verzwakken van hun verdedigingsstructuur. Dit maakt de weg vrij voor een doorslaggevende doorbraak naar hun strategische kerngebieden. De vier doelstellingen zijn zorgvuldig geselecteerd op basis van hun directe invloed op de vijandelijke gevechtskracht en hun vermogen om het verloop van het conflict te bepalen. Het uitschakelen van deze doelen zal niet alleen hun operationele capaciteiten ontwrichten, maar ook hun moraal en coördinatie volledig ondermijnen.</font>
<br/><br/><font face='PuristaBold' color='#FE8D00'>Uitvoering</font>
<br/><font color='#D7DBD5'>• <marker name='task1'>Neutraliseer vijandelijk AA-platformen</marker></font>
<br/><font color='#D7DBD5'>• <marker name='task2'>Neutraliseer vijandelijke vuursteunmiddelen</marker></font>
<br/><font color='#D7DBD5'>• <marker name='task3'>Elimineer HVT: Vladimir Afanasyev</marker></font>
<br/><font color='#D7DBD5'>• <marker name='task4'>Neutraliseer radiocapaciteit door bezetting radiostation uit te schakelen</marker></font>
"]]];

// Situation (created last, appears first)
player creatediaryrecord ["Diary",[format ["1. Situatie"],format ["
<font face='PuristaBold' color='#A34747'>Vijandelijke Troepen:</font>
<br/><font color='#D7DBD5'>• +- 130 PAX</font>
<br/><font color='#D7DBD5'>• Aanvalsgeweren (5.56mm / 7.62mm)</font>
<br/><font color='#D7DBD5'>• Lichte machinegeweren (5.45mm / 7.62x54R)</font>
<br/><font color='#D7DBD5'>• 40mm granaatwerpers (GL)</font>
<br/><font color='#D7DBD5'>• Licht anti-tank (RPG, LAW, 72mm HEAT)</font>
<br/><font color='#D7DBD5'>• Secundaire wapens (pistolen, SMGs, 9mm)</font>
<br/><font color='#D7DBD5'>• Onbekende voertuigdreiging</font>
<br/><br/><font face='PuristaBold' color='#A3E0FF'>Eigen Troepen:</font>
<br/><font color='#D7DBD5'>• M4A4 (5.56mm + Rolafhankelijke 40mm UGL)</font>
<br/><font color='#D7DBD5'>• SR10 (7.62mm, designated marksman role)</font>
<br/><font color='#D7DBD5'>• MRAWS (multi-role AT launcher, 84mm HEAT/HE)</font>
<br/><br/><font face='PuristaBold' color='#650080'>Burgers:</font>
<br/><font color='#D7DBD5'>• Geen civiele elementen geïdentificeerd binnen huidige AO</font>
"]]];


