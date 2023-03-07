// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskDorn1","GLOBAL",0)~ THEN BDORN P_DuskDorn1
@0 /* Eres un ser extra�o, Dusk. He llegado a preguntarme acerca de tus habilidades naturales. */
DO ~SetGlobal("P_DuskDorn1","GLOBAL",1)~
== P_BDusk @1 /* �Te refieres a la resistencia m�gica? */
== BDORN @2 /* Aj�... tus habilidades en el campo de batalla no son la gran cosa. Sin embargo, me llama la atenci�n que un humano pueda obtener dicha... caracter�stica. */
== P_BDusk @3 /* Bueno... pues... es algo que se logra con mucho entrenamiento... y sobretodo: dolor. */
== BDORN @4 /* Interesante. Quiz�s podamos hablar de esto m�s adelante. */
== P_BDusk @5 /* Quiz�s, Dorn.... quiz�s... */
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskDorn2","GLOBAL",0)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskDorn2
@6 /* Tus habilidades en combate son incre�bles, Dorn. Tu sed por sangre, tambi�n lo es. A decir verdad, asusta un poco. */
DO ~SetGlobal("P_DuskDorn2","GLOBAL",1)~
== BDORN @7 /* Clamar por sangre es algo natural para los Guardias Negros, Dusk. */
== P_BDusk @8 /* �No te cansas de ello?, �no ans�as una vida de paz? */
== BDORN @9 /* �Paz? Eso es s�lo un cuento, muchacho. La guerra es mucho m�s atractiva. El universo est� en completo caos, todo el tiempo. */
== P_BDusk @10 /* Puede que as� lo sea... Es algo desesperanzador, �no lo crees? */
== BDORN @11 /* La verdad suele serlo. No tiene por qu� agradarte. */
EXIT

// ToB

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskToBDorn1","GLOBAL",0)~ THEN BDORN25 P_DuskToBDorn1
@17 /* Has avanzado mucho como guerrero, humano.  */
DO ~SetGlobal("P_DuskToBDorn1","GLOBAL",1)~
== P_BDus25 @18 /* Gracias, supongo. */
== BDORN25 @19 /* Tienes suerte de que estemos del mismo lado de la vereda. */
== P_BDus25 @20 /* No estoy seguro de que por estar en el mismo grupo, quiera decir que estamos en la "misma vereda". */
== BDORN25 @21 /* �Ja! Es verdad... Tus ideales cormyreanos ciertamente son algo a erradicar. */
== P_BDus25 @22 /* Vaya, la amabilidad se ha acabado r�pido, �eh? */
== BDORN25 @23 /* Estoy siendo amable, muchacho. Deber�as apreciarlo. */
== P_BDus25 @24 /* Tienes raz�n... �Qu� rudo de mi parte! */
EXIT

// Hexxat

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskHexxat1","GLOBAL",0)~ THEN BHEXXAT P_DuskHexxat1
@25 /* �Qu� sucede, Dusk? Te ves inc�modo... �Acaso... es mi presencia? */
DO ~SetGlobal("P_DuskHexxat1","GLOBAL",1)~
== P_BDusk @26 /* Los muertos vivientes han sido mis enemigos naturales durante mucho tiempo. Que no haga nada al respecto con tu... "presencia", es s�lo debido a mi respeto por <CHARNAME>. */
== BHEXXAT @27 /* Una l�stima... me gustar�a ver de qu� eres capaz... */
== P_BDusk @28 /* No tientes tu suerte, demonio... */
EXIT

// ToB

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskToBHexxat1","GLOBAL",0)~ THEN BHEXXA25 P_DuskToBHexxat1
@29 /* �Y, Dusk? A�n no te has acostumbrado a m�, �verdad? */
DO ~SetGlobal("P_DuskToBHexxat1","GLOBAL",1)~
== P_BDus25 @30 /* Claramente no, Hexxat. */
== BHEXXA25 @31 /* Vaya... al menos has dicho mi nombre... Claramente es un avance. */
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskNeera1","GLOBAL",0)~ THEN P_BDusk P_DuskNeera1
@32 /* Debo decir que me sorprendes, Neera. */
DO ~SetGlobal("P_DuskNeera1","GLOBAL",1)~
== BNEERA @33 /* *ejem* �Qu�? No me digas... �qu� hice ahora? */
== P_BDusk @34 /* Oh, nada, es s�lo una expresi�n, nada en concreto. */
== BNEERA @35 /* �Dusk! Est� mal andar asustando a la gente, �sabes? */
== P_BDusk @36 /* Bueno, no era mi intenci�n, yo-- */
== BNEERA @37 /* �Y bien? Soy sorprendente (eso ya lo sab�a), pero �por qu� lo has dicho? */
== P_BDusk @38 /* Bueno, lo cierto es que soy bastante reacio a compartir el camino con un usuario m�gico. */
== BNEERA @39 /* No digas, Dusk. Verte interrumpir conjuros ajenos con tu bast�n no me ha hecho sospechar para nada. */
== P_BDusk @40 /* S�, bueno-- */
== BNEERA @41 /* Ni tampoco he sospechado cuando has cercenado las manos de chamanes trasgos u orcos con tu espada bastarda. No, para nada. */
== P_BDusk @42 /* *carraspeo* Entiendo tu punto... */
== BNEERA @43 /* Y yo te soy sorprendente porque no soy alguien que es claramente malvado o que merezca la ira de tu venganza y-- */
== P_BDusk @44 /* �Ya, ya! *suspiro* Oh, hum, parece ser que <CHARNAME> me est� llamando. */
== BNEERA @12 /* �En serio? No he escuchado nada. */
== P_BDusk @13 /* S�, bueno, ya sabes c�mo se pone cuando no le hacen caso. Hablaremos en otra ocasi�n, �s�? */
== BNEERA @14 /* �De acuerdo, Dusk! Siempre es un placer hablar contigo. */
== P_BDusk @15 /* Hm, s�... lo mismo... digo... */
EXIT



// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskNeeraToB1","GLOBAL",0)~ THEN P_BDus25 P_DuskNeeraToB1
@62 /* Neera, no estoy seguro de que necesite tus conjuros de protecci�n. */
DO ~SetGlobal("P_DuskNeeraToB1","GLOBAL",1)~
== BNEERA25 @63 /* �Por qu� lo dices, Dusk? */
== P_BDus25 @64 /* Hm... pues, a veces siento... efectos secundarios al cabo de un tiempo. */
== BNEERA25 @65 /* Oh, no me digas que has comenzado a oler como una vaca. */
== P_BDus25 @66 /* �C�mo una qu�? No, no es eso. A veces, mi voz suena algo... diferente. Como si de un gnomo af�nico se tratase. */
== BNEERA25 @67 /* Ha, ya veo. �Por eso es que me ignorabas el otro d�a cuando te ped�a que compartieras tus galletas? */
== P_BDus25 @68 /* Ehm... *carraspeo* S�, as� es. */
== BNEERA25 @69 /* Bueno, Dusk. Lo lamento. Pero a veces, en el fragor del combate, una se olvida que puede lanzar un conjuro de �rea. */
== P_BDus25 @70 /* Ya veo... *susurro* Entonces, seguir� sucediendo... Rayos... */
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskRasaad1","GLOBAL",0)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskRasaad1
@71 /* Debo decirlo, Rasaad: admiro mucho tu valor al s�lo usar tus manos y pies como armas. */
DO ~SetGlobal("P_DuskRasaad1","GLOBAL",1)~
== BRASAAD @72 /* Gracias, Dusk. Tantos a�os de entrenamiento han rendido frutos. */
== P_BDusk @73 /* As� es. La voluntad, el compromiso... son valores que pocos hombres son capaces de mantener. */
== BRASAAD @74 /* No podr�amos ser los guerreros que somos si no fu�semos capaces de poseer dichas aptitudes. Pero sabes que eso no es todo lo que se necesita, �verdad? */
== P_BDusk @75 /* Lo s�... tambi�n est� el prop�sito... algo que te lleve hacia adelante. */
== BRASAAD @76 /* Veo que nos entendemos, Dusk. */
== P_BDusk @77 /* As� es, Rasaad. Es un placer luchar al lado de alguien como t�. */
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskRasaad2","GLOBAL",0)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskRasaad2
@78 /* Admiro la voluntad que tienes de seguir adelante... me refiero a tu hermano, Rasaad.*/
DO ~SetGlobal("P_DuskRasaad2","GLOBAL",1)~
== BRASAAD @79 /* Gr-gracias, supongo. Dusk, creo que t� tambi�n sigues por alguien que ha ca�do, �no es verdad? */
== P_BDusk @80 /* Pues... s�... el recuerdo de los que ya no est�n me hacen seguir adelante... */
== BRASAAD @81 /* Yo tambi�n. Los muertos nos observan... y debemos rendir homenaje a su memoria. */
== P_BDusk @82 /* Aunque... debo admitir... que a veces cuestiono el prop�sito de la venganza... Las cosas que uno es capaz de hacer... */
== BRASAAD @83 /* A veces no te deja dormir, �eso ibas a decir? */
== P_BDusk @84 /* Me entiendes a la perfecci�n, amigo m�o. Sigamos adelante... el futuro nos espera. */
EXIT

// ToB

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskToBRasaad1","GLOBAL",0)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)
~ THEN P_BDus25 P_DuskToBRasaad1
@93 /* �Qu� opinas de nuestras aventuras, Rasaad? */
DO ~SetGlobal("P_DuskToBRasaad1","GLOBAL",1)~
== BRASAA25 @94 /* �Te refieres a los parajes a los que nos ha llevado <CHARNAME>? */
== P_BDus25 @95 /* Pues, s�. */
== BRASAA25 @96 /* Ciertamente la senda del engendro de Bhaal va m�s all� de mi comprensi�n. Despu�s de todo, soy un simple mortal. */
== P_BDus25 @97 /* Lo entiendo, pero yo me refer�a a lo f�sico. �No crees que es extra�o el Plano de Bhaal al que nos lleva a descansar? */
== BRASAA25 @98 /* Ciertamente... aunque uno llega a acostumbrarse. */
== P_BDus25 @99 /* �Eso mismo iba a decir! Uno llega a tomarle cari�o incluso. */
== BRASAA25 @100 /* Bueno, no s� si lo dir�a de esa forma *r�e*. */
EXIT


// WILSON J

I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES3_WIL
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @199 /* (Wilson mueve sus orejas, demostrando confusi�n ante el chiste de <CHARNAME>) */
END

I_C_T P_DUSKJ 84 P_Dusk_Mission2_Decision_WIL
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @201 /* (Gru�ido, resoplido) */
== P_DuskJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @202 /* �Qu� dices, Wilson? �Quieres devorarte a la gnoll? */
== p_ziben IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @203 /* *gru�ido* Ser� mejor que calmes a tu pulgoso amigo, soldado. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @204 /* (Gru�ido, lamento) */
== P_DuskJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @205 /* Tranquilo, Wilson, tranquilo... aguarda un instante... en tan s�lo un momento veremos c�mo se resuelve esto... */
END

I_C_T NEEBER 10 P_DuskNEEBER8
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @206 /* (Gru�ido) (Ves c�mo Wilson muestra los dientes a Niber) */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @207 /* Rayos, Wilson. *Mira para todos lados* Por favor, no vayas a comerte a este individuo. */
END

I_C_T PPCOWLED 1 P_DuskPPCOWLED1
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @208 /* (Lamento) (Ves c�mo Wilson baja sus orejas, visiblemente asustado, aunque no entiendes por qu�) */
END

I_C_T PPSAEM3 55 P_DuskPPSAEM355
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @209 /* (Gru�ido) (Claramente, Wilson estar�a m�s que dispuesto a devorarse a Saemon) */
END

I_C_T C6ELHAN2 8 P_DuskC6ELHAN28
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @210 /* (Bufido) (Al parecer, Wilson parece incr�dulo al ver el fr�o recibimiento de los elfos) */
END