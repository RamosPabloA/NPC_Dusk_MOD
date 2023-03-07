BEGIN P_COCO


IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY @0 /* ~�Hola! La verdad es que tratamos de vivir pac�ficamente. Si tienes algo que discutir, mejor hazlo con nuestra l�der.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
Global ("P_DuskGood","GLOBAL",0)
Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",0)~ THEN BEGIN 1 // from:
  SAY @1 /* ~�Hola! La verdad es que tratamos de vivir pac�ficamente. Si tienes algo que discutir, mejor hazlo con nuestra l�der.~ */
  IF ~~ THEN DO ~~ EXIT
END

// Script de Dusk activado M2

IF ~~ THEN BEGIN 2 // from:
  SAY @2 /* ~Oh, cielos... no quer�a llegar a una resoluci�n violenta... espero que sea la �ltima vez que combatamos, compa�eros.~ */
  IF ~~ THEN DO ~Enemy()~ EXTERN ~p_ziben~ 2
END

IF ~ ~ THEN BEGIN 3 // from:
  SAY @3 /* ~Es la verdad... estamos cansados de vivir en guerra... la vida es demasiado hermosa como para vivir odi�ndose los unos con los otros. Si tan s�lo todos pudi�semos vivir en paz y armon�a.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 6
END

IF ~ ~ THEN BEGIN 4 // from:
  SAY @4 /* ~Cufa, yo no he consumido nada extra�o (al menos en la �ltima semana). Adem�s, t� sabes que tengo raz�n. D�selo, Tima.~ */
  IF ~~ THEN EXTERN ~P_CUFATI~ 7
END

IF ~ ~ THEN BEGIN 5 // from:
  SAY @5 /* ~Falon dice la verdad, caballero. Nunca antes hab�amos visto nada que sea de Cormyr. Excepto ese escudo roto.~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 4
END

IF ~ ~ THEN BEGIN 6 // from:
  SAY @6 /* ~A decir verdad... percib� una energ�a siniestra a su alrededor.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 12
END

IF ~ ~ THEN BEGIN 7 // from:
  SAY @7 /* ~No lo mencion� antes, porque no cre� que fuese necesario. No quer�a preocupar a nadie.~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 5
END

IF ~ ~ THEN BEGIN 8 // from:
  SAY @8 /* ~No creo que est� maldito, Cufa-Tima. Pero s� estoy segura de que su energ�a, en un principio, era... negativa.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 89
END

IF ~ ~ THEN BEGIN 9 // from:
  SAY @9 /* ~�Ay, me encanta el nombre Ardusk! �Puedo llamarte Ardusk? Ardie suena bien.~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 6
END

IF ~ ~ THEN BEGIN 10 // from:
  SAY @10 /* ~�Qu� pasa, amiga? Est�s llorando. Es de la alegr�a, �verdad?~ */
  IF ~~ THEN EXTERN ~P_ZIBEN~ 7
END

IF ~Global ("P_DuskGood","GLOBAL",1) Global ("P_DuskMatMission2","GLOBAL",5)~ THEN BEGIN 11 // from:
  SAY @11 /* ~Estamos muy emocionados de tener un nuevo hogar. �No puedo esperar el conocer Athkatla!~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY @12 /* ~Muchas gracias, Ardie. Has hecho mucho por este grupo, a�n cuando no nos deb�as nada.~ */
  IF ~~ THEN DO ~EscapeArea()~ EXTERN ~P_ZIBEN~ 11
END

IF ~InParty("P_Dusk")
See("P_Dusk") Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ THEN BEGIN 13 // from:
  SAY @13 /* ~�Ardie! *le da un abrazo y sin querer le tira salsa encima a Dusk* �Oh, lo lamento! A�n me cuesta acostumbrarme a esta tarea. �Si quieres te lo compensar� cocin�ndote algo delicioso!~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DUSKJ~ 218
END

IF ~Global ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ THEN BEGIN 14 // from:
  SAY @14 /* ~�Oh, pero si recibo visitas! Como ver�n, ahora soy cocinera. Es mucho mejor que andar repartiendo golpes. Estoy aprendiendo mucho y en mis tiempos libres lo paso aprendiendo sobre Tyr. Creo que puedo mejorar muchos mis oraciones aqu�. �Amo mi nuevo hogar!~ */
  IF ~~ THEN DO ~~ EXIT
END


IF ~Global ("P_DuskMatMission2","GLOBAL",6)~ THEN BEGIN 15 // from:
  SAY @11 /* ~Estamos muy emocionados de tener un nuevo hogar. �No puedo esperar el conocer Athkatla!~ */
  IF ~~ THEN DO ~~ EXIT
END
