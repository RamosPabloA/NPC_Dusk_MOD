// creator  : weidu (version 24700)
// argument : TRGENI01.DLG
// game     : .
// source   : ./override/TRGENI01.DLG
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~TRGENI01~

IF ~  NumberOfTimesTalkedTo(0)
!PartyHasItem("misc8k")
~ THEN BEGIN 0 // from:
  SAY #43410 /* ~�Bienvenido, caminante! �Soy Khan Zahra de Calimshan, un genio Dao, a tu servicio!~ [TRGENI02] ~�Bienvenida, caminante! �Soy Khan Zahra de Calimshan, un genio Dao, a tu servicio!~ [TRGENI02] */
  IF ~~ THEN REPLY #43411 /* ~�Un genio Dao? �Qu� es eso?~ */ GOTO 1
  IF ~~ THEN REPLY #43412 /* ~�Qu� es lo que los genios calishitas est�is haciendo aqu�, en Caravasar?~ */ GOTO 2
  IF ~  Global("loganjob2","GLOBAL",1)
~ THEN REPLY #43413 /* ~Lord Coprith me env�a para persuadirte de que te marches.~ */ GOTO 8
  IF ~  Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",1)
~ THEN REPLY #43414 /* ~Los mercaderes del pueblo me env�an para persuadirte de que te marches.~ */ GOTO 8
  IF ~  !Dead("cefald01")
~ THEN REPLY #43415 /* ~�Qu� es lo que sabes de esos ataques de animales al pueblo?~ */ GOTO 10
  IF ~~ THEN REPLY #43416 /* ~Bien, seguiremos nuestro camino.~ */ GOTO 11
END

IF ~~ THEN BEGIN 1 // from: 28.0 10.0 0.0
  SAY #43417 /* ~Los clanes de los genios est�n m�s all� de la comprensi�n de la mayor�a de los mortales. Es una cuesti�n compleja, caminante. Basta con decir que soy un genio de la familia Dao.~ */
  IF ~~ THEN REPLY #43418 /* ~�Qu� es lo que los genios calishitas est�is haciendo aqu�, en Caravasar?~ */ GOTO 2
  IF ~  Global("loganjob2","GLOBAL",1)
~ THEN REPLY #43419 /* ~Lord Coprith me env�a para persuadirte de que te marches.~ */ GOTO 8
  IF ~  Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",1)
~ THEN REPLY #43420 /* ~Los mercaderes del pueblo me env�an para persuadirte de que te marches.~ */ GOTO 8
  IF ~  !Dead("cefaldor")
~ THEN REPLY #43421 /* ~�Qu� es lo que sabes de esos ataques de animales al pueblo?~ */ GOTO 10
  IF ~~ THEN REPLY #43422 /* ~Bien, seguiremos nuestro camino.~ */ GOTO 11
END

IF ~~ THEN BEGIN 2 // from: 28.1 10.1 1.0 0.1
  SAY #43423 /* ~S�, �sa ser�a la pregunta adecuada, mortal, �verdad? Normalmente, los Dao no escoger�an un lugar as� como hogar, incluso temporalmente, por cierto.~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 9.1 2.0
  SAY #43424 /* ~Basta con decir que hemos venido a prestar un servicio, a cazar a un criminal famoso de Calimshan... un rakshasa conocido como Ihtafir.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #43425 /* ~Los rakshasa, por si nunca te los has encontrado, son taimados cambiaformas y ladrones. Llevamos persiguiendo a �ste varios meses pero siempre ha logrado esquivarnos.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #43426 /* ~Bien. Nos hemos cansado de esta caza. Sabemos que Ihtafir se oculta en esta zona con una apariencia mortal y por ello los Dao han tomado el control del comercio de esta villa.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #43427 /* ~Nosotros los Dao compramos todo lo que llega hasta aqu�, sabes, y ponemos los precios demasiado altos como para que los mortales se los puedan permitir... y no cambiaremos de actitud hasta que los mortales encuentren al rakshasa por nosotros.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #43428 /* ~Al final, se quedar�n sin comida y se encontrar�n tan desesperados que acabaran por hacerlo. O no. Sea como sea, la caza es menos onerosa y m�s divertida de esta forma, �no est�s de acuerdo?~ */
  IF ~~ THEN REPLY #43430 /* ~�Hab�is monopolizado el comercio de este pueblo? �No, no creo que sea divertido en absoluto!~ */ GOTO 12
  IF ~  Global("loganjob2","GLOBAL",1)
~ THEN REPLY #43431 /* ~No, no lo soy. Lord Coprith me env�a para persuadirte de que te detengas.~ */ GOTO 8
  IF ~  Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",1)
~ THEN REPLY #43432 /* ~No, no lo soy. Los mercaderes del pueblo me env�an para persuadirte de que te detengas.~ */ GOTO 8
  IF ~~ THEN REPLY #43433 /* ~Parece que te est�s divirtiendo.~ */ GOTO 13
  IF ~~ THEN REPLY #43448 /* ~�Puedo echar un vistazo a tu mercanc�a?~ */ GOTO 14
  IF ~~ THEN REPLY #43434 /* ~�Que dir�as si encuentro a la rakshasa para ti?~ */ GOTO 15
END

IF ~~ THEN BEGIN 8 // from: 28.3 28.2 13.1 10.3 10.2 7.2 7.1 1.2 1.1 0.3 0.2
  SAY #43435 /* ~�Ah! Entonces, al menos los mortales han enviado a un emisario. Realmente, su inteligencia es muy escasa, por haber esperado tanto. �Sin duda, tiemblan de temor por nuestro poder, y con raz�n!~ */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #43436 /* ~Pero si est�s aqu� para suplicar y persuadir, mortal, vas a gastar tu aliento en vano. Los Dao no tienen intenci�n de marcharse antes de que obtengamos lo que hemos venido a buscar.~ */
  IF ~~ THEN REPLY #43437 /* ~�Entonces, tendr� que destruirte!~ */ GOTO 16
  IF ~~ THEN REPLY #43438 /* ~�Y qu� es lo que ser�a eso, exactamente?~ */ GOTO 3
  IF ~~ THEN REPLY #43439 /* ~S�, has o�do bien... la rakshasa. �Qu� dir�as si encuentro esa criatura para ti?~ */ GOTO 15
END

IF ~~ THEN BEGIN 10 // from: 28.4 1.3 0.4
  SAY #43440 /* ~Nada en absoluto. No nos preocupan los asuntos de esos mortales. �Est�n siendo atacados por animales, verdad? �M�s divertido a�n!~ */
  IF ~~ THEN REPLY #43441 /* ~�Qu� es lo que quieres decir cuando te llamas a ti mismo 'Dao'?~ */ GOTO 1
  IF ~~ THEN REPLY #43442 /* ~�Qu� es lo que los genios est�is haciendo aqu� en Caravasar?~ */ GOTO 2
  IF ~  Global("loganjob2","GLOBAL",1)
~ THEN REPLY #43443 /* ~Lord Coprith me env�a para persuadirte de que te marches.~ */ GOTO 8
  IF ~  Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",1)
~ THEN REPLY #43444 /* ~Los mercaderes del pueblo me env�an para persuadirte de que te marches.~ */ GOTO 8
  IF ~~ THEN REPLY #43445 /* ~Bien, seguiremos nuestro camino.~ */ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 29.6 28.6 10.4 1.4 0.5
  SAY #43447 /* ~Si eso es lo que quieres, caminante, ojal� que encuentres diversiones placenteras durante tus viajes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from: 13.0 7.0
  SAY #43449 /* ~Esa es una afirmaci�n muy precoz para un mortal. �Qu� es lo que tratas de hacer acerca de ello, entonces, peque�o? �C�mo piensas disuadirnos acerca de esta actividad?~ ~Esa es una afirmaci�n muy precoz para un mortal. �Qu� es lo que tratas de hacer acerca de ello, entonces, peque�a? �C�mo piensas disuadirnos acerca de esta actividad?~ */
  IF ~~ THEN REPLY #43450 /* ~�Destruy�ndote!~ */ GOTO 16
  IF ~~ THEN REPLY #43451 /* ~�Qu� dir�as si encuentro esa criatura para ti?~ */ GOTO 15
  IF ~~ THEN REPLY #43452 /* ~Esto... nada de nada.~ */ GOTO 17
END

IF ~~ THEN BEGIN 13 // from: 7.3
  SAY #43453 /* ~�Desde luego que lo somos! Los Dao se han cansado de perseguir a esa peque�a rakshasa... no hay que hacer siempre las cosas de la manera dif�cil.~ */
  IF ~~ THEN REPLY #43454 /* ~A�n as�... est�s monopolizando el comercio en este pueblo y eso no me gusta.~ */ GOTO 12
  IF ~  OR(2)
Global("loganjob2","GLOBAL",1)
Global("busyajob","GLOBAL",1)
~ THEN REPLY #43455 /* ~Se me ha enviado para persuadirte de que pares, no importa cu�nto te est�s divirtiendo.~ */ GOTO 8
  IF ~~ THEN REPLY #43456 /* ~Me gustar�a ver qu� es lo que tienes en venta.~ */ GOTO 14
  IF ~~ THEN REPLY #43457 /* ~�Qu� me dir�as si encuentro a esa rakshasa por ti?~ */ GOTO 15
END

IF ~~ THEN BEGIN 14 // from: 29.0 28.5 13.2 7.4
  SAY #43458 /* ~�Aj�! �Este caminante es un cliente potencial! �Por m�s que encuentres nuestros precios altos, peque�o mortal, no podr�s encontrar una mercanc�a mejor en este pueblo, ciertamente! �Ja, ja!~ ~�Aj�! �Esta caminante es un cliente potencial! �Por m�s que encuentres nuestros precios altos, peque�a mortal, no podr�s encontrar una mercanc�a mejor en este pueblo, ciertamente! �Ja, ja!~ */
  IF ~~ THEN DO ~StartStore("trgeni01",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.3 12.1 9.2 7.5
  SAY #43459 /* ~Hummm. Te dir�a, mortal, que quiero que me entreguen la cabeza de esa rakshasa... y, una vez que se haya hecho, y a pesar de la diversi�n que hemos encontrado aqu�, los Dao volver�an a Calimshan.~ */
  IF ~~ THEN REPLY #43460 /* ~�Tienes alguna idea de por d�nde podr�a estar esa rakshasa?~ */ GOTO 20
END

IF ~~ THEN BEGIN 16 // from: 30.3 29.1 12.0 9.0
  SAY #43461 /* ~�Maravilloso! �Genio Dao, hoy nos espera un poco de deporte!~ */
  IF ~~ THEN DO ~ActionOverride("trgeni02",Enemy())
ActionOverride("trgeni03",Enemy())
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 12.2
  SAY #43462 /* ~�Ja, ja, ja! �De lo m�s atrevido, peque�o mortal, de lo m�s atrevido! �Somos afortunados de que escogieras visitarnos hoy en nuestra tienda, porque no hab�amos cumplido con nuestra cuota de diversi�n todav�a!~ ~�Ja, ja, ja! �De lo m�s atrevida, peque�a mortal, de lo m�s atrevida! �Somos afortunados de que escogieras visitarnos hoy en nuestra tienda, porque no hab�amos cumplido con nuestra cuota de diversi�n todav�a!~ */
  IF ~  Global("genielaughs","GLOBAL",0)
~ THEN GOTO 18
  IF ~  Global("genielaughs","GLOBAL",1)
~ THEN GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #43463 /* ~Caminante, de verdad que eres divertido. �Como pago por la diversi�n, te recompensamos con este anillo como muestra de nuestro aprecio!~ ~Caminante, de verdad que eres divertida. �Como pago por la diversi�n, te recompensamos con este anillo como muestra de nuestro aprecio!~ */
  IF ~~ THEN DO ~GiveItemCreate("ring23",LastTalkedToBy,0,0,0)
SetGlobal("genielaughs","GLOBAL",1)
~ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0 17.1
  SAY #43464 /* ~M�rchate, gracioso mortal. Estoy seguro de que tienes otras cosas que distraigan tu atenci�n que unos meros mercaderes extra planares. �Jo, jo!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 15.0
  SAY #43465 /* ~Si supi�ramos donde est�, ir�amos nosotros a por ella, �no? Como cambiaformas, estoy seguro que se esconde bajo la forma de otro aburrido mortal. Esa es una t�ctica que su raza usa a menudo.~ */
  IF ~~ THEN GOTO 21
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #43466 /* ~Dudo que ella y sus compa�eros residan en el pueblo. Los apetitos y predilecciones de los rakshasa no les mantendr�an en el anonimato por mucho tiempo.~ */
  IF ~~ THEN GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0
  SAY #43467 /* ~Pero estamos seguros de que est� en alg�n lugar de la zona. Quiz�s oculta y cazando mortales como t�, como suelen hacer los rakshasa. �Pero qui�n sabe? Podr�a estar en cualquier parte.~ */
  IF ~~ THEN GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #43468 /* ~�Porqu�, peque�o mortal? �Tratas de traernos la cabeza de Ihtafir y terminar con nuestra estancia en este peque�o lugar aburrido? Buscamos a un mortal que acabe finalmente con este asunto.~ ~�Porqu�, peque�a mortal? �Tratas de traernos la cabeza de Ihtafir y terminar con nuestra estancia en este peque�o lugar aburrido? Buscamos a un mortal que acabe finalmente con este asunto.~ */
  IF ~  Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",0)
~ THEN REPLY #43469 /* ~Muy bien. Tratar� de encontrar a ese rakshasa y traerte su cabeza.~ */ GOTO 24
  IF ~  OR(2)
!Global("chapter","GLOBAL",2)
!Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #43470 /* ~�Cabr�a la posibilidad de una recompensa?~ */ GOTO 26
  IF ~  Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #46051 /* ~Necesito conseguir una gran cantidad de dinero para rescatar a una amiga... �Cabr�a la posibilidad de una recompensa si realizase esta tarea para ti?~ */ GOTO 26
  IF ~  OR(2)
Global("loganjob2","GLOBAL",1)
Global("busyajob","GLOBAL",1)
~ THEN REPLY #43471 /* ~Muy bien. Tratar� de encontrar a esa rakshasa y traerte su cabeza... si eso implica que dej�is Caravasar.~ */ GOTO 25
  IF ~~ THEN REPLY #43472 /* ~No, no lo creo.~ */ GOTO 27
END

IF ~~ THEN BEGIN 24 // from: 29.4 26.0 23.0
  SAY #43473 /* ~�Ah, esto es algo bueno! �Los dao te desean lo mejor en tu cacer�a y aguardan con ilusi�n la llegada de la cabeza de Ihtafir!~ */
  IF ~~ THEN DO ~SetGlobal("zahraajob","GLOBAL",1)
~ UNSOLVED_JOURNAL #6584 /* ~Tratando con los genios de Caravasar

He hablado con los djinn, liderados por Khan Zahra, y he aceptado traerle la cabeza del rakshasha Ihtafir. El djinni insinu� que era improbable que el cambiaformas rakshasha estuviese en el mismo Caravasar, sino, m�s bien, en alg�n lugar cercano, tal vez aliment�ndose de la gente del lugar.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from: 29.5 26.1 23.3
  SAY #43474 /* ~�De acuerdo! �Los dao te desean lo mejor en tu cacer�a y aguardan con ilusi�n la llegada de la cabeza de Ihtafir!~ */
  IF ~~ THEN DO ~SetGlobal("zahraajob","GLOBAL",1)
~ UNSOLVED_JOURNAL #6584 /* ~Tratando con los genios de Caravasar

He hablado con los djinn, liderados por Khan Zahra, y he aceptado traerle la cabeza del rakshasha Ihtafir. El djinni insinu� que era improbable que el cambiaformas rakshasha estuviese en el mismo Caravasar, sino, m�s bien, en alg�n lugar cercano, tal vez aliment�ndose de la gente del lugar.~ */ EXIT
END

IF ~~ THEN BEGIN 26 // from: 29.3 29.2 23.2 23.1
  SAY #43475 /* ~�Oh! Eres un peque�o mortal exigente, �verdad? Claro que s�... nosotros los dao tenemos muchos tesoros que te podr�amos ofrecer si realizas esto para nosotros. As� pues, �qu� me respondes?~ ~�Oh! Eres una peque�a mortal exigente, �verdad? Claro que s�... nosotros los dao tenemos muchos tesoros que te podr�amos ofrecer si realizas esto para nosotros. As� pues, �qu� me respondes?~ */
  IF ~  Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",0)
~ THEN REPLY #43476 /* ~Muy bien. Tratar� de encontrar a esa rakshasa y traerte su cabeza.~ */ GOTO 24
  IF ~  OR(2)
Global("loganjob2","GLOBAL",1)
Global("busyajob","GLOBAL",1)
~ THEN REPLY #43477 /* ~Muy bien. Tratar� de encontrar a esa rakshasa y traerte su cabeza... si eso implica que os marchar�is de Caravasar.~ */ GOTO 25
  IF ~~ THEN REPLY #43478 /* ~No, no lo creo.~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 30.4 26.2 23.4
  SAY #43479 /* ~Ah, esto es descorazonador. Eres el mortal m�s prometedor para llevar a cabo esta tarea, sin embargo... me quedar� aguardando a que cambies de actitud acerca de este asunto.~ ~Ah, esto es descorazonador. Eres la mortal m�s prometedora para llevar a cabo esta tarea, sin embargo... me quedar� aguardando a que cambies de actitud acerca de este asunto.~ */
  IF ~~ THEN DO ~SetGlobal("zahraarefused","GLOBAL",1)
~ EXIT
END

IF ~  NumTimesTalkedToGT(0)
Global("zahraajob","GLOBAL",0)
Global("zahraarefused","GLOBAL",0)
!PartyHasItem("misc8k")
~ THEN BEGIN 28 // from:
  SAY #43480 /* ~�Ah, es uno de nuestros caminantes, que vuelve! �Qu� es lo que los dao pueden hacer por ti esta vez, amigo m�o?~ [TRGENI07] ~�Ah, es uno de nuestros caminantes, que vuelve! �Qu� es lo que los dao pueden hacer por ti esta vez, amiga m�a?~ [TRGENI07] */
  IF ~~ THEN REPLY #43485 /* ~�Por qu� os llam�is a vosotros mismos 'Dao'?~ */ GOTO 1
  IF ~~ THEN REPLY #43486 /* ~Me gustar�a saber qu� es lo que est�is haciendo aqu�, en Caravasar.~ */ GOTO 2
  IF ~  Global("loganjob2","GLOBAL",1)
~ THEN REPLY #43488 /* ~Lord Coprith me env�a para persuadirte de que te marches.~ */ GOTO 8
  IF ~  Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",1)
~ THEN REPLY #43489 /* ~Los mercaderes del pueblo me env�an para persuadirte de que te marches.~ */ GOTO 8
  IF ~  !Dead("cefaldor")
~ THEN REPLY #43490 /* ~�Qu� es lo que sabes de esos ataques de animales al pueblo?~ */ GOTO 10
  IF ~~ THEN REPLY #43491 /* ~Me gustar�a ver que tienes a la venta.~ */ GOTO 14
  IF ~~ THEN REPLY #43492 /* ~Nada. Me marcho.~ */ GOTO 11
END

IF ~  Global("zahraajob","GLOBAL",0)
Global("zahraarefused","GLOBAL",1)
!PartyHasItem("misc8k")
~ THEN BEGIN 29 // from:
  SAY #43496 /* ~Uno de nuestros intrepidos aventureros mortales se aproxima a los Dao de nuevo. �Has cambiado de idea mortal? �Buscar�s la cabeza de Ihtafir para nosotros?~ [TRGENI08] */
  IF ~~ THEN REPLY #43498 /* ~No, s�lo me gustar�a ver qu� es lo que tienes en venta.~ */ GOTO 14
  IF ~~ THEN REPLY #43499 /* ~No... �En vez de eso, he venido a destruirte!~ */ GOTO 16
  IF ~  OR(2)
!Global("chapter","GLOBAL",2)
!Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #43500 /* ~Primero me gustar�a saber si puede haber una recompensa.~ */ GOTO 26
  IF ~  Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #46052 /* ~Necesito conseguir una gran cantidad de dinero para rescatar a una amiga... as� que primero necesito saber si hay una recompensa.~ */ GOTO 26
  IF ~  Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",0)
~ THEN REPLY #43501 /* ~S�. Tratar� de encontrar a la rakshasa y volver con su cabeza.~ */ GOTO 24
  IF ~  OR(2)
Global("loganjob2","GLOBAL",1)
Global("busyajob","GLOBAL",1)
~ THEN REPLY #43502 /* ~S�. Tratar� de encontrar a la rakshasa y volver con su cabeza... si eso implica que abandon�is Caravasar.~ */ GOTO 25
  IF ~~ THEN REPLY #43503 /* ~No. Seguir� mi camino.~ */ GOTO 11
END

IF ~  Global("zahraajob","GLOBAL",1)
!PartyHasItem("misc8k")
~ THEN BEGIN 30 // from:
  SAY #43504 /* ~Mmmm... has vuelto con los Dao, mortal, y no siento contigo la cabeza de la rakshasa Ihtafir. �Es que has cambiado de idea?~ [TRGENI09] */
  IF ~~ THEN REPLY #43505 /* ~No, no lo he hecho... s�lo quiero ver tus ofertas.~ */ GOTO 31
  IF ~  Dead("trrak01")
~ THEN REPLY #43506 /* ~De hecho, no. He encontrado y matado a Ihtafir, pero no he tra�do su cabeza conmigo.~ */ GOTO 32
  IF ~  Global("itonatold","GLOBAL",1)
~ THEN REPLY #43589 /* ~No, no lo he hecho. En realidad, s� d�nde se encuentra Ihtafir.~ */ GOTO 41
  IF ~~ THEN REPLY #43507 /* ~S�, lo he hecho. �He decidido destruirte a ti!~ */ GOTO 16
  IF ~~ THEN REPLY #43508 /* ~De hecho, s�. No tengo tiempo para hacer esto para ti.~ */ DO ~SetGlobal("zahraajob","GLOBAL",0)
~ GOTO 27
  IF ~~ THEN REPLY #43509 /* ~No, no lo he hecho. Me marcho.~ */ GOTO 33
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #43510 /* ~�Ah, por supuesto! �Nuestra mercanc�a siempre est� disponible para un intr�pido aventurero mortal!~ ~�Ah, por supuesto! �Nuestra mercanc�a siempre est� disponible para una intr�pida aventurera mortal!~ */
  IF ~~ THEN DO ~StartStore("trgeni01",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #43511 /* ~Hummm... estas son noticias prometedoras, mortal. Prometedoras, desde luego. Pero, si deseas tu recompensa, debes traernos la cabeza de la rakshasa. �Esperaremos a su entrega!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from: 30.5
  SAY #43512 /* ~�Maravilloso! Encuentra a la temida rakshasa, mortal... �Tr�enos su cabeza, y los Dao se sentir�n complacidos!~ */
  IF ~~ THEN EXIT
END

IF ~  Global("zahraajob","GLOBAL",1)
PartyHasItem("misc8k")
~ THEN BEGIN 34 // from:
  SAY #43513 /* ~Ahhh... �Siento que traes contigo la cabeza de nuestra peque�a Ihtafir, como acordamos! �Asombroso, incluso para un mortal!~ [TRGENI10] */
  IF ~~ THEN DO ~TakePartyItem("MISC8K")
~ GOTO 35
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #43514 /* ~Te entrego, pues, una cimitarra que puede que encuentres �til. Ha sido de mi propiedad durante alg�n tiempo, pero estoy seguro de que encontrar� otra. �Usala bien, caminante!~ */
  IF ~~ THEN DO ~GiveItem("sw1h23",LastTalkedToBy) CreateItem ("p_wsash",1,1,1) GiveItem("p_wsash", "P_Dusk")
~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from: 40.0 35.0
  SAY #43515 /* ~�En cuanto a ti, mi peque�a Ihtafir, has sido una p�cara criatura, eludi�ndonos como lo has hecho! �Ha sido un mortal muy valiente el que te ha tra�do ante nosotros!~ ~�En cuanto a ti, mi peque�a Ihtafir, has sido una p�cara criatura, eludi�ndonos como lo has hecho! �Ha sido una mortal muy valiente la que te ha tra�do ante nosotros!~ */
  IF ~  Global("loganjob2","GLOBAL",0)
Global("busyajob","GLOBAL",0)
~ THEN DO ~EraseJournalEntry(6583)
EraseJournalEntry(6584)
EraseJournalEntry(6585)
EraseJournalEntry(10103)
EraseJournalEntry(10125)
EraseJournalEntry(16335)
EraseJournalEntry(23341)
~ SOLVED_JOURNAL #11775 /* ~Tratando con los genios de Caravasar

Khan Zahraa, l�der de los genios Dao, estaba muy contento de recibir la cabeza del rakshasha. Parece que �sa era la �nica raz�n por la que estaban en Caravasar, de modo que partieron de inmediato hacia Calimshan.~ */ GOTO 37
  IF ~  OR(2)
Global("loganjob2","GLOBAL",1)
Global("busyajob","GLOBAL",1)
~ THEN DO ~EraseJournalEntry(6583)
EraseJournalEntry(6584)
EraseJournalEntry(6585)
EraseJournalEntry(10103)
EraseJournalEntry(10125)
EraseJournalEntry(16335)
EraseJournalEntry(23341)
~ SOLVED_JOURNAL #11775 /* ~Tratando con los genios de Caravasar

Khan Zahraa, l�der de los genios Dao, estaba muy contento de recibir la cabeza del rakshasha. Parece que �sa era la �nica raz�n por la que estaban en Caravasar, de modo que partieron de inmediato hacia Calimshan.~ */ GOTO 38
END

IF ~~ THEN BEGIN 37 // from: 36.0
  SAY #43516 /* ~Vamos, pues, mis Dao... �Volveremos a Calimshan y daremos por acabado nuestro trabajo!~ */
  IF ~~ THEN DO ~SetGlobal("zahraajob","GLOBAL",2)
SetGlobal("geniesgone","GLOBAL",1)
AddexperienceParty(10000)
ActionOverride("trgeni02",CreateVisualEffectObject("SPDISPMA",Myself))
ActionOverride("trgeni02",Wait(1))
ActionOverride("trgeni02",CreateVisualEffectObject("SPFLESHS",Myself))
ActionOverride("trgeni02",DestroySelf())
ActionOverride("trgeni03",CreateVisualEffectObject("SPDISPMA",Myself))
ActionOverride("trgeni03",Wait(1))
ActionOverride("trgeni03",CreateVisualEffectObject("SPFLESHS",Myself))
ActionOverride("trgeni03",DestroySelf())
CreateVisualEffectObject("SPDISPMA",Myself)
Wait(1)
CreateVisualEffectObject("SPFLESHS",Myself)
DestroySelf()
~ EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.1
  SAY #43517 /* ~Vamos, pues, mis Dao... �Volveremos a Calimshan y daremos por acabado nuestro trabajo! Y t�, mortal, les dir�s a tus clientes que su pueblo ha quedado libre de nuestra presencia, �verdad? No volveremos.~ */
  IF ~~ THEN DO ~SetGlobal("zahraajob","GLOBAL",2)
SetGlobal("geniesgone","GLOBAL",1)
AddexperienceParty(10000)
ActionOverride("trgeni02",CreateVisualEffectObject("SPDISPMA",Myself))
ActionOverride("trgeni02",Wait(1))
ActionOverride("trgeni02",CreateVisualEffectObject("SPFLESHS",Myself))
ActionOverride("trgeni02",DestroySelf())
ActionOverride("trgeni03",CreateVisualEffectObject("SPDISPMA",Myself))
ActionOverride("trgeni03",Wait(1))
ActionOverride("trgeni03",CreateVisualEffectObject("SPFLESHS",Myself))
ActionOverride("trgeni03",DestroySelf())
CreateVisualEffectObject("SPDISPMA",Myself)
Wait(1)
CreateVisualEffectObject("SPFLESHS",Myself)
DestroySelf()
~ EXIT
END

IF ~  Global("zahraajob","GLOBAL",0)
PartyHasItem("misc8k")
~ THEN BEGIN 39 // from:
  SAY #43518 /* ~Humm. Veo que traes contigo la cabeza de nuestra presa... la cabeza de la rakshasa, Ihtafir. �Tanto si lo sab�as como si no, mortal, �sta es nuestra �nica raz�n para estar en este lugar tan aburrido!~ [TRGENI11] */
  IF ~~ THEN DO ~TakePartyItem("misc8k")
~ GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #43519 /* ~�Qu� maravilloso resulta que nos hayas servido esto en una fuente de plata! �Me la quedo, y la reemplazo con algo que te ser� de m�s utilidad, espero!~ */
  IF ~~ THEN DO ~GiveItem("sw1h23",LastTalkedToBy) CreateItem ("p_wsash",1,1,1) GiveItem("p_wsash", "P_Dusk")
~ GOTO 36
END

IF ~~ THEN BEGIN 41 // from: 30.2
  SAY #43590 /* ~(suspiro) Cre�a que hab�a dejado claro esto antes, mortal. Vosotros, seres de corta vida, experiment�is algunas dificultades de audici�n.~ */
  IF ~~ THEN GOTO 42
END

IF ~~ THEN BEGIN 42 // from: 41.0
  SAY #43591 /* ~No tenemos intenci�n de cazar a esa obscena rakshasa por nosotros mismos. Preferimos esperar aqu�, divirti�ndonos, y tener a otro que lo haga por nosotros.~ */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #43592 /* ~�Si sabes d�nde se esconde, extraordinario! Te sugiero que sigas adelante y nos traigas su cabeza. �Esperaremos a tu regreso!~ */
  IF ~~ THEN EXIT
END
