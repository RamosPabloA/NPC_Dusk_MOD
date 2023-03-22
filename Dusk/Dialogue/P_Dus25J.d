BEGIN P_Dus25J

// Volo

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("P_Dusk") InMyArea("P_Dusk") Global("P_Dusk_IS_NEUTRAL_TOB","GLOBAL",1)~ + @0 /*  */ + P_DuskVoloBio1
+ ~InParty("P_Dusk") InMyArea("P_Dusk") Global("P_Dusk_IS_GOOD_TOB","GLOBAL",1)~ + @0 /* Tell me about Dusk. */ + P_DuskVoloBio2
+ ~InParty("P_Dusk") InMyArea("P_Dusk") Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ + @0 /* Tell me about Dusk. */ + P_DuskVoloBio3
END
//NEUTRAL
CHAIN SARVOLO P_DuskVoloBio1
@1 /* Un hijo de Cormyr que viaj� al sur para evitar una guerra. Su madre patria espera su regreso luego de incontables historias heroicas en su paso por Amn y de sus viajes junto a <CHARNAME>. */
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @2 /* �Esperan mi regreso? Quiz�s... quiz�s alg�n d�a lo haga... */
EXTERN SARVOLO 9
//GOOD
CHAIN SARVOLO P_DuskVoloBio2
@3 /* Ha actuado con justicia en nombre de las naciones de Cormyr y Shilmista. Su lealtad a naciones ajenas como Amn y Tethyr recorren los o�dos silvestres y citadinos. Los elfos del bosque lo esperan como un h�roe, as� como incontable cantidad de amigos en Athkatla, como la Noble Orden del Radiante Coraz�n. */
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @4 /* Es bueno saber que ser� bienvenido en muchos lugares luego de que mi viaje finalice contigo, <CHARNAME>. Quiz�s puedas acompa�arme... */
EXTERN SARVOLO 9
//EVIL
CHAIN SARVOLO P_DuskVoloBio3
@1000 /* Los actos crueles de Dusk han recorrido todos los o�dos arcanos de Amn. Muchos temen caer presa de sus ambiciones o ser, repentinamente, el objetivo de alguna venganza imprevisible. Los Caballeros ya lo consideran un palad�n ca�do y los orcos tiemblan ante la sola menci�n de su nombre. */
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @1001 /* Tal es el resultado de mis viajes contigo, <CHARNAME>. Lo que hemos logrado con nuestro poder finalmente ha sido reconocido. */
EXTERN SARVOLO 9


I_C_T FINSOL01 27 P_DuskSolarFriend1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) !Global("P_DuskRomanceActive","GLOBAL",2)~ THEN @5 /* Conf�o en que har�s lo que debas hacer con el nuevo poder que has de adquirir, <CHARNAME>. Nadie lo merece m�s que t�. */
END

// se eliminan l�neas de romance

// se eliminan l�neas de Gorion's Wraith

// se eliminan l�neas para P_DuskG APPEND

// Various non-essential interjection for ToB.

I_C_T AMMERC02 1 P_DuskSaemonMet11
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @46 /* Otra vez este depravado... �no crees que es hora de darle una lecci�n, <CHARNAME>? */
END 

I_C_T BAZDRA01 0 P_DuskDrakonis1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @47 /* Hm... debemos tener cuidado, <CHARNAME>. Percibo una extra�a energ�a en este sujeto. */
END

I_C_T SARMEL01 56 P_DuskSARMEL0156
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @48 /* �Por qu� sientes inter�s en este suceso, mujer? */
END

I_C_T SARMEL01 40 P_DuskMelissanYagaTemple1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @49 /* Creo que hemos superado retos m�s peligrosos, mujer. Haces mal en subestimar a <CHARNAME>. */
END

I_C_T SARMEL01 63 P_DuskMelissanGiantDead1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @50 /* �Qu� ha sucedido con Saradush? */
END

I_C_T HGNYA01 6 P_DuskHGNYA016
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @52 /* Parece ser que alguien en este mundo siempre te est� esperando, <CHARNAME>. Vaya fama que te has forjado. */
END

I_C_T SENGUA03 1 P_DuskSENGUA03
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @53 /* Si act�as como un perro, obtendr�s la muerte de uno. �Prep�rate! */
END

I_C_T BALTH 6 P_DuskBalth6
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @54 /* Los monjes siempre me han parecido extra�os espec�menes. No puedo percibir si es realmente un hombre malvado o no. */
END

I_C_T BALTH 17 P_DuskBalth17
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @55 /* As� que ella estaba detr�s de todo... Rayos... */
END

I_C_T GORODR1 11 P_DuskMetKnightsOfTheVigil1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @56 /* No creo que sea casualidad que suceda justo cuando arribamos, <CHARNAME>. Debemos tener cuidado. */
END

I_C_T GORCHR 2 P_DuskChromaticDemon2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @57 /* �Confiaremos en las blasfemias de un demonio? Aunque... no s� si tengamos muchas m�s opciones... */
END

I_C_T GORIMP01 4 P_DuskImpDeadWizards1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @58 /* A m� tampoco... lo que narra esta peque�a inmundicia tiene sentido. La mayor�a terminan ebrios de poder y eso los lleva a su perdici�n. */
END


I_C_T GORDEMO 1 P_DuskImprisonedOneMet1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @60 /* �<CHARNAME>! Estad atento. Aqu� existe una... fuerza sobrenatural... antigua y casi arcana. No entiendo por qu� no podemos verla... pero est� aqu�... */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness1
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @61 /* Cobarde. Deber�amos acabar con �l, <CHARNAME>. La venganza lo dicta. */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @7 /* Un enga�o nada digno de Helm, cl�rigo... No estoy seguro de que debamos dejar pasar algo as�... */
END

// SoA

I_C_T GORODR1 11 P_DuskMetKnightsOfTheVigil2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @56 /* No creo que sea casualidad que suceda justo cuando arribamos, <CHARNAME>. Debemos tener cuidado. */
END

I_C_T GORCHR 2 P_DuskChromaticDemon3
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @57 /* �Confiaremos en las blasfemias de un demonio? Aunque... no s� si tengamos muchas m�s opciones... */
END

I_C_T GORIMP01 4 P_DuskImpDeadWizards2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @58 /* A m� tampoco... lo que narra esta peque�a inmundicia tiene sentido. La mayor�a terminan ebrios de poder y eso los lleva a su perdici�n. */
END


I_C_T GORDEMO 1 P_DuskImprisonedOneMet2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @60 /* �<CHARNAME>! Estad atento. Aqu� existe una... fuerza sobrenatural... antigua y casi arcana. No entiendo por qu� no podemos verla... pero est� aqu�... */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness2
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ THEN @61 /* Cobarde. Deber�amos acabar con �l, <CHARNAME>. La venganza lo dicta. */
END

I_C_T GORODR1 35 P_DuskOdrenFoolishness3
== P_Dus25J IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)~ THEN @7 /* Un enga�o nada digno de Helm, cl�rigo... No estoy seguro de que debamos dejar pasar algo as�... */
END

APPEND P_Dus25J

// ToB talks

// ToB T1 -> NEUTRAL

IF ~Global("P_DuskTalkToB","GLOBAL",2)
Global ("P_Dusk_IS_NEUTRAL_TOB","GLOBAL",1)~ b1
SAY @62 /* As� que esta es tu... bolsa planar, �no es as�, <CHARNAME>? */
++ @63 /* Pues... s�, Dusk. No es precisamente una posada lujosa, pero al menos podremos descansar en paz aqu�. */ + b1.3
++ @64 /* Podr�a ser peor, Dusk. Mejor acost�mbrate. */ + b1.3
++ @67 /* No estoy de humor para hablar, Dusk. Hay asuntos m�s importantes en las que concentrarse. */ + b.0
END

IF ~~ b.0
SAY @68 /* De acuerdo, <CHARNAME>. No te molestar�. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

IF ~~ b1.3
SAY @71 /* ~�Ja! No es que me est� quejando, amigo m�o. Es todo lo que ha pasado desde... Irenicus.~ ~�Ja! No es que me est� quejando, amiga m�a. Es todo lo que ha pasado desde... Irenicus.~ */
= @72 /* Tu camino es claro: debes sobrevivir a la lucha por el Trono de Bhaal y yo te ayudar� en lo que pueda. */
= @73 /* Pero... �y despu�s qu�? Puede que t� lo tengas claro. O puede que no. Lo que puedo asegurarte es que yo no tengo claro qu� har�. */
++ @74 /* �Por qu� lo dices? Cre� que quer�as montar un negocio propio en el Paseo de Waukeen en Athkatla. */ + b1.4
++ @75 /* ~La verdad que no puedo decirte qu� hacer, Dusk. B�scate a otro consejero.~ ~La verdad que no puedo decirte qu� hacer, Dusk. B�scate a otra consejera.~ */ + b.0
END

IF ~~ b1.4
SAY @78 /* Es probable... pero siento que a�n tengo muchos asuntos personales pendientes que resolver. */ 
++ @79 /* �A qu� te refieres? */ + b1.8
++ @80 /* No creo que tengamos tiempo para esto, Dusk. */ + b.0
END

IF ~~ b1.8
SAY @81 /* Hablo de mi hogar: Cormyr. Part� de all� con una misi�n que no pude cumplir. No pude proteger a aquellos que estuvieron bajo mi mando, ni a mis allegados. */
= @82 /* Mi entrenamiento como Asesino de Magos tuvo como objetivo el acabar con una Orden de Hechiceros. */
= @83 /* Pero eso nunca sucedi�. Quiz�s... quiz�s deba concentrarme en ello una vez que termine mis asuntos contigo. */
++ @84 /* Puede ser, Dusk. Has mencionado a Cormyr. �Crees que te vuelvan a recibir con los brazos abiertos? */ + b1.9
++ @85 /* No lo s�, Dusk. El plan original de ser mercader en Athkatla suena como una apuesta m�s segura. */ + b1.10
END

IF ~~ b1.10
SAY @89 /* �T� lo crees as�? A decir verdad, no suena nada mal, �verdad? Estoy... cansado de transitar en la senda de la venganza. */
= @90 /* Tus palabras siempre son un aliento al coraz�n, <CHARNAME>. Has aclarado mi perturbada mente. */
IF ~~ + b1.11
END

IF ~~ b1.11
SAY @91 /* Vamos... tu destino nos aguarda. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END


IF ~~ b1.9
SAY @87 /* No lo s�, <CHARNAME>. Extra�o mi hogar... pero mi honor ha sido mancillado al no ser capaz de proteger a mis soldados. */
= @88 /* Deb� caer con mis hermanos de armas cuando fuimos emboscados en la Colina de los Trolls. */
= @92 /* ~Deb�... haber ca�do en muchas ocasiones... Pero aqu� estoy: al lado de un semidios.~ ~Deb�... haber ca�do en muchas ocasiones... Pero aqu� estoy: al lado de una semidiosa.~ */
++ @93 /* Esa emboscada no fue obra tuya, Dusk. Es hora de que dejes de culparte por ello. */ + b1.12
++ @94 /* ~No creo ser el indicado para esta conversaci�n, Dusk. Lo siento.~ ~No creo ser la indicada para esta conversaci�n, Dusk. Lo siento.~ */ + b.0
END


IF ~~ b1.12
SAY @95 /* Puede... puede que est�s en lo cierto, <CHARNAME>. */
++ @96 /* As� es, Dusk. Adem�s, Irenicus ha sido vencido y hemos salvado a Suldanessallar en el proceso. Eso debe servir para recuperar tu honor, �no lo crees? */ + b1.13
END

IF ~~ b1.13
SAY @97 /* ~Es verdad, amigo m�o. Una vez que nuestro viaje finalice, pondr� mis asuntos en orden.~ ~Es verdad, amiga m�a. Una vez que nuestro viaje finalice, pondr� mis asuntos en orden.~ */
= @98 /* Es hora de dejar de vivir en el pasado. Por primera vez... veo esperanza en el futuro. */
= @99 /* ~Gracias, <CHARNAME>. No sabes cu�nto me has ayudado.~ */
= @100 /* ~Vamos, continuemos con el viaje.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_NEUTRAL_CORMYR_KNIGHT","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)~ EXIT
END


// ToB T1 -> GOOD

IF ~Global("P_DuskTalkToB","GLOBAL",2)
Global ("P_Dusk_IS_GOOD_TOB","GLOBAL",1)~ c1
SAY @101 /* He pensado volver a Shilmista despu�s de esto. Puede que Mathyus me acompa�e. */
++ @102 /* Parece una buena idea, Dusk. �Qu� har�s all�? */ + c1.1
++ @103 /* No creo que tengamos tiempo para esta conversaci�n, Dusk. Tenemos mucho trabajo por hacer. */ + c.0
END

IF ~~ c.0
SAY @68 /* De acuerdo, <CHARNAME>. No te molestar�. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

IF ~~ c1.1
SAY @104 /* Pues... mi relaci�n con los elfos es buena. Quiz�s aprenda un poco m�s sobre Mielikki. Algunas cuestiones sobre mi futuro despu�s de ti siguen siendo inciertas.  */

+ ~OR (2)
PartyHasItem ("p_swgoo3")
PartyHasItem ("p_swgoo4")~ + @105 /* �A qu� te refieres? �Hay algo del pasado que a�n te perturba? */ + c1.2

+ ~PartyHasItem ("p_belrn2")~ + @106 /* ~�A qu� te refieres? Pasas mucho tiempo viendo el anillo del Bosque de Mir. �A�n piensas en tus conversaciones con Bellfame?~ */ + c1.7

++ @107 /* ~Hm... tengo la certeza de que podr�s resolverlo por tu cuenta, Dusk. Mejor continuemos.~ */ + c.0
END

// RESPUESTA c1.2
IF ~~ c1.2
SAY @108 /* Pues... s�. He estado pensando en Alabarza, <CHARNAME>. */
++ @109 /* �En el semiorco que acab� con tu destacamento? Esa respuesta s� que no me la esperaba. */ + c1.3
++ @110 /* ~�Por qu�, Dusk? Tu enemigo ya lleva un buen tiempo muerto.~ */ + c1.3
END

IF ~~ c1.3
SAY @111 /* ~Lo s�, lo s�, <CHARNAME>. Sin embargo, sus �ltimas palabras a�n resuenan en mi mente.~ */
= @112 /* Su clan fue enga�ado por Anthagar, el Nigromante, para atacarnos. Fue derrotado e incluso muerto por nosotros. */
= @113 /* Pero... no puedo evitar el pensar en su castigo a manos de su propio dios: Gruumsh. */
++ @114 /* Su castigo eterno es justo, Dusk. Tu venganza tambi�n fue justa. */ + c1.4
++ @115 /* ~�Por qu� tienes dudas? Siento que, por alguna raz�n, te compadeces de �l.~ */ + c1.4
END

IF ~~ c1.4
SAY @116 /* ~La refriega entre Alabarza y yo era personal. Una guerra entre los Caballeros de mi Orden y los Humanoides de su clan.~ */
= @117 /* Como guerra en la que nos encontr�bamos, tanto �l como yo acudimos a alianzas con el solo prop�sito de destruirnos en uno con el otro. */
= @118 /* �l acudi� al elfo transmutador, Kalanda. */
= @119 /* El dogma de Gruumsh dicta un odio eterno hacia los elfos. */
= @120 /* ~Y por el otro lado, yo acud� a ti, un hijo de Bhaal.~ ~Y por el otro lado, yo acud� a ti, una hija de Bhaal.~ */
= @121 /* Alabarza rompi� ese dogma al utilizar las artima�as m�gicas de Kalanda. */
= @122 /* No s� si compasi�n sea la palabra correcta, <CHARNAME>. Pero creo que un castigo eterno es excesivo. */
++ @123 /* Creo que su castigo es justo, Dusk. Alabarza era un villano y su destino final: merecido. */ + c1.5
++ @124 /* Creo entender a lo que te refieres, Dusk. Pero... �acaso puedes hacer algo al respecto? */ + c1.6
END

IF ~~ c1.5
SAY @125 /* ~Puede que lo sea, <CHARNAME>. Sin embargo, creo que incluso un villano del calibre de Alabarza puede redimirse.~ */
IF ~~ DO ~~ + c1.6
END

IF ~~ c1.6
SAY @126 /* ~*suspiro* A pesar de todo, no creo que pueda hacerse algo al respecto. El asunto de las deidades de Faer�n es algo que a�n me abruma.~ */
= @127 /* Sencillamente... necesitaba sacar el tema de mi mente. Dar aliento a nuestra voz interior muchas veces nos trae de nuevo a la realidad y a la imposibilidad de muchas cosas. */
= @128 /* ~Pero si algo he aprendido contigo, mi buen amigo, es que nada es imposible.~ ~Pero si algo he aprendido contigo, mi buena amiga, es que nada es imposible.~ */
= @129 /* Gracias por escucharme. Ser� mejor que continuemos con nuestro viaje. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_GOOD_ALABARZA_DEATH","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

// RESPUESTA c1.7
IF ~~ c1.7
SAY @130 /* Pues... a decir verdad, s�. He tenido la oportunidad de tener varias conversaciones con ella. */
= @131 /* M�s que nada sobre asuntos complejos, como el tiempo y la Dama del Bosque. */
++ @132 /* S�, seguro. El "tiempo". */ + c1.8
++ @133 /* ~�Est�s seguro de que eso es todo? No soy ciego, Dusk.~ ~�Est�s seguro de que eso es todo? No soy ciega, Dusk.~*/ + c1.8
END

IF ~~ c1.8
SAY @134 /* ~*carraspeo* �Est�s infiriendo que entre ella y yo existe... un romance?~ */
= @135 /* No lo s�... a decir verdad, tengo una buena relaci�n con ella, <CHARNAME>. */
= @136 /* Como recordar�s, intervino en nuestra batalla contra Alabarza y me ha ense�ado mucho sobre otros planos existenciales. */
= @137 /* Hay cierta situaci�n que ha intentado explicar en m�s de una ocasi�n y es sobre c�mo lleg� a estar atrapada en el Anillo del Bosque. */
= @138 /* Habl� sobre un combate en Mir... pero dicho combate a�n no se sucedi�. En teor�a deber�a suceder dentro de un a�o aproximadamente. */
++ @139 /* �Ves? Por eso es que no hay que hablar con las invocaciones. Dicen sandeces. */ + c1.9
++ @140 /* Pues, las ninfas son criaturas m�gicas. Michelson nos ha entregado ese anillo, por lo que no me sorprender�a que sea cierto.  */ + c1.10
END

IF ~~ c1.9
SAY @141 /* ~Puede que sea un delirio. Pero no lo creo as�.~ */
IF ~~ DO ~~ + c1.10
END

IF ~~ c1.10
SAY @142 /* ~Es cierto que Bellfame, al igual que Michelson, son criaturas m�gicas. Sus leyes escapan a nuestra comprensi�n.~ */ 
= @143 /* ~Por lo que no me sorprender�a que, realmente, dentro de un a�o suceda el evento b�lico en el Bosque de Mir.~ */
= @144 /* ~Vaya... he pensado en esto un buen tiempo, pero decirlo en voz alta me ha hecho reflexionar un poco m�s sobre Bellfame.~ */
= @145 /* ~Gracias por escuchar, <CHARNAME>. Hablar contigo siempre aclara mi mente.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_GOOD_BELLFAME","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

// ToB T1 -> EVIL

IF ~Global("P_DuskTalkToB","GLOBAL",2)
Global ("P_Dusk_IS_EVIL_TOB","GLOBAL",1)~ d1
SAY @146 /* ~<CHARNAME>, �tienes unos minutos? He estado pensando y creo que eres el �nico que puede... aconsejarme sobre... mis cavilaciones.~ ~<CHARNAME>, �tienes unos minutos? He estado pensando y creo que eres la �nica que puede... aconsejarme sobre... mis cavilaciones.~ */
+ ~PartyHasItem ("p_swevi4")~ + @147 /* �Te refieres a las �ltimas palabras de tu esposa? */ + d1.1
++ @148 /* No tenemos tiempo para esto, Dusk. Quiz�s m�s adelante, �te parece? */ + d.0
END

IF ~~ d.0
SAY @149 /* No creo estar pidiendo demasiado, pero si esa es tu respuesta... Que as� sea. */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END

IF ~~ d1.1
SAY @150 /* ~No s�lo a sus palabras... ella... pareci� despreciarme. Como si me... odiara.~ */
= @151 /* Soy m�s poderoso que lo que jam�s so��, <CHARNAME>. Incluso, el poder del Pandemonium me da la posibilidad de realizar haza�as que pocos mortales son capaces de lograr. */
= @152 /* Podr�a haberla resucitado... podr�a haberla extra�do de ese est�pido plano de �rboles. */
= @153 /* Pero... me rechaz�... incluso se mostr� dispuesta a luchar contra m�... �Por qu�? */
++ @154 /* Bueno... has cambiado mucho desde que te conoc�, Dusk. Creo que tal acontecimiento se debe al Orbe misterioso que te di� ese Encantador, �lo recuerdas? */ + d1.2
++ @155 /* ~Los abraza-�rboles son as�, Dusk. Unos pusil�nimes. No comprendo por qu� ello te preocupa.~ */ + d1.3
++ @156 /* ~Ehrm... creo que no es algo de mi incumbencia, Dusk. Ser� mejor que me dejes afuera de esto o que lo hablemos en otro momento...~ */ + d.0
END

IF ~~ d1.3
SAY @157 /* ~Si bien estoy de acuerdo con esa afirmaci�n... no creo que sea una raz�n v�lida. No... Debe ser...~ */ 
IF ~~ DO ~~ + d1.2
END

IF ~~ d1.2
SAY @158 /* ~El orbe escarlata de Sornhil. No, Sornhil no... Anthagar, el Nigromante.~ */
= @159 /* �l fue el titiritero de todo, <CHARNAME>. Pese a que le hemos matado... a�n siento su influjo en mi destino. */
= @160 /* �Por qu�? �Por qu� me persigue esta sensaci�n de desagrado? Siento que he bailado al son de alguien s�lo para su entretenimiento. */
= @161 /* Como que no somos los due�os de nuestro destino... somos el resultado de una mala broma. Una broma destinada a repetirse, una y otra vez. */
= @162 /* Mathyus, Michelson, Demoledor... �Por qu� los mat�? Eran mis amigos... Lo hice... �por poder? */
++ @163 /* Vaya, ya me hab�a olvidado yo de esos idiotas. */ + d1.4
++ @164 /* Ah, los guardianes de Shilmista. Recuerdo que me sorprendi� tu decisi�n definitiva sobre su destino. */ + d1.5
++ @165 /* �Vas a ponerte sentimental? Es mi se�al para retirarme de esta conversaci�n. */ + d.0
END

IF ~~ d1.4
SAY @166 /* Puede que hayan sido unos idiotas... pero lo cierto es que les traicion�. */ 
IF ~~ DO ~~ + d1.5
END

IF ~~ d1.5
SAY @167 /* Necesitaba de su energ�a vital para quitar las ataduras de Danctian y lograr que su poder pudiese filtrarse a este plano. */
= @168 /* Ahora que el tiempo ha pasado y comprendo mejor mi poder, yace la posibilidad de... traer de nuevo a los shilmistas. */
++ @169 /* �Piensas revivirlos? Yo ya me acostumbr� a su ausencia, Dusk. Adem�s, si escucho la risa de Michelson una vez m�s, te juro que te declaro la guerra. */ + d1.6
++ @170 /* �Crees que algo as� habr�a de redimirte? Est�s siendo un poco ingenuo,  me parece. */ + d1.7
++ @171 /* Ya me he cansado de esta conversaci�n, Dusk. Mucha palabrer�a. No quiero escuchar m�s. */ + d.0
END

IF ~~ d1.6
SAY @172 /* La idea se ha impregnado en mi mente, es verdad. Pero no te preocupes, <CHARNAME>. De hacerlo, lo har� cuando mis viajes contigo hayan finalizado. */ 
IF ~~ DO ~~ + d1.8
END

IF ~~ d1.7
SAY @173 /* Esperaba... obtener algo de redenci�n... creo que podr�a ser capaz de hacer algo as� por mi esposa. */
IF ~~ DO ~~ + d1.8
END

IF ~~ d1.8
SAY @174 /* ~Sin embargo... no s� si sea suficiente. Esta... sensaci�n de oscuridad dentro de m�... cada vez se arraiga m�s y m�s.~ */ 
= @175 /* ~Como si poco a poco... me olvidara de lo que es ser un humano. Puede que algo as� te suceda a ti, <CHARNAME>. Te he estado observando todo este tiempo.~ */
= @176 /* Lo que eras... desde que partimos de Athkatla... has cambiado, demasiado. */
= @177 /* ~*carraspeo* No pretendo darte un serm�n ni nada parecido. Necesitaba hacer realidad estas abstracciones. Ser� mejor que continuemos.~ */
IF ~~ DO ~SetGlobal("P_DuskTalkToB","GLOBAL",3)
SetGlobal("P_Dusk_EVIL_REDEMPTION","GLOBAL",1)
//RealSetGlobalTimer("P_DuskTimerToB","GLOBAL",3600)
~ EXIT
END



END // End to APPEND