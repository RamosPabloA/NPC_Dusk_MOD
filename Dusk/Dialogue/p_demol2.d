BEGIN p_demol2

IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_Dusk_Mat2_hypno","GLOBAL",1)
AreaCheck("AR1506")~ THEN BEGIN 0 // from:
  SAY @0 /* ~(Un portal trae a Demoledor consigo y, en su pose de batalla, emite sus inusuales y acostumbrados ladridos.)~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_Mat2_hypno","GLOBAL",2) 
  ~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~(Pese a oír las palabras de Dusk, Demoledor mantiene su vista fija en los magos)~ */
    IF ~~ THEN REPLY @2 /* ~Genial, el saco de pulgas vino en nuestra ayuda. ¿Se supone que debemos confiar en que nos sea de utilidad? ¡Lo más probable es que nos estorbe!~ */  GOTO 2
	IF ~~ THEN REPLY @3 /* ~¡Demoledor! No sabes cuánto me alegra verte aquí.~ */  GOTO 3
	IF ~~ THEN REPLY @4 /* ~Espero que estés listo para la batalla, mi peludo amigo. Estos magos parecen ser cosa seria.~ */  GOTO 3 
END

IF ~~ THEN BEGIN 2 // from:
  SAY @5 /* ~(Ves cómo su lomo se eriza sutilmente, claramente ofendido por tus comentarios)~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY @6 /* ~(Demoledor mueve la cola sutilmente ante las palabras de <CHARNAME>)~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @7 /* ~(El can centra su mirada en Mathyus)~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @8 /* ~(Demoledor dirige su mirada hacia el grupo de <CHARNAME>)~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @9 /* ~(Demoledor se lanza al ataque de una manera sorpresiva. La batalla ha comenzado...)~ */
  IF ~~ THEN DO ~  SetGlobal ("P_Dusk_Mat2_hypno","GLOBAL",2)
  ~ EXIT
END

