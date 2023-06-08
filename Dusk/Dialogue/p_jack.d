BEGIN ~p_jack~

IF ~See("P_Dusk")
InParty("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
RandomNum(4,1)
Global("P_Jack_ITC_Dusk1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~*Jack mueve su cola y se echa a los pies de Dusk*~ */
  IF ~~ THEN DO ~SetGlobal("P_Jack_ITC_Dusk1","GLOBAL",1)~ GOTO 1
END

IF 
~~ THEN BEGIN 1 // from:
  SAY @1 /* ~*Jack deja escapar algunos bufidos mientras Dusk acaricia su panza.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,1)~ THEN BEGIN 2 // from:
  SAY @9 /* ~*Jack te observa durante unos segundos con sus ojos de zafiro. Luego, se sienta y parece esperar a que le des algunas instrucciones.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 3 // from:
  SAY @10 /* ~*Jack respira sobre tu mano. Ves un halo g�lido que desprende de su hocico. No es agresivo contigo y parece querer que lo acaricies.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 4 // from:
  SAY @11 /* ~*Jack se detiene un instante y sus ojos se posan en la lejan�a. Al cabo de unos segundos, a�lla profundamente.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 5 // from:
  SAY @12 /* ~*La expresi�n de Jack es estoica, pero al cabo de unos segundos, mueve su cola y se sienta sobre sus dos patas traseras. Parece que te est� pidiendo que lo acaricies.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 6 // from:
  SAY @13 /* ~*De la nada, Jack ladra, lo cual es extra�o. Bellfame te explica que lo hace porque quiere jugar contigo y porque te considera parte de su manada.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Edwin")
InParty("Edwin")
!StateCheck("Edwin",STATE_SLEEPING)
RandomNum(4,2)
Global("P_Jack_ITC_Edwin1","GLOBAL",0)
~ THEN BEGIN 7 // from:
  SAY @14 /* ~*Jack se acerca a Edwin para olisquear su t�nica.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Jack_ITC_Edwin1","GLOBAL",1)~ GOTO 8
END

IF 
~~ THEN BEGIN 8 // from:
  SAY @20 /* ~*Jack sigue moviendo su cola. Aunque luego de unos minutos, desiste y se aleja del mago rojo.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Valygar")
InParty("Valygar")
!StateCheck("Valygar",STATE_SLEEPING)
RandomNum(4,3)
Global("P_Jack_ITC_Valygar1","GLOBAL",0)
~ THEN BEGIN 9 // from:
  SAY @21 /* ~*Jack observa el horizonte y, de repente, se dirige veloz hacia Valygar.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Jack_ITC_Valygar1","GLOBAL",1)~ GOTO 10
END

IF 
~~ THEN BEGIN 10 // from:
  SAY @25 /* ~*Jack muestra sus afilados colmillos. Aunque m�s que amenazante, parece demostrar una extra�a sonrisa lupina.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Keldorn")
InParty("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
RandomNum(4,4)
Global("P_Jack_ITC_Keldorn1","GLOBAL",0)
~ THEN BEGIN 11 // from:
  SAY @26 /* ~*Jack parece acercarse, en un intento fallido, de forma sigilosa a Keldorn.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Jack_ITC_Valygar1","GLOBAL",1)~ GOTO 12
END

IF 
~~ THEN BEGIN 12 // from:
  SAY @33 /* ~*Jack mueve su lomo de placer ante las caricias del viejo caballero.*~ */
  IF ~~ THEN EXIT
END


I_C_T P_JACK 11 P_Jack_Keldorn1
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @27 /* Ya, ya, peque�o. Aqu� tienes. */
== P_JACK IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @28 /* *Jack toma la comida que Keldorn le ha ofrecido. Aparentemente es un trozo de carne seca, la cual degusta enormemente.*  */
== P_BELLD IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @29 /* Mortal, no es necesario que lo alimentes a escondidas. Puedo ver claramente que tienes aprecio por el lobo del invierno. */
== KELDORJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @30 /* Mis hijas siempre han querido un perro. Siempre les dije que el Distrito en el que vivimos no es el lugar correspondiente. Me pregunto si habr� hecho mal... */
== P_BELLD IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @31 /* Anhelas a tu familia... Puede que puedas remediar eso, mortal. */
== KELDORJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @32 /* S�... quiz�s... quiz�s cuando regrese pueda remediar eso. *acaricia a Jack**/
END

I_C_T P_JACK 9 P_Jack_Valygar1
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @22 /* �Qu� sucede, muchacho? Por tu r�pido movimiento de cola dir�a que has visto algo interesante. */
== P_JACK IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @23 /* *Jack jadea unos segundos mientras se sienta sobre sus dos patas y muestra sus patas delanteras a Valygar.*  */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @24 /* �Qu� quieres? Ah, ya veo. Quieres jugar. De acuerdo, pero s�lo un momento. */
END


I_C_T P_JACK 7 P_Jack_Edwin1
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @15 /* ��Pero qu�?! �Largo de aqu�, saco de pulgas! Mira que olfatear las pertenencias de Edwin Odesseiron. */
== P_JACK IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @16 /* *Jack muestra sus colmillos y se para sobre sus patas traseras.*  */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @17 /* Ah, quieres atacarme. Ver�s que no es tan f�cil con una bola de fuego sobre tu lomo. (S�, eso le ense�ar�.) */
== P_BELLD IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @18 /* Jack no pretende atacarte, mortal. Quiere jugar contigo. Por alguna raz�n, le caes bien. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @19 /* Oh, ya veo... con que quieres jugar, �eh? (�Por qu� mueve la cola este pulgoso?) �Shu! �Shu! No tengo tiempo para tonter�as, Jake. */
END


I_C_T P_JACK 0 P_Jack_Dusk1
== P_DUSKJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @2 /* �Jack! �Qui�n es un buen chico? �T� eres un buen chico! *acaricia su panza* */
== P_JACK IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3 /* *Jack muestra los colmillos y dibuja una sonrisa enorme en su hocico*  */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4 /* Jack parece quererte mucho, Dusk. */
== P_DUSKJ IF ~~ THEN @5 /* Siempre me gustaron los perros. Bueno, en este caso, lobo. */
== P_DUSKJ IF ~~ THEN @6 /* Nunca pude tener uno cuando era ni�o. Aunque tuve un gato, eso s�. Tambi�n me gustan los gatos. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @7 /* Tienes afinidad con muchos animales. Da alegr�a a mi coraz�n ver que se llevan bien. */
END
