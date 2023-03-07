BEGIN p_anthag

// EVIL PATH INFRAOSCURIDAD
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Anthagar_Enc","GLOBAL",0)
Global ("P_Dusk_Anthagar_Summon","GLOBAL",0)
Global("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_Dusk_AnthagarMet","GLOBAL",1)
AreaCheck("AR2100")
~ THEN BEGIN 0 // from:
  SAY @0 /* ~La Infraoscuridad... �Qu� sitio tan ideal para nuestro reencuentro, capit�n Ardusk Aldant!~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Anthagar_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 311
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~Y t� eres <CHARNAME>, el engendro de Bhaal proveniente de Candelero y pupilo de Gorion.~ ~Y t� eres <CHARNAME>, la engendro de Bhaal proveniente de Candelero y pupila de Gorion.~ */
    IF ~~ THEN REPLY @2 /* ~�Debo impresionarme? Tus esbirros ya han demostrado saber el origen de mi linaje. No es gran cosa que sepas eso a estas alturas.~ */GOTO 2
	IF ~~ THEN REPLY @3 /* ~�C�mo es que sabes tanto, nigromante? �Ser� mejor que hables o sentir�s mi ira!~ */GOTO 3
	IF ~~ THEN REPLY @4 /* ~�Orden de la Cripta Olvidada? Sirves a un semidios, mago. Sabes lo pat�tico que es eso, �verdad?~ */GOTO 4
	IF ~~ THEN REPLY @5 /* ~�Qu� quieres de nosotros, Anthagar? Este juego del gato y el rat�n se est� volviendo tedioso...~ */GOTO 5
END

IF ~~ THEN BEGIN 2 // from:
  SAY @6 /* ~La sola menci�n de mi Se�or deber�a estremecerte, hijo de Bhaal. Pero s� que s�lo buscas una provocaci�n. Eres perspicaz, tal y como me han informado...~ ~La sola menci�n de mi Se�or deber�a estremecerte, hija de Bhaal. Pero s� que s�lo buscas una provocaci�n. Eres perspicaz, tal y como me han informado...~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 3 // from:
  SAY @7 /* ~�Hm! Ya veo que posees una c�lera similar a la del cormyreano... Me pregunto si estar� relacionado directamente a tu linaje. �Quiz�s a tu crianza? No importa.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 4 // from:
  SAY @8 /* ~Faltarle el respeto a mi Se�or s�lo har� que tu muerte sea m�s dolorosa, <CHARNAME>. Adem�s de quedar como un idiota... De todas formas, eso es de poca importancia.~ ~Faltarle el respeto a mi Se�or s�lo har� que tu muerte sea m�s dolorosa, <CHARNAME>. Adem�s de quedar como una idiota... De todas formas, eso es de poca importancia.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 5 // from:
  SAY @9 /* ~Ah, �sa si es una pregunta importante, <CHARNAME>. �Qu� queremos nosotros de ustedes? Pronto lo sabr�s...~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @10 /* ~Sornhil y Valatar imagino que te los has encontrado en el camino, �verdad? Desconozco si has hecho lo mismo con Kalanda. El elfo no es de lo m�s... sociables que digamos.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @11 /* ~Mi punto es... que has superado las pruebas que se te han impuesto, capit�n. Ojos de Serpiente te ha ense�ado bien.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @28 /* ~En nuestro pr�ximo encuentro, capit�n... habremos de aclarar las cuentas... Por ahora... �Sobrevive a mis fieles seguidores!~*/
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210037 EXIT
END

// GOOD PATH INFRAOSCURIDAD
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Anthagar_Enc","GLOBAL",0)
Global ("P_Dusk_Anthagar_Summon","GLOBAL",0)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_Dusk_AnthagarMet","GLOBAL",1)
AreaCheck("AR2100")
~ THEN BEGIN 9 // from:
  SAY @0 /* ~La Infraoscuridad... �Qu� sitio tan ideal para nuestro reencuentro, capit�n Ardusk Aldant!~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Anthagar_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 311
END

IF ~~ THEN BEGIN 10 // from:
  SAY @1 /* ~Y t� eres <CHARNAME>, el engendro de Bhaal proveniente de Candelero y pupilo de Gorion.~ ~Y t� eres <CHARNAME>, la engendro de Bhaal proveniente de Candelero y pupila de Gorion.~ */
    IF ~~ THEN REPLY @2 /* ~�Debo impresionarme? Tus esbirros ya han demostrado saber el origen de mi linaje. No es gran cosa que sepas eso a estas alturas.~ */GOTO 11
	IF ~~ THEN REPLY @3 /* ~�C�mo es que sabes tanto, nigromante? �Ser� mejor que hables o sentir�s mi ira!~ */GOTO 12
	IF ~~ THEN REPLY @4 /* ~�Orden de la Cripta Olvidada? Sirves a un semidios, mago. Sabes lo pat�tico que es eso, �verdad?~ */GOTO 13
	IF ~~ THEN REPLY @5 /* ~�Qu� quieres de nosotros, Anthagar? Este juego del gato y el rat�n se est� volviendo tedioso...~ */GOTO 14
