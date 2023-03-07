BEGIN P_CUFATI


IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~Cufa: Hm, Cufa tener hambre. Verte a ti dar a Cufa m�s hambre.
  Tima: Cufa, recuerda que estamos a dieta. Oye, forastero, ser� mejor que hables con nuestro l�der mientras yo convenzo a mi amigo de que no te coma, �s�?~ ~Cufa: Hm, Cufa tener hambre. Verte a ti dar a Cufa m�s hambre.
  Tima: Cufa, recuerda que estamos a dieta. Oye, forastera, ser� mejor que hables con nuestro l�der mientras yo convenzo a mi amigo de que no te coma, �s�?~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)
~ THEN BEGIN 1 // from:
  SAY @1 /* ~Cufa: Hm, Cufa tener hambre. Verte a ti dar a Cufa m�s hambre.
  Tima: Cufa, recuerda que estamos a dieta. Oye, forastero, ser� mejor que hables con nuestro l�der mientras yo convenzo a mi amigo de que no te coma, �s�?~ ~Cufa: Hm, Cufa tener hambre. Verte a ti dar a Cufa m�s hambre.
  Tima: Cufa, recuerda que estamos a dieta. Oye, forastera, ser� mejor que hables con nuestro l�der mientras yo convenzo a mi amigo de que no te coma, �s�?~ */
  IF ~~ THEN DO ~~ EXIT
END

// Script de Dusk activado M2

IF ~ ~ THEN BEGIN 2 // from:
  SAY @2 /* ~Cufa: �Ah, al fin Cufa poder comer! Ser divertido, �verdad, Tima?~ */
  IF ~~ THEN GOTO 3
END

IF ~ ~ THEN BEGIN 3 // from:
  SAY @3 /* ~Tima: Cufa, no estoy tan seguro de ello... recuerda que nuestro deseo por la beligerancia ha dejado de existir... Combatir una vez m�s con estos seres conscientes... puede que signifique nuestro fin...~ */
  IF ~~ THEN GOTO 4
END

IF ~ ~ THEN BEGIN 4 // from:
  SAY @4 /* ~Tima: Pero no tenemos otra opci�n. Nuestra l�der ha intentado negociar... pero al no llegar a buenos t�rminos... un combate nos espera por delante. �Vamos, hermano! Tenemos enemigos qu� pisotear.~ */
  IF ~~ THEN GOTO 5
END

IF ~ ~ THEN BEGIN 5 // from:
  SAY @5 /* ~Cufa: Pisotear humanos... �eso ser siempre divertido!~ */
  IF ~~ THEN DO ~Enemy()
  SetGlobal ("P_DuskEvil","GLOBAL",1)~ UNSOLVED_JOURNAL @210008 EXIT
END

IF ~ ~ THEN BEGIN 6 // from:
  SAY @6 /* ~Cufa: Cufa pensar que Coco deber dejar de consumir hongos. Hablar cosas que no tener sentido.~ */
  IF ~~ THEN EXTERN ~P_COCO~ 4
END

IF ~ ~ THEN BEGIN 7 // from:
  SAY @7 /* ~Tima: Coco tiene raz�n. A tal punto que ha logrado convencer a mi hermano de dejar de alimentarse de humanos. Estamos tratando de vivir en paz. Tratando de encontrar un hogar.~ */
  IF ~~ THEN GOTO 8
END

IF ~ ~ THEN BEGIN 8 // from:
  SAY @8 /* ~Cufa: *suspiro* Yo extra�ar comer humanos...~ */
  IF ~~ THEN EXTERN ~P_FALON~ 6
END

IF ~ ~ THEN BEGIN 9 // from:
  SAY @9 /* ~Tima: Al parecer, nos encontramos en una encrucijada. No tenemos forma de probar nuestra inocencia...~ */
  IF ~~ THEN GOTO 10
END

IF ~ ~ THEN BEGIN 10 // from:
  SAY @10 /* ~Tima: Pero tampoco tienes forma de probar nuestra culpabilidad, cormyreano.~ */
  IF ~~ THEN GOTO 11
END

IF ~ ~ THEN BEGIN 11 // from:
  SAY @11 /* ~Cufa: Hmmm... cormyreano. �Eso es comida?~ */
  IF ~~ THEN GOTO 12
END

IF ~ ~ THEN BEGIN 12 // from:
  SAY @12 /* ~Tima: *susurro* Depende, hermano. Depende de lo que responda el humano...~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 84
END

IF ~ ~ THEN BEGIN 13 // from:
  SAY @13 /* ~Tima: Oh, Coco... no me digas que el objeto est� maldito...~ */
  IF ~~ THEN GOTO 14
