// Removes old briefing sections
player removeDiarySubject "cba_help_docs";
player removeDiarySubject "Units";
player removeDiarySubject "Diary";
player removeDiarySubject "Statistics";

// Add new briefing section
player createDiarySubject ["Briefing","Briefing"];

// Administrative
player creatediaryrecord ["Briefing",[format ["Administratie"],format ["
<br/><font face='PuristaBold' color='#FFBA26' size='16'>Checklist</font>
<br/><font color='#D7DBD5'>• Bestaat er een plaatsvervangend hoofd?</font color>
<br/><font color='#D7DBD5'>• Is het doel van de missie helder?</font color>
<br/><font color='#D7DBD5'>• Zijn de vereiste acties en het traject begrijpelijk?</font color>
<br/><font color='#D7DBD5'>• Zijn alle benodigde hulpmiddelen aanwezig?</font color>
<br/><font color='#D7DBD5'>• Zijn al deze hulpmiddelen toegankelijk?</font color>
<br/><font color='#D7DBD5'>• Kan de reis van punt A naar punt B veilig plaatsvinden en wat zijn de risico's?</font color>
<br/><font color='#D7DBD5'>• Is er een noodplan beschikbaar?</font color>
<br/><br/><font face='PuristaBold' color='#FFBA26' size='16'>Overig</font>
<br/><font color='#D7DBD5'>Hier zet je overige relevante informatie neer over de missie die nergens anders past.</font color>
"]]];

// Mission
player creatediaryrecord ["Briefing",[format ["Missie"],format ["
<font face='PuristaBold' size='16' color='#FFBA26'>Missie</font><br/>
<font color='#D7DBD5'>Jullie taak is simpel maar risicovol:</font color>
<br/><br/><font color='#D7DBD5'>• Lokaliseren en vernietigen van de drie Ghosthawk-wrakken met explosieven.</font color>
<br/><font color='#D7DBD5'>• Neutraliseren van vijandelijke aanwezigheid rond de crashsites.</font color>
<br/><font color='#D7DBD5'>• Exfiltratie zodra alle doelen zijn uitgeschakeld.</font color>
"]]];

// Situation
player creatediaryrecord ["Briefing",[format ["Situatie"],format ["
<font face='PuristaBold' color='#FFBA26' size='16'>Situatie</font><br/>
<font color='#D7DBD5'>Drie Ghosthawk helikopters zijn neergehaald boven Sa’hatra na een mislukte extractiemissie. De wrakken zijn intact, en de lokale TURA-rebellen zijn al onderweg om ze te bergen. Deze groep, bekend om hun KKW-wapens en snelle technicals, zal proberen de helikopters door te verkopen of onderdelen te gebruiken voor hun eigen operaties. Dit mag niet gebeuren.<br/>
Onze ISR-drones hebben bevestigd dat TURA-strijders zich rond de crashsites verzamelen, maar ze hebben nog niet de middelen om de helikopters weg te slepen. Dit geeft ons een kort tijdsvenster om in te grijpen voordat ze verdwijnen in het zwarte circuit.</font color>
<br/><br/><font face='PuristaBold' color='#A34747'>Vijandelijke Troepen:</font>
<br/><font color='#D7DBD5'>Verwacht lichte tot middelzware tegenstand, inclusief insurgent patrouilles, technicals en statische posities. Ze kennen het terrein en zijn gemotiveerd. Snel en gecoördineerd optreden is essentieel om te voorkomen dat de vijand versterkingen oproept.</font color>
<br/><br/><font face='PuristaBold' color='#A3E0FF'>Eigen Troepen:</font>
<br/><font color='#D7DBD5'>• Lowlands Tactical</font color>
<br/><font color='#D7DBD5'>• 4x Vector HMG</font color>
<br/><br/><font face='PuristaBold' color='#A3FFA3'>Terrein/Weer:</font>
<br/><font color='#D7DBD5'>• Middendag</font color>
<br/><font color='#D7DBD5'>• Helder</font color>
<br/><font color='#D7DBD5'>• Warm, het is de woestijn...</font color>
"]]];

