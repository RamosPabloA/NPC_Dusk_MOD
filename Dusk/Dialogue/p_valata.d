BEGIN p_valata

// EVIL PATH
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Valata_Confg","GLOBAL",0)
Global ("P_Dusk_Valata_Demon","GLOBAL",0)
Global("P_DUSK_IS_GOOD","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~Vaya, vaya... Capit�n, esperaba una bienvenida m�s c�lida... despu�s de todo, te has hecho m�s poderoso gracias a nosotros...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Confg","GLOBAL",1)
  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 264
END

IF ~~ THEN BEGIN 1 // from:
  SAY @5 /* ~No mereces mi paciencia, fen�nemo de circo... Sin embargo, hoy me siento amable: Soy Valatar, el Conjurador.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 2 // from:
  SAY @14 /* ~Capit�n Aldant... de seguro habremos de encontrarnos una vez m�s... si es que sobrevives, claro. �Ja, ja, ja! ~ */
  IF ~~ THEN DO ~  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210020 EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY @6 /* Vayamos a asuntos m�s interesantes: S� muy bien qu� haces aqu�, capit�n. Debo decir que comparto tu amor por la venganza. Es... un sentimiento �nico cuando al fin logras realizarla. */ 
  IF ~~ THEN GOTO 2
END




// GOOD PATH
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Valata_Confg","GLOBAL",0)
Global ("P_Dusk_Valata_Demon","GLOBAL",0)
Global("P_DUSK_IS_GOOD","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @17 /* ~Vaya, vaya... si es el Capit�n Aldant y su inseparable camarada, <CHARNAME>...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Confg","GLOBAL",1)
  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 274
END

IF ~~ THEN BEGIN 5 // from:
  SAY @21 /* ~Dado que no os considero una verdadera amenaza, os lo dir�: Soy Valatar, el Conjurador.~ */
  IF ~~ THEN DO ~  SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",1)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210022 EXIT
END



//GOOD
I_C_T P_VALATA 4 P_Dusk_Valata1Enc3
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @18 /* �Qu� es lo que buscas, mago? He rechazado el poder que tu amigo ha intentado ofrecerme. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @19 /* Tus sucios trucos no funcionar�n conmigo... y te lo advierto... si intentas algo, no dudar� en separar la cabeza de tu cuerpo con mi espada. */ 
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @20 /* (risa) Aunque no me impresionas, tu actitud s�. �Quiz�s se deba a tu extensa compa��a junto a un engendro de Bhaal? */
END


I_C_T P_VALATA 5 P_Dusk_Valata1Enc4
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @22 /* �Y qu� haces aqu�, Valatar? Claramente, nos est�s siguiendo. �Vamos, habla! */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @23 /* Hmpf... esto ya no es divertido... */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @24 /* Ver�s, mi Orden se encuentra muy interesada en tu inminente enfrentamiento contra Alabarza y su clan. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @25 /* Si logras vencerlos, a�n podr�as recuperar tu honor como Primera Espada en el Ej�rcito de Cormyr, �no lo crees? */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @26 /* �Q-qu�...? */ 
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @27 /* Si hubieses aceptado el poder del orbe escarlata, esa no ser�a una preocupaci�n para ti. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @28 /* El orbe habr�a despertado una fuerza descomunal en ti. Te habr�as sentido tan poderoso como un drag�n. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @29 /* Pero... en cambio, avanzas como un lobo, confiando en la fuerza de tu manada. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @30 /* Llegado el momento, capit�n... ver�s lo poco que puede hacer una manada de animales salvajes en contra de una verdadera fuerza de poder. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @31 /* Intentas intimidarme, Valatar... quiz�s a�n en mi ignorancia sobre tu Orden, podr�a sentirme dubitativo. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @32 /* Pero cuento con la fuerza de mis amigos, Mathyus, Michelson, <CHARNAME>. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @33 /* El miedo no es un arma que puedas usar contra m�. */ 
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @34 /* �Ja! Eso est� por verse, cormyreano. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @35 /* Me enviaron s�lo a observarte... se supone que no debo matarte. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @36 /* Pero no dijeron nada de mis convocaciones. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @16 /* �Lo sab�a! Cuidado, <CHARNAME>. Creo que estamos ante una contingencia arcana. */
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @14 /* ~Capit�n Aldant... de seguro habremos de encontrarnos una vez m�s... si es que sobrevives, claro. �Ja, ja, ja! ~ */
END

//EVIL
I_C_T P_VALATA 0 P_Dusk_Valata1Enc1
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @2 /* Supongo que te refieres al orbe escarlata de Sornhil. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @3 /* Quiz�s deba agradecerles, mago. �Qu� te parece tu coraz�n empalado en mi espada como s�mbolo de agradecimiento? */ 
== P_VALATA IF ~ InMyArea("P_Dusk") ~ THEN @4 /* (risa) No s� si esa actitud se deba al orbe o a tu extensa compa��a junto a un engendro de Bhaal. */
END

I_C_T P_VALATA 3 P_Dusk_Valata1Enc2
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @7 /* Tu opini�n me importa muy poco, conjurador. Dime, �qu� es lo que quieres? Tu vida depende de la respuesta que vayas a dar. */
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @8 /* Fui enviado por mi Orden. Tenemos planes para ti y tu... l�der. */ 
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @9 /* Estamos muy interesados en el resultado del combate que se avecina entre tu grupo y el de Alabarza. */ 
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @10 /* �C�mo es que saben tanto de nuestros movimientos? Creo que no eres diferente a tu compa�ero, Sornhil. Parece que disfrutan de escuchar su propia voz, a�n cuando est� m�s vac�a que una esponja seca. */
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @11 /* Te lo aseguro, capit�n... mi voz es de temer... */ 
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @12 /* �Pero basta! Fui enviado para darte algo, capit�n. Me dijeron exclusivamente que no deb�a intentar... matarte. */ 
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @13 /* Sin embargo, tengo mucha curiosidad para ver cu�l es el l�mite del orbe escarlata. Es por eso que... he preparado un... diab�lico enfrentamiento. */
== P_VALATA IF ~InMyArea("P_Dusk") ~ THEN @15 /* YO no he de matarte... en eso, cumplo con mi Orden... Sin embargo, no dijeron nada de mis... convocaciones. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @16 /* �Lo sab�a! Cuidado, <CHARNAME>. Creo que estamos ante una contingencia arcana. */
END
