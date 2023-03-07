BEGIN P_ZIBEN


IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~*gru�ido* Forastero... no estamos aqu� para pelear... *gru�ido* si quieres algo, habla con nuestra l�der.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @1 /* ~*gru�ido* Forastero... no estamos aqu� para pelear... *gru�ido* si quieres algo, habla con nuestra l�der.~ */
  IF ~~ THEN DO ~~ EXIT
END

// Script de Dusk activado M2

IF ~ ~ THEN BEGIN 2 // from:
  SAY @2 /* ~*gru�ido* Humanos... sab�a que no se pod�a confiar en ellos... disfrutar� enfrent�ndome a su raza... aunque �sta sea la �ltima vez...~ */
  IF ~~ THEN DO ~Enemy()~ EXTERN ~p_cufati~ 2
END

IF ~ ~ THEN BEGIN 3 // from:
  SAY @3 /* ~*gru�ido* Nuestra cacique tiene raz�n... hay demasiadas tierras en el continente como para morir por Amn. Coco aqu� te lo puede explicar mejor.~ */
  IF ~~ THEN EXTERN ~P_COCO~ 3
END

IF ~ ~ THEN BEGIN 4 // from:
  SAY @4 /* ~No mentimos, humano. *gru�ido* Pero supongo... que tampoco tenemos prueba de lo contrario.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 10
END

IF ~ ~ THEN BEGIN 5 // from:
  SAY @5 /* ~*gru�ido* Pues, Coco, parece que ya nos est�s empezando a preocupar.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 13
END

IF ~ ~ THEN BEGIN 6 // from:
  SAY @6 /* ~�Por el amor de Kikanuti! Coco, el hombre dijo que lo llamemos Dusk.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 15
END

IF ~ ~ THEN BEGIN 7 // from:
  SAY @7 /* ~*gru�ido* Has logrado lo imposible, humano... has hecho llorar a nuestra l�der *sonr�e, mostrando sus afilados colmillos*~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 16
END

IF ~Global ("P_DuskGood","GLOBAL",1) Global ("P_DuskMatMission2","GLOBAL",5)~ THEN BEGIN 8 // from:
  SAY @8 /* ~*gru�ido* Lo que has hecho por nosotros... no tenemos palabras para expresar nuestra felicidad.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~ ~ THEN BEGIN 9 // from:
  SAY @9 /* ~*susurro* Falon, si sigues llorando pensar�s que eres d�bil.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 135
END

IF ~ ~ THEN BEGIN 10 // from:
  SAY @10 /* ~*gru�ido* Tiene raz�n, Dusk. No tenemos ning�n cari�o por ese bastardo de Sothillis. Si podemos ayudar a llegar desgracia a sus planes, lo haremos con gusto.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 21
END

IF ~ ~ THEN BEGIN 11 // from:
  SAY @11 /* ~�Qu� no se llama as�, Coco!~ */
  IF ~~ THEN GOTO 12
END

IF ~ ~ THEN BEGIN 12 // from:
  SAY @12 /* ~Por cierto, Dusk... *gru�ido* No suelo ser sociable con los humanos... pero siento que debo ser honorable aqu� y darte algo a cambio.~ */
  IF ~~ THEN DO ~GiveItem("P_WSAM","P_Dusk")~ GOTO 13
END

IF ~ ~ THEN BEGIN 13 // from:
  SAY @13 /* ~Este amuleto... lo he guardado durante mucho tiempo... y algo me dice que a ti puede serte �til. Espero que lo aceptes...~ */
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~P_DUSKJ~ 137
END

IF ~Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ THEN BEGIN 14 // from:
  SAY @14 /* ~�Saludos! Mi rol aqu� es la de brindar una estrategia de contraataque hacia el Imperio de Sothillis. El Prelado me ha hecho su asistente personal e incluso, puesto a entrenar con algunos escuderos. Gracias a ustedes, he encontrado sentido al arte de la guerra.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global ("P_DuskMatMission2","GLOBAL",6)~ THEN BEGIN 15 // from:
  SAY @8 /* ~*gru�ido* Lo que has hecho por nosotros... no tenemos palabras para expresar nuestra felicidad.~ */
  IF ~~ THEN DO ~~ EXIT
END

