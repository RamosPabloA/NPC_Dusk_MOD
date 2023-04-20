// creator  : weidu (version 24700)
// argument : YOSHJ.DLG
// game     : .
// source   : ./DATA/DIALOG.BIF
// dialog   : .\lang\es_es\dialog.tlk
// dialogF  : .\lang\es_es\dialogf.tlk

BEGIN ~YOSHJ~

IF ~~ THEN BEGIN 0 // from:
  SAY #14279 /* ~¡Ja! Sois un niño encantador. Mirad, mirad cómo hago malabarismos con estos cuchillos. ¿Qué os parece?~ */
  IF ~~ THEN EXTERN ~BRAT2~ 4
END

IF ~~ THEN BEGIN 1 // from:
  SAY #14486 /* ~Me parece que eso son conjeturas de vuestra imaginación, señor.~ ~Me parece que eso son conjeturas de vuestra imaginación, señorita.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from:
  SAY #14552 /* ~No, mi dama, estoy totalmente seguro de que no.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 3 // from:
  SAY #15171 /* ~Lo dudo, amigo. Debéis haberme confundido con otro.~ ~Lo dudo, amigo. Debéis haberme confundido con otra.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY #21417 /* ~¡Hola, preciosidad! ¡Caramba! La gente aquí es bastante simpática, ¿verdad? Todo el mundo os sonríe aunque no os conozca.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #22658 /* ~Es tentador, encanto... Pero creo que no.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 6 // from:
  SAY #23698 /* ~No, señor, muchas gracias. Ya... pasé por una experiencia similar anteriormente.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from:
  SAY #24865 /* ~¿Estáis hablando conmigo?~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 5
END

IF ~~ THEN BEGIN 8 // from:
  SAY #24867 /* ~En mi opinión, la estáis vendiendo demasiado barata.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 6
END

IF ~~ THEN BEGIN 9 // from:
  SAY #24869 /* ~Por supuesto. Fijaos en la estructura. En el inmenso tamaño. Casi se podría meter un ejército ahí dentro. Es como un castillo.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 7
END

IF ~~ THEN BEGIN 10 // from:
  SAY #24871 /* ~¡Así me gusta! Veo que sois un excelente vendedor.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 8
END

IF ~~ THEN BEGIN 11 // from:
  SAY #25006 /* ~¿A mí? No recuerdo que nadie se haya burlado de mí hasta ahora.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 12 // from:
  SAY #25398 /* ~¿Yarin? ¡Yarin, viejo fósil arrugado! ¿Qué tal vuestro retiro?~ */
  IF ~~ THEN EXTERN ~YARIN~ 7
END

IF ~~ THEN BEGIN 13 // from:
  SAY #25400 /* ~Esto es tan deprimente que voy a vomitar.~ */
  IF ~~ THEN EXTERN ~YARIN~ 8
END

IF ~~ THEN BEGIN 14 // from:
  SAY #25403 /* ~Viviré más que vos y que muchos otros, Yarin. Ya lo veréis.~ */
  IF ~~ THEN EXTERN ~YARIN~ 9
END

IF ~~ THEN BEGIN 15 // from:
  SAY #25665 /* ~Tal vez no deberíais haber llevado algo así por esta parte de la ciudad. ¿Habéis probado a retroceder sobre vuestros pasos?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from:
  SAY #25793 /* ~¡Ja! Hay muchas razones por las cuales los ladrones han sobrevivido tanto como lo han hecho. Y estoy seguro, señora, de que no conocéis ni remotamente ninguna de ellas.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from:
  SAY #26263 /* ~No... no estaba mirando nada, pescadera. Yo, eh... Bueno, da igual.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY #27658 /* ~Si de verdad creéis eso, me viene a la cabeza una curiosa esfera de los planos que me gustaría venderos...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #28441 /* ~Me siento herido, señor. Tan solo soy un simple ciudadano que realiza sus actividades cotidianas. Estoy seguro de que no es nada que os interese.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #38673 /* ~Pero no os hemos hecho nada, señora. Tan solo nos hemos encontrado con vos. Tal vez, si os tranquilizarais, podríamos...~ */
  IF ~~ THEN EXTERN ~CLONE1~ 6
END

IF ~~ THEN BEGIN 21 // from:
  SAY #38760 /* ~El dinero sirve para muchas más cosas que para darlo sin más, Nalia. Estoy seguro de que eso es exactamente en lo que está pensando <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #38765 /* ~No creo que pase nada por ver dónde está la madre del niño. Es decir, si no nos desviamos de nuestro camino. Pero es vuestra elección, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #38767 /* ~Creo que reconozco el lugar. Como ya os dije cuando nos conocimos, creo que esto es Athkatla. ¿Es cierto? ¿Es esta la Ciudad de la Moneda?~ */
  IF ~~ THEN EXTERN ~BYSTAND1~ 11
END

IF ~~ THEN BEGIN 24 // from:
  SAY #38769 /* ~Y la lucha entre el mago y aquellos hombres... ¿La visteis?~ */
  IF ~~ THEN EXTERN ~BYSTAND1~ 2
END

IF ~~ THEN BEGIN 25 // from:
  SAY #38780 /* ~Deberíamos tener cuidado, <CHARNAME>. A saber qué está sucediendo dentro si la guardia de la ciudad no lo puede controlar. Como siempre digo, preparémonos para lo peor.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY #38867 /* ~Sí, ya veo. La sutil exclusión de los nacidos en la riqueza. Tenéis buen ojo, anciano. ¿Sois de por aquí?~ */
  IF ~~ THEN EXTERN ~WCUST03~ 3
END

IF ~~ THEN BEGIN 27 // from:
  SAY #38921 /* ~He oído hablar sobre el lugar. Es el edificio más grande que hay en los barrios bajos. Es mejor tener cuidado en su interior, aunque no hay mejor lugar si estáis buscando a otros aventureros.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #38922 /* ~Mmm. Cualquiera que intente hacer algo contra los Ladrones de las Sombras tiene poco futuro aquí, en Athkatla. Ellos controlan el puerto, por no decir toda la ciudad.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 29 // from:
  SAY #38934 /* ~Ah, sí... Estos son los guardias que recuerdo. Ciegos como murciélagos si se les ponen unas monedas delante de los ojos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #38945 /* ~No sé si queréis involucraros en esto, <CHARNAME>... Por lo que he oído, es mejor no jugar con los esclavistas de los barrios bajos. Pero supongo que puede ser divertido...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #39172 /* ~Entiendo. Veo que hemos interrumpido algo. Mmmm... Vaya, ¿acaso no sois lord Havrelock? Me parece que os he visto en alguna parte... con la dama Havrelock, creo...~ */
  IF ~~ THEN EXTERN ~CUSTOM~ 1
