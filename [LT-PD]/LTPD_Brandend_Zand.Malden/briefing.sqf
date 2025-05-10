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