END

IF ~ ~ THEN BEGIN 14 // from:
  SAY @14 /* ~Cufa: �Escudo lila maldito? L�stima, a Cufa gustarle ver escudo brillante.~ */
  IF ~~ THEN EXTERN ~P_COCO~ 8
END

IF ~ ~ THEN BEGIN 15 // from:
  SAY @15 /* ~Cufa: �Dusk? A Cufa gustar nombre. F�cil de recordar.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 92
END

IF ~ ~ THEN BEGIN 16 // from:
  SAY @16 /* ~Tima: �Has escuchado eso, Cufa? Pronto tendremos un hogar. No lo puedo creer.~ */
  IF ~~ THEN GOTO 17
END

IF ~ ~ THEN BEGIN 17 // from:
  SAY @17 /* ~Cufa: Cufa escuchar bien, Tima. Cufa estar contento por nuevo hogar. Cufa llorar de la emoci�n.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 19
END

IF ~Global ("P_DuskGood","GLOBAL",1) Global ("P_DuskMatMission2","GLOBAL",5) ~ THEN BEGIN 18 // from:
  SAY @18 /* ~Tima: Cufa y yo estamos muy agradecido, forastero. �Verdad, Cufa?~ */
  IF ~~ THEN GOTO 19
END

IF ~ ~ THEN BEGIN 19 // from:
  SAY @19 /* ~Cufa: Tima tener raz�n. Cufa esperar vivir a base de alimento sano a partir de ahora.~ */
  IF ~~ THEN GOTO 20
END

IF ~ ~ THEN BEGIN 20 // from:
  SAY @20 /* ~Tima: Eso, viniendo de ti, hermano, es mucho decir.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~ ~ THEN BEGIN 21 // from:
  SAY @21 /* ~Cufa: Cufa ayudar a pisotear ogro mago. Cufa luchar al lado de humanos.~ */
  IF ~~ THEN GOTO 22
END

IF ~ ~ THEN BEGIN 22 // from:
  SAY @22 /* ~Tima: Supongo que no tengo m�s opci�n que seguirte, Cufa.~ */
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~P_COCO~ 12
END

IF ~Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ THEN BEGIN 23 // from:
  SAY @23 /* ~Tima: �Vaya, pero si nos visitan nuestros amigos! Mira, Cufa, ha venido <CHARNAME>.~ */
  IF ~~ THEN GOTO 24
END

IF ~ ~ THEN BEGIN 24 // from:
  SAY @24 /* ~Cufa: �Uh? Perdonar, Peque�o Dormil�n estar hambriento otra vez. Cufa buscar hieno para Peque�o Dormil�n.~ */
  IF ~~ THEN GOTO 25
END

IF ~ ~ THEN BEGIN 25 // from:
  SAY @25 /* ~Tima: �Cufa! Ya has alimentado a Peque�o Dormil�n hace unas horas, d�jalo descansar un momento. Puedes encargarte de Peque�o Saltar�n, �l s� parece hambriento.~ */
  IF ~~ THEN GOTO 26
END

IF ~ ~ THEN BEGIN 26 // from:
  SAY @26 /* ~Cufa: Peque�o Saltar�n estar a dieta. �Ver que est� gordo? Tima querer hacer engordar a todos.~ */
  IF ~~ THEN GOTO 27
END

IF ~ ~ THEN BEGIN 27 // from:
  SAY @27 /* ~Tima: Hermano, est�s diciendo tonter�as. Yo fui el que te puso a dieta, �recuerdas? Hace ya mucho tiempo que no comes m�s que frutas y verduras.~ */
  IF ~~ THEN GOTO 28
END

IF ~ ~ THEN BEGIN 28 // from:
  SAY @28 /* ~Tima: Erhm... Perd�n, <CHARNAME>. Como ver�s, estamos asignados a los establos. La verdad es que es una tarea que nos agrada bastante. Especialmente a Cufa. Mi hermano mayor se ha encari�ado bastante con los caballos.~ */
  IF ~~ THEN GOTO 29
END

IF ~ ~ THEN BEGIN 29 // from:
  SAY @29 /* ~Cufa: Cufa ser feliz con nuevo hogar. Estar agradecido con Dusk y <CHARNAME>. Cufa querer a sus amigos y a los caballos.~ */
  IF ~~ THEN DO ~~ EXIT
END


IF ~Global ("P_DuskMatMission2","GLOBAL",6) ~ THEN BEGIN 30 // from:
  SAY @18 /* ~Tima: Cufa y yo estamos muy agradecido, forastero. �Verdad, Cufa?~ */
  IF ~~ THEN GOTO 19
END
