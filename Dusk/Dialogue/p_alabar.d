BEGIN p_alabar

IF ~Global("P_DuskMatMission3","GLOBAL",7)~ THEN BEGIN 0 // from:
  SAY @0 /* ~*gru�ido* Ha funcionado...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",8)~ EXIT
END

//!PartyHasItem("p_orbet1")
//Global("P_Bellfame_Dusk1","GLOBAL",2)
//CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()
IF ~
Global("P_DuskMatMission3","GLOBAL",8)
~ THEN BEGIN 1 // from:
  SAY @1 /* ~Era lo que esperaba.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 286
END

IF ~
Global("P_DuskMatMission3","GLOBAL",8)
~ THEN BEGIN 2 // from:
  SAY @2 /* ~�Humano! Has venido, como el mago ha dicho. Directo... a mis fauces...~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @4 /* ~No tengo idea de c�mo se llama ese elfo hechicero, ni tampoco me interesa.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @11 /* ~�Silencio, idiotas! El soldado y yo estamos tratando de dialogar. No es que esto vaya a terminar en otra cosa que no sea una matanza...~ */
	// EVIL
    IF ~Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @12 /* ~Dusk, no quiero alarmarte, pero estamos rodeados.~ */  GOTO 5
	
	
	// GOOD con ORBET y con ANILLO OK
    IF ~Global ("P_DUSK_IS_GOOD","GLOBAL",1) Global("P_Bellfame_Dusk1","GLOBAL",2)
	PartyHasItem("p_orbet1") PartyHasItem ("p_belrng") ~ THEN REPLY @12 /* ~Dusk, no quiero alarmarte, pero estamos rodeados.~ */  GOTO 7
	
	
	// GOOD con ORBET y sin ANILLO
    IF ~Global ("P_DUSK_IS_GOOD","GLOBAL",1) PartyHasItem("p_orbet1") 
	OR (3)
	Global("P_Bellfame_Dusk1","GLOBAL",0)
	Global("P_Bellfame_Dusk1","GLOBAL",1)
	!PartyHasItem ("p_belrng")~ THEN REPLY @12 /* ~Dusk, no quiero alarmarte, pero estamos rodeados.~ */  GOTO 11
	
	
	// GOOD SIN ORBET y con ANILLO OK
    IF ~Global ("P_DUSK_IS_GOOD","GLOBAL",1) Global("P_Bellfame_Dusk1","GLOBAL",2) PartyHasItem ("p_belrng")
	!PartyHasItem("p_orbet1") ~ THEN REPLY @12 /* ~Dusk, no quiero alarmarte, pero estamos rodeados.~ */  GOTO 12
	
		
	
	// GOOD SIN ORBET y SIN ANILLO
    IF ~Global ("P_DUSK_IS_GOOD","GLOBAL",1)
	!PartyHasItem("p_orbet1")
	OR (3)
	Global("P_Bellfame_Dusk1","GLOBAL",0)
	Global("P_Bellfame_Dusk1","GLOBAL",1)
	!PartyHasItem ("p_belrng")~ THEN REPLY @12 /* ~Dusk, no quiero alarmarte, pero estamos rodeados.~ */  GOTO 14
END

// EVIL

IF ~~ THEN BEGIN 5 // from:
  SAY @13 /* ~�Ja! Conque t� debes ser el hijo de Bhaal: <CHARNAME>. Matarte a ti tambi�n ser� un beneficio extra para mi clan.~ ~�Ja! Conque t� debes ser la hija de Bhaal, <CHARNAME>. Matarte a ti tambi�n ser� un beneficio extra para mi clan.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3EVIL","GLOBAL",1)~ GOTO 6
END


IF ~~ THEN BEGIN 6 // from:
  SAY @58 /* ~�Vamos, guerreros! Somos los Asesinos de Dragones... y s�lo nos queda un drag�n por asesinar.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DuskJ~ 287
END

// GOOD con ORBET y con ANILLO OK

IF ~~ THEN BEGIN 7 // from:
  SAY @13 /* ~�Ja! Conque t� debes ser el hijo de Bhaal: <CHARNAME>. Matarte a ti tambi�n ser� un beneficio extra para mi clan.~ ~�Ja! Conque t� debes ser la hija de Bhaal, <CHARNAME>. Matarte a ti tambi�n ser� un beneficio extra para mi clan.~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskM3GOOD","GLOBAL",1)
  SetGlobal("P_DuskM3GOOD_OT_RING","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 8 // from:
  SAY @104 /* ~Ser� mejor que despabiles, soldado... A�n te encuentras rodeado y superado en n�mero. Mis guerreros se har�n un fest�n con tus huesos.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3LLAMA_ORBET","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 9 // from:
  SAY @73 /* ~Pero ��qu�--?!~ */
  IF ~~ THEN DO ~~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @103 /* ~�Vamos, guerreros! Somos los Asesinos de Dragones... pero en esta ocasi�n... Supongo que tendremos que conformarnos con matar a este... perro.~ */
  IF ~~ THEN DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy() Attack("P_Dusk")~ EXTERN ~P_DuskJ~ 292
END


// GOOD con ORBET y sin ANILLO