END

IF ~~ THEN BEGIN 11 // from:
  SAY @6 /* ~La sola menci�n de mi Se�or deber�a estremecerte, hijo de Bhaal. Pero s� que s�lo buscas una provocaci�n. Eres perspicaz, tal y como me han informado...~ ~La sola menci�n de mi Se�or deber�a estremecerte, hija de Bhaal. Pero s� que s�lo buscas una provocaci�n. Eres perspicaz, tal y como me han informado...~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 12 // from:
  SAY @7 /* ~�Hm! Ya veo que posees una c�lera similar a la del cormyreano... Me pregunto si estar� relacionado directamente a tu linaje. �Quiz�s a tu crianza? No importa.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 13 // from:
  SAY @8 /* ~Faltarle el respeto a mi Se�or s�lo har� que tu muerte sea m�s dolorosa, <CHARNAME>. Adem�s de quedar como un idiota... De todas formas, eso es de poca importancia.~ ~Faltarle el respeto a mi Se�or s�lo har� que tu muerte sea m�s dolorosa, <CHARNAME>. Adem�s de quedar como una idiota... De todas formas, eso es de poca importancia.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 14 // from:
  SAY @9 /* ~Ah, �sa si es una pregunta importante, <CHARNAME>. �Qu� queremos nosotros de ustedes? Pronto lo sabr�s...~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @10 /* ~Sornhil y Valatar imagino que te los has encontrado en el camino, �verdad? Desconozco si has hecho lo mismo con Kalanda. El elfo no es de lo m�s... sociables que digamos.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @11 /* ~Mi punto es... que has superado las pruebas que se te han impuesto, capit�n. Ojos de Serpiente te ha ense�ado bien.~ */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from:
  SAY @41 /* ~Ahora habr�n de conocer el significado de mi nombre. �Soy el comandante de la Muerte, el Veneno y la Destrucci�n! Muy pronto... lo comprender�n...~*/
  IF ~~ THEN DO ~ SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
 ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210038 EXIT
END

// EVIL PATH NOT!INFRAOSCURIDAD
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Anthagar_Enc","GLOBAL",0)
Global ("P_Dusk_Anthagar_Summon","GLOBAL",0)
Global("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_Dusk_AnthagarMet","GLOBAL",1)
!AreaCheck("AR2100")
~ THEN BEGIN 18 // from:
  SAY @44 /* ~Finalmente... os he encontrado...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Anthagar_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 311
END

// GOOD PATH NOT!INFRAOSCURIDAD
IF ~ InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_Dusk_Anthagar_Enc","GLOBAL",0)
Global ("P_Dusk_Anthagar_Summon","GLOBAL",0)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_Dusk_AnthagarMet","GLOBAL",1)
!AreaCheck("AR2100")
~ THEN BEGIN 19 // from:
  SAY @44 /* ~Finalmente... os he encontrado...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Anthagar_Enc","GLOBAL",1) SetGlobal ("P_Dusk_Anthagar_Summon","GLOBAL",1)
  ~ EXTERN ~P_DUSKJ~ 311
END

// GOOD PATH FINAL MISSION
IF ~Global ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",1) 
Global("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN BEGIN 20 // from:
  SAY @45 /* ~ *risa profunda* Al parecer, la ilusi�n fantasmag�rica no te ha gustado del todo, �verdad, capit�n? ~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",2)~ GOTO 21
END

IF ~~ THEN BEGIN 21 // from:
  SAY @54 /* ~Es una pena...~*/
  IF ~~ THEN DO ~~ GOTO 22
END

IF ~~ THEN BEGIN 22 // from:
  SAY @53 /* ~*chasquea sus dedos y un portal aparece a su lado*~*/
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",2)~ EXIT
END

// EVIL PATH FINAL MISSION
IF ~Global ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",1) 
Global("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN BEGIN 23 // from:
  SAY @55 /* ~ Ah, pero si es el Capit�n Ardusk Aldant, acompa�ado del gran <CHARNAME>, descendiente de Bhaal. ~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",2)~ GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @56 /* ~Mis disculpas de antemanos por esta reuni�n en un lugar un tanto... inusual...~*/
  IF ~~ THEN DO ~~ GOTO 25
END

IF ~~ THEN BEGIN 25 // from:
  SAY @73 /* ~N-no... no comprendo...~*/
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_AR1506_MAGESG_SPAWN","GLOBAL",2)~ EXIT
END


// EVIL FINAL MISSION
I_C_T P_ANTHAG 24 P_Dusk_AnthagarEv1
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @57 /* Anthagar... �O deber�a llamarte Darvin? Lo siento, es que me tienes confundido con tus identidades... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @58 /* *sonr�e* Ah... mi enga�o llevado a cabo en Shilmista... Percibo un dejo de ira en tu voz. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @59 /* Pero es entendible. Necesitaba de ti para cumplir con un objetivo que sobrepasa nuestro comprendimiento. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @60 /* No somos m�s que motas de polvo comparado con lo que yace enfrente nuestro, Ardusk Aldant. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @61 /* No puede alcanzarse la gloria perpetua sin estar dispuestos a llevar a cabo ciertos... sacrificios. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @62 /* Comprendo... te refieres a la muerte de mi esposa. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @63 /* Un hecho lamentable, de verdad. Pero deb�a hacerlo... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @64 /* La Maldici�n de Mellifleur deb�a alcanzarte a ti. Sorpresivamente... el hechizo dio de lleno en la elfa shilmista. */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @65 /* ... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @66 /* *carraspeo* Sin embargo, ha sido una fortuna que el destino haya ca�do en ti, cormyreano. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @67 /* Incluso dispones de la alianza de un hijo de Bhaal. Si contamos con su ayuda, podremos- Incluso dispones de la alianza de una hija de Bhaal. Si contamos con su ayuda, podremos- */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @68 /* Por ahora dejemos a <CHARNAME> de lado, nigromante.  */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @69 /* Vayamos al grano: quieres conocer al Demonio Sombr�o del Pandemonium, �no es as�? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @65 /* ... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @71 /* As� es, capit�n... Supongo que puedes comandar que aparezca de las Sombras, �s�? */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @72 /* *sonr�e* Danctian tiene voluntad propia, Anthagar... As� lo he querido. */
END


// GOOD FINAL MISSION
I_C_T P_ANTHAG 21 P_Dusk_Anthagar1c
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @46 /* �Anthagar! Maldito... �te has atrevido a usar la imagen de Celine! */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @47 /* Vaya... denoto un nerviosismo incremental en tu tono de voz, capit�n. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @48 /* �Acaso ser� que el esp�ritu de tu amada dec�a la verdad? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @49 /* �La has dejado morir en medio de la oscuridad del Castillo de la Trinidad? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @50 /* Y osas llamarme maldito... pese a que el �nico que carga con la maldici�n de la culpa eres t�... */
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @51 /* �Puedes ladrar todo lo que quieras, perro! Mi espada separar� la cabeza de tus hombros de una vez por todas. �Morir�s! */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @52 /* *risa* �Aguarda un instante, capit�n! No querr�s... apurar el final de esta historia... */
END



// GOOD 1 Infraoscuridad
I_C_T P_ANTHAG 16 P_Dusk_Anthagar1b
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @12 /* Ya veo... Han seguido mis pasos desde mi partida de Shilmista... Incluso hasta Lanzadrag�n. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @13 /* No pod�a esperarse otra cosa de la mente perturbada de un mago... */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @14 /* D�jame adivinar... Ojos de Serpiente, el Adivinador... era uno de tus esbirros... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @15 /* Bien, capit�n... finalmente has ca�do en cuenta de esta artima�a. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @29 /* Pero... no comprendo... Ojos de Serpiente cay� ante mi espada... �C�mo es que eso, de alguna manera, los beneficia a ustedes? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @30 /* �Hmpf! Ojos de Serpiente estaba al tanto de la situaci�n, capit�n. Simplemente, cumpli� su papel dentro del gran esquema. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @31 /* En ese entonces no habr�as sido capaz de comprender el porqu�. Y ahora, mucho menos... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @32 /* Te he ofrecido un poder m�s all� de la imaginaci�n, Aldant. Pero lo has rechazado. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @33 /* Has elegido el camino de la amistad... has elegido confiar en unos est�pidos. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @43 /* �Oye! Cuidado a quien le dices est�pido. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @21 /* El orbe escarlata... �Por qu� me lo has entregado, Anthagar? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @34 /* Puede que te lo revele en otra ocasi�n, capit�n. Est� claro que est�s m�s que apto para interferir en mis planes. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @35 /* �Malvado! Est� m�s que claro que Minsc, Bub�, Dusk y <CHARNAME> acabar�n con tus planes. �Patearemos tu m�gico trasero a diestra y siniestra! */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @36 /* S� que cuentas con astutos aliados. Ese leprechaun de Shilmista y el elfo arquero has estado contigo desde un principio. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @37 /* ~Incluso puede que la influencia de este hijo de Bhaal haya tenido que ver...~ ~Incluso puede que la influencia de esta hija de Bhaal haya tenido que ver...~ */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @38 /* Pero eso no importa, Ardusk Aldant de Cormyr. En otra situaci�n habr�a puesto a prueba tu poder... pero ahora, no puedo arriesgar mi empresa contigo. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @39 /* Ya sea luches en nombre de la venganza o de la justicia... hoy no habr� ninguna diferencia. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @40 /* �<CHARNAME>, debemos tener cuidado! Es muy probable que nos encontremos, una vez m�s, en una contingencia arcana. �Debemos prepararnos para luchar! */
END


// EVIL 1 Infraoscuridad
I_C_T P_ANTHAG 7 P_Dusk_Anthagar1a
== P_DUSKJ IF ~InMyArea("P_Dusk") ~ THEN @12 /* Ya veo... Han seguido mis pasos desde mi partida de Shilmista... Incluso hasta Lanzadrag�n. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @13 /* No pod�a esperarse otra cosa de la mente perturbada de un mago... */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @14 /* D�jame adivinar... Ojos de Serpiente, el Adivinador... era uno de tus esbirros... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @15 /* Bien, capit�n... finalmente has ca�do en cuenta de esta artima�a. */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @16 /* Una raz�n m�s para regocijarme de haber despachado a ese desgraciado. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @17 /* �Despachado, dices? Es interesante... c�mo ustedes, los hombres de hojalata, llaman de diferente manera al Asesinato. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @18 /* No es diferente contigo, <CHARNAME>. Lo admitas o no, disfrutas de asesinar. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @19 /* Muchos han ca�do ante la sombra que proyecta su poder. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @20 /* A medida que ha pasado el tiempo... nos hemos dado cuenta de que te hemos elegido bien, Dusk Aldant. */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @42 /* Vaya, Dusk Aldant... veo que tienes una secta de seguidores que ni el bardo m�s fracasado querr�a tener... */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @21 /* El orbe escarlata... �Por qu� me lo has entregado, Anthagar? */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @22 /* Como un estudioso de Velshar�n, es mi deber estudiar todos los aspectos de la vida y la muerte. En ambas, utilizando las pertinentes instrucciones, se puede encontrar un poder oculto. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @23 /* Ya veo... este misterioso nigromante habla de poderes similares (o quiz�s superiores) al Pergamino Sombr�o. Hombre del palito, deja que siga hablando. Puede que tenga algo interesante que contar... */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @24 /* Puede que el resultado de desencadenar tu poder haya derivado en un... particular encuentro con una criatura de otro plano. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @25 /* Estoy seguro de que ese especie de demonio te ha proporcionado un poder a�n mayor. */
== P_ANTHAG IF ~ InMyArea("P_Dusk") ~ THEN @26 /* Y lo que pretendo es ver cu�les son tus l�mites... */
== P_DUSKJ IF ~ InMyArea("P_Dusk") ~ THEN @27 /* Hmpf... lo sab�a. <CHARNAME>, debemos tener cuidado. Lo m�s seguro es que se avecine un dif�cil combate... */
END