END

IF ~~ THEN BEGIN 32 // from:
  SAY #39361 /* ~La ganancia no solo está en el dinero, mi musculoso enano. Consideremos su oferta, podría traernos muchos beneficios.~ */
  IF ~~ THEN EXTERN ~HENDAK~ 37
END

IF ~~ THEN BEGIN 33 // from:
  SAY #39366 /* ~¿Enfrentarnos a los esclavistas? ¿En su propio terreno? No sé. Si creéis que debéis hacerlo, <CHARNAME>... pero no creáis que será fácil~ */
  IF ~~ THEN EXTERN ~HENDAK~ 24
END

IF ~~ THEN BEGIN 34 // from:
  SAY #39367 /* ~Ese hombre no va a confesar sus delitos sin más. Tal vez haya alguna forma de colarnos en el espectáculo sin que parezca demasiado... evidente.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #39379 /* ~Por supuesto que lo hay. ¿Acaso no lo hay siempre?~ */
  IF ~~ THEN EXTERN ~LEHTIN~ 10
END

IF ~~ THEN BEGIN 36 // from:
  SAY #40233 /* ~Tampoco hace falta ponerse así, alfeñique. Tan solo estaba admirando vuestro surtido, eso es todo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 37 // from:
  SAY #42220 /* ~No le conocía, pero os acompaño en el sentimiento.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 339
END

IF ~~ THEN BEGIN 38 // from:
  SAY #48462 /* ~(Suspira). El problema es que, conociendo esta ciudad como la conozco, es más que probable que a la muchacha le roben el dinero antes de que acabe el día. Es una lástima cómo funciona el mundo.~ */
  IF ~!IsValidForPartyDialog("Korgan")~ THEN EXIT
  IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGANJ~ 57
END

IF ~~ THEN BEGIN 39 // from:
  SAY #48471 /* ~No deberíais pensar demasiado en ello, Aerie. Algunas partes del mundo son lugares muy desagradables y, en la mayoría de los casos, el viaje no es sencillo.~ */
  IF ~!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("Jaheira")~ THEN EXIT
  IF ~IsValidForPartyDialog("Anomen")~ THEN EXTERN ~ANOMENJ~ 179
  IF ~!IsValidForPartyDialog("Anomen")
IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 349
END

IF ~~ THEN BEGIN 40 // from:
  SAY #48520 /* ~¡Qué curioso! Creía que os sentiríais como en casa en este lodazal, Viconia.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 39
END

IF ~~ THEN BEGIN 41 // from:
  SAY #48528 /* ~Mmm. ¿Estáis seguro de que estáis hablando de vuestro roedor, Minsc? ¿No será un ataque al corazón? Después de todo, os he visto muy nervioso...~ */
  IF ~~ THEN EXTERN ~MINSCJ~ 97
END

IF ~~ THEN BEGIN 42 // from:
  SAY #48529 /* ~Bueno... Si sirve de algo, lo cierto es que he oído hablar del tal lord Jierdan, <CHARNAME>. Tiene el dinero suficiente para respaldar su oferta. No tiene fama de ser el mejor noble de Amn, pero claro, ¿alguno lo es?~ */
  IF ~!IsValidForPartyDialog("Jaheira")~ THEN EXIT
  IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 356
END

IF ~~ THEN BEGIN 43 // from:
  SAY #48554 /* ~Por lo pronto, yo preferiría abandonar este lugar y salvar el pellejo. Pero <CHARNAME> es quien tiene que decidir, por supuesto... Si él dice que a luchar, entonces haré lo que pueda.~ ~Por lo pronto, yo preferiría abandonar este lugar y salvar el pellejo. Pero <CHARNAME> es quien tiene que decidir, por supuesto... Si ella dice que a luchar, entonces haré lo que pueda.~ */
  IF ~!IsValidForPartyDialog("Edwin")
!IsValidForPartyDialog("Minsc")~ THEN EXIT
  IF ~IsValidForPartyDialog("Edwin")~ THEN EXTERN ~EDWINJ~ 44
  IF ~!IsValidForPartyDialog("Edwin")
IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ 98
END

IF ~~ THEN BEGIN 44 // from:
  SAY #48575 /* ~Espero que tengáis otro plan. He visto a la Orden en acción cuando se la provoca, y no es una visión agradable.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #48582 /* ~Sí, eso tiene sentido. He oído mencionar su nombre con anterioridad en algunos círculos poco recomendables. Parece ser que el tal Jierdan es un caso especial.~ */
  IF ~~ THEN EXTERN ~GARREN~ 19
END

IF ~~ THEN BEGIN 46 // from:
  SAY #48593 /* ~No sé... Nunca he aceptado un encargo sin saber lo que tenía que hacer. Pero tengo entendido que los Magos Encapuchados pueden recompensaros con creces.~ */
  IF ~!IsValidForPartyDialog("Korgan")~ THEN EXTERN ~TOLGER~ 2
  IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGANJ~ 218
END

IF ~~ THEN BEGIN 47 // from:
  SAY #48638 /* ~No es posible que seáis tan inocente, Nalia. ¿Qué os enseñaron en ese castillo vuestro?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY #48653 /* ~¡Je! Creo que acaban de obligaros a cometer un acto de caridad, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #48724 /* ~Mmmm... No estaríais hablando de esta bolsa, ¿no? Acabo de encontrarla en el suelo. Produce un tintineo bastante llamativo, deberíais tener más, ah, cuidado...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #48751 /* ~Parece una oferta interesante, buena mujer, pero en estos momentos estoy un poco preocupado. Tal vez en otro momento, cuando esté solo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #48813 /* ~¿Muerto? ¿Yo? No sé de dónde habéis sacado esa información, amigo, pero parece obvio que la fuente no era muy fiable.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #48882 /* ~Mmmm. Ya veo adónde vamos a parar...~ */
  IF ~~ THEN EXTERN ~LOUT~ 2
END