IF ~~ THEN BEGIN 11 // from:
  SAY @13 /* ~�Ja! Conque t� debes ser el hijo de Bhaal: <CHARNAME>. Matarte a ti tambi�n ser� un beneficio extra para mi clan.~ ~�Ja! Conque t� debes ser la hija de Bhaal, <CHARNAME>. Matarte a ti tambi�n ser� un beneficio extra para mi clan.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3GOOD","GLOBAL",1) SetGlobal("P_DuskM3LLAMA_ORBET","GLOBAL",1) ~ EXIT
END

// GOOD SIN ORBET y con ANILLO OK

IF ~~ THEN BEGIN 12 // from:
  SAY @13 /* ~�Ja! Conque t� debes ser el hijo de Bhaal: <CHARNAME>. Matarte a ti tambi�n ser� un beneficio extra para mi clan.~ ~�Ja! Conque t� debes ser la hija de Bhaal, <CHARNAME>. Matarte a ti tambi�n ser� un beneficio extra para mi clan.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3GOOD","GLOBAL",1) SetGlobal("P_DuskM3GOOD_OT_RING","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY @104 /* ~Ser� mejor que despabiles, soldado... A�n te encuentras rodeado y superado en n�mero. Mis guerreros se har�n un fest�n con tus huesos.~ */
  IF ~~ THEN GOTO 10
END

// GOOD SIN ORBET y SIN ANILLO OK

IF ~~ THEN BEGIN 14 // from:
  SAY @13 /* ~�Ja! Conque t� debes ser el hijo de Bhaal: <CHARNAME>. Matarte a ti tambi�n ser� un beneficio extra para mi clan.~ ~�Ja! Conque t� debes ser la hija de Bhaal, <CHARNAME>. Matarte a ti tambi�n ser� un beneficio extra para mi clan.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3GOOD","GLOBAL",1)~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @58 /* ~�Vamos, guerreros! Somos los Asesinos de Dragones... y s�lo nos queda un drag�n por asesinar.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DuskJ~ 292
END

// GOOD SIN ORBET y SIN ANILLO OK

I_C_T P_ALABAR 15 P_Dusk_AlabarGOOD9
== P_Tongas IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @59 /* ~�Se�or, no te decepcionar�!~ */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy() ~
== P_KOCHA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @60 /* �Khjjjiii! Construir� un altar con sus huesos. */ DO~Enemy()~
== P_KOMAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @61 /* Jefe, demostrar� mi fuerza. �Por nuestro clan! */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_SERRA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @62 /* Har� un banquete con la carne de nuestros enemigos. Ser� un delicioso fest�n... */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_XEB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @63 /* *siseo* Al fin... dejemosss a alguno con vida... �Quiero experimentar con sus cuerposss! */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @64 /* Chimi: Vamos, Bob... Compite con tu hermano, �a ver quien machaca m�s a estos debiluchos! */
== P_BOB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @65 /* (Ante las palabras de Chimi, la Mole prepara sus terribles garras para lanzarse al ataque) */ DO~Enemy()~
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @66 /* Toxsan: �Has escuchado, Mike? Toxsan ha lanzado un desaf�o. �No me decepciones! */ DO~Enemy()~
== P_MIKE IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @67 /* (Mike golpea sus pu�os entre s� y se lanza al ataque tras las palabras de Toxsan) */ DO~Enemy()~
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @105 /* Capit�n... prep�rate... �Ir� a por ti!  */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy() Attack("P_Dusk")~
END


