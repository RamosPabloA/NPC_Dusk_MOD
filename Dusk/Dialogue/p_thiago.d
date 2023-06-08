BEGIN ~p_thiago~

IF ~See("P_Dusk")
InParty("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
RandomNum(5,1)
Global("P_Thiago_ITC_Dusk1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~*Thiago se acerca a Dusk disimuladamente. Olfatea su mochila en busca de comida.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Thiago_ITC_Dusk1","GLOBAL",1)~ GOTO 1
END

IF 
~~ THEN BEGIN 1 // from:
  SAY @6 /* ~*Thiago ignora las palabras de Dusk mientras engulle sus galletas.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Neera")
InParty("Neera")
!StateCheck("Neera",STATE_SLEEPING)
RandomNum(5,2)
Global("P_Thiago_ITC_Neera1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @7 /* ~*Thiago se encuentra rasc�ndose una de sus orejas cerca de Neera.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Thiago_ITC_Neera1","GLOBAL",1)~ GOTO 3
END

IF 
~~ THEN BEGIN 3 // from:
  SAY @15 /* ~*Thiago observa confundido a Neera. Al cabo de unos segundos, contin�a su labor de rascarse la oreja.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Viconia")
InParty("Viconia")
!StateCheck("Viconia",STATE_SLEEPING)
RandomNum(5,3)
Global("P_Thiago_ITC_Viconia1","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @16 /* ~*Thiago se acerca t�midamente a Viconia.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Thiago_ITC_Viconia1","GLOBAL",1)~ GOTO 5
END

IF 
~~ THEN BEGIN 5 // from:
  SAY @22 /* ~*Thiago toma con su hocico el pan de esporas que le ofrece Viconia. No pasan dos segundos que ya ha sido engullido. Luego, se echa a los pies de la drow esperando algunas caricias. Viconia lo ignora, pero permite que se quede echado a su lado.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Jan")
InParty("Jan")
!StateCheck("Jan",STATE_SLEEPING)
RandomNum(5,4)
Global("P_Thiago_ITC_Jan1","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY @23 /* ~*Thiago est� sentado al lado de Jan mientras devora, lo que parece ser, un pastel de nabos.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Thiago_ITC_Jan1","GLOBAL",1)~ GOTO 7
END

IF 
~~ THEN BEGIN 7 // from:
  SAY @27 /* ~*Thiago emite un leve lamento, pero al cabo de unos segundos, sigue devorando el pastel de nabos.*~ */
  IF ~~ THEN EXIT
END


IF
~RandomNum(5,1)~ THEN BEGIN 8 // from:
  SAY @28 /* ~*Thiago te mira un poco asustado. Est� convencido de que vas a rega�arlo porque est� comiendo algo que encontr� del suelo. Al ver que no le dices nada, sigue masticando como si no hubiera un ma�ana.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 9 // from:
  SAY @29 /* ~*Thiago se sienta a tu lado. Te mira con sus grandes ojos y espera que le des algo de comida. Emite un bufido de aburrimiento mientras espera que act�es en su bienestar.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 10 // from:
  SAY @30 /* ~*Thiago se alegra cuando ve que te le acercas. Comienza a girar sobre su propio eje y te sorprende su agilidad pese a su gran tama�o.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 11 // from:
  SAY @31 /* ~*Thiago emite varios lamentos, esperando llamar tu atenci�n. No est�s seguro de si quiere comida o caricias. Puede que ambas.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 12 // from:
  SAY @32 /* ~*Acaricias el lomo de Thiago y este parece m�s contento que nunca. Tanto que se le escapa un gas y no tienes otra opci�n m�s que alejarte de �l.*~ */
  IF ~~ THEN EXIT
END


IF ~See("Wilson")
InParty("Wilson")
!StateCheck("Wilson",STATE_SLEEPING)
RandomNum(5,5)
Global("P_Thiago_ITC_Wilson1","GLOBAL",0)
~ THEN BEGIN 13 // from:
  SAY @33 /* ~*Thiago se acerca a Wilson y ambos se ponen a lamentarse.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Thiago_ITC_Wilson1","GLOBAL",1)~ GOTO 14
END

IF 
~~ THEN BEGIN 14 // from:
  SAY @41 /* ~*Thiago emite, tambi�n, un bufido, demostrando acuerdo con la ninfa y recibiendo de muy buena gana las bayas que ha creado. Se mira c�mplice con Wilson quien tambi�n est� engullendo las suyas.*~ */
  IF ~~ THEN EXIT
END


I_C_T P_THIAGO 13 P_Thiago_Wilson1
== WilsonJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @34 /* Lamento, lamento. */
== P_THIAGO IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @35 /* *Thiago se�ala la mochila de <CHARNAME> y Wilson parece coincidir.*  */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @36 /* No estoy muy segura de que a <CHARNAME> le haga gracia que coman sus provisiones, m�s all� del hambre que ambos puedan tener. */
== WilsonJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @37 /* Lamento exagerado. */
== P_THIAGO IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @38 /* *Thiago imita a Wilson y se lamenta, tambi�n, de forma exagerada.*  */
== P_BELLD IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @39 /* Puedo crear una bayas m�gicas que pueden comer, mis ni�os. Espero que esto les haga desistir de comerse las provisiones de su compa�ero. */
== WilsonJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @40 /* Bufido. */
END

I_C_T P_THIAGO 6 P_Thiago_Jan1
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @24 /* As� es, peludo. La receta de Ma Jansen es infalible. No hay nada tan delicioso como los pasteles hechos con nabos de la huerta Jansen. Ver�s, mi t�a Petunia elabor� esa complicada receta inspirada en una de sus aventuras en los bosques rondantes de Tethyr. Para mezclar la harina con los nabos molidos utiliz� leche de una vaca, la cual rob� a una bruja y se la trajo aqu� a Athkatla. */
== P_THIAGO IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @25 /* *El oso parece escuchar con atenci�n a las palabras del gnomo. La palabra 'vaca' parece llamarle la atenci�n.*  */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @26 /* Ah, ya veo que te ha interesado Rosita. S�, as� se llama la vaca lechera. Puedo present�rtela si vamos a los Barrios Bajos alg�n d�a. Aunque... ahora que te veo relamerte, puede que esa no sea una buena idea, mi gordo amigo. */
END


I_C_T P_THIAGO 4 P_Thiago_Viconia1
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @17 /* Ser� mejor que te alejes de m�, peludo. No me encuentro de humor. */
== P_THIAGO IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @18 /* *Thiago se sienta al lado de Viconia y se queda observ�ndola, casi admir�ndola.*  */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @19 /* No importan cu�n grandes hagas tus ojos. No te dar� mi merienda. */
== P_THIAGO IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @20 /* *Thiago deja escapar un leve lamento y luego se relame.*  */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @21 /* Ugh, de acuerdo. Pero que sea la �ltima vez. */
END


I_C_T P_THIAGO 2 P_Thiago_Neera1
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @8 /* �Oh, hola, Thiago! �C�mo te encuen--? �Ugh! Thiago, �ese olor viene de ti? */
== P_THIAGO IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @9 /* *Thiago observa a Neera sin saber a qu� se refiere.*  */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @10 /* �Uff! �Bellfame! �D�nde est�s? �Debes hacer algo con el hedor que emana tu oso! */
== P_BELLD IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @11 /* Ah, peque�a mortal. �Te molesta Thiago? Lo lamento, a �l no le gusta ba�arse. */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @12 /* �Argh! Cre� que a todos los osos les gustaba el agua. */
== P_THIAGO IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @13 /* *Thiago se estremece al o�r la palabra 'agua'.* *  */
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @14 /* Bueno... no es como si no hubiese estado antes en una cloaca... �Pero no por ello soportar� tu 'aroma', oso! Espero que te ba�es o puede que me ingenie alg�n conjuro para enviarte a una cascada de agua helada. */
END


I_C_T P_THIAGO 0 P_Thiago_Dusk1
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @1 /* Lo lamento, Thiago. Los caramelos se han... acabado. */
== P_THIAGO IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @2 /* *Thiago deja escapar un exagerado aullido de lamento*  */
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3 /* Hm... puede que tenga algunas... galletas. */
== P_THIAGO IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4 /* *Al o�r la palabra 'galleta', las orejas del oso se paran.* *  */
== P_DUSKJ IF ~~ THEN @5 /* S�, aqu� ten--- �Oye! Casi me arrancas la mano, oso. Sabes, no te vendr�a mal bajar un poco de peso. Deber�as comer menos. */
END
