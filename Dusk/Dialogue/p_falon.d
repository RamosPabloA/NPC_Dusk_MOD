BEGIN P_FALON


IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~Saludos, viajero. Por favor, no temas. Somos pac�ficos y, como tales, pretendemos pasar desapercibidos mientras viajamos hacia el sur, lejos de toda guerra y discriminaci�n. Es por ello que esperamos no tener problemas con nadie.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @1 /* ~Saludos, viajero. Por favor, no temas. Somos pac�ficos y, como tales, pretendemos pasar desapercibidos mientras viajamos hacia el sur, lejos de toda guerra y discriminaci�n. Es por ello que esperamos no tener problemas con nadie.~ */
  IF ~~ THEN DO ~~ EXIT
END

// Script de Dusk activado M2

IF ~ ~ THEN BEGIN 2 // from:
  SAY @2 /* ~*gru�ido* �Forasteros! ��Qu� quieren de nosotros?! �No hemos atacado a nadie! Tratamos de vivir en paz...~ */
    IF ~~ THEN REPLY @3 /* ~�R�pido, Dusk! No les demos tiempo para pensar. �Ataquemos!~ */ EXTERN ~P_DUSKJ~ 77
    IF ~~ THEN REPLY @4 /* ~Dusk... creo que ser�a mejor que les escuchemos... puede que tengan algo interesante que contar.~ */ EXTERN ~P_DUSKJ~ 78
END

IF ~ ~ THEN BEGIN 3 // from:
  SAY @5 /* ~*suspiro* No quer�a llegar a esto... pero no nos dejan otra opci�n... �Moriremos con tal de ser libres!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskMatMission2","GLOBAL",7) Enemy()~ EXTERN ~P_COCO~ 2
END


IF ~ ~ THEN BEGIN 4 // from:
  SAY @6 /* ~De... de acuerdo. Mi nombre es Falon. Mi tribu y yo hemos desertado del imperio de Sothillis. Nos cansamos de tanta guerra, de tanta sangre... s�lo queremos vivir en paz.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 80
END

IF ~ ~ THEN BEGIN 5 // from:
  SAY @7 /* ~Pues... nosotros ya no buscamos la guerra.... queremos vivir sin tener que luchar por alguien tan cruel como Sothillis... Nosotros no le importamos, y morir por �l ya no tiene sentido. No es as�, �Ziben?~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 3
END

IF ~ ~ THEN BEGIN 6 // from:
  SAY @8 /* ~Llevamos huyendo durante semanas y hacia el sur es adonde nos dirigimos.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 81
END

IF ~ ~ THEN BEGIN 7 // from:
  SAY @9 /* ~Pues... yo...~ */
    IF ~~ THEN REPLY @10 /* ~�Lo sab�a! Est�n mintiendo, Dusk... ser� mejor que ataquemos ahora antes de que sea demasiado tarde.~ */ EXTERN ~P_DUSKJ~ 77
    IF ~~ THEN REPLY @11 /* ~�Y bien? Estamos esperando...~ */ GOTO 8
END

IF ~ ~ THEN BEGIN 8 // from:
  SAY @12 /* ~Hace algunas noches... el escudo estaba all� cuando despertamos. Cre� que valdr�a algo de dinero en el mercado negro... as� que simplemente lo tom�.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 83
END

IF ~ ~ THEN BEGIN 9 // from:
  SAY @13 /* ~�Es la verdad, humano! Simplemente... apareci�...~ */
  IF ~~ THEN EXTERN ~P_COCO~ 5
END

IF ~ ~ THEN BEGIN 10 // from:
  SAY @14 /* ~Venimos del Pico de las Nubes. Fuimos reclutados por uno de los capitanes de Sothillis.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 88
END

IF ~ ~ THEN BEGIN 11 // from:
  SAY @15 /* ~Ya te lo he dicho, humano... cuando despertamos, el escudo simplemente estaba all�.~ */
  IF ~~ THEN EXTERN ~P_COCO~ 6
END

IF ~ ~ THEN BEGIN 12 // from:
  SAY @16 /* ~�A qu� te refieres, Coco?~ */
  IF ~~ THEN EXTERN ~P_COCO~ 7