// GOOD 4
I_C_T P_DEMOL2 15 P_Dusk_demol2d
== p_demol2 IF ~~ THEN @3515 /* ~(Sus ojos brillantes esperan un apoyo incondicional)~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3491 /* ~No desesperes, mi querido amigo peludo. Minsc, Bubú y Dusk harán lo posible para vencer a los malos y lograr que tu dueño vuelva a tu lado. ¡A sus ojos, Bubú!~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3492 /* ~Por Baervan, ustedes nigromantes no llegarán lejos. Quayle así lo querría. ¡Estoy lista!~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3493 /* ~<CHARNAME>, Dusk... es un honor estar a su lado. Nuestra victoria aquí honrará a los caídos. ¡Por Torm, acabaré con ustedes!~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3494 /* ~Tranquilo, perrito. Pese a que tu amigo elfo caiga en batalla, estoy segura de que Michelson podrá traerlo de vuelta. Por ahora, debemos concentrarnos en ganar.~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3495 /* ~Al fin podremos destajar a estos malnacidos hechiceros. ¡Dusk, déjame a ese petulante Encantador!~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3496 /* ~¿Cuántos inocentes han caído por culpa de estos nigromantes? Es hora de ajustar cuentas. ¡La magia no debe ser inherentemente malvada, os lo demostraré! ~ */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3497 /* ~La muerte viviente es una afrenta a la naturaleza, Anthagar... por eso es que en nombre de Silvanus, tu camino llegará hasta aquí. ¡Por los caídos!~ */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3498 /* ~¡Vuestra abominación acaba aquí, hechicero! Rugiremos como el vendaval de primavera y nuestros actos harán eco incluso en las penumbras de este páramo antinatural. Vamos, pequeño Demoledor. ¡A la batalla!~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3499 /* ~Demoledor, Dusk, será un honor luchar a vuestro lado. ¡No permitiré que surja otro Lavok en Amn! ¡A combatir!~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3500 /* ~Estos "faern" están locos. Será un deleite derrotarlos para ti, Dusk. Y serán una hermosa ofrenda a Shar.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3501 /* ~Finalmente, hombre del palito. ¡Mi momento de brillar ha llegado! Estos magos de pacotilla sabrán que no deben cruzar a Edwin Odesseiron (Os lo demostraré...).~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3502 /* ~¡Basta de cháchara! Es hora de partir cabezas con mi hacha. Patas largas, déjame a ese mago elfo afeminado. Su cabeza será un hermoso trofeo.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3503 /* ~Bueno, supongo que no querrás que te cuente una historia antes de una batalla, ¿no?~ */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3504 /* ~Has adivinado, mi inteligente amigo. Prometo comprarte cerveza de nabos cuando esto termine.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3505 /* ~Eso me gusta, Duskito. Eso me gusta. Ahora, manos a la obra: hay humanos que deben probar la efectividad de mi ballesta.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3506 /* ~¡Vaya, vaya! Combates así he tenido en otros planos, mi buen canario blanco. Pero no de este calibre. ¡Esto será digno de componer una o dos canciones!~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @3507 /* ~¡Muy bien, Dusk! Haré lo que pueda para ayudarte. Sólo recuerda que me debes algunas galletas de esas que sueles comprar cuando todo esto termine, ¿sí?~ */
== p_sornhi IF ~~ THEN @3508 /* ~Ha llegado la hora, soldado... y hablando de soldados... He logrado encantar a un par de guardias de Amn y un Encapuchado... Son de la élite, como verás en tan sólo unos segundos...~ */ DO~Enemy()~
== p_valata IF ~~ THEN @3509 /* ~Capitán, vengaré a Puki. Verás cómo aún tengo algunos fieles servidores bajo mi tutela... están... detrás... de ti... ¡Ja, ja, ja!~ */ DO~Enemy()~
== p_kaland IF ~~ THEN @3510 /* ~Finalmente... para esta ocasión acudiré a una transformación especial... será algo único...~ */  DO ~DestroyItem("LICHEL01") CreateItem ("p_kasums",1,1,0)~
== p_anthag IF ~~ THEN @3511 /* ~No importa cuántos amigos tengas, Ardusk Aldant. Caerás... ¡todos caerán! Y finalmente... podrás reunirte con tu amada Celine... ¡en el Infierno que he creado para ustedes!~ */ DO~Enemy()~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3512 /* ~Esto no es venganza, Anthagar... ¡Esto es justicia! Mathyus... si me escuchas... lo lamento, amigo... ¡Prometo que haremos lo posible para revivirte!~ */
== p_matu2 IF ~~ THEN @3513 /* ~(Mathyus, con sus ojos carentes de voluntad, tensa su arco y ves cómo los magos de la Cripta Olvidada sonríen. Saben que tendrás que acabar, también, con él.)~ */ DO~Enemy()~
END

// DUSK GOOD 3
I_C_T P_DEMOL2 4 P_Dusk_demol2c
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10 /* ~Lo lamento, Demole... Mathyus está siendo controlado por uno de nuestros enemigos... No tenemos otra opción más que... derrotarlo.~ */
== p_demol2 IF ~~ THEN @11 /* ~(Demoledor ladra directamente a Mathyus esperando, quizás, a volverlo en sí)~ */
== p_matu2 IF ~~ THEN @12 /* ~(Mathyus no reacciona. Claramente, el hechizo de Sornhil ha calado en lo más profundo de su mente)~ */
== P_ANTHAG IF ~~ THEN @13 /* ~Capitán... si crees que esa... patética bestia hará alguna diferencia... estás a punto de descubrir lo equivocado que estás.~ */
END

// DUSK GOOD 2
I_C_T P_DEMOL2 2 P_Dusk_demol2b
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @14 /* ~¡<CHARNAME>! Haces mal en subestimar a una criatura de Shilmista. Además, toda ayuda nos es bienvenida.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @15 /* ~No le hagas caso, Demoledor, <CHARNAME> no ha tenido el mejor de sus días.~ */
END

// DUSK GOOD 1
I_C_T P_DEMOL2 0 P_Dusk_demol2a
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @16 /* ~¡¿Demoledor?! ¡Finalmente has llegado!~ */
END