I_C_T P_ALABAR 14 P_Dusk_AlabarGOOD8
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @19 /* �Dusk, <CHARNAME>, Minsc y Bub� est�n listos para patear traseros orcos y trolls! */
== P_KOMAR IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @20 /* �Calvo! Ese roedor ser� m�o. �Komar as� lo exige! ���Komar romper� tus huesos y tomar� al peque�o peludo para su diversi�n!!! */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @21 /* �Calvo? �T� ser�s el calvo, malvado ogro! Y Bub� no ser� esclavo de nadie. �La furia del h�mster es libre y te har� ver las estrellas! */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @22 /* Oh, no me gusta esto... �Pero har� lo posible por proteger a mis amigos! */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @23 /* Puede que esta sea nuestra �ltima batalla, amigos m�os. �Pero por Torm que dar� batalla hasta las �ltimas consecuencias! */
== P_SERRA IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @24 /* �Un palad�n! Jefe, d�jeme a ese infeliz a m�. Me encargar� de que se re�na con su dios lo antes posible. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @25 /* �Int�ntalo, criatura! Ver�s cu�n r�pido caes ante el filo de la Justicia. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @26 /* Pues, ya es hora de poner a prueba mis habilidades guerreras (no es que vaya a ser algo impresionante, pero quiz�s asuste a un par de monstruos). */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @27 /* �Arvorin, dame las fuerzas para vencer en este combate! */
== P_TOXSAN IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @28 /* Chimi: �As� que quieres devorarte a esa mediana, Bob? Hazlo, libremente. Deja algunos huesos para tu hermano Mike, �quieres? */
== P_BOB IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @29 /* (La criatura centra sus ojos en Mazzy. Casi pareciera ser que est� relami�ndose) */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @30 /* Odio decir esto, pero no es la primera vez que un monstruo intenta devorarme... A�n as�, lamento decir que te quedar�s con las ganas, mole. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31 /* �Al fin nos traes algo de acci�n, Dusk! Helm, dame las fuerzas. �Hoy luchar� en tu nombre y triunfar�! */
== P_KOCHA IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @32 /* Jefecito, d�jeme a ese joven monje para m�. Siempre es un placer apalear humanos engre�dos. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @33 /* Por el recuerdo de mi padre, �no permitir� que miserables trolls vaguen por estas tierras! */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @34 /* Siento que me hablas a m�, ni�a. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @35 /* �Por de'Arnise! Hoy ser� el �ltimo d�a en que respires monstruo. */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @36 /* *resoplido* Estoy cansado de estos humanos engre�dos... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @37 /* Dusk, tu deseo de venganza es comprendido y bienvenido. �Y ser� un honor luchar a tu lado para cumplirlo! */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @38 /* Es hora de ponerle fin a este Tumulario. Una guarida as� tan cerca de la Arboleda es una afrenta a la naturaleza. */
== P_TOXSAN IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @39 /* Toxsan: �Qu� dices, Mike? �Que quieres comerte al druida humano? Por m�, bienvenido sea. No te olvides de tu hermano Bob, �s�? */
== P_MIKE IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @40 /* (La mole sombr�a centra sus cuatro ojos en Cernd, impaciente a que su amo suelte sus riendas y pueda comenzar el ataque) */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @41 /* Criatura, hoy ser�s el alimento de gusanos y colaborar�s con el ciclo de la vida, a trav�s de tu muerte. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @42 /* Dusk, ha llegado la hora. �Haremos justicia por tus camaradas ca�dos! */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @43 /* Bueno, rivvil, hemos recorrido un largo camino para llegar aqu�. Utilizar� la divinidad de Shar en tu favor, no lo olvides. Nuestros enemigos caer�n en la Oscuridad Eterna. */
== P_XEB IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @44 /* *siseo* �Una drow! Se�or, d�jeme experimentar con ella, por favor. Prometo ssser... meticulossso. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @45 /* Si bien me da igual tu pasado, hombre del palito, admito que esta es una buena oportunidad para poner a prueba mis conjuros. Especialmente contra esa lagartija. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @46 /* �Me hablas a m�, mago rojo? */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @47 /* �As� es, renacuajo! Tendr�s el honor de morir a manos de Edwin Odesseiron. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @48 /* Est�s loco, mago. Aunque eso no me sorprende en un usuario humano. Se�or, perm�tame acabar con ese mentecato. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @49 /* �Muy bien, flacucho! Nos has tra�do a una 'trampa'. Lo que estos infelices no saben es que cuentas con el hacha de Korgan. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @50 /* Chimi: �Mira, Toxsan! Un enano. Me recuerda a los viejos tiempos. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @51 /* Toxsan: As� es, Chimi. Aplastarlos era nuestro pasatiempos. Ahora podremos rememorarlos, �no lo crees? */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @52 /* Aqu� me tienes, maldito ettin. �Ven a probar mi hacha! Ver�s cu�n r�pido te destripo. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @53 /* As� que ca�mos en una trampa, �eh? Esto me recuerda a la vez-- */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @54 /* ~No creo que sea el mejor momento para una de tus historias, Jan.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @55 /* Bueno, bueno. Pero te lo contar� cuanto hayamos ganado aqu�. �Qu� te parece, buen Dusk? */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @56 /* ~Trato hecho.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @57 /* Ahhhh, cuervo blanco. Has ca�do en una trampa. Pero, �qui�n soy yo para juzgarte? Yo mismo me he visto en situaciones similares. Vamos, venzamos a estos insensatos, as� puedo componer una o dos canciones sobre nuestras proezas. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @106 /* ~Oh, Dusk... t� s� que sabes hacer amistades, �eh? Vamos, que os ayudar� a enfrentar a estos monstruos.~ */
END



// GOOD SIN ORBET y con ANILLO OK