END

IF ~ ~ THEN BEGIN 13 // from:
  SAY @17 /* ~�Plantado? No comprendo, humano.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 90
END

IF ~ ~ THEN BEGIN 14 // from:
  SAY @18 /* ~Entonces, ser�s Dusk. Me alegra ver que llegamos a una conclusi�n sin derramamiento de sangre.~ */
  IF ~~ THEN EXTERN ~P_COCO~ 9
END

IF ~ ~ THEN BEGIN 15 // from:
  SAY @19 /* ~Dinos, Dusk. Si est� en nuestro poder, te ayudaremos.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 93
END

IF ~ ~ THEN BEGIN 16 // from:
  SAY @20 /* ~Por supuesto. El escudo es tuyo. En cierta manera, me alegra deshacerme de �l. Nunca sent� que fuera correcto el tenerlo con nosotros.~ */
  IF ~~ THEN DO ~GiveItem("p_brkshl", "P_Dusk")~ EXTERN ~P_DUSKJ~ 94
END

IF ~ ~ THEN BEGIN 17 // from:
  SAY @21 /* ~Pues... a decir verdad... intentamos llegar al sur. Quiz�s a Calimshan o al Bosque de Mir. Aunque, a decir verdad, tambi�n aceptar�amos vivir en Amn... Pero...~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 95
END

IF ~ ~ THEN BEGIN 18 // from:
  SAY @22 /* ~�De verdad har�s eso por nosotros? Yo... no tengo palabras...~ */
  IF ~~ THEN EXTERN ~P_COCO~ 10
END

IF ~ ~ THEN BEGIN 19 // from:
  SAY @23 /* ~Dusk... estaremos aqu� esperando con ansias tu regreso...~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 97
END

IF ~Global ("P_DuskMatMission2","GLOBAL",4)~ THEN BEGIN 20 // from:
  SAY @24 /* ~Nosotros no buscamos problemas, forasteros.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 76
END

IF ~Global ("P_DuskGood","GLOBAL",1) Global ("P_DuskMatMission2","GLOBAL",5)~ THEN BEGIN 21 // from:
  SAY @25 /* ~Muchas gracias por ayudarnos. No puedo creer que los humanos siquiera consideren el dejarnos vivir con ellos... Mi tribu y yo les estamos muy agradecidos.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk") Global ("P_DuskMatMission2","GLOBAL",6)~ THEN BEGIN 27 // from:
  SAY @25 /* ~Muchas gracias por ayudarnos. No puedo creer que los humanos siquiera consideren el dejarnos vivir con ellos... Mi tribu y yo les estamos muy agradecidos.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~!InParty("P_Dusk")
!See("P_Dusk") Global ("P_DuskMatMission2","GLOBAL",6)~ THEN BEGIN 26 // from:
  SAY @25 /* ~Muchas gracias por ayudarnos. No puedo creer que los humanos siquiera consideren el dejarnos vivir con ellos... Mi tribu y yo les estamos muy agradecidos.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
See("P_Dusk")
 Global ("P_DuskMatMission2","GLOBAL",6)~ THEN BEGIN 22 // from:
  SAY @26 /* ~�Dusk, has vuelto!~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 134
END

IF ~ ~ THEN BEGIN 23 // from:
  SAY @27 /* ~*llanto* No sabes cu�nto has hecho por nosotros...~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 9
END

IF ~ ~ THEN BEGIN 24 // from:
  SAY @28 /* ~Entiendo... estamos m�s que dispuestos a ayudar a los humanos de Athkatla, Dusk.~ */
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~P_ZIBEN~ 10
END

IF ~Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ THEN BEGIN 25 // from:
  SAY @29 /* ~�Amigos! Gracias por visitarme. Sir Ryan y el Prelado nos han dado diferentes roles a cumplir. En mi caso me encargo de recibir a aquellos que tengan problemas callejeros. Si est� en mi poder, har� justicia en nombre de la Orden. Podr�n encontrar al resto de mis compa�eros repartidos en los cuarteles.~ */
  IF ~~ THEN DO ~~ EXIT
END

// SIGUE LABEL 28