// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskDorn1","GLOBAL",0)~ THEN BDORN P_DuskDorn1
@0 /* Eres un ser extraño, Dusk. He llegado a preguntarme acerca de tus habilidades naturales. */
DO ~SetGlobal("P_DuskDorn1","GLOBAL",1)~
== P_BDusk @1 /* ¿Te refieres a la resistencia mágica? */
== BDORN @2 /* Ajá... tus habilidades en el campo de batalla no son la gran cosa. Sin embargo, me llama la atención que un humano pueda obtener dicha... característica. */
== P_BDusk @3 /* Bueno... pues... es algo que se logra con mucho entrenamiento... y sobretodo: dolor. */
== BDORN @4 /* Interesante. Quizás podamos hablar de esto más adelante. */
== P_BDusk @5 /* Quizás, Dorn.... quizás... */
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskDorn2","GLOBAL",0)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskDorn2
@6 /* Tus habilidades en combate son increíbles, Dorn. Tu sed por sangre, también lo es. A decir verdad, asusta un poco. */
DO ~SetGlobal("P_DuskDorn2","GLOBAL",1)~
== BDORN @7 /* Clamar por sangre es algo natural para los Guardias Negros, Dusk. */
== P_BDusk @8 /* ¿No te cansas de ello?, ¿no ansías una vida de paz? */
== BDORN @9 /* ¿Paz? Eso es sólo un cuento, muchacho. La guerra es mucho más atractiva. El universo está en completo caos, todo el tiempo. */
== P_BDusk @10 /* Puede que así lo sea... Es algo desesperanzador, ¿no lo crees? */
== BDORN @11 /* La verdad suele serlo. No tiene por qué agradarte. */
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
== BDORN25 @21 /* ¡Ja! Es verdad... Tus ideales cormyreanos ciertamente son algo a erradicar. */
== P_BDus25 @22 /* Vaya, la amabilidad se ha acabado rápido, ¿eh? */
== BDORN25 @23 /* Estoy siendo amable, muchacho. Deberías apreciarlo. */
== P_BDus25 @24 /* Tienes razón... ¡Qué rudo de mi parte! */
EXIT

// Hexxat

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskHexxat1","GLOBAL",0)~ THEN BHEXXAT P_DuskHexxat1
@25 /* ¿Qué sucede, Dusk? Te ves incómodo... ¿Acaso... es mi presencia? */
DO ~SetGlobal("P_DuskHexxat1","GLOBAL",1)~
== P_BDusk @26 /* Los muertos vivientes han sido mis enemigos naturales durante mucho tiempo. Que no haga nada al respecto con tu... "presencia", es sólo debido a mi respeto por <CHARNAME>. */
== BHEXXAT @27 /* Una lástima... me gustaría ver de qué eres capaz... */
== P_BDusk @28 /* No tientes tu suerte, demonio... */
EXIT

// ToB

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskToBHexxat1","GLOBAL",0)~ THEN BHEXXA25 P_DuskToBHexxat1
@29 /* ¿Y, Dusk? Aún no te has acostumbrado a mí, ¿verdad? */
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
== BNEERA @33 /* *ejem* ¿Qué? No me digas... ¿qué hice ahora? */
== P_BDusk @34 /* Oh, nada, es sólo una expresión, nada en concreto. */
== BNEERA @35 /* ¡Dusk! Está mal andar asustando a la gente, ¿sabes? */
== P_BDusk @36 /* Bueno, no era mi intención, yo-- */
== BNEERA @37 /* ¿Y bien? Soy sorprendente (eso ya lo sabía), pero ¿por qué lo has dicho? */
== P_BDusk @38 /* Bueno, lo cierto es que soy bastante reacio a compartir el camino con un usuario mágico. */
== BNEERA @39 /* No digas, Dusk. Verte interrumpir conjuros ajenos con tu bastón no me ha hecho sospechar para nada. */
== P_BDusk @40 /* Sí, bueno-- */
== BNEERA @41 /* Ni tampoco he sospechado cuando has cercenado las manos de chamanes trasgos u orcos con tu espada bastarda. No, para nada. */
== P_BDusk @42 /* *carraspeo* Entiendo tu punto... */
== BNEERA @43 /* Y yo te soy sorprendente porque no soy alguien que es claramente malvado o que merezca la ira de tu venganza y-- */
== P_BDusk @44 /* ¡Ya, ya! *suspiro* Oh, hum, parece ser que <CHARNAME> me está llamando. */
== BNEERA @12 /* ¿En serio? No he escuchado nada. */
== P_BDusk @13 /* Sí, bueno, ya sabes cómo se pone cuando no le hacen caso. Hablaremos en otra ocasión, ¿sí? */
== BNEERA @14 /* ¡De acuerdo, Dusk! Siempre es un placer hablar contigo. */
== P_BDusk @15 /* Hm, sí... lo mismo... digo... */
EXIT



// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskNeeraToB1","GLOBAL",0)~ THEN P_BDus25 P_DuskNeeraToB1
@62 /* Neera, no estoy seguro de que necesite tus conjuros de protección. */
DO ~SetGlobal("P_DuskNeeraToB1","GLOBAL",1)~
== BNEERA25 @63 /* ¿Por qué lo dices, Dusk? */
== P_BDus25 @64 /* Hm... pues, a veces siento... efectos secundarios al cabo de un tiempo. */
== BNEERA25 @65 /* Oh, no me digas que has comenzado a oler como una vaca. */
== P_BDus25 @66 /* ¿Cómo una qué? No, no es eso. A veces, mi voz suena algo... diferente. Como si de un gnomo afónico se tratase. */
== BNEERA25 @67 /* Ha, ya veo. ¿Por eso es que me ignorabas el otro día cuando te pedía que compartieras tus galletas? */
== P_BDus25 @68 /* Ehm... *carraspeo* Sí, así es. */
== BNEERA25 @69 /* Bueno, Dusk. Lo lamento. Pero a veces, en el fragor del combate, una se olvida que puede lanzar un conjuro de área. */
== P_BDus25 @70 /* Ya veo... *susurro* Entonces, seguirá sucediendo... Rayos... */
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskRasaad1","GLOBAL",0)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskRasaad1
@71 /* Debo decirlo, Rasaad: admiro mucho tu valor al sólo usar tus manos y pies como armas. */
DO ~SetGlobal("P_DuskRasaad1","GLOBAL",1)~
== BRASAAD @72 /* Gracias, Dusk. Tantos años de entrenamiento han rendido frutos. */
== P_BDusk @73 /* Así es. La voluntad, el compromiso... son valores que pocos hombres son capaces de mantener. */
== BRASAAD @74 /* No podríamos ser los guerreros que somos si no fuésemos capaces de poseer dichas aptitudes. Pero sabes que eso no es todo lo que se necesita, ¿verdad? */
== P_BDusk @75 /* Lo sé... también está el propósito... algo que te lleve hacia adelante. */
== BRASAAD @76 /* Veo que nos entendemos, Dusk. */
== P_BDusk @77 /* Así es, Rasaad. Es un placer luchar al lado de alguien como tú. */
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
== BRASAAD @79 /* Gr-gracias, supongo. Dusk, creo que tú también sigues por alguien que ha caído, ¿no es verdad? */
== P_BDusk @80 /* Pues... sí... el recuerdo de los que ya no están me hacen seguir adelante... */
== BRASAAD @81 /* Yo también. Los muertos nos observan... y debemos rendir homenaje a su memoria. */
== P_BDusk @82 /* Aunque... debo admitir... que a veces cuestiono el propósito de la venganza... Las cosas que uno es capaz de hacer... */
== BRASAAD @83 /* A veces no te deja dormir, ¿eso ibas a decir? */
== P_BDusk @84 /* Me entiendes a la perfección, amigo mío. Sigamos adelante... el futuro nos espera. */
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
@93 /* ¿Qué opinas de nuestras aventuras, Rasaad? */
DO ~SetGlobal("P_DuskToBRasaad1","GLOBAL",1)~
== BRASAA25 @94 /* ¿Te refieres a los parajes a los que nos ha llevado <CHARNAME>? */
== P_BDus25 @95 /* Pues, sí. */
== BRASAA25 @96 /* Ciertamente la senda del engendro de Bhaal va más allá de mi comprensión. Después de todo, soy un simple mortal. */
== P_BDus25 @97 /* Lo entiendo, pero yo me refería a lo físico. ¿No crees que es extraño el Plano de Bhaal al que nos lleva a descansar? */
== BRASAA25 @98 /* Ciertamente... aunque uno llega a acostumbrarse. */
== P_BDus25 @99 /* ¡Eso mismo iba a decir! Uno llega a tomarle cariño incluso. */
== BRASAA25 @100 /* Bueno, no sé si lo diría de esa forma *ríe*. */
EXIT


// WILSON J

I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES3_WIL
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @199 /* (Wilson mueve sus orejas, demostrando confusión ante el chiste de <CHARNAME>) */
END

I_C_T P_DUSKJ 84 P_Dusk_Mission2_Decision_WIL
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @201 /* (Gruñido, resoplido) */
== P_DuskJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @202 /* ¿Qué dices, Wilson? ¿Quieres devorarte a la gnoll? */
== p_ziben IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @203 /* *gruñido* Será mejor que calmes a tu pulgoso amigo, soldado. */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @204 /* (Gruñido, lamento) */
== P_DuskJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @205 /* Tranquilo, Wilson, tranquilo... aguarda un instante... en tan sólo un momento veremos cómo se resuelve esto... */
END

I_C_T NEEBER 10 P_DuskNEEBER8
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @206 /* (Gruñido) (Ves cómo Wilson muestra los dientes a Niber) */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @207 /* Rayos, Wilson. *Mira para todos lados* Por favor, no vayas a comerte a este individuo. */
END

I_C_T PPCOWLED 1 P_DuskPPCOWLED1
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @208 /* (Lamento) (Ves cómo Wilson baja sus orejas, visiblemente asustado, aunque no entiendes por qué) */
END

I_C_T PPSAEM3 55 P_DuskPPSAEM355
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @209 /* (Gruñido) (Claramente, Wilson estaría más que dispuesto a devorarse a Saemon) */
END

I_C_T C6ELHAN2 8 P_DuskC6ELHAN28
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @210 /* (Bufido) (Al parecer, Wilson parece incrédulo al ver el frío recibimiento de los elfos) */
END