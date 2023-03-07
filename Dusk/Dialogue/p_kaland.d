BEGIN p_kaland

// EVIL PATH parte1
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Kaland_Enc","GLOBAL",0)
Global ("P_Dusk_Kalanda_Summon","GLOBAL",0)
Global("P_DUSK_IS_EVIL","GLOBAL",1)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Kaland_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",1)
  ~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~<CHARNAME>... s�, tu descripci�n concuerda.~ */
    IF ~~ THEN REPLY @2 /* ~�Qu� diantres...? �Elfo! �C�mo es que sabes mi nombre?~ */  GOTO 2
	// Conoce SOLO a SORNHIL
	IF ~Global ("P_Dusk_Sornhil_Enc1","GLOBAL",1) Global ("P_Dusk_Valata_Confg","GLOBAL",0)~ THEN REPLY @3 /* ~Conoces mi identidad... y exhalas energ�a arcana, elfo. �Dusk, esta criatura debe ser parte de la Orden que nos persigue!~ */  GOTO 14
	// Conoce a SORNHIL y VALATAR
	IF ~Global ("P_Dusk_Sornhil_Enc1","GLOBAL",1) Global ("P_Dusk_Valata_Confg","GLOBAL",1)~ THEN REPLY @3 /* ~Conoces mi identidad... y exhalas energ�a arcana, elfo. �Dusk, esta criatura debe ser parte de la Orden que nos persigue!~ */  GOTO 15
END

IF ~~ THEN BEGIN 2 // from:
  SAY @4 /* ~*carraspeo* Oh, es que eres muy famoso. Tus haza�as han llegado incluso aqu�, a la isla de Brynn Ley.~ ~*carraspeo* Oh, es que eres muy famosa. Tus haza�as han llegado incluso aqu�, a la isla de Brynn Ley.~*/
  IF ~~ THEN GOTO 3
END


IF ~~ THEN BEGIN 3 // from:
  SAY @9 /* ~Y t�, <CHARNAME>, no eres otro m�s que el hijo de Bhaal que acompa�a al Asesino de Magos.~ ~Y t�, <CHARNAME>, no eres otra m�s que la hija de Bhaal que acompa�a al Asesino de Magos.~*/
    IF ~~ THEN REPLY @10 /* ~*suspiro* Veo que est�s, tambi�n, al tanto de mi linaje. Debe ser el peor secreto guardado de la Costa de la Espada...~ */  GOTO 4
	IF ~~ THEN REPLY @11 /* ~�Y si as� fuera qu� har�as? Presiento que no eres una criatura de naturaleza afable, pese a tu raza, elfo.~ */  GOTO 5
    IF ~~ THEN REPLY @12 /* ~�Qu� clase de nombre es Kalanda? Rid�culo...~ */  GOTO 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY @13 /* ~Eres v�ctima de tus propios actos, <LADYLORD> <CHARNAME>. No es de esperar que muchos seres de poder est�n al tanto de tu origen.~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 5 // from:
  SAY @14 /* ~Mi naturaleza es mucho m�s met�dica que la de mis... compa�eros. Pero no por ello deber�as tomarme a la ligera...~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 6 // from:
  SAY @15 /* ~Puedes burlarte todo lo que quieras, <PRO_RACE>. Tus intentos por forzar un accionar furibundo en m� no dar�n resultado. Aunque... eso no quiera decir que no pueda ser... impredecible para ti.~*/
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @16 /* ~De todas formas, no estoy aqu� para hablar de eso. Fui enviado a este apestoso lugar, infestado de inmundos piratas, s�lo para ponerlos a prueba.~*/
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @29 /* ~�Observa esto con atenci�n!~ */
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Kaland_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",1)
  ~ EXIT
END

// EVIL PATH parte2
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Kalanda_Summon","GLOBAL",1)
Global("P_DUSK_IS_EVIL","GLOBAL",1)
~ THEN BEGIN 9 // from:
  SAY @30 /* ~Pareces sorprendido, Asesino de Magos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",2)
  ~ GOTO 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY @31 /* ~Tienes mucha confianza en ti mismo, humano. Me pregunto qu� pensar� el hijo de Bhaal al respecto.~ ~Tienes mucha confianza en ti mismo, humano. Me pregunto qu� pensar� la hija de Bhaal al respecto.~ */
    IF ~~ THEN REPLY @32 /* ~�Es en serio? Yo desayuno diablillos y worgs. Esta prueba ser� pan comido.~ */  GOTO 11
	IF ~~ THEN REPLY @33 /* ~Me ofendes si crees que puedes poner a prueba mi poder con esto, Kalanda.~ */  GOTO 11
    IF ~~ THEN REPLY @34 /* ~Creo que Dusk tiene raz�n. Debe haber alg�n truco detr�s de esto, hechicero... �qu� es?~ */  GOTO 12
END

IF ~~ THEN BEGIN 11 // from:
  SAY @37 /* ~Las apariencias pueden generarte una falsa impresi�n, <CHARNAME>. Deber�as saberlo... y lo sabr�s...~*/
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 12 // from:
  SAY @38 /* ~Muy perspicaz, <CHARNAME>. Ambos forman un buen equipo. Pero eso no los salvar�.~*/
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @39 /* ~Fracasar esta prueba significar� la muerte, <CHARNAME> y Dusk. Y tengan por seguro esto: �no ser� la �ltima vez que nuestros caminos se crucen!~*/
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",2)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210036 EXIT
END


IF ~~ THEN BEGIN 14 // from:
  SAY @6 /* ~��Qu�?! (Hmpf... sab�a que no iba a lograr convencerlos... maldito el d�a en que o� los consejos de Sornhil)~*/
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 15 // from:
  SAY @6 /* ~��Qu�?! (Hmpf... sab�a que no iba a lograr convencerlos... maldito el d�a en que o� los consejos de Sornhil)~*/
  IF ~~ THEN GOTO 3
END


// GOOD PATH parte1
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Kaland_Enc","GLOBAL",0)
Global ("P_Dusk_Kalanda_Summon","GLOBAL",0)
Global("P_DUSK_IS_GOOD","GLOBAL",1)
~ THEN BEGIN 16 // from:
  SAY @0 /* ~...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Kaland_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",1)
  ~ GOTO 27
END

IF ~~ THEN BEGIN 27 // from:
  SAY @1 /* ~<CHARNAME>... s�, tu descripci�n concuerda.~ */
    IF ~~ THEN REPLY @2 /* ~�Qu� diantres...? �Elfo! �C�mo es que sabes mi nombre?~ */  GOTO 17
	// Conoce SOLO a SORNHIL
	IF ~Global ("P_Dusk_Sornhil_Enc1","GLOBAL",1) Global ("P_Dusk_Valata_Confg","GLOBAL",0)~ THEN REPLY @3 /* ~Conoces mi identidad... y exhalas energ�a arcana, elfo. �Dusk, esta criatura debe ser parte de la Orden que nos persigue!~ */  GOTO 25
	// Conoce a SORNHIL y VALATAR
	IF ~Global ("P_Dusk_Sornhil_Enc1","GLOBAL",1) Global ("P_Dusk_Valata_Confg","GLOBAL",1)~ THEN REPLY @3 /* ~Conoces mi identidad... y exhalas energ�a arcana, elfo. �Dusk, esta criatura debe ser parte de la Orden que nos persigue!~ */  GOTO 26
END

IF ~~ THEN BEGIN 17 // from:
  SAY @4 /* ~*carraspeo* Oh, es que eres muy famoso. Tus haza�as han llegado incluso aqu�, a la isla de Brynn Ley.~ ~*carraspeo* Oh, es que eres muy famosa. Tus haza�as han llegado incluso aqu�, a la isla de Brynn Ley.~*/
  IF ~~ THEN GOTO 18
END


IF ~~ THEN BEGIN 18 // from:
  SAY @9 /* ~Y t�, <CHARNAME>, no eres otro m�s que el hijo de Bhaal que acompa�a al Asesino de Magos.~ ~Y t�, <CHARNAME>, no eres otra m�s que la hija de Bhaal que acompa�a al Asesino de Magos.~*/
    IF ~~ THEN REPLY @10 /* ~*suspiro* Veo que est�s, tambi�n, al tanto de mi linaje. Debe ser el peor secreto guardado de la Costa de la Espada...~ */  GOTO 19
	IF ~~ THEN REPLY @11 /* ~�Y si as� fuera qu� har�as? Presiento que no eres una criatura de naturaleza afable, pese a tu raza, elfo.~ */  GOTO 20
    IF ~~ THEN REPLY @12 /* ~�Qu� clase de nombre es Kalanda? Rid�culo...~ */  GOTO 21
END


IF ~~ THEN BEGIN 19 // from:
  SAY @13 /* ~Eres v�ctima de tus propios actos, <LADYLORD> <CHARNAME>. No es de esperar que muchos seres de poder est�n al tanto de tu origen.~*/
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 20 // from:
  SAY @14 /* ~Mi naturaleza es mucho m�s met�dica que la de mis... compa�eros. Pero no por ello deber�as tomarme a la ligera...~*/
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 21 // from:
  SAY @15 /* ~Puedes burlarte todo lo que quieras, <PRO_RACE>. Tus intentos por forzar un accionar furibundo en m� no dar�n resultado. Aunque... eso no quiera decir que no pueda ser... impredecible para ti.~*/
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22// from:
  SAY @16 /* ~De todas formas, no estoy aqu� para hablar de eso. Fui enviado a este apestoso lugar, infestado de inmundos piratas, s�lo para ponerlos a prueba.~*/
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @29 /* ~�Observa esto con atenci�n!~ */
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Kaland_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",1)
  ~ EXIT
END

// GOOD PATH parte2
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Kalanda_Summon","GLOBAL",1)
Global("P_DUSK_IS_GOOD","GLOBAL",1)
~ THEN BEGIN 24 // from:
  SAY @30 /* ~Pareces sorprendido, Asesino de Magos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Kalanda_Summon","GLOBAL",2)
  ~ GOTO 10
END

IF ~~ THEN BEGIN 25 // from:
  SAY @6 /* ~��Qu�?! (Hmpf... sab�a que no iba a lograr convencerlos... maldito el d�a en que o� los consejos de Sornhil)~*/
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 26 // from:
  SAY @6 /* ~��Qu�?! (Hmpf... sab�a que no iba a lograr convencerlos... maldito el d�a en que o� los consejos de Sornhil)~*/
  IF ~~ THEN GOTO 18
END


// GOOD 1 NO CONOCE parte3
I_C_T P_KALAND 24 P_Dusk_Kaland10
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @35 /* �Est�s hablando en serio? Estas criaturas no son rivales para nosotros, Kalanda. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @36 /* �Qu� est�s tramando realmente? */
END 

// GOOD 3 CONOCE SORNHIL parte1

I_C_T P_KALAND 26 P_Dusk_Kaland9
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @40 /* <CHARNAME>, estamos ante un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @7 /* As� que has identificado mi escuela de especializaci�n, humano. Con s�lo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @42 /* Ah, s�, la t�pica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invoc� a una tortuga, la cual habr� tenido el tama�o de mi rodilla. Golodon lanz� un conjuro de tranformaci�n en ella y la misma creci� de tama�o, a tal punto, que decidimos armar una casucha encima de su caparaz�n y vivir all� una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atenci�n a este elfo. Puede que tenga intenci�n de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @8 /* Supongo que no me queda otra opci�n m�s que presentarme. Mi nombre es Kalanda, el Transmutador. */
END

// GOOD 2 CONOCE SORNHIL parte1

I_C_T P_KALAND 25 P_Dusk_Kaland8
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @40 /* <CHARNAME>, estamos ante un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @7 /* As� que has identificado mi escuela de especializaci�n, humano. Con s�lo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @42 /* Ah, s�, la t�pica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invoc� a una tortuga, la cual habr� tenido el tama�o de mi rodilla. Golodon lanz� un conjuro de tranformaci�n en ella y la misma creci� de tama�o, a tal punto, que decidimos armar una casucha encima de su caparaz�n y vivir all� una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atenci�n a este elfo. Puede que tenga intenci�n de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @8 /* Supongo que no me queda otra opci�n m�s que presentarme. Mi nombre es Kalanda, el Transmutador. */
END

// GOOD 1 NO CONOCE parte2
I_C_T P_KALAND 22 P_Dusk_Kaland7
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @44 /* �A qu� te refieres? �Si intentas da�ar a <CHARNAME>, tu cabeza rodar�, Kalanda! */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @18 /* �Es necesario que provoques un enfrentamiento, Dusk? Tenemos cosas m�s urgentes que atender aqu�. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @21 /* Hm... este elfo tiene una energ�a extra�a a su alrededor, hombre del palito. Sin embargo, no creo que sea rival para mis conjuros. (No, no creo que lo sea...) */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @19 /* Debes tener cuidado, Dusk. As� como el murci�lago no puede encontrar alimento cuando ruge el viento con fuerza, no he sido capaz de encontrar un gramo de naturaleza en esta criatura �lfica. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @41 /* �D-dusk! Tranquilizate. No eres el �nico que usar� todas sus fuerzas para defender a <CHARNAME>. Cuentas con m�s de un amigo a tu lado. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @22 /* Escupo en tus amenazas, elfo basura. Piernas flacas, s�lo di las palabras y habr� de descuartizarlo por ti. */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @23 /* Cuervo blanco, debo decirte que este tal Kalanda tiene una fuerza misteriosa en �l. No deber�amos tomarnos a la ligera sus amenazas. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @24 /* Mi Orden es poderosa, Asesino de Magos. Puede que te hayas entrenado con Ojos de Serpiente para mejorar tu resistencia arcana... pero eso no ser� suficiente. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @43 /* ��Q-qu�?! �C�mo sabes eso? �Habla! No me obligues a matarte, Kalanda. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @27 /* No, no habr� de hablar, Asesino de Magos. Y no, tampoco es mi hora de morir. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @28 /* Pero ser� la de ustedes si no superan esta prueba. */
END


// GOOD 1 NO CONOCE parte1
I_C_T P_KALAND 17 P_Dusk_Kaland6
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @40 /* <CHARNAME>, �cuidado! Percibo una energ�a particular en �l... se trata de un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @6 /* ��Qu�?! (Hmpf... sab�a que no iba a lograr convencerlos... maldito el d�a en que o� los consejos de Sornhil) */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @7 /* As� que has identificado mi escuela de especializaci�n, humano. Con s�lo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @42 /* Ah, s�, la t�pica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invoc� a una tortuga, la cual habr� tenido el tama�o de mi rodilla. Golodon lanz� un conjuro de tranformaci�n en ella y la misma creci� de tama�o, a tal punto, que decidimos armar una casucha encima de su caparaz�n y vivir all� una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atenci�n a este elfo. Puede que tenga intenci�n de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @8 /* Supongo que no me queda otra opci�n m�s que presentarme. Mi nombre es Kalanda, el Transmutador. */
END


// EVIL 3 CONOCE SORNHIL parte1

I_C_T P_KALAND 15 P_Dusk_Kaland5
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @5 /* <CHARNAME>, estamos ante un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @7 /* As� que has identificado mi escuela de especializaci�n, humano. Con s�lo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @42 /* Ah, s�, la t�pica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invoc� a una tortuga, la cual habr� tenido el tama�o de mi rodilla. Golodon lanz� un conjuro de tranformaci�n en ella y la misma creci� de tama�o, a tal punto, que decidimos armar una casucha encima de su caparaz�n y vivir all� una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atenci�n a este elfo. Puede que tenga intenci�n de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @8 /* Supongo que no me queda otra opci�n m�s que presentarme. Mi nombre es Kalanda, el Transmutador. */
END

// EVIL 2 CONOCE SORNHIL parte1

I_C_T P_KALAND 14 P_Dusk_Kaland4
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @5 /* <CHARNAME>, estamos ante un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @7 /* As� que has identificado mi escuela de especializaci�n, humano. Con s�lo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @42 /* Ah, s�, la t�pica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invoc� a una tortuga, la cual habr� tenido el tama�o de mi rodilla. Golodon lanz� un conjuro de tranformaci�n en ella y la misma creci� de tama�o, a tal punto, que decidimos armar una casucha encima de su caparaz�n y vivir all� una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atenci�n a este elfo. Puede que tenga intenci�n de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @8 /* Supongo que no me queda otra opci�n m�s que presentarme. Mi nombre es Kalanda, el Transmutador. */
END


// EVIL 1 NO CONOCE parte3
I_C_T P_KALAND 9 P_Dusk_Kaland3
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @35 /* �Est�s hablando en serio? Estas criaturas no son rivales para nosotros, Kalanda. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @36 /* �Qu� est�s tramando realmente? */
END 

// EVIL 1 NO CONOCE parte2
I_C_T P_KALAND 7 P_Dusk_Kaland2
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @17 /* �A prueba? �Ja! �Qu� prueba puede imponernos un mago tan pat�tico como t�, elfo? */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @18 /* �Es necesario que provoques un enfrentamiento, Dusk? Tenemos cosas m�s urgentes que atender aqu�. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @21 /* Hm... este elfo tiene una energ�a extra�a a su alrededor, hombre del palito. Sin embargo, no creo que sea rival para mis conjuros. (No, no creo que lo sea...) */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @19 /* Debes tener cuidado, Dusk. As� como el murci�lago no puede encontrar alimento cuando ruge el viento con fuerza, no he sido capaz de encontrar un gramo de naturaleza en esta criatura �lfica. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @20 /* *risa* �Qui�n lo dir�a, abbil? Tienes algo de violencia racial en tu interior. Creo que los elfos de la superficie lo tienen merecido... */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @22 /* Escupo en tus amenazas, elfo basura. Piernas flacas, s�lo di las palabras y habr� de descuartizarlo por ti. */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @23 /* Cuervo blanco, debo decirte que este tal Kalanda tiene una fuerza misteriosa en �l. No deber�amos tomarnos a la ligera sus amenazas. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @24 /* Mi Orden es poderosa, Asesino de Magos. Puede que te hayas entrenado con Ojos de Serpiente para mejorar tu resistencia arcana... pero eso no ser� suficiente. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @25 /* ��Q-qu�?! �C�mo sabes eso, elfo? �Habla, o morir�s ahora mismo! */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @26 /* �Eso se supone que es una broma? No entiendo el humor de los humanos... me parece pat�tico. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @27 /* No, no habr� de hablar, Asesino de Magos. Y no, tampoco es mi hora de morir. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @28 /* Pero ser� la de ustedes si no superan esta prueba. */
END

// EVIL 1 NO CONOCE parte1
I_C_T P_KALAND 2 P_Dusk_Kaland1
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @5 /* <CHARNAME>, estamos ante un Transmutador. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @6 /* ��Qu�?! (Hmpf... sab�a que no iba a lograr convencerlos... maldito el d�a en que o� los consejos de Sornhil) */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @7 /* As� que has identificado mi escuela de especializaci�n, humano. Con s�lo verme... impresionante. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @42 /* Ah, s�, la t�pica trama del elfo transmutador. Recuerdo que Golodon usaba muchos conjuros de esa escuela. Una vez invoc� a una tortuga, la cual habr� tenido el tama�o de mi rodilla. Golodon lanz� un conjuro de tranformaci�n en ella y la misma creci� de tama�o, a tal punto, que decidimos armar una casucha encima de su caparaz�n y vivir all� una buena temporada. Fueron buenos tiempos. Lo que quiero decir, Dusk, es que prestes atenci�n a este elfo. Puede que tenga intenci�n de hacer algo malo con sus transmutaciones. */
== P_KALAND IF ~ InMyArea("P_Dusk") ~ THEN @8 /* Supongo que no me queda otra opci�n m�s que presentarme. Mi nombre es Kalanda, el Transmutador. */
END
