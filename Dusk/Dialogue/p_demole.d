BEGIN P_DEMOLE


IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Demole_Enc1","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~(De la nada, un perro se acerca al grupo. Parece reconocer a Dusk y se acerca a él)~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Demole_Enc1","GLOBAL",2)
  SetGlobal("P_DuskMatMission2","GLOBAL",1)
  SetGlobal ("P_Dusk_1stTDemole","GLOBAL",3)
  ~ GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @2 /* ~(Comienza a mover la cola, y a ladrar de una forma extraña, como si quisiera comunicar algo)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 46
END

IF ~~ THEN BEGIN 3 // from:
  SAY @3 /* ~(El perro, un poco ansioso, mueve su cabeza y cola muy lentamente. Notas cómo en su collar tiene envuelta una nota de papel)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 48
END

IF ~~ THEN BEGIN 4 // from:
  SAY @4 /* ~(Demoledor asiente, moviendo su cabeza muy lentamente. Luego da media vuelta, con el mismo ímpetu, y se retira caminando, como si el tiempo estuviese a su favor)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission2","GLOBAL",2) 
  SetGlobal ("P_Dusk_Demole_Enc1","GLOBAL",3)
  EscapeArea()
  ~ UNSOLVED_JOURNAL @210006 EXIT
END

IF ~Global ("P_Dusk_Demole_Enc1","GLOBAL",3)
Global ("P_Dusk_Demole_Enc2","GLOBAL",0)~ THEN BEGIN 5 // from:
  SAY @5 /* ~(Demoledor tarda unos segundos en darse cuenta de tu presencia. Cuando finalmente te ve, comienza a mover la cola lentamente y a ladrar. Asumes que está saludándote)~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY @6 /* ~(Demoledor, quien parecía estar durmiendo una siesta, se despierta y mueve la cola lentamente, orgulloso del cumplido de su maestro. Luego, se echa a dormir nuevamente)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 56
END

// EVIL PATH

IF ~~ THEN BEGIN 7 // from:
  SAY @7 /* ~(Demoledor abre sus ojos lentamente, pues estaba durmiendo su habitual siesta, y ladra extrañamente)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 160
END

IF ~~ THEN BEGIN 8 // from:
  SAY @8 /* ~(Demoledor se incorpora, alerta, como si compartiera los sentimientos de su maestro y esto lo pusiera nervioso)~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 133
END

IF ~~ THEN BEGIN 9 // from:
  SAY @9 /* ~(Los ladridos extraños de Demoledor se hacen notar. Ciertamente, la presencia de Dusk lo ha puesto nervioso)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 181
END

// GOOD PATH


IF ~~ THEN BEGIN 10 // from:
  SAY @7 /* ~(Demoledor abre sus ojos lentamente, pues estaba durmiendo su habitual siesta, y ladra extrañamente)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 188
END

IF ~~ THEN BEGIN 11 // from:
  SAY @10 /* ~(Para sorpresa de todos, Demoledor se incorpora y comienza a mover la cola y a ladrar a Mathyus)~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 163
END

IF ~~ THEN BEGIN 12 // from:
  SAY @11 /* ~(Demoledor comienza a mover la cola y a dar vueltas sobre su mismo eje. Ladra alegre ante la presencia de Dusk)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 212
END

//// MISSION 3
// EVIL
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Demole_Enc2","GLOBAL",1)
Global ("P_DUSK_IS_GOOD","GLOBAL",0) 
~ THEN BEGIN 25 // from:
  SAY @37 /* ~(Sin que te des cuenta, una presencia canina aparece de la nada. Se trata de nada más y nada menos que de Demoledor)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 219 //GOTO 24
END
// GOOD
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Demole_Enc2","GLOBAL",1)
Global ("P_DUSK_IS_GOOD","GLOBAL",1) 
~ THEN BEGIN 26 // from:
  SAY @37 /* ~(Sin que te des cuenta, una presencia canina aparece de la nada. Se trata de nada más y nada menos que de Demoledor)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 220 //GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @12 /* ~(Demoledor ladra, como es de esperar, a su manera particular. Trae en su collar una nota)~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Demole_Enc2","GLOBAL",2)
  SetGlobal("P_DuskMatMission3","GLOBAL",1)
  SetGlobal ("P_Dusk_2ndTDemole","GLOBAL",3)
  ~ EXTERN ~P_DUSKJ~ 221
END

IF ~~ THEN BEGIN 14 // from:
  SAY @13 /* ~(Comienza a mover la cola, ansioso también por la respuesta de Dusk)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 225
END

IF ~~ THEN BEGIN 15 // from:
  SAY @14 /* ~(Demoledor ladra a su manera y asiente, moviendo su cola y dando media vuelta, muy lentamente. Te llegas a preguntar si no llegarías más rápido tú que él a la guarida en el Puerto...)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",2)
  SetGlobal ("P_Dusk_Demole_Enc2","GLOBAL",3)
  EscapeArea()
  ~ UNSOLVED_JOURNAL @210017 EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY @15 /* ~(Demoledor ladra decepcionado de la situación. A continuación y con su habitual paz, se retira de regreso, asumes, a la guarida de su maestro)~ */
  IF ~~ THEN DO ~ EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY @16 /* ~(Demoledor está contento por el cumplido de su amo. Aunque es evidente que se encuentra nervioso por la presencia de Dusk)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 239
END

IF ~~ THEN BEGIN 18 // from:
  SAY @17 /* ~(Demoledor está contento por el cumplido de su amo y por la llegada de Dusk y <CHARNAME> al recinto)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 251
END


//// MISSION FINAL

IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_3rdTDemole","GLOBAL",2)
Global("P_DuskDemoleMISSION","GLOBAL",0)
~ THEN BEGIN 19 // from:
  SAY @40 /* ~(De la nada, percibes una presencia conocida cerca tuyo. Cuando te das vuelta, ves a Demoledor meneando su cola a una anti-velocidad sobrenatural)~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 317
END


IF ~~ THEN BEGIN 27 // from:
  SAY @18 /* ~(Demoledor, a su manera habitual, ladra. Te sorprende ver cómo mueve la cola de un lado a otro con una lentitud casi antinatural)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskDemoleMISSION","GLOBAL",1)
  SetGlobal ("P_Dusk_3rdTDemole","GLOBAL",2) SetGlobal("P_Dusk_DemoleDISM","GLOBAL",1)
  ~ GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @19 /* ~(Notas que trae consigo una nota, muy probablemente de Mathyus. Dusk la toma y comienza a leer)~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from:
  SAY @29 /* ~(Demoledor concentra su atención en ti, esperando una respuesta)~ */
    IF ~~ THEN REPLY @30 /* ~Está bien, Dusk. ¡Demoledor, corre y dile a tu maestro que iremos enseguida!~ */  GOTO 22
	IF ~~ THEN REPLY @31 /* ~Hm... iremos, pero en otro momento, Dusk. Demoledor, ve y dile a Mathyus que iremos en cuanto nos liberemos de nuestra misión actual.~ */  GOTO 22
	IF ~~ THEN REPLY @32 /* ~¿Qué miras, saco de pulgas? Dile a tu maestro que no debe importunarnos. Iremos cuando se me plazca.~ */  GOTO 23 
END

IF ~~ THEN BEGIN 22 // from:
  SAY @33 /* ~(Demoledor asiente y ladra. Luego, da media vuelta y se retira con su habitual caminar pacífico.)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskDemoleMISSION","GLOBAL",1)
  SetGlobal ("P_Dusk_3rdTDemole","GLOBAL",2)
  EscapeArea()
  ~ UNSOLVED_JOURNAL @210040 EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY @34 /* ~(Demoledor se rasca las orejas al escuchar la palabra pulga, como si recordara que una le está molestando justo en este momento)~ */
  IF ~~ GOTO 22
END

IF ~Global ("P_Dusk_Demole_Enc1","GLOBAL",3)
OR (2)
Global ("P_Dusk_Demole_Enc2","GLOBAL",2)
Global ("P_Dusk_Demole_Enc2","GLOBAL",3)~ THEN BEGIN 5 // from:
  SAY @5 /* ~(Demoledor tarda unos segundos en darse cuenta de tu presencia. Cuando finalmente te ve, comienza a mover la cola lentamente y a ladrar. Asumes que está saludándote)~ */
  IF ~~ THEN DO ~~ EXIT
END

//I_C_T P_DEMOLE 19 P_Dusk_DEMOLE_FIX2
//== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @41 /* ¡Demole! Amigo, es un gran placer verte de nuevo. */
//END

//I_C_T P_DEMOLE 13 P_Dusk_DEMOLE_FIX1
//== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN @38 /* Demoledor... confío en que tu interrupción sólo se deba a novedades sobre la misión que encomendé a tu maestro. */
//== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @39 /* ¡Demole! Me alegra verte. Imagino que te envía Matyhus. ¿Hay novedades? */
//END

I_C_T P_DEMOLE 23 P_Dusk_GOOD_DEMOLEMF2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @35 /* Está bien, Dusk. Simplemente recuerda de lo que es capaz Anthagar. Sus seguidores son peligrosos y pueden suponer una amenaza inminente para Amn y Tethyr. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @36 /* Demoledor, ve y dile a Mathyus que iremos en el momento en que <CHARNAME> quiera. *susurro* Si es que en algún momento quire ir... */
END


I_C_T P_DEMOLE 20 P_Dusk_GOOD_DEMOLEMF1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20 /* Veamos... "Dusk, <CHARNAME>:
Espero que su viaje les haya sido fructífero. Sin embargo, tenemos noticias inquietantes. Hace unos días, un tenebroso hechicero hizo aparición. En un principio, pretendió presentarse a nosotros como un noble de Tethyr llamado Darvin." */
== P_DuskJ IF ~~ THEN @21 /*  ~Darvin... <CHARNAME>... estoy seguro de que Mathyus está hablando de Anthagar, el Nigromante... seguiré leyendo:~ */
== P_DuskJ IF ~~ THEN @22 /*  ~"Fue gracias a la magia de Michelson que pudo develar su ilusión. El hechicero pareció sorprenderse y creí que emprendería un combate con nosotros. Sin embargo, sólo nos dió un extraño artefacto. Michelson dice que se trata de una gema de teletransportación."~ */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @23 /* Ese bastardo... Es probable que sea una trampa, Dusk. Pero si pretendes darle persecución, cuenta conmigo. */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @24 /* ¡Cuervo blanco! Percibo que una guerra de planos se aproxima. Es algo serio y no debes tomarlo a la ligera. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @25 /* ¡Oh, Dusk! Bueno, al menos espero que tus amigos estén bien. El elfo de cabello verde y el pequeñín alegre. */
== P_DuskJ IF ~~ THEN @26 /*  ~La carta termina: "Será mejor que vengan a nuestra guarida en el Puerto de Athkatla. Podremos hablar mejor y ver cómo hemos de proceder en esto. Recuerda, Dusk: cuentas con la alianza de Shilmista.
Atentamente, Mathyus Davis.
El poderoso elfo de Shilmista."~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @27 /* ¿Siempre firma sus cartas como "poderoso elfo de Shilmista"? Creo que la tintura verde le ha llegado a su corteza cerebral. */
== P_DuskJ IF ~~ THEN @28 /*  ~<CHARNAME>... deberíamos volver a la guarida de Mathyus y ver qué es lo que está sucediendo.~ */
END