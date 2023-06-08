BEGIN P_BABA

// Bloque 1 (FTF)

IF WEIGHT #0 ~RandomNum(3,1)~ 
THEN BEGIN 0 
  SAY @1 /* El peque�o Baba te mira con sus grandes ojos cuando te acercas. Comienza a mover la cola, no sabes muy bien si eso significa que est� feliz o molesto. Mueve su diminuto hocico y emite algo que parece ser una especie de ladrido, lo que te deja confundido ya que est�s interactuando con un roedor. */
  IF ~HPGT(Myself,9)~ THEN REPLY @2 /* �Salve, gran Baba! S� que no soy digno de dirigirme a ti, pero con el debido respeto, me atrevo a hacer solicitud de tus servicios. Si tienes alg�n �tem de valor para m�, �ser�a el gran Baba tan magn�nimo de entreg�rmelos y as� aligerar su carga? */ GOTO 20
  IF ~HPGT(Myself,9)~ THEN REPLY @3 /* �Qui�n es el ratoncito m�s lindo del mundo? �T� lo eres, s�, Baba, t� lo eres! Y como es el ratoncito m�s lindo del mundo, seguro vas a darme lo que sea que tengas de valor contigo, �no es as�? (intentas acariciarlo, mientras esbozas una gran sonrisa forzada) */ GOTO 21
  IF ~HPGT(Myself,9)~ THEN REPLY @4 /* Oye, Baba. �Quieres un trozo de pastel? Debo tener algo guardado en mi mochila. Te dar� una porci�n si me das lo que has robado, �qu� te parece? */ GOTO 22
  IF ~ HPLT(Myself,10) ~ THEN REPLY @22 /* Oye Baba, �te encuentras bien? Pareces m�s nervioso que de costumbre. �Te encuentras herido? */ GOTO 29
END

IF ~~ THEN BEGIN 20 
  SAY @5 /* Por unos segundos, parece que has logrado calar en el orgullo de Baba. Pero de repente, comienza a sacudirse como un loco y huye de ti, barbotando gru�idos. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~~ THEN BEGIN 21 
  SAY @6 /* Durante los primeros segundos, te mira con desconfianza. Pero, finalmente, se rinde ante tus caricias mientras emite algunos extra�os sonidos agudos. Baba decide darte todo lo que tiene en su inventario. */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 22 
  SAY @7 /* Cuando mencionas comida, las orejas de Baba se estiran durante un momento. Pero al cabo de unos segundos, se percata de que s�lo est�s intentando sobornarlo. Su orgullo se hiere y sale corriendo como un desquiciado, mientras emite barboteos de furia contra ti. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

// Bloque 2 (TFF)

IF WEIGHT #1 ~ RandomNum(3,2)
~ THEN BEGIN 1 // from:
 SAY @8 /* El peque�o Baba te mira con sus grandes ojos cuando te acercas. Comienza a saltar como un desquiciado y no sabes si eso significa que est� feliz de verte o quiz�s planea atacarte. Mueve sus manitos y emite sonidos que, inconfundiblemente, parecen los de un cachorro canino, lo que te deja confundido ya que est�s interactuando con un roedor. */
  IF ~HPGT(Myself,9)~ THEN REPLY @9 /* �Salve, gran Baba! S� que no soy digno de dirigirme a ti, pero con el debido respeto, me atrevo a hacer solicitud de tus servicios. Si tienes alg�n �tem de valor para m�, �ser�a el gran Baba tan magn�nimo de entreg�rmelos y as� aligerar su carga? */ GOTO 23
  IF ~HPGT(Myself,9)~ THEN REPLY @10 /* �Qui�n es el ratoncito m�s lindo del mundo? �T� lo eres, s�, Baba, t� lo eres! Y como es el ratoncito m�s lindo del mundo, seguro vas a darme lo que sea que tengas de valor contigo, �no es as�? (intentas acariciarlo, mientras esbozas una gran sonrisa forzada) */ GOTO 24
  IF ~HPGT(Myself,9)~ THEN REPLY @11 /* Oye, Baba. �Quieres un trozo de pastel? Debo tener algo guardado en mi mochila. Te dar� una porci�n si me das lo que has robado, �qu� te parece? */ GOTO 25
  IF ~ HPLT(Myself,10) ~ THEN REPLY @22 /* Oye Baba, �te encuentras bien? Pareces m�s nervioso que de costumbre. �Te encuentras herido? */ GOTO 29
END

IF ~~ THEN BEGIN 23 
  SAY @12 /* Baba, de repente erguido, parece estar de acuerdo contigo, emitiendo sonidos extra�os de canino. El hecho de que hayas hablado con la verdad, le ha convencido de entregarte lo que tiene en su inventario. */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 24 
  SAY @13 /* Por unos segundos casi logras convencerlo, pero Baba descubre que s�lo quieres lo que �l tiene, por lo que sale corriendo mientras le escuchas quejarse en un idioma incomprensible. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~~ THEN BEGIN 25 
  SAY @14 /* Cuando mencionas comida, las orejas de Baba se estiran durante un momento. Pero al cabo de unos segundos, se percata de que s�lo est�s intentando sobornarlo. Su orgullo se hiere y sale corriendo como un desquiciado, mientras emite barboteos de furia contra ti. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END


// Bloque 3 (FFT)

IF WEIGHT #2 ~ RandomNum(3,3)
~ THEN BEGIN 2 // from:
 SAY @15 /* El peque�o Baba te mira con sus grandes ojos cuando te acercas. Comienza a correr alrededor tuyo sin raz�n aparente y no sabes si lo hace porque est� feliz de verte o porque planea robarte alguna joya de valor que puedas poseer. Se te sube por tus ropas, trepando por una de tus piernas. Intentas sac�rtelo de encima pero es dif�cil. Mientras, emite sonido de jadeo, similares a los de un perro, lo que te deja extra�ado, porque sabes que interact�as con un roedor. */
  IF ~HPGT(Myself,9)~ THEN REPLY @16 /* �Salve, gran Baba! S� que no soy digno de dirigirme a ti, pero con el debido respeto, me atrevo a hacer solicitud de tus servicios. Si tienes alg�n �tem de valor para m�, �ser�a el gran Baba tan magn�nimo de entreg�rmelos y as� aligerar su carga? */ GOTO 26
  IF ~HPGT(Myself,9)~ THEN REPLY @17 /* �Qui�n es el ratoncito m�s lindo del mundo? �T� lo eres, s�, Baba, t� lo eres! Y como es el ratoncito m�s lindo del mundo, seguro vas a darme lo que sea que tengas de valor contigo, �no es as�? (intentas acariciarlo, mientras esbozas una gran sonrisa forzada) */ GOTO 27
  IF ~HPGT(Myself,9)~ THEN REPLY @18 /* Oye, Baba. �Quieres un trozo de pastel? Debo tener algo guardado en mi mochila. Te dar� una porci�n si me das lo que has robado, �qu� te parece? */ GOTO 28
  // Test HPLT
  IF ~ HPLT(Myself,10) ~ THEN REPLY @22 /* Oye Baba, �te encuentras bien? Pareces m�s nervioso que de costumbre. �Te encuentras herido? */ GOTO 29
END

IF ~~ THEN BEGIN 26 
  SAY @19 /* Por unos segundos, parece que has logrado calar en el orgullo de Baba. Pero de repente, comienza a sacudirse como un loco y huye de ti, barbotando gru�idos. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~~ THEN BEGIN 27 
  SAY @20 /* Por unos segundos casi logras convencerlo, pero Baba descubre que s�lo quieres lo que �l tiene, por lo que sale corriendo mientras le escuchas quejarse en un idioma incomprensible. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~~ THEN BEGIN 28 
  SAY @21 /* Si bien ves el evidente desagrado que tiene Baba sobre ti, el peque�uelo se ha dado cuenta de que lleva varias horas sin comer, por lo que decide darte lo que ha conseguido, a cambio de la promesa de comida. */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

// HPLT Test
IF ~~ THEN BEGIN 29 
  SAY @23 /* Baba parece indignarse por tan obvia afirmaci�n, por lo que decide mostrarte con sus peque�as manitos d�nde tiene la herida de combate. Luego, decide huir de ti, ya que pareces no preocuparte por su bienestar. */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT 
END

IF ~See("Minsc")
InParty("Minsc")
!StateCheck("Minsc",STATE_SLEEPING)
RandomNum(3,1)
Global("P_baba_ITC_Minsc1","GLOBAL",0)
~ THEN BEGIN 30 // from:
  SAY @24 /* ~*Baba parece observar a Minsc con gran desconfianza. En realidad, de quien desconf�a es de Bub�.*~ */
  IF ~~ THEN DO ~SetGlobal("P_baba_ITC_Minsc1","GLOBAL",1)~ GOTO 31
END

IF 
~~ THEN BEGIN 31 // from:
  SAY @34 /* ~*Podr�as jurar que Baba sonr�e victorioso cuando ve alejarse a Minsc con Bub�.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Yoshimo")
InParty("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
RandomNum(3,2)
Global("P_baba_ITC_Yoshimo1","GLOBAL",0)
~ THEN BEGIN 32 // from:
  SAY @35 /* ~*Baba parece estar observando detenidamente a Yoshimo.*~ */
  IF ~~ THEN DO ~SetGlobal("P_baba_ITC_Yoshimo1","GLOBAL",1)~ GOTO 33
END

IF 
~~ THEN BEGIN 33 // from:
  SAY @41 /* ~*Baba parece asentir con su peque�a cabeza. Est� totalmente convencido de que se ha explicado correctamente.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~See("Mazzy")
InParty("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
RandomNum(3,3)
Global("P_baba_ITC_Mazzy1","GLOBAL",0)
~ THEN BEGIN 34 // from:
  SAY @42 /* ~*Baba se acerca a Mazzy y se detiene a observarla fijamente. Por primera vez, observas dudas en su mirada.*~ */
  IF ~~ THEN DO ~SetGlobal("P_baba_ITC_Mazzy1","GLOBAL",1)~ GOTO 35
END

IF 
~~ THEN BEGIN 35 // from:
  SAY @63 /* ~*Baba parece extasiado... y al cabo de unos segundos, cae en la cuenta de que est� siendo observado por todos. Para evitar la verg�enza, huye con gran velocidad.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],50)~ EXIT
END

I_C_T P_baba 34 P_baba_Mazzy1
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @43 /* Oh, hola Baba. �C�mo te encuen--? */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @44 /* *Baba comienza a emitir sus t�picos sonidos extra�os, interrumpiendo a Mazzy. Parece haber cierto dolor en sus ojos.*  */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @45 /* Ah, eso es hermoso Baba. */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @46 /* *susurro* No entiendo, �qu� sucede, Bellfame? */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @47 /* �Acaso no es obvio, mortal? Baba est� declarando su amor por ti. */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @48 /* *Baba sigue su 'discurso' mientras Mazzy y Bellfame hablan por lo bajo.*  */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @49 /* �Qu�? �El roedor est� enamorado de m�? */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @50 /* S�. Ahora mismo est� recitando lo que ustedes llaman poes�a. */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @51 /* Oh, ya veo. �Y qu� es lo que dice? */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @52 /* *Baba sigue emitiendo sonidos ex�ticos.*  */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @53 /* Dice algo as�:
'En lo profundo de mi peque�a madriguera,
suspiro de amor por una mujer tan bella.
En sus ojos encuentro la luz verdadera,
y mi coraz�n se llena de estrellas.' */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @54 /* 'Aunque soy peque�o y fr�gil, no temo luchar,
por el amor que siento en mi ratonil ser.
Bajo la luna, susurro versos sin cesar,
pintando en la noche un dulce querer.' */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @55 /* 'Oh, Mazzy, escucha mi voz,
soy un rat�n que te ama con fervor.
En mi peque�o ser hay un amor veloz,
un rat�n enamorado, eterno enamorador.' */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @56 /* *Baba finalmente termina su 'declaraci�n'.*  */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @57 /* Oh, es... sumamente hermoso. No cre� que un... roedor pudiera componer algo tan bello. */
== P_BELLD IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @58 /* Baba puede que sea duro con el resto de los mortales. Pero es la primera vez que veo expresa algo de amor genuino. */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @59 /* Entiendo. */
== MazzyJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @60 /* Baba, gracias por tu poes�a. Ven aqu�. */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @61 /* *Los ojos de Baba brillan incesantemente y veloz se dirige hacia Mazzy.*  */
== P_baba IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @62 /* *Mazzy lo toma en sus manos y lo eleva, plasmando un beso en su cabecita. Luego, vuelve a depositarlo en el piso.*  */
END


I_C_T P_baba 32 P_baba_Yoshimo1
== YoshJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @36 /* �Qu� es esto? Si es el buen Baba. T� podr�as ser un gran Ladr�n de las Sombras, �sabes? */
== P_baba IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @37 /* *Baba comienza a emitir sus cl�sicos sonidos extra�os.*  */
== YoshJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @38 /* S�, bueno. La verdad no tengo idea de qu� me est�s diciendo. */
== P_baba IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @39 /* *Baba sigue hablando su idioma y casi parece explicar lo que est� 'diciendo' con sus peque�as patitas.*  */
== YoshJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @40 /* Por c�mo lo expresas, no me atrever�a a contradecirte, peque�o amigo. */
END


I_C_T P_baba 30 P_baba_Minsc1
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @25 /* �Qu� sucede con el peque�o Baba? �Eh? Bub� dice que tampoco conf�a en ti. */
== P_baba IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @26 /* *Baba comienza a mover sus manitos con gran rapidez y emite sonidos extra�os. Si hablaras su idioma, estar�as casi seguro de que est� insultando a Bub�*  */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @27 /* �Eso es muy descort�s! �Qu�? �T� tambi�n, Bub�? */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @28 /* *chillido* */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @29 /* �Oh, Bub�, eso es indecible! Nunca antes hab�a o�do insultos tales... �estoy totalmente avergonzado de ustedes! */
== P_baba IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @30 /* *Baba sigue su rabieta y parece arengar negativamente al h�mster.*  */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @28 /* *chillido* */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @32 /* Oh, no, eso no suceder�. Lo �ltimo que necesitamos es un combate a muerte entre roedores. <CHARNAME> estar�a muy decepcionado de ustedes. */
== MinscJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @33 /* �V�monos, Bub�! Ser� mejor que te alejes de ese maleducado. */
END