IF ~~ THEN BEGIN 53 // from:
  SAY #48910 /* ~No se lo tengáis en cuenta, <CHARNAME>. Siempre ha sido un poco arisca con los recién llegados... Estoy seguro.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #48956 /* ~No os preocupéis por nosotros, alguacil. Por lo que he visto, <CHARNAME> y sus aliados pueden defenderse de cualquier cosa.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #48963 /* ~¿Y ese curtidor se va a enfrentar por su cuenta al asesino? Qué valiente... O tal vez insensato. Me pregunto cuál de los dos.~ */
  IF ~~ THEN EXIT
END

IF ~PartyHasItem("misc5m")
OR(3)
!InParty("Keldorn")
Dead("Keldorn")
!StateCheck("Keldorn",STATE_SLEEPING)
OR(3)
!InParty("Anomen")
Dead("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
See(Player1)
Global("FoundAegis","GLOBAL",0)
~ THEN BEGIN 56 // from:
  SAY #48987 /* ~¡Ah, el alguacil! Si estáis de acuerdo, podemos entregárselo a Brega, en la sede del Consejo, en el distrito gubernamental. No se me ocurre otro sitio donde llevarlo.~ */
  IF ~~ THEN DO ~SetGlobal("FoundAegis","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #49235 /* ~No sabéis de qué estáis hablando, buen hombre. Mejor volved a mirar en vuestros bolsillos y luego decidid quién es la verdadera víctima en el puerto, ¿de acuerdo?~ */
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Mazzy")
!IsValidForPartyDialog("HaerDalis")~ THEN EXIT
  IF ~IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~KELDORJ~ 138
  IF ~!IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Mazzy")~ THEN EXTERN ~MAZZYJ~ 143
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Mazzy")
IsValidForPartyDialog("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 80
END

IF ~~ THEN BEGIN 58 // from:
  SAY #49255 /* ~Bueno... os estáis arriesgando al dejar marchar a Embarl como si nada. Sin embargo, dudo mucho que se quede por aquí contándole a nadie vuestra generosidad, así que yo no me preocuparía. Más nos vale recuperar la daga.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 59 // from:
  SAY #49259 /* ~He oído hablar de él, <CHARNAME>... algo, por lo menos. Es un hombre con muchos contactos entre los barrios bajos de la ciudad. También es un hombre de palabra, siempre y cuando merezca la pena.~ */
  IF ~~ THEN EXTERN ~GAELAN~ 8
END

IF ~~ THEN BEGIN 60 // from:
  SAY #49262 /* ~Puede que tenga razón, <CHARNAME>. Necesitamos encontrar a alguien importante que nos pueda proporcionar información sobre los Magos Encapuchados... Esta puede ser vuestra única oportunidad de encontrar a Imoen.~ */
  IF ~~ THEN EXTERN ~GAELAN~ 75
END

IF ~~ THEN BEGIN 61 // from:
  SAY #49278 /* ~Ah, sí. Aran Linvail. El auténtico cerebro de los Ladrones de las Sombras en esta ciudad y, por lo tanto, uno de los hombres más poderosos de Faerûn. Debemos tener cuidado, <CHARNAME>.~ */
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("Edwin")~ THEN EXIT
  IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 385
  IF ~!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Anomen")~ THEN EXTERN ~ANOMENJ~ 212
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Anomen")
IsValidForPartyDialog("Edwin")~ THEN EXTERN ~EDWINJ~ 64
END

IF ~~ THEN BEGIN 62 // from:
  SAY #49341 /* ~Si hay arpistas reunidos en esta ciudad, protegerán cuidadosamente su identidad. Con dureza. Yo desconfiaría de lo que este... hombre... os pide que hagáis.~ */
  IF ~~ THEN EXTERN ~LYROS~ 30
END

IF ~~ THEN BEGIN 63 // from:
  SAY #49353 /* ~No creo que los arpistas nos cuenten de buena gana lo que le ocurrió a su espía... Pero puede que respondan algunas preguntas, ya que, eh, les ayudamos con aquel otro hombre.~ */
  IF ~!IsValidForPartyDialog("Edwin")~ THEN EXIT
  IF ~IsValidForPartyDialog("Edwin")~ THEN EXTERN ~EDWINJ~ 66
END

IF ~~ THEN BEGIN 64 // from:
  SAY #49357 /* ~S-Sí, maestro Irenicus, tal y como queríais.~ */
  IF ~~ THEN REPLY #49359 /* ~Yoshimo, ¿de qué estáis hablando?~ */ EXTERN ~PPIRENI1~ 37
  IF ~~ THEN REPLY #49360 /* ~¡Traidor! ¡Conocéis a esta malvada criatura!~ */ EXTERN ~PPIRENI1~ 36
  IF ~~ THEN REPLY #58693 /* ~Así que, ¿me habéis traicionado a ese monstruo? Creía que podía confiar en vos.~ */ EXTERN ~PPIRENI1~ 46
END

IF ~~ THEN BEGIN 65 // from:
  SAY #49363 /* ~Gracias, maestro Irenicus.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #49380 /* ~No creo que robando en el templo del Dios de la Tormenta os ganéis la gratitud del clero talosiano, <CHARNAME>. Más nos vale proceder con cautela en esta empresa.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #49403 /* ~¿Así que combatís los excesos tanto del bien como del mal? ¿Cómo juzgáis cuál es cuál? Y seguro que la acumulación de poder en vuestra organización equilibra la balanza, ¿no es así?~ */
  IF ~~ THEN EXTERN ~MERONIA~ 2
END

IF ~~ THEN BEGIN 68 // from:
  SAY #49427 /* ~¡Irenicus! ¡Os he servido bien! ¡Os lo ruego!~ */
  IF ~~ THEN EXTERN ~PPIRENI2~ 51
END

IF ~~ THEN BEGIN 69 // from:
  SAY #49429 /* ~S-Sí, maestro Irenicus, tal y como queríais.~ */
  IF ~~ THEN REPLY #49434 /* ~Yoshimo, ¿de qué estáis hablando?~ */ EXTERN ~PPIRENI2~ 56
  IF ~~ THEN REPLY #49435 /* ~¡Traidor! ¡Conocéis a esta malvada criatura!~ */ EXTERN ~PPIRENI2~ 55
  IF ~~ THEN REPLY #58730 /* ~Así que, ¿me habéis traicionado a ese monstruo? Creía que podía confiar en vos.~ */ EXTERN ~PPIRENI2~ 67
END

IF ~~ THEN BEGIN 70 // from:
  SAY #49497 /* ~¿No os preocupa provocar la cólera de los Magos Encapuchados con semejante acción, <CHARNAME>? Esperemos que la culpa caiga sobre los Ladrones de las Sombras y no sobre nuestras cabezas, ¿eh?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #49508 /* ~Seguís un camino peligroso, mago. Después de todo lo que habéis dicho, no sois mejor que un oportunista chaquetero. No es que crea que debamos quejarnos ni nada.~ */
  IF ~~ THEN EXTERN ~EDWIN~ 27
END

IF ~~ THEN BEGIN 72 // from:
  SAY #49534 /* ~Deberíais pensarlo, <CHARNAME>. Si hay una organización en esta ciudad que os pueda ayudar con vuestra búsqueda, esos son los Ladrones de las Sombras.~ */
  IF ~OR(3)
!Global("YoshimoShadowTrouble","GLOBAL",1)
!See("Yoshimo")
!InParty("Yoshimo")
!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Korgan")~ THEN EXIT
  IF ~Global("YoshimoShadowTrouble","GLOBAL",1)
See("Yoshimo")
InParty("Yoshimo")~ THEN EXTERN ~RENAL~ 103
  IF ~OR(3)
!Global("YoshimoShadowTrouble","GLOBAL",1)
!See("Yoshimo")
!InParty("Yoshimo")
IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~KELDORJ~ 146
  IF ~OR(3)
!Global("YoshimoShadowTrouble","GLOBAL",1)
!See("Yoshimo")
!InParty("Yoshimo")
!IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGANJ~ 90
END

IF ~~ THEN BEGIN 73 // from:
  SAY #49562 /* ~<CHARNAME>... Esta es una excelente oportunidad para todos nosotros. Pero recordad que debéis actuar en todo momento como un fiel miembro de la cofradía o perderemos nuestra tapadera.~ ~<CHARNAME>... Esta es una excelente oportunidad para todos nosotros. Pero recordad que debéis actuar en todo momento como una fiel miembro de la cofradía o perderemos nuestra tapadera.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #49577 /* ~Una sabia elección, amigo mío. Cabellorrojo es un maestre exigente, pero hay pocos caminos hacia la riqueza tan rápidos como dirigir una cofradía. Espero ser de ayuda.~ ~Una sabia elección, amiga mía. Cabellorrojo es un maestre exigente, pero hay pocos caminos hacia la riqueza tan rápidos como dirigir una cofradía. Espero ser de ayuda.~ */
  IF ~~ THEN EXTERN ~RENAL~ 77
END

IF ~~ THEN BEGIN 75 // from:
  SAY #49611 /* ~¿Por qué nos iban a encomendar los arpistas una tarea tan sencilla? ¿Solo para permitir que nos dejen entrar? No me suena bien, eso... Me parece sospechoso, <CHARNAME>. Si lo intentáis, tened cuidado.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #49789 /* ~Tal vez... tal vez no sea mala idea. Ahorraríamos mucho dinero y parece que conseguiríamos lo mismo. Aunque... seguro que nos granjearíamos enemigos entre los Ladrones de las Sombras...~ */
  IF ~~ THEN EXTERN ~BODHI~ 130
END

IF ~~ THEN BEGIN 77 // from:
  SAY #49852 /* ~¿Matar a... Aran Linvail? ¿El Maestro de sombras de toda la cofradía de los Ladrones de las Sombras? Pero... ¿estáis loca, mujer?~ */
  IF ~~ THEN EXTERN ~BODHI~ 73
END

IF ~~ THEN BEGIN 78 // from:
  SAY #49855 /* ~Matar al Maestro de sombras... Si lo logramos, será una hazaña importante, <CHARNAME>. Sin embargo, ha habido personas que lo han intentado antes y no han tenido mucho éxito.~ */
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Edwin")~ THEN EXIT
  IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ 132
  IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Edwin")~ THEN EXTERN ~EDWINJ~ 78
END

IF ~~ THEN BEGIN 79 // from:
  SAY #49966 /* ~Si incluís a los mercaderes entre los ladrones de Athkatla, entonces puede que deis con el número exacto.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #50034 /* ~Viniendo de vos, esas palabras suenan como cumplidos. El tal Keldorn debe ser un caballero increíble.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 234
END

IF ~~ THEN BEGIN 81 // from:
  SAY #50083 /* ~Mmmm. Me parece que si esta tarea no la puede realizar ni un contemplador ni sus esbirros nos espera una buena faena. Más nos vale que tengamos cuidado, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #50118 /* ~Si el prelado de este templo tiene estos gustos, ¿para qué necesitan a Sarles? Yo podría conseguir un trozo así cada día. Eh... Supongo que por lo menos ha funcionado.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #50123 /* ~<CHARNAME>... ¡Ya me acuerdo de quién es! ¡Es un asesino de niños que se escapó de Puerta de Baldur! ¡Seguro que su cabeza tendrá algún valor para las autoridades!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #50180 /* ~Solo publicáis aproximadamente cien, contiene numerosos errores, no tiene índice... Y, aun así, cobráis doscientas monedas de oro por un ejemplar. ¿Y nos llamáis a NOSOTROS ladrones?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #50191 /* ~(Resoplido). Así es. Y eso es solo para empezar. Esperad a ver el soborno necesario cuando su madre tenga que enviar los ejemplares a tres lugares diferentes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #50309 /* ~Apenas veríais la diferencia. Sigue llorando a todas horas, diciendo tonterías y eructando después de cada comida. Afortunadamente, el uso del retrete lo ha aprendido bastante bien.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 245
END

IF ~~ THEN BEGIN 87 // from:
  SAY #50399 /* ~No lo veo por ningún lado, mi buen amigo. Tal vez debáis retroceder un poco sobre vuestros pasos, ¿eh?~ */
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Mazzy")~ THEN EXIT
  IF ~IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~KELDORJ~ 176
  IF ~!IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Mazzy")~ THEN EXTERN ~MAZZYJ~ 161
END

IF ~~ THEN BEGIN 88 // from:
  SAY #52285 /* ~Bueno, no debería haberse equivocado con la trampa, ¿no? Es un instrumento bastante sencillo... Y un error así en el campo de batalla le habría costado la vida en un santiamén.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 89 // from:
  SAY #55200 /* ~Entonces... ¿esto es la victoria? Me ha parecido que tenía aspecto tan de... tan de... dios, supongo. En cierto modo, pensar que pudiera caerse y morir sin más no me parece lógico.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 90 // from:
  SAY #55225 /* ~Esto... ¿qué lugar es este? ¡He muerto, estoy seguro! Pero ¿por qué nos habéis traído aquí, <CHARNAME>? ¿Son asuntos pendientes con... con Irenicus? ¿Todavía?~ */
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Cernd")
!IsValidForPartyDialog("Mazzy")
!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("HaerDalis")
!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Edwin")~ THEN EXIT
  IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Cernd")~ THEN EXTERN ~CERNDJ~ 100
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Cernd")
IsValidForPartyDialog("Mazzy")~ THEN EXTERN ~MAZZYJ~ 166
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Cernd")
!IsValidForPartyDialog("Mazzy")
IsValidForPartyDialog("Anomen")~ THEN EXTERN ~ANOMENJ~ 258
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Cernd")
!IsValidForPartyDialog("Mazzy")
!IsValidForPartyDialog("Anomen")
IsValidForPartyDialog("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 100
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Cernd")
!IsValidForPartyDialog("Mazzy")
!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("HaerDalis")
IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~KELDORJ~ 189
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Cernd")
!IsValidForPartyDialog("Mazzy")
!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("HaerDalis")
!IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Nalia")~ THEN EXTERN ~NALIAJ~ 268
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Cernd")
!IsValidForPartyDialog("Mazzy")
!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("HaerDalis")
!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Nalia")
IsValidForPartyDialog("Edwin")~ THEN EXTERN ~EDWINJ~ 95
END

IF ~~ THEN BEGIN 91 // from:
  SAY #55662 /* ~Debería haber tenido más cuidado. Seguro que su estado podría haberse evitado si hubiera cooperado con el nuevo personal del sanatorio.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 15
END

IF ~~ THEN BEGIN 92 // from:
  SAY #55667 /* ~Tuvimos que sacar el máximo provecho. Yo mismo conseguí sacarle una buena cantidad de monedas a vuestra tripulación... Curiosamente, se creían que eran los únicos que sabían jugar a las cartas.~ */
  IF ~!IsValidForPartyDialog("Korgan")
Global("ThiefGroup","GLOBAL",2)~ THEN EXTERN ~PPBODHI3~ 12
  IF ~!IsValidForPartyDialog("Korgan")
Global("ThiefGroup","GLOBAL",1)~ THEN EXTERN ~PPSIME~ 1
  IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGANJ~ 117
END

IF ~~ THEN BEGIN 93 // from:
  SAY #55704 /* ~Vuestros hombres están indispuestos, buena mujer. Entregad a la muchacha sin causar alboroto y os evitaréis muchos problemas... Aunque eso, por supuesto, depende de <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~PIRMUR01~ 3
END

IF ~~ THEN BEGIN 94 // from:
  SAY #56464 /* ~Según mi experiencia, algunos delitos nunca terminan en castigo, ya sea por la ley, los dioses u otro medio. Yo nunca defraudaría a los míos como habéis hecho vos, pero claro, yo no soy vos.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 177
END

IF ~~ THEN BEGIN 95 // from:
  SAY #56497 /* ~Semejante corrupción no es infrecuente, y poco podemos hacer ya para ayudar a Nalia. A no ser que encontremos pruebas de la verdadera naturaleza de Isaea y las presentemos ante sus superiores.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("cut39a")~ EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #56545 /* ~Me pregunto qué haría una mujer así si por una vez se viese obligada a vivir en la pobreza. Supongo que ser la mujer más noble de las cloacas. Sin embargo, algo de suciedad le quedaría bien sobre su lustre.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 97 // from:
  SAY #58144 /* ~No albergo grandes esperanzas de que esto nos ayude. Unirnos a los Ladrones de las Sombras es... es un error. Nos traerá problemas.~ */
  IF ~~ THEN REPLY #58146 /* ~¿Frente a qué? De todas maneras, estamos destinados a enfrentarnos con esta otra cofradía.~ */ GOTO 98
  IF ~~ THEN REPLY #58147 /* ~Tal vez, pero me arriesgaré si eso ayuda a recuperar a Imoen. ¿Sospecháis algo?~ */ GOTO 98
  IF ~~ THEN REPLY #58148 /* ~¿Este no es vuestro ambiente? Pensaba que lo preferiríais.~ */ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.2 97.1 97.0
  SAY #58145 /* ~No quería decir nada. Tal vez nos estemos... metiendo donde no debiéramos. Es decir... Bueno...~ */
  IF ~~ THEN GOTO 99
END

IF ~~ THEN BEGIN 99 // from: 98.0
  SAY #58149 /* ~No me hagáis caso. Estoy absorto en mis pensamientos. Haremos lo que queráis.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #58150 /* ~Ahora tendremos que andar con pies de plomo. Tened cuidado, <CHARNAME>.~ */
  IF ~~ THEN REPLY #58181 /* ~Eso pretendo. ¿Tenéis alguna otra preocupación?~ */ GOTO 102
  IF ~~ THEN REPLY #58182 /* ~Parecéis preocupado. ¿Teméis que haya un enfrentamiento? No es propio de vos.~ */ GOTO 102
  IF ~~ THEN REPLY #58183 /* ~Haré lo que crea oportuno, y vos me seguiréis. ¿Por qué dudáis?~ */ GOTO 102
END

IF ~~ THEN BEGIN 101 // from: 102.0
  SAY #58180 /* ~No pretendo retrasaros. Todos haremos lo que debamos cuando llegue el momento.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 102 // from: 100.2 100.1 100.0
  SAY #58184 /* ~No... no pretendo complicar las cosas. Tan solo me preocupa a quién tendremos que enfrentarnos.~ */
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 103 // from:
  SAY #58185 /* ~Estoy seguro de que muchos están allí con razón. Sí, de eso estoy seguro. Algunos lo merecen.~ */
  IF ~~ THEN REPLY #58192 /* ~¿Sabéis algo del lugar?~ */ GOTO 104
  IF ~~ THEN REPLY #58193 /* ~Según parece esperáis que sea cierto. ¿Conocéis el lugar?~ */ GOTO 104
  IF ~~ THEN REPLY #58194 /* ~Tal vez, pero eso no significa que Imoen tenga que estar confinada allí, ¿no?~ */ GOTO 104
END

IF ~~ THEN BEGIN 104 // from: 103.2 103.1 103.0
  SAY #58191 /* ~No pretendía sugerir nada que desmintiera al señor Linvail. Tan solo que algunos lo merecen. Parece un lugar tan inhumano.~ */
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105 // from: 104.0
  SAY #58196 /* ~No es que yo haya estado, pero he oído cosas sobre algunos de los que están allí confinados, no como vuestra Imoen. ¿Cómo puede un lugar ser tan inhumano?~ */
  IF ~~ THEN EXTERN ~ARAN~ 41
END

IF ~~ THEN BEGIN 106 // from:
  SAY #58197 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #58659 /* ~Y detrás sus amigos. Confío en que no suceda nada más que obstaculice nuestra victoria.~ */
  IF ~~ THEN EXTERN ~PPSAEM~ 61
END

IF ~~ THEN BEGIN 108 // from:
  SAY #58661 /* ~¿Algo fácil? ¿Qué es esto? ¿Nos van a matar a todos juntos? Si me arrebatan mi vida, ¡la vuestra irá detrás! ¡Pensadlo!~ */
  IF ~~ THEN EXTERN ~PPSAEM~ 62
END

IF ~~ THEN BEGIN 109 // from:
  SAY #58663 /* ~Muy astuta, dama Bodhi. Está claro que el muy sinvergüenza está tratando de ocultar sus verdaderas intenciones.~ */
  IF ~~ THEN EXTERN ~PPBODHI3~ 19
END

IF ~~ THEN BEGIN 110 // from:
  SAY #58687 /* ~Las... las cosas no son lo que parecen, <CHARNAME>, y por eso me disculpo. No puedo daros una explicación satisfactoria.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 45
END

IF ~~ THEN BEGIN 111 // from:
  SAY #58688 /* ~Es... es un descubrimiento que me avergüenza, <CHARNAME>. Nada de esto debería haber sucedido así.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 45
END

IF ~~ THEN BEGIN 112 // from:
  SAY #58691 /* ~Me... me temo que está en lo cierto, <CHARNAME>, y no tengo ninguna excusa que pueda satisfaceros.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 45
END

IF ~~ THEN BEGIN 113 // from:
  SAY #58698 /* ~Lo siento, <CHARNAME>. Hay circunstancias que desconocéis.~ */
  IF ~!IsValidForPartyDialogue("JAHEIRA")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")~ THEN GOTO 114
  IF ~IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~JAHEIRAJ~ 524
  IF ~IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~VICONIJ~ 182
  IF ~IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~AERIEJ~ 192
  IF ~IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~ANOMENJ~ 306
  IF ~IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~NALIAJ~ 317
  IF ~IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~KELDORJ~ 250
  IF ~IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~KORGANJ~ 190
  IF ~IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~EDWINJ~ 161
  IF ~IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~MAZZYJ~ 201
  IF ~IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~JANJ~ 182
  IF ~IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~VALYGARJ~ 119
  IF ~IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~HAERDAJ~ 150
  IF ~IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~CERNDJ~ 137
  IF ~IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("MAZZY")
!IsValidForPartyDialogue("EDWIN")
!IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("KELDORN")
!IsValidForPartyDialogue("NALIA")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("AERIE")
!IsValidForPartyDialogue("VICONIA")
!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 114 // from: 113.0
  SAY #58699 /* ~No puedo daros una razón satisfactoria. De todos modos os invadirá la cólera.~ */
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN REPLY #58700 /* ~¡Tenéis toda la razón! ¡No hay nada peor que un traidor!~ */ EXTERN ~PPIRENI1~ 38
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN REPLY #58701 /* ~Ya hablaremos de esto más tarde, Yoshimo, podéis estar seguro.~ */ EXTERN ~PPIRENI1~ 38
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",0)~ THEN REPLY #58702 /* ~Sobreviviré a esto, a pesar de lo que penséis que debíais hacer.~ */ EXTERN ~PPIRENI1~ 38
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN REPLY #58733 /* ~¡Tenéis toda la razón! ¡No hay nada peor que un traidor!~ */ EXTERN ~PPIRENI2~ 57
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN REPLY #58734 /* ~Ya hablaremos de esto más tarde, Yoshimo, podéis estar seguro.~ */ EXTERN ~PPIRENI2~ 57
  IF ~Global("YoshimoAndHisBetrayal","GLOBAL",1)~ THEN REPLY #58735 /* ~Sobreviviré a esto, a pesar de lo que penséis que debíais hacer.~ */ EXTERN ~PPIRENI2~ 57
END

IF ~~ THEN BEGIN 115 // from:
  SAY #58724 /* ~Las... las cosas no son como parecen, <CHARNAME>, y por eso, os pido que me perdonéis. No puedo daros una explicación satisfactoria.~ */
  IF ~~ THEN EXTERN ~PPIRENI2~ 66
END

IF ~~ THEN BEGIN 116 // from:
  SAY #58727 /* ~Me... me temo que en eso tiene razón, <CHARNAME>, y no tengo ninguna excusa que pueda satisfaceros.~ */
  IF ~~ THEN EXTERN ~PPIRENI2~ 66
END

IF ~~ THEN BEGIN 117 // from:
  SAY #58728 /* ~Es... es un descubrimiento que me avergüenza, <CHARNAME>. Nada ha salido como yo lo tenía planeado.~ */
  IF ~~ THEN EXTERN ~PPIRENI2~ 66
END

IF ~~ THEN BEGIN 118 // from:
  SAY #58732 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 119 // from:
  SAY #58793 /* ~Nadie podrá fiarse de nadie mientras Yoshimo esté con nosotros. ¿Me oís, carroña? ¡Yoshimo!~ */
  IF ~~ THEN EXTERN ~PPCOWLED~ 7
END

IF ~~ THEN BEGIN 120 // from:
  SAY #58795 /* ~¡Pensad un poco, estúpido! ¡Eso no puede ser así!~ ~¡Pensad un poco, estúpida! ¡Eso no puede ser así!~ */
  IF ~~ THEN EXTERN ~PPCOWLED~ 8
END

IF ~~ THEN BEGIN 121 // from: 128.1 127.1
  SAY #58806 /* ~¡Desharik! ¡Un momento! Desde luego que teníais motivos para hacerme ir al sanatorio. Después de todo, soy el famoso Yoshimo. Yoshimo.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 29
END

IF ~~ THEN BEGIN 122 // from:
  SAY #58808 /* ~Sí, así es. Es importante que hable con los de dentro. <CHARNAME> me está ayudando.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 30
END

IF ~~ THEN BEGIN 123 // from:
  SAY #58810 /* ~Como queráis. Solo hasta que lleguemos allí.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 31
END

IF ~~ THEN BEGIN 124 // from:
  SAY #58812 /* ~Gracias, no lo olvidaré.~ */
  IF ~~ THEN REPLY #58813 /* ~Es una suerte que Desharik sea la única persona de Faerûn que parece que ha oído algo sobre vos.~ */ GOTO 125
  IF ~~ THEN REPLY #58814 /* ~¿Os conocéis? Todo ha salido bastante bien.~ */ GOTO 125
  IF ~~ THEN REPLY #58815 /* ~Vale, ¿qué está ocurriendo aquí, Yoshimo?~ */ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.2 124.1 124.0
  SAY #58816 /* ~Es una historia bastante embarazosa en la que no entraré. Basta con decir que el señor Desharik debe pensar que tiene una cuenta pendiente conmigo. Nada serio.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 32
END

IF ~~ THEN BEGIN 126 // from:
  SAY #58824 /* ~<CHARNAME>, es la oportunidad que necesitábamos. Debemos entrar en cuanto podamos.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 34
END

IF ~~ THEN BEGIN 127 // from:
  SAY #58826 /* ~<CHARNAME>, no dejéis que Minsc hable por nosotros. Sé que puedo conseguir que entremos sin que nos maten, ni parezcamos unos estúpidos. Sé que lo puedo hacer. Debemos apresurarnos.~ */
  IF ~~ THEN REPLY #58827 /* ~Dejad que Minsc diga lo que tiene que decir. Me parece divertido.~ */ EXTERN ~PPDESH~ 14
  IF ~~ THEN REPLY #58828 /* ~De acuerdo, Yoshimo. Hablad con Desharik.~ */ GOTO 121
END

IF ~~ THEN BEGIN 128 // from:
  SAY #58830 /* ~<CHARNAME>, por mucho que me apetezca ver cómo termina todo esto, creo que debo hablar para no perder más tiempo. Debemos llegar pronto al sanatorio. Muy pronto.~ */
  IF ~~ THEN REPLY #58831 /* ~No, Yoshimo. Yo tengo el carisma necesario para conseguirlo. ¡Desharik, estoy desconcertado!~ ~No, Yoshimo. Yo tengo el carisma necesario para conseguirlo. ¡Desharik, estoy desconcertada!~ */ EXTERN ~PPDESH~ 21
  IF ~~ THEN REPLY #58832 /* ~Muy bien, si creéis que sabéis qué decir.~ */ GOTO 121
END

IF ~  Global("TalkedToRenal","GLOBAL",0)
AreaCheck("AR0300")
!Global("WorkingForBodhi","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("YoshimoMentionsRenal","LOCALS",0)~ THEN BEGIN 129 // from:
  SAY #59104 /* ~Aaah... Tal vez este sea un buen momento para deciros algunas cosas, <CHARNAME>, viendo que nos estáis llevando al puerto y todo eso.~ */
  IF ~~ THEN DO ~SetGlobal("YoshimoMentionsRenal","LOCALS",1)~ GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #59109 /* ~Este es territorio de los Ladrones de las Sombras... con los que he tenido un par de incidentes en los últimos meses. No les suelen gustar los trabajadores independientes como yo.~ */
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131 // from: 130.0
  SAY #59110 /* ~Así que la última vez que me cogieron trabajando en la ciudad, me dijeron que me presentara ante el responsable de la cofradía aquí en el puerto, Renal Cabellorrojo, o que sufriría las consecuencias.~ */
  IF ~~ THEN GOTO 132
END

IF ~~ THEN BEGIN 132 // from: 131.0
  SAY #59111 /* ~Parece que Renal necesita a alguien de fuera para resolver un problema, y quería cambiar el castigo que me impondría la cofradía por un encargo. En caso de no ir a verlo... podría ser un poco desagradable.~ */
  IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133 // from: 132.0
  SAY #59114 /* ~Ahora me siento seguro a vuestro lado, pero depende de vos. Si vamos a ver a Renal, es posible que lo convenzamos para que nos recompense, y eso nos evitará complicaciones en el futuro.~ */
  IF ~~ THEN GOTO 134
END

IF ~~ THEN BEGIN 134 // from: 133.0
  SAY #59115 /* ~¿Qué pensáis, <CHARNAME>? Yo no quiero causar ningún problema. Tan solo lo decía para advertiros, tal vez sea una buena oportunidad para los dos.~ */
  IF ~~ THEN REPLY #59119 /* ~Muy bien. Tal vez debamos ir a hablar con ese tal Renal.~ */ UNSOLVED_JOURNAL #293 /* ~Yoshimo necesita ver a Renal Cabellorrojo.

Una vez hemos entrado en el distrito del puerto, Yoshimo me ha informado de que tenía mucho interés en ver a Renal Cabellorrojo, el líder de los Ladrones de las Sombras. Yoshimo ha comentado que como independiente es la única forma en la que puede evitar futuros problemas. Renal se encuentra en alguno de los edificios de este distrito.~ */ GOTO 135
  IF ~~ THEN REPLY #59120 /* ~Tal vez en otro momento. Ahora mismo no tenemos tiempo para eso.~ */ UNSOLVED_JOURNAL #293 /* ~Yoshimo necesita ver a Renal Cabellorrojo.

Una vez hemos entrado en el distrito del puerto, Yoshimo me ha informado de que tenía mucho interés en ver a Renal Cabellorrojo, el líder de los Ladrones de las Sombras. Yoshimo ha comentado que como independiente es la única forma en la que puede evitar futuros problemas. Renal se encuentra en alguno de los edificios de este distrito.~ */ GOTO 136
  IF ~~ THEN REPLY #59121 /* ~Yoshimo, no tengo ningún interés en trabajar con los Ladrones de las Sombras, y punto.~ */ UNSOLVED_JOURNAL #293 /* ~Yoshimo necesita ver a Renal Cabellorrojo.

Una vez hemos entrado en el distrito del puerto, Yoshimo me ha informado de que tenía mucho interés en ver a Renal Cabellorrojo, el líder de los Ladrones de las Sombras. Yoshimo ha comentado que como independiente es la única forma en la que puede evitar futuros problemas. Renal se encuentra en alguno de los edificios de este distrito.~ */ GOTO 137
END

IF ~~ THEN BEGIN 135 // from: 134.0
  SAY #59124 /* ~Cuando os vaya bien... El refugio de la cofradía está aquí, en el puerto, y no tendremos dificultades para encontrarlo. Tan solo espero que nos dejen entrar sin... problemas.~ */
  IF ~~ THEN DO ~SetGlobalTimer("YoshimoRemindsRenal","GLOBAL",TWO_DAYS)~ EXIT
END

IF ~~ THEN BEGIN 136 // from: 134.1
  SAY #59125 /* ~Bueno, yo no esperaría mucho. Cabellorrojo tiene muy mala fama. Aun así, tampoco lo temo. Podemos hacer lo que queramos.~ */
  IF ~~ THEN DO ~SetGlobalTimer("YoshimoRemindsRenal","GLOBAL",TWO_DAYS)~ EXIT
END

IF ~~ THEN BEGIN 137 // from: 134.2
  SAY #59128 /* ~¿Ah, no? Creo que, por lo menos, podrían ofrecer buena información. Ellos tienen poder, <CHARNAME>... El suficiente como para ayudaros. Pero es decisión vuestra.~ */
  IF ~~ THEN EXIT
END

IF ~GlobalTimerExpired("YoshimoRemindsRenal","GLOBAL")
Global("TalkedToRenal","GLOBAL",0)
!Global("WorkingForBodhi","GLOBAL",1)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("YoshimoReminder","LOCALS",0)~ THEN BEGIN 138 // from:
  SAY #59135 /* ~Mmmm. <CHARNAME>, si vamos a visitar a Cabellorrojo, tal vez no debiéramos esperar tanto. Tal vez podríamos hacer una visita al maestre cofrade, ¿no?~ */
  IF ~~ THEN DO ~SetGlobal("YoshimoReminder","LOCALS",1)
SetGlobalTimer("YoshimoRemindsRenal","GLOBAL",TWO_DAYS)~ EXIT
END

IF ~GlobalTimerExpired("YoshimoRemindsRenal","GLOBAL")
Global("TalkedToRenal","GLOBAL",0)
!Global("WorkingForBodhi","GLOBAL",1)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("YoshimoReminder","LOCALS",1)~ THEN BEGIN 139 // from:
  SAY #59137 /* ~No pretendéis ver a Renal Cabellorrojo de momento, ¿no? Vaya. Bueno, pero si cambiáis de idea, no tengo ninguna duda de que él estará interesado en vernos.~ */
  IF ~~ THEN DO ~SetGlobal("YoshimoReminder","LOCALS",2)~ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #59435 /* ~Me alegro mucho de que os acordarais de mi bienestar, señor. Siempre es bueno que a uno lo recuerden sus semejantes.~ */
  IF ~~ THEN EXTERN ~RENAL~ 96
END

IF ~~ THEN BEGIN 141 // from:
  SAY #59437 /* ~Yoshimo, si sois tan amable, señor. De donde vengo, un apodo así solo lo usan... Bueno, digamos que nosotros dos todavía no nos conocemos tanto.~ */
  IF ~~ THEN EXTERN ~RENAL~ 97
END

IF ~~ THEN BEGIN 142 // from:
  SAY #59439 /* ~He venido como solicitasteis, señor. ¿Tenéis una misión para mí?~ */
  IF ~See(Player1)~ THEN EXTERN ~RENAL~ 98
  IF ~!See(Player1)~ THEN EXTERN ~RENAL~ 99
END

IF ~~ THEN BEGIN 143 // from:
  SAY #59448 /* ~¿No... no lo pondréis en peligro, señor? Me sentiría muy deshonrado si mi compañero corriera peligro por culpa de mi deuda.~ ~¿No... no la pondréis en peligro, señor? Me sentiría muy deshonrado si mi compañera corriera peligro por culpa de mi deuda.~ */
  IF ~~ THEN EXTERN ~RENAL~ 102
END

IF ~~ THEN BEGIN 144 // from:
  SAY #59451 /* ~Tal vez.~ */
  IF ~~ THEN EXTERN ~RENAL~ 104
END

IF ~~ THEN BEGIN 145 // from:
  SAY #59456 /* ~Sois demasiado bueno conmigo, señor.~ */
  IF ~~ THEN EXTERN ~RENAL~ 44
END

IF ~~ THEN BEGIN 146 // from:
  SAY #61019 /* ~La druida tiene razón, mi gran amigo. El mago tiene gran poder, obviamente, y dudo que haya sido lo último que veamos de él. Tal vez podamos encontrar aliados en la ciudad, deberíamos probar.~ */
  IF ~~ THEN EXIT
END

IF ~Global("PostCutSpeak","AR0700",1)
~ THEN BEGIN 147 // from:
  SAY #61020 /* ~Sería raro que el mago parase de luchar... y todavía más raro que pidiese que prendiesen a vuestra joven camarada, <CHARNAME>, y no a vos.~ */
  IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)
~ GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.0
  SAY #61021 /* ~Obviamente aquí hay más de lo que parece. Debemos orientarnos, creo yo, y averiguar lo que hay detrás de todo esto... y por qué os habéis visto envuelto.~ ~Obviamente aquí hay más de lo que parece. Debemos orientarnos, creo yo, y averiguar lo que hay detrás de todo esto... y por qué os habéis visto envuelta.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #61022 /* ~Creo que vuestra amiga la druida está en lo cierto, <CHARNAME>. Dudo que hayamos visto lo último de ese mago. Quizás aquí haya aliados que encontrar, que puedan explicar vuestra implicación en todo esto.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #61023 /* ~Aunque sin el entusiasmo de vuestro gran amigo, <CHARNAME>, estoy de acuerdo en que debemos movernos rápidamente para protegernos.~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from: 150.0
  SAY #61024 /* ~No sabemos nada de ese mago, ni con quién peleaba ni por qué... ni cuál es vuestra implicación en todo esto. Necesitáis encontrar aliados, <CHARNAME>.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN P_1 // from:
  SAY @3021/* ~No estoy de acuerdo con esto, Dusk... pero supongo que si no los aniquilamos ahora, estos humanoides bien podrían hacer daño a inocentes.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DUSKJ~ 19
END