I_C_T P_ALABAR 13 P_Dusk_AlabarGOOD7
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @19 /* �Dusk, <CHARNAME>, Minsc y Bub� est�n listos para patear traseros orcos y trolls! */
== P_KOMAR IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @20 /* �Calvo! Ese roedor ser� m�o. �Komar as� lo exige! ���Komar romper� tus huesos y tomar� al peque�o peludo para su diversi�n!!! */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @21 /* �Calvo? �T� ser�s el calvo, malvado ogro! Y Bub� no ser� esclavo de nadie. �La furia del h�mster es libre y te har� ver las estrellas! */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @22 /* Oh, no me gusta esto... �Pero har� lo posible por proteger a mis amigos! */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @23 /* Puede que esta sea nuestra �ltima batalla, amigos m�os. �Pero por Torm que dar� batalla hasta las �ltimas consecuencias! */
== P_SERRA IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @24 /* �Un palad�n! Jefe, d�jeme a ese infeliz a m�. Me encargar� de que se re�na con su dios lo antes posible. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @25 /* �Int�ntalo, criatura! Ver�s cu�n r�pido caes ante el filo de la Justicia. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @26 /* Pues, ya es hora de poner a prueba mis habilidades guerreras (no es que vaya a ser algo impresionante, pero quiz�s asuste a un par de monstruos). */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @27 /* �Arvorin, dame las fuerzas para vencer en este combate! */
== P_TOXSAN IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @28 /* Chimi: �As� que quieres devorarte a esa mediana, Bob? Hazlo, libremente. Deja algunos huesos para tu hermano Mike, �quieres? */
== P_BOB IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @29 /* (La criatura centra sus ojos en Mazzy. Casi pareciera ser que est� relami�ndose) */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @30 /* Odio decir esto, pero no es la primera vez que un monstruo intenta devorarme... A�n as�, lamento decir que te quedar�s con las ganas, mole. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31 /* �Al fin nos traes algo de acci�n, Dusk! Helm, dame las fuerzas. �Hoy luchar� en tu nombre y triunfar�! */
== P_KOCHA IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @32 /* Jefecito, d�jeme a ese joven monje para m�. Siempre es un placer apalear humanos engre�dos. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @33 /* Por el recuerdo de mi padre, �no permitir� que miserables trolls vaguen por estas tierras! */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @34 /* Siento que me hablas a m�, ni�a. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @35 /* �Por de'Arnise! Hoy ser� el �ltimo d�a en que respires monstruo. */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @36 /* *resoplido* Estoy cansado de estos humanos engre�dos... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @37 /* Dusk, tu deseo de venganza es comprendido y bienvenido. �Y ser� un honor luchar a tu lado para cumplirlo! */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @38 /* Es hora de ponerle fin a este Tumulario. Una guarida as� tan cerca de la Arboleda es una afrenta a la naturaleza. */
== P_TOXSAN IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @39 /* Toxsan: �Qu� dices, Mike? �Que quieres comerte al druida humano? Por m�, bienvenido sea. No te olvides de tu hermano Bob, �s�? */
== P_MIKE IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @40 /* (La mole sombr�a centra sus cuatro ojos en Cernd, impaciente a que su amo suelte sus riendas y pueda comenzar el ataque) */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @41 /* Criatura, hoy ser�s el alimento de gusanos y colaborar�s con el ciclo de la vida, a trav�s de tu muerte. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @42 /* Dusk, ha llegado la hora. �Haremos justicia por tus camaradas ca�dos! */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @43 /* Bueno, rivvil, hemos recorrido un largo camino para llegar aqu�. Utilizar� la divinidad de Shar en tu favor, no lo olvides. Nuestros enemigos caer�n en la Oscuridad Eterna. */
== P_XEB IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @44 /* *siseo* �Una drow! Se�or, d�jeme experimentar con ella, por favor. Prometo ssser... meticulossso. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @45 /* Si bien me da igual tu pasado, hombre del palito, admito que esta es una buena oportunidad para poner a prueba mis conjuros. Especialmente contra esa lagartija. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @46 /* �Me hablas a m�, mago rojo? */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @47 /* �As� es, renacuajo! Tendr�s el honor de morir a manos de Edwin Odesseiron. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @48 /* Est�s loco, mago. Aunque eso no me sorprende en un usuario humano. Se�or, perm�tame acabar con ese mentecato. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @49 /* �Muy bien, flacucho! Nos has tra�do a una 'trampa'. Lo que estos infelices no saben es que cuentas con el hacha de Korgan. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @50 /* Chimi: �Mira, Toxsan! Un enano. Me recuerda a los viejos tiempos. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @51 /* Toxsan: As� es, Chimi. Aplastarlos era nuestro pasatiempos. Ahora podremos rememorarlos, �no lo crees? */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @52 /* Aqu� me tienes, maldito ettin. �Ven a probar mi hacha! Ver�s cu�n r�pido te destripo. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @53 /* As� que ca�mos en una trampa, �eh? Esto me recuerda a la vez-- */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @54 /* ~No creo que sea el mejor momento para una de tus historias, Jan.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @55 /* Bueno, bueno. Pero te lo contar� cuanto hayamos ganado aqu�. �Qu� te parece, buen Dusk? */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @56 /* ~Trato hecho.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @57 /* Ahhhh, cuervo blanco. Has ca�do en una trampa. Pero, �qui�n soy yo para juzgarte? Yo mismo me he visto en situaciones similares. Vamos, venzamos a estos insensatos, as� puedo componer una o dos canciones sobre nuestras proezas. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @106 /* ~Oh, Dusk... t� s� que sabes hacer amistades, �eh? Vamos, que os ayudar� a enfrentar a estos monstruos.~ */
END


I_C_T P_ALABAR 12 P_Dusk_AlabarGOOD6
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @14 /* ~�Escoria! No te dirijas a �l. Tu sucia boca no es digna de nombrarlo.~ ~�Escoria! No te dirijas a ella. Tu sucia boca no es digna de nombrarla.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @15 /* *gru�ido* A�n tienes esa ira, soldado. Pero no ser� como la �ltima vez... No... Alabarza el Mutilador acabar� contigo... de una vez y para siempre. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @68 /* Te he derrotado una vez, Alabarza. Puedo volver a hacerlo. */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @17 /* *risa gutural* Parece ser que no est�s consciente de la situaci�n, soldado.  */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @69 /* No estoy s�lo en esto, monstruo. */
END


// GOOD con ORBET y sin ANILLO

I_C_T P_ALABAR 11 P_Dusk_AlabarGOOD5
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @14 /* ~�Escoria! No te dirijas a �l. Tu sucia boca no es digna de nombrarlo.~ ~�Escoria! No te dirijas a ella. Tu sucia boca no es digna de nombrarla.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @15 /* *gru�ido* A�n tienes esa ira, soldado. Pero no ser� como la �ltima vez... No... Alabarza el Mutilador acabar� contigo... de una vez y para siempre. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @68 /* Te he derrotado una vez, Alabarza. Puedo volver a hacerlo. */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @17 /* *risa gutural* Parece ser que no est�s consciente de la situaci�n, soldado.  */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @69 /* No estoy s�lo en esto, monstruo. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @71 /* ~(Dusk eleva el orbe teletransportador y �ste se ilumina. Varios portales se abren a su alrededor)~ */
END






////// GOOD con ORBET y con ANILLO OK

I_C_T P_ALABAR 7 P_Dusk_AlabarGOOD1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @14 /* ~�Escoria! No te dirijas a �l. Tu sucia boca no es digna de nombrarlo.~ ~�Escoria! No te dirijas a ella. Tu sucia boca no es digna de nombrarla.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @15 /* *gru�ido* A�n tienes esa ira, soldado. Pero no ser� como la �ltima vez... No... Alabarza el Mutilador acabar� contigo... de una vez y para siempre. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @68 /* Te he derrotado una vez, Alabarza. Puedo volver a hacerlo. */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @17 /* *risa gutural* Parece ser que no est�s consciente de la situaci�n, soldado.  */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @69 /* No estoy s�lo en esto, monstruo. */
END

I_C_T P_ALABAR 8 P_Dusk_AlabarGOOD2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @70 /* ~�Superados en n�mero? En eso te equivocas, Alabarza. �Orbe, trae a mis amigos!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @71 /* ~(Dusk eleva el orbe teletransportador y �ste se ilumina. Varios portales se abren a su alrededor)~ */
END

I_C_T P_ALABAR 9 P_Dusk_AlabarGOOD3
== P_KAYL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @74 /* ~�En el nombre de la Noble Orden del Radiante Coraz�n: presentaremos batalla!~ */
== P_FALO2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @75 /* ~Vaya, no cre� que el hechizo del hombrecito verde funcionara.~ */
== P_COC2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @76 /* ~�Wow, qu� mareos!~ */
== P_ZIBE2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @77 /* ~�Atenta, Coco! No demuestres debilidad ante el enemigo.~ */
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @78 /* ~Cufa: �Yuju! Viaje ser muy divertido. �Poder hacerlo de nuevo, Tima?~ */
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @79 /* ~Tima: Es f�cil para ti decirlo, Cufa. Creo que he sido yo el que se ha llevado los efectos del mareo.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @80 /* *gru�ido* As� que tienes tu propio ej�rcito, soldado... */ 
== P_KAYL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @81 /* ~Ha sido una gran idea, Dusk. Parece ser que ahora el juego se ha equiparado.~ */
== P_FALO2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @82 /* ~�Dusk! Estaremos bajo tus �rdenes y las de <CHARNAME>. El peque�o hombrecito verde dijo que no te preocupes si alguno de nosotros cae en combate. �l se encargar� de revivir a los muertos, sin importar la gravedad de la herida.~ */
== P_KAYL2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @83 /* ~Pero para que eso funcione, Dusk, debemos vencer en esta batalla. Debo admitir que el amiguito del elfo de cabello verde es bastante poderoso.~ */
== P_Tongas IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @84 /* Interesante, mi se�or. Nunca antes hab�a sido testigo de tanto poder estos �ltimos d�as. Entre el transmutador y el orbe m�gico que sac� de su manga el soldado, estoy anonadado. */
== P_KOCHA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @85 /* Lo cierto es que t� te sorprendes de cualquier cosa, Tongas. */ 
== P_XEB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @86 /* *siseo* �Hombrecito verde? Si viene, quiero torturarlo. */
== P_SERRA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @87 /* Haz lo que quieras, lagartija. Yo creo que me conformo con esa gnoll. *Se relame* */
== P_ZIBE2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @88 /* ~*gru�ido* Eso est� por verse, asqueroso orog.~ */
== P_COC2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @89 /* ~�Es necesario que esto termine en pelea? �Podr�amos ser todos amigos y felices!~ */
== P_KOMAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @90 /* �Jefe, una trasgo con voz de ni�ita! Trasgo, t� servir�s como mi mascota. */ 
== P_COC2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91 /* ~Ugh... eres muy maleducado, ogro. Ni en tus sue�os.~ */
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @92 /* ~Cufa: Tima, �ver eso? �Otro ettin!~ */
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @93 /* ~Tima: S�, eso veo, Cufa. Tambi�n veo a sus... mascotas...~ */
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @94 /* Toxsan: No puedo creer lo que veo. Un ettin peleando al lado de humanos y paladines... */ 
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @95 /* Chimi: �C�mo es que no puedes creerlo? �Lo est�s viendo con nuestros ojos, Toxsan! */ 
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @96 /* Toxsan: *suspiro* Ya lo s�, Chimi. Es una expresi�n. */ 
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97 /* Toxsan: No creo que podamos ser amigos de esos brutos, Chimi. Creo que tendr�amos que presentarles a nuestras mascotas, �no lo crees? */ 
== P_BOB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @98 /* (Bob prepara sus brazos, ansioso por recibir las �rdenes de su amo y lanzarle al ataque) */ 
== P_MIKE IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @99 /* (Mike hace lo mismo, centrando sus ojos en las presas que tiene enfrente) */ 
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @100 /* ~Cufa: Tima, tener que conseguir mascotas as�, �no creer?~ */
== P_CUFAT2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @101 /* ~Tima: Cufa, ya tienes mascotas. Y dudo que estas moles se lleven bien con los caballos de la Orden.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @102 /* De acuerdo... �Soldados, en formaci�n! Una ardua batalla nos espera... */
//NPCs
///////
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @19 /* �Dusk, <CHARNAME>, Minsc y Bub� est�n listos para patear traseros orcos y trolls! */
== P_KOMAR IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @20 /* �Calvo! Ese roedor ser� m�o. �Komar as� lo exige! ���Komar romper� tus huesos y tomar� al peque�o peludo para su diversi�n!!! */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @21 /* �Calvo? �T� ser�s el calvo, malvado ogro! Y Bub� no ser� esclavo de nadie. �La furia del h�mster es libre y te har� ver las estrellas! */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @22 /* Oh, no me gusta esto... �Pero har� lo posible por proteger a mis amigos! */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @23 /* Puede que esta sea nuestra �ltima batalla, amigos m�os. �Pero por Torm que dar� batalla hasta las �ltimas consecuencias! */
== P_SERRA IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @24 /* �Un palad�n! Jefe, d�jeme a ese infeliz a m�. Me encargar� de que se re�na con su dios lo antes posible. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @25 /* �Int�ntalo, criatura! Ver�s cu�n r�pido caes ante el filo de la Justicia. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @26 /* Pues, ya es hora de poner a prueba mis habilidades guerreras (no es que vaya a ser algo impresionante, pero quiz�s asuste a un par de monstruos). */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @27 /* �Arvorin, dame las fuerzas para vencer en este combate! */
== P_TOXSAN IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @28 /* Chimi: �As� que quieres devorarte a esa mediana, Bob? Hazlo, libremente. Deja algunos huesos para tu hermano Mike, �quieres? */
== P_BOB IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @29 /* (La criatura centra sus ojos en Mazzy. Casi pareciera ser que est� relami�ndose) */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @30 /* Odio decir esto, pero no es la primera vez que un monstruo intenta devorarme... A�n as�, lamento decir que te quedar�s con las ganas, mole. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31 /* �Al fin nos traes algo de acci�n, Dusk! Helm, dame las fuerzas. �Hoy luchar� en tu nombre y triunfar�! */
== P_KOCHA IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @32 /* Jefecito, d�jeme a ese joven monje para m�. Siempre es un placer apalear humanos engre�dos. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @33 /* Por el recuerdo de mi padre, �no permitir� que miserables trolls vaguen por estas tierras! */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @34 /* Siento que me hablas a m�, ni�a. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @35 /* �Por de'Arnise! Hoy ser� el �ltimo d�a en que respires monstruo. */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @36 /* *resoplido* Estoy cansado de estos humanos engre�dos... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @37 /* Dusk, tu deseo de venganza es comprendido y bienvenido. �Y ser� un honor luchar a tu lado para cumplirlo! */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @38 /* Es hora de ponerle fin a este Tumulario. Una guarida as� tan cerca de la Arboleda es una afrenta a la naturaleza. */
== P_TOXSAN IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @39 /* Toxsan: �Qu� dices, Mike? �Que quieres comerte al druida humano? Por m�, bienvenido sea. No te olvides de tu hermano Bob, �s�? */
== P_MIKE IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @40 /* (La mole sombr�a centra sus cuatro ojos en Cernd, impaciente a que su amo suelte sus riendas y pueda comenzar el ataque) */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @41 /* Criatura, hoy ser�s el alimento de gusanos y colaborar�s con el ciclo de la vida, a trav�s de tu muerte. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @42 /* Dusk, ha llegado la hora. �Haremos justicia por tus camaradas ca�dos! */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @43 /* Bueno, rivvil, hemos recorrido un largo camino para llegar aqu�. Utilizar� la divinidad de Shar en tu favor, no lo olvides. Nuestros enemigos caer�n en la Oscuridad Eterna. */
== P_XEB IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @44 /* *siseo* �Una drow! Se�or, d�jeme experimentar con ella, por favor. Prometo ssser... meticulossso. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @45 /* Si bien me da igual tu pasado, hombre del palito, admito que esta es una buena oportunidad para poner a prueba mis conjuros. Especialmente contra esa lagartija. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @46 /* �Me hablas a m�, mago rojo? */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @47 /* �As� es, renacuajo! Tendr�s el honor de morir a manos de Edwin Odesseiron. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @48 /* Est�s loco, mago. Aunque eso no me sorprende en un usuario humano. Se�or, perm�tame acabar con ese mentecato. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @49 /* �Muy bien, flacucho! Nos has tra�do a una 'trampa'. Lo que estos infelices no saben es que cuentas con el hacha de Korgan. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @50 /* Chimi: �Mira, Toxsan! Un enano. Me recuerda a los viejos tiempos. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @51 /* Toxsan: As� es, Chimi. Aplastarlos era nuestro pasatiempos. Ahora podremos rememorarlos, �no lo crees? */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @52 /* Aqu� me tienes, maldito ettin. �Ven a probar mi hacha! Ver�s cu�n r�pido te destripo. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @53 /* As� que ca�mos en una trampa, �eh? Esto me recuerda a la vez-- */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @54 /* ~No creo que sea el mejor momento para una de tus historias, Jan.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @55 /* Bueno, bueno. Pero te lo contar� cuanto hayamos ganado aqu�. �Qu� te parece, buen Dusk? */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @56 /* ~Trato hecho.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @57 /* Ahhhh, cuervo blanco. Has ca�do en una trampa. Pero, �qui�n soy yo para juzgarte? Yo mismo me he visto en situaciones similares. Vamos, venzamos a estos insensatos, as� puedo componer una o dos canciones sobre nuestras proezas. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @106 /* ~Oh, Dusk... t� s� que sabes hacer amistades, �eh? Vamos, que os ayudar� a enfrentar a estos monstruos.~ */
END


I_C_T P_ALABAR 10 P_Dusk_AlabarGOOD4
== P_Tongas IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @59 /* ~�Se�or, no te decepcionar�!~ */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy() ~
== P_KOCHA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @60 /* �Khjjjiii! Construir� un altar con sus huesos. */ DO~Enemy()~
== P_KOMAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @61 /* Jefe, demostrar� mi fuerza. �Por nuestro clan! */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_SERRA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @62 /* Har� un banquete con la carne de nuestros enemigos. Ser� un delicioso fest�n... */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_XEB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @63 /* *siseo* Al fin... dejemosss a alguno con vida... �Quiero experimentar con sus cuerposss! */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @64 /* Chimi: Vamos, Bob... Compite con tu hermano, �a ver quien machaca m�s a estos debiluchos! */
== P_BOB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @65 /* (Ante las palabras de Chimi, la Mole prepara sus terribles garras para lanzarse al ataque) */ DO~Enemy()~
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @66 /* Toxsan: �Has escuchado, Mike? Toxsan ha lanzado un desaf�o. �No me decepciones! */ DO~Enemy()~
== P_MIKE IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @67 /* (Mike golpea sus pu�os entre s� y se lanza al ataque tras las palabras de Toxsan) */ DO~Enemy()~
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @105 /* Capit�n... prep�rate... �Ir� a por ti!  */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy() Attack("P_Dusk")~
END


////// EVIL

I_C_T P_ALABAR 5 P_Dusk_AlabarEVIL
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @14 /* ~�Escoria! No te dirijas a �l. Tu sucia boca no es digna de nombrarlo.~ ~�Escoria! No te dirijas a ella. Tu sucia boca no es digna de nombrarla.~ */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @15 /* *gru�ido* A�n tienes esa ira, soldado. Pero no ser� como la �ltima vez... No... Alabarza el Mutilador acabar� contigo... de una vez y para siempre. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @16 /* Parece ser que has olvidado qui�n te ha arrancado tu ojo, monstruo. �Quieres que acabe el trabajo y te arranque el otro? Lo har� con gusto. */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @17 /* *risa gutural* Parece ser que no est�s consciente de la situaci�n, soldado.  */
== P_ALABAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @18 /* Mis guerreros acabar�n con los tuyos... y yo lo har� contigo... */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()Attack("P_Dusk")~
//NPCs
///////
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @19 /* �Dusk, <CHARNAME>, Minsc y Bub� est�n listos para patear traseros orcos y trolls! */
== P_KOMAR IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @20 /* �Calvo! Ese roedor ser� m�o. �Komar as� lo exige! ���Komar romper� tus huesos y tomar� al peque�o peludo para su diversi�n!!! */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @21 /* �Calvo? �T� ser�s el calvo, malvado ogro! Y Bub� no ser� esclavo de nadie. �La furia del h�mster es libre y te har� ver las estrellas! */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @22 /* Oh, no me gusta esto... �Pero har� lo posible por proteger a mis amigos! */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @23 /* Puede que esta sea nuestra �ltima batalla, amigos m�os. �Pero por Torm que dar� batalla hasta las �ltimas consecuencias! */
== P_SERRA IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @24 /* �Un palad�n! Jefe, d�jeme a ese infeliz a m�. Me encargar� de que se re�na con su dios lo antes posible. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @25 /* �Int�ntalo, criatura! Ver�s cu�n r�pido caes ante el filo de la Justicia. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @26 /* Pues, ya es hora de poner a prueba mis habilidades guerreras (no es que vaya a ser algo impresionante, pero quiz�s asuste a un par de monstruos). */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @27 /* �Arvorin, dame las fuerzas para vencer en este combate! */
== P_TOXSAN IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @28 /* Chimi: �As� que quieres devorarte a esa mediana, Bob? Hazlo, libremente. Deja algunos huesos para tu hermano Mike, �quieres? */
== P_BOB IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @29 /* (La criatura centra sus ojos en Mazzy. Casi pareciera ser que est� relami�ndose) */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @30 /* Odio decir esto, pero no es la primera vez que un monstruo intenta devorarme... A�n as�, lamento decir que te quedar�s con las ganas, mole. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @31 /* �Al fin nos traes algo de acci�n, Dusk! Helm, dame las fuerzas. �Hoy luchar� en tu nombre y triunfar�! */
== P_KOCHA IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @32 /* Jefecito, d�jeme a ese joven monje para m�. Siempre es un placer apalear humanos engre�dos. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @33 /* Por el recuerdo de mi padre, �no permitir� que miserables trolls vaguen por estas tierras! */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @34 /* Siento que me hablas a m�, ni�a. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @35 /* �Por de'Arnise! Hoy ser� el �ltimo d�a en que respires monstruo. */
== P_KOCHA IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @36 /* *resoplido* Estoy cansado de estos humanos engre�dos... */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @37 /* Dusk, tu deseo de venganza es comprendido y bienvenido. �Y ser� un honor luchar a tu lado para cumplirlo! */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @38 /* Es hora de ponerle fin a este Tumulario. Una guarida as� tan cerca de la Arboleda es una afrenta a la naturaleza. */
== P_TOXSAN IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @39 /* Toxsan: �Qu� dices, Mike? �Que quieres comerte al druida humano? Por m�, bienvenido sea. No te olvides de tu hermano Bob, �s�? */
== P_MIKE IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @40 /* (La mole sombr�a centra sus cuatro ojos en Cernd, impaciente a que su amo suelte sus riendas y pueda comenzar el ataque) */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @41 /* Criatura, hoy ser�s el alimento de gusanos y colaborar�s con el ciclo de la vida, a trav�s de tu muerte. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @42 /* Dusk, ha llegado la hora. �Haremos justicia por tus camaradas ca�dos! */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @43 /* Bueno, rivvil, hemos recorrido un largo camino para llegar aqu�. Utilizar� la divinidad de Shar en tu favor, no lo olvides. Nuestros enemigos caer�n en la Oscuridad Eterna. */
== P_XEB IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @44 /* *siseo* �Una drow! Se�or, d�jeme experimentar con ella, por favor. Prometo ssser... meticulossso. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @45 /* Si bien me da igual tu pasado, hombre del palito, admito que esta es una buena oportunidad para poner a prueba mis conjuros. Especialmente contra esa lagartija. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @46 /* �Me hablas a m�, mago rojo? */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @47 /* �As� es, renacuajo! Tendr�s el honor de morir a manos de Edwin Odesseiron. */
== P_Tongas IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @48 /* Est�s loco, mago. Aunque eso no me sorprende en un usuario humano. Se�or, perm�tame acabar con ese mentecato. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @49 /* �Muy bien, flacucho! Nos has tra�do a una 'trampa'. Lo que estos infelices no saben es que cuentas con el hacha de Korgan. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @50 /* Chimi: �Mira, Toxsan! Un enano. Me recuerda a los viejos tiempos. */
== P_TOXSAN IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @51 /* Toxsan: As� es, Chimi. Aplastarlos era nuestro pasatiempos. Ahora podremos rememorarlos, �no lo crees? */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @52 /* Aqu� me tienes, maldito ettin. �Ven a probar mi hacha! Ver�s cu�n r�pido te destripo. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @53 /* As� que ca�mos en una trampa, �eh? Esto me recuerda a la vez-- */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @54 /* ~No creo que sea el mejor momento para una de tus historias, Jan.~ */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @55 /* Bueno, bueno. Pero te lo contar� cuanto hayamos ganado aqu�. �Qu� te parece, buen Dusk? */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @56 /* ~Trato hecho.~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @57 /* Ahhhh, cuervo blanco. Has ca�do en una trampa. Pero, �qui�n soy yo para juzgarte? Yo mismo me he visto en situaciones similares. Vamos, venzamos a estos insensatos, as� puedo componer una o dos canciones sobre nuestras proezas. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @106 /* ~Oh, Dusk... t� s� que sabes hacer amistades, �eh? Vamos, que os ayudar� a enfrentar a estos monstruos.~ */
END
// REVELACI�N DEL ATAQUE AL DESTACAMENTO CUANDO LA VICTORIA DE DUSK SEA EVIDENTE


I_C_T P_ALABAR 6 P_Dusk_AlabarEVIL2
== P_Tongas IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @59 /* ~�Se�or, no te decepcionar�!~ */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy() ~
== P_KOCHA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @60 /* �Khjjjiii! Construir� un altar con sus huesos. */ DO~Enemy()~
== P_KOMAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @61 /* Jefe, demostrar� mi fuerza. �Por nuestro clan! */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_SERRA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @62 /* Har� un banquete con la carne de nuestros enemigos. Ser� un delicioso fest�n... */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_XEB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @63 /* *siseo* Al fin... dejemosss a alguno con vida... �Quiero experimentar con sus cuerposss! */ DO ~CreateItem ("WAND10",1,1,0) UseItem ("WAND10", Myself) DestroyItem ("WAND10") Enemy()~
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @64 /* Chimi: Vamos, Bob... Compite con tu hermano, �a ver quien machaca m�s a estos debiluchos! */
== P_BOB IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @65 /* (Ante las palabras de Chimi, la Mole prepara sus terribles garras para lanzarse al ataque) */ DO~Enemy()~
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @66 /* Toxsan: �Has escuchado, Mike? Toxsan ha lanzado un desaf�o. �No me decepciones! */ DO~Enemy()~
== P_MIKE IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @67 /* (Mike golpea sus pu�os entre s� y se lanza al ataque tras las palabras de Toxsan) */ DO~Enemy()~
END

//INTRO GENERAL
I_C_T P_ALABAR 2 P_Dusk_Alabar1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3 /* �Mago? Sab�a que Valatar o Sornhil estaban involucrados... */
END

I_C_T P_ALABAR 3 P_Dusk_Alabar2
== P_Tongas IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @5 /* Kalanda era su nombre, mi se�or. Su hechizo de transmutaci�n es incre�ble. No cre� que perdurara tanto. */
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @6 /* Chimi: Ya me hab�a acostumbrado a verlo como una ardilla, jefecito. */ 
== P_TOXSAN IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @7 /* Toxsan: Que no era una ardilla, Chimi. Era un hur�n. */
== P_KOCHA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @8 /* Insisto en que creo que un tej�n hubiera sido una mejor elecci�n. */ 
== P_SERRA IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9 /* Eso es porque t� tienes una obsesi�n por los tejones, Kocha. */ 
== P_KOMAR IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10 /* Yo creo que hay asuntos m�s importantes que discutir, compa�eros. */ 
END



