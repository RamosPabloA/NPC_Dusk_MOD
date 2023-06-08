// Banter File

BEGIN P_BDusk 

// AERIE ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskAerie1","GLOBAL",0)~ THEN P_BDusk P_DuskAerie1
@0 /* *Se queda un largo rato mirando a Aerie* */
DO ~SetGlobal("P_DuskAerie1","GLOBAL",1)~
== BAERIE @1 /* �Dusk! �Te he visto! �P-por qu� me miras tan fijamente? */
== P_BDusk @2 /* Lamento si te he incomodado, Aerie... e-es s�lo que m-me recuerdas a... */
== BAERIE @3 /* �Oh, vaya! �El gran Dusk tartamudeando? *risita* */
== P_BDusk @4 /* (Rayos...) Adelante, r�ete lo que quieras. */
== BAERIE @5 /* �Y te has sonrojado! *risa* Oh, lo lamento, Dusk. No pretend�a burlarme de ti. Dime, �a qui�n te recuerdo? */
== P_BDusk @6 /* *sonr�e* Quiz�s te lo cuente en otra ocasi�n, peque�a. Por ahora, continuemos con el viaje. */
EXIT



// ANOMEN NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_Duskomen1","GLOBAL",0)~ THEN P_BDusk P_Duskomen1
@7 /*Debo decirlo, Anomen... me da una cierta tranquilidad el hecho de que Tethyr no haya ido en guerra contra Amn... No hubiera querido tenerte de enemigo en el campo de batalla. */
DO ~SetGlobal("P_Duskomen1","GLOBAL",1)~
== BANOMEN @8 /* La paz entre ambas naciones parece mantenerse. Sin embargo, entiendo a lo que te refieres. Tampoco querr�a tener que despachar a alguien que lucha por lo que es justo. */
== P_BDusk @9 /* O ser despachado, �no? */
== BANOMEN @10 /* �Ja! Eres descarado, muchacho. Quiz�s debamos ponernos a prueba y ver qu� es lo que pasa. Aunque para m�, el resultado es obvio. */
== P_BDusk @11 /* Quiz�s, Anomen. Quiz�s... Pero algo me dice que no te quedar�a otra opci�n m�s que acudir a las plegarias de Helm, porque el resultado podr�a no ser tan obvio como crees... */
EXIT



// CERND DUSK GOOD

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskCernd1","GLOBAL",0)~ THEN BCERND P_DuskCernd1
@12 /* Dusk, no he podido evitar ver que tienes un profundo aprecio por la naturaleza. Sin embargo, pareces m�s un hombre de ciudad. */
DO ~SetGlobal("P_DuskCernd1","GLOBAL",1)~
== P_BDusk @13 /* Tengo un amor especial por las costumbres �lficas. Puede que sea eso a lo que te refieres. */
== BCERND @14 /* Ciertamente, los elfos tienen una conexi�n especial con los bosques y los animales, pero no es algo que sea de su exclusiva pertenencia. */
== BCERND @899 /*Los humanos hemos sido primitivos durante milenios, incluso antes que los elfos. Nuestra conciencia de existencia no estaba desarrollada como la de nuestros hermanos elfos, pero ten�amos algo innato que ellos tambi�n tienen. */
== P_BDusk @15 /* Una conexi�n con la tierra, los mares y los cielos. Sentidos que ten�amos y que perdimos con el paso de los tiempos. */
== P_BDusk @901 /* Y ahora estamos atrapados en la red de existencia, junto a las plantas y los animales, as� como con el resto de los seres pensantes. */
== BCERND @16 /* Cierto. Es por ello que algunos humanos hacemos lo posible por recuperar esos sentidos, pese a nuestra corta existencia. */
== P_BDusk @17 /* Una corta existencia, como la luz de una estrella fugaz que cruza el firmamento y se pierde en la noche, como l�grimas de un ni�o. */
== BCERND @18 /* Realmente es un placer hablar con alguien que entiende de estas cosas, Dusk. Me alegra que podamos viajar juntos. */
== P_BDusk @902 /* El placer es m�o, Cernd. */
EXIT

// EDWIN NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskEdwin1","GLOBAL",0)~ THEN P_BDusk P_DuskEdwin1
@19 /* �Te lo advierto, mago! Debes ser m�s cuidadoso con tus conjuros. */
DO ~SetGlobal("P_DuskEdwin1","GLOBAL",1)~
== BEDWIN @20 /* �Me hablas a m�, hombrecito? �Qu� descarado de tu parte en exigirme eso! �Quiz�s temes a que una bola de fuego te alcance, digamos, "accidentalmente"? */
== P_BDusk @21 /* No te confundas, Odesseiron. No temo a tus conjuros. Me refiero a los inocentes que puedan caer por causa de tu insensatez. */
== P_BDusk @22 /* No tienes conciencia del alcance y del da�o del que eres capaz de provocar. */
== BEDWIN @23 /* �Conciencia? (�Pero de qu� habla este primate?) �Hmpf! Mira, hombre de hojalata, s� muy bien lo que hago. Yo- */
== P_BDusk @24 /* Eso es todo lo que tengo para decirte. Me alegra que hayamos aclarado las cosas. */
== BEDWIN @25 /* ��Q-qu�?! (�El desvergonzado me interrumpe?) */
== BEDWIN @1032 /* �Hmpf! (Quiz�s intente, despu�s de todo, arrojarle una bola de fuego a ver si lo resiste...) */
EXIT




// Haer-Dalis NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskHaerDalis1","GLOBAL",0)~ THEN BHAERDA P_DuskHaerDalis1
@26 /* �Hola, canario! �Est�s de �nimo para que cantemos una serenata? Adem�s de parecer ser un guerrero, mi coraz�n me dice que eres tambi�n un poeta. */
DO ~SetGlobal("P_DuskHaerDalis1","GLOBAL",1)~
== P_BDusk @27 /* �Canario? */
== BHAERDA @28 /* �No te gusta? Me suenas a un canario, lord. Pero, si no te gusta, el otro pajarillo al que me recuerdas es a un chotacabras. */
== BHAERDA @1033 /* �Prefieres que te llame chotacabras, lord? */
== P_BDusk @29 /*Hmmm... creo que prefiero "canario". */
== BHAERDA @30 /* �Canario ser� entonces! Cuervos divinos y canarios tristes. Este grupo es de los m�s variopinto. */
== BHAERDA @1034 /* Y... �qu� me dices? �Es un buen momento para estar vivo! �Comenzamos la serenata? */
== P_BDusk @31 /* *carraspeo* Quiz�s... quiz�s en otro momento, compa�ero. */
EXIT





// Imoen ALL

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskImoen1","GLOBAL",0)~ THEN P_BDusk P_DuskImoen1
@32 /* Hmmm... �qu� extra�o! Cre� que hab�a dejado aqu� mi bolso con galletas. */
DO ~SetGlobal("P_DuskImoen1","GLOBAL",1)~
== IMOEN2J @33 /* �Est�s seguro? Hay muchos roedores por aqu�, puede que alg�n h�mster lo haya tomado prestado. */
== BMINSC IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @1043 /* �Oigan, Bub� pregunta por qu� lo miran fijamente! */
== P_BDusk @34 /* �Tomado prestado? Pues no cre-... Oye... un momento. �Tienes migajas en tus mejillas! */
== IMOEN2J @35 /* ��Qu�?! Dusk, es de mala educaci�n mirar fijamente las mejillas de una dama. */
== P_BDusk @36 /* �Mala educaci�n? Pues lo siento, es que yo... */
== P_BDusk @1044 /* �Oye, no intentes zafar de esto, peque�a! Si tanto quer�as mis galletas, s�lo bastaba con pedirlas. */
== IMOEN2J @37 /* Oh, �de verdad? Pues gracias, Dusk. (Supongo que no le molestar� que haya tomado prestada su bolsa de caramelos) */
EXIT



// JAHEIRA ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\


CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskJaheira1","GLOBAL",0)~ THEN BJAHEIR P_DuskJaheira1
@38 /* Dusk, veo algo en tus ojos. Una especie de deseo. �O acaso estoy equivocada? */
DO ~SetGlobal("P_DuskJaheira1","GLOBAL",1)~
== P_BDusk @39 /* Puede que veas algo en m� que tambi�n te identifica a ti, Jaheira. */
== BJAHEIR @40 /* Has perdido, tambi�n, a alguien querido, �no? No comienzo esta charla para hablar de detalles, Dusk... es s�lo que... */
== P_BDusk @44 /* Lo entiendo, Jaheira. A veces es dif�cil hablar de estas situaciones. M�s a�n para nosotros, que dif�cilmente expresamos lo que sentimos. */
== BJAHEIR @45 /* No al menos en palabras... creo que expresamos demasiado, amigo m�o. Ya sea en una caminata o en el campo de batalla. */
== P_BDusk @46 /* As� es, mi dama. Y debemos seguir adelante, �no? Sin importar qu�... seguir adelante... */
== P_BDusk @41 /* Por los ca�dos... */
== BJAHEIR @1045 /* Por los ca�dos...  */
EXIT


// JAN ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskJan1","GLOBAL",0)~ THEN BJAN P_DuskJan1
@47 /* �Oye, grandote! */
DO ~SetGlobal("P_DuskJan1","GLOBAL",1)~
== P_BDusk @48 /* �Grandote? */
== BJAN @49 /* Vi c�mo observabas mi bolsa de nabos. En casa eso siempre es motivo de charla. */
== P_BDusk @50 /* �Tu bolsa de qu�? */
== BJAN @51 /* Una vez, t�o Gerardo se qued� mirando fijo la bolsa de patata durante tres d�as seguidos. Por un momento cre�mos que estaba a dieta, porque s�lo miraba y no quer�a comer o cocinar y eso mam� Jansen no lo permite. As� que al cuarto d�a, mam� decidi� tocarle el hombro para ponerlo a trabajar en la cocina. En ese momento peg� un salto de tres metros. Resulta ser que estaba dormido. Hab�a estado haciendo experimentos con brebajes mezclados con transpiraci�n de sapo y jugo de cebollas, mezclado con un par de conjuraciones gn�micas. Primero estuvo muy asustado, luego cay� en la cuenta de que el brebaje no hab�a resultado. */
== P_BDusk @52 /* Esto... no s� si preguntar por qu� no result�... */
== BJAN @53 /* Pues, Dusk, es obvio. Ese tipo de brebajes tiene que ponerte a dormir con los ojos abiertos durante cinco d�as, no cuatro. Por el trasero sagrado de un mono, Dusk. No puedo estar todo el d�a disponible para ense�arte cosas. Debes madurar y aprender el valor de los brebajes gn�micos. Especialmente si hablamos del t�o Gerardo. */
== P_BDusk @1046 /* Ehm... De acuerdo, Jan. Lo tendr� en cuenta. */
== BJAN @1047 /* As� me gusta, grandote, as� me gusta. Ha sido un placer hablar de negocios contigo. La pr�xima vez, si quieres que continuemos, vuelve a mirar mi bolsa de nabos, �s�? */
== P_BDusk @1048 /* Oh, no te preocupes, gnomo. Despu�s de todo, tu bolsa de nabos est� ah� siempre... a la vista de todos... */
EXIT


// KELDORN NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\


CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskKeldorn1","GLOBAL",0)~ THEN BKELDOR P_DuskKeldorn1
@54 /* Tus habilidades en el campo de batalla son admirables, muchacho. Y luchas con honor. Si fuera m�s joven, te tomar�a como pupilo para que seas un digno caballero de la Noble Orden. */
DO ~SetGlobal("P_DuskKeldorn1","GLOBAL",1)~
== P_BDusk @55 /* Sir Keldorn, es un honor luchar a tu lado. Con gusto habr�a aceptado la oferta. Pero la vida ha querido que nuestros caminos se cruzasen m�s tarde que temprano. */
== BKELDOR @56 /* Es cierto, querido amigo. Tu deber con Tethyr es admirable. Pero debo preguntar, �por qu� has declinado de tus deberes? */
== P_BDusk @57 /* Durante a�os hemos combatido las fuerzas de Zentharim. Durante a�os hemos resistido. Y por si fuera poco, las tensiones con Amn crec�an. */
== P_BDusk @58 /* Con la ayuda de los elfos de Weldath, logramos forzar las relaciones aqu�, pese a que digan lo contrario. */
== P_BDusk @59 /* Pero... como sabr�s, algunos canallas se ven beneficiados con la guerra... y hemos tenido varios oponentes en las sombras que tuvimos que soportar... No sin p�rdidas... */
== BKELDOR @60 /* Entiendo, Dusk... puedo estimar que has perdido a alguien querido en una de esas escaramuzas. */
== P_BDusk @61 /* As� es... y es algo que preferir�a no hablar. Luego de cumplir con mi misi�n... simplemente me alej�... y el destino ha querido que Athkatla haya sido el lugar en que conoc� a <CHARNAME> e Irenicus. */
== P_BDusk @1049 /* Y el resto es historia, mi se�or... */
== BKELDOR @62 /* Ya veo... Dusk, procurar� seguir a tu lado y brindarte toda la ayuda posible. Puede que tus deseos personales no est�n claros, pero al menos tu coraz�n es loable. */
== P_BDusk @1050 /* Ser� un gran honor, sir Keldorn. */
EXIT

// KORGAN ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskKorgan1","GLOBAL",0)~ THEN P_BDusk P_DuskKorgan1
@63 /* Nunca tuve el placer de combatir al lado de un enano. Debo decir que no decepcionas a tu raza guerrera, Korgan. */
DO ~SetGlobal("P_DuskKorgan1","GLOBAL",1)~
== BKORGAN @64 /* �Ja! Gracias, patas flacas. Debo decir que tampoco lo haces mal, pese a que manejes un palito. */
== P_BDusk @65 /* �Je! Viniendo de ti es un halago, piernas gordas. */
== BKORGAN @66 /* �Pues, claro! He visto c�mo destripas con placer a los asquerosos magos. Mi parte favorita es cuando usas la espada bastarda. Un arma bastarda, para un bastardo habilidoso. */
== P_BDusk @67 /* La espada es una de mis armas favoritas. Aunque entiendo el valor del bast�n y su da�o contundente es mort�fero. */
== BKORGAN @68 /* Pues, no hay nada como una buena hacha. Podr�amos seguir hablando sobre qu� o qui�n es mejor, o podr�amos tomarnos una cervezas y ver si nos cruzamos con alg�n dulce trasero de enana. */
== P_BDusk @1051 /* Creo que me quedo con la opci�n de la cerveza. Y podemos disfrutar un poco del aire fresco, de paso. */
EXIT



// MAZZY NEUTRAL-GOOD

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskMazzy1","GLOBAL",0)~ THEN P_BDusk P_DuskMazzy1
@69 /* Lady Fentan, d�jeme expresar mi gran admiraci�n por su valent�a en el campo de batalla. Es un honor pelear a su lado. */
DO ~SetGlobal("P_DuskMazzy1","GLOBAL",1)~
== BMAZZY @70 /* �Lady? Me halagas, Dusk. Pero puedes llamarme Mazzy, como lo hacen todos mis amigos. */
== P_BDusk @71 /* De acuerdo, ser� Mazzy entonces. */
== BMAZZY @72 /* �S� que eres obediente! Ser�as un gran escudero. */
== P_BDusk @73 /* �Escudero? �no crees que apuntar�a a algo m�s alto?*/
== P_BDusk @1052 /* Hmpf, perd�n, no dije la palabra "alto" con �nimos de ofender. */
== BMAZZY @74 /* �Vaya, vaya! Esa cortes�a desaparece r�pidamente cuando agarras confianza. Eso me gusta, Dusk. Eso me gusta. */
EXIT



// MINSC NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\


CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskMinsc1","GLOBAL",0)~ THEN P_BDusk P_DuskMinsc1
@75 /* Minsc, tu fuerza de voluntad me sorprende. �Cu�l es tu secreto? */
DO ~SetGlobal("P_DuskMinsc1","GLOBAL",1)~
== BMINSC @76 /* Hmmm... esas preguntas ser�n mejor respondidas por un sabio, �no es as�, Bub�? */
== BMINSC @77 /* Bub� dice que Minsc obtiene su fuerza de voluntad a partir de un deseo por patear traseros malvados. */
== P_BDusk @78 /* Ah... Bub�, �eh? Es un h�mster muy valiente el que tienes all�. */
== BMINSC @79 /* Bub� no es mi mascota, Dusk. Es mi amigo. Es un h�mster gigante que vino del espacio. Pese a ser gigante, es muy �gil. */
== P_BDusk @80 /* (Pues no me parece muy gigante a mi parecer) */
== BMINSC @81 /* Bub� pregunta qu� es lo que murmuras, buen Dusk. */
== P_BDusk @82 /* Ehm... que Bub� parece tan fuerte que no querr�a que fuese a por mis ojos. */
== BMINSC @83 /* �Oh, no te preocupes, Dusk! Con Bub� hemos visto que tienes un buen coraz�n y seremos camaradas de batalla durante el tiempo que viajemos juntos. */
== P_BDusk @84 /* Me alegra escuchar eso. */
EXIT






// NALIA NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskNalia1","GLOBAL",0)~ THEN BNALIA P_DuskNalia1
@85 /* Dusk, <CHARNAME> me ha comentado que le has conocido en el Paseo de Waukin, �es as�? */
DO ~SetGlobal("P_DuskNalia1","GLOBAL",1)~
== P_BDusk @86 /* Lady De'Arnise, �as� que usted anda preguntando sobre m�, importunando a nuestro descendiente de Bhaal?~ ~Lady De'Arnise, �as� que usted anda preguntando sobre m�, importunando a nuestra descendiente de Bhaal? */
== BNALIA @87 /* *carraspeo* Perd�n, Dusk. No pretend�a inmiscuirme- */
== P_BDusk @88 /* �Ja! Lo lamento, Nalia. S�lo estaba bromeando. No me molesta en absoluto que preguntes sobre mis asuntos. En el peor de los casos, obtendr�as una negativa de mi parte. */
== BNALIA @89 /* �Eres un atrevido! Pero, dejando de lado tu desfachatez, har� caso a lo que dices y preguntar�. �Qu� hac�as all�? */
== P_BDusk @90 /* Luego de que termin� mis servicios con Tethyr, decid� venir a la tierra de los mercaderes. Bien podr�a haber ido a Caravasar, pero por alguna raz�n, Athkatla llam� mi atenci�n. */
== P_BDusk @1053 /* Debo confesar que el comercio es algo que me interesa. Una vida simple que quiz�s alg�n d�a lleve a cabo. */
== BNALIA @1055 /* �De verdad? No te hac�a un comerciante, Dusk. Pareces m�s un... */
== P_BDusk @1056 /* �Guerrero? �Caballero? */
== BNALIA @1057 /* Iba a decir mozo de cuadra. */
== P_BDusk @1058 /* �Rayos, lady De'Arnise! Ha pegado justo en el orgullo. */
== BNALIA @1059 /* Te lo tienes merecido por querer pasarte de listo, hombre. Pero al menos has sido sincero en tu respuesta. */
EXIT 


// VALYGAR NEUTRAL-GOOD

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskValygar1","GLOBAL",0)~ THEN BVALYGA P_DuskValygar1
@91 /* Dusk, te he estado observando durante un tiempo. Me gustar�a preguntarte algo, si no te molesta. */
DO ~SetGlobal("P_DuskValygar1","GLOBAL",1)~
== P_BDusk @92 /* Dime, amigo m�o, �en qu� puedo ayudarte? */
== BVALYGA @93 /* Tu... condici�n, de Asesino de Magos... me intriga. Tengo entendido que has pasado algunos a�os entren�ndote... Resistir conjuros de forma natural es algo formidable, pero me pregunto, �c�mo lo has logrado? */
== P_BDusk @94 /* Hmm... veo ad�nde quieres llegar, Valygar... S� que no eres un necio y que no ignoras hechos relacionados a la magia... S� que sabes que los Asesinos de Magos que no han sido entrenados en las tribus del norte suelen tener intenciones... oscuras. */
== BVALYGA @95 /* Lo s�, Dusk... es por eso que te pregunto: �c�mo es posible que seas un defensor de la justicia cuando has sido entrenado por una secta mal�fica? */
== BVALYGA @1060 /* No confundas mis interrogantes con malicia, pues tengo el juicio lo suficientemente claro como para saber que no eres un farsante... es s�lo que... */
== P_BDusk @96 /* Sientes curiosidad, �eh? Como todo... hechicero... */
== BVALYGA @97 /* Una afirmaci�n justa... y merecida, me temo. */
== P_BDusk @98 /* Mi intenci�n no era ofenderte, amigo. S� que aborreces la magia, tanto o m�s que yo. Por ello tambi�n puedo identificar que tienes muchos puntos en com�n con aquellos que tanto odias... */
== P_BDusk @1061 /* "Hay que tener cuidado a la hora de elegir a los enemigos... porque uno tiende a parecerse a ellos." dijo un sabio. */
== P_BDusk @1062 /* Con el debido tiempo volveremos a hablar del tema, Valygar... pero no ahora... no ahora... */
== BVALYGA @1063 /* Es lo justo, creo. Continuaremos esto en otro momento, Dusk. */
DO ~SetGlobal("P_DuskValygar1","GLOBAL",2)~
EXIT
 
 


// VICONIA ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskViconia1","GLOBAL",0)~ THEN P_BDusk P_DuskViconia1
@99 /* Durante las noches percibo tu mirada, Viconia... �hay algo que deba saber? */
DO ~SetGlobal("P_DuskViconia1","GLOBAL",1)~
== BVICONI @100 /* �De verdad, abbil? Puede que s�lo sea lujuria, �no crees? */
== P_BDusk @101 /* Hm. Creo que ocultas tus verdaderas intenciones, drow. Sin embargo, no es algo que me moleste. Tus asuntos son s�lo de tu incumbencia. */
== BVICONI @102 /* En eso tienes raz�n, hombrecillo. Aunque, no deber�as tomar tan a la ligera mis palabras. Puede que te observe durante las noches porque deseo sentir tu sangre entre mis dedos. Siempre quise probar a un Asesino de Magos. */
== P_BDusk @103 /* �Deber�a sentirme amenazado? Pues no lo creo... no percibo odio en tus palabras. */
== BVICONI @104 /* Puede que no, rivvil... pero que no te quepan dudas que eso puede cambiar en cualquier momento... Por ahora... simplemente disfruta cuando percibas mi mirada en tu cuerpo. No tienes nada que perder... a�n... */
EXIT




// YOSHIMO ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\


CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskYoshimo1","GLOBAL",0)~ THEN P_BDusk P_DuskYoshimo1
@105 /* Odio admitirlo, Yoshimo... pero eres todo un misterio. */
DO ~SetGlobal("P_DuskYoshimo1","GLOBAL",1)~
== BYOSHIM @106 /* �Un misterio, dices? Los misterios relumbran durante el mediod�a como estrellas, aunque no seas capaz de verlas por el sol. Espero que hables del buen Yoshimo con buena intenci�n, amigo m�o. */
== P_BDusk IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @1091 /* No me interesa si te ofendo, ladr�n. Percibo que sueles actuar con dudas, pese a que tu actitud demuestre lo contrario. */
== P_BDusk IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @107 /* Oh, no pretend�a ofenderte, compa�ero. Es s�lo que percibo que sueles actuar con dudas, pese a que tu actitud demuestre lo contrario. */
== BYOSHIM @108 /* Las dudas son algo natural, incluso en aquellos que tienen confianza en demas�a. Yo mismo he visto que t� dudas, Dusk. �Qu� es lo que opinas al respecto? */
== P_BDusk @109 /* Ciertamente eres inteligente... intentas desviar la atenci�n pos�ndola en el receptor... Pero supongo que tendr�s tus secretos, as� como yo tengo los m�os. */
== BYOSHIM @110 /* Pues s�... todo guerrero que ha visto demasiado en el campo de batalla los tiene... y s�lo a veces se desvelan en la vigilia del sue�o. */
== P_BDusk @111 /* En los sue�os, �eh? Pues, supongo, que deberemos tener cuidado, incluso cuando so�emos... No vaya a ser que nos sorprenda la verdad, �no lo crees? */
== BYOSHIM @112 /* Pues a Yoshimo no lo sorprender� nada ni nadie, mi querido Dusk. Siempre suele ser Yoshimo quien sorprende a los dem�s... */
EXIT



// AERIE 2 NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskAerie1","GLOBAL",1)
Global("P_DuskAerie1GOOD","GLOBAL",0)~ THEN P_BDusk P_DuskAerie1GOOD
@1005 /* Aerie, �recuerdas cuando me preguntaste a quien me recordabas? */
DO ~SetGlobal("P_DuskAerie1GOOD","GLOBAL",1)~
== BAERIE @1006 /* Dusk, claro que lo recuerdo. �Te hab�as puesto rojo como un tomate! *risita* */
== P_BDusk @1007 /* *carraspeo* S�, bueno... me recuerdas a una elfa de Shilmista, llamada Celine. */
== BAERIE @1008 /* �Celine? Es un bello nombre. Cu�ntame sobre ella. */
== P_BDusk @1009 /* Era una feroz guerrera, h�bil en el uso del arco. Pero t� no me recuerdas a ella por tu fuerza f�sica, de la cual claramente careces. */
== BAERIE @1010 /* �Oye! (Hm... bueno, s� es cierto que deber�a hacer ejercicio) */
== P_BDusk @1011 /* No te averg�ences por ello, Aerie. T� eres inteligente y amable, y esas son las caracter�sticas que me recuerdan a Celine. */
== BAERIE @1012 /* Oh, ya veo. Y, dime, Dusk... �hace mucho tiempo que no la ves? */
== P_BDusk @1013 /* ... */
== P_BDusk @1014 /* Demasiado... m�s del que quisiera... A veces sue�o con ella. Alg�n d�a... alg�n d�a volver� a verla. */
== P_BDusk @1015 /* Ser� mejor que continuemos con el viaje. Ya sabes c�mo se pone <CHARNAME> si nos distraemos charlando. */
== BAERIE @1016 /* De acuerdo, Dusk. Pero espero con ansias que me sigas contando de ella. */
== P_BDusk @1017 /* Quiz�s, Aerie. Quiz�s... */
EXIT

// ANOMEN 2 EVIL
CHAIN
IF ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_Duskomen1EVIL","GLOBAL",0)~ THEN P_BDusk P_Duskomen1EVIL
@1000 /* Deber�as mejorar tu actitud, monje. Nunca sabes cu�ndo te cruzar�s con la persona equivocada... */
DO ~SetGlobal("P_Duskomen1EVIL","GLOBAL",1)~
== BANOMEN @1001 /* �Pero qu�-? �Muchacho! Esas insolencias puede que te cuesten caro. Yo- */
== P_BDusk @1002 /* �T� qu�? �Crees que debo temerte porque ladres constantemente tus haza�as? Te he visto en combate... y ciertamente no eres la gran cosa. */
== BANOMEN @1003 /* Si no fuera porque estoy aqu� por <CHARNAME>, te aseguro que ya te habr�a dado una lecci�n o dos. */
== P_BDusk @1004 /* �Ja! Pagar�a por verte intentarlo, monje... */
EXIT

// EDWIN 2 ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskEdwin2","GLOBAL",0)~ THEN P_BDusk P_DuskEdwin2
@113 /* Con el paso del tiempo, Edwin, debo admitir que tus habilidades son excepcionales... */
DO ~SetGlobal("P_DuskEdwin2","GLOBAL",1)~
== BEDWIN @114 /* (Hm... el primate finalmente admite mi supremac�a) �Pues, claro! Edwin Odesseiron es el terror de la Costa de la Espada, Dusk. No lo olvides. */
== P_BDusk @115 /* Sin embargo... hay algo que no me cierra... */
== BEDWIN @116 /* *ejem* �Qu� est�s insinuando? (�Por qu� me mira con esos ojos tan fr�volos? Maldito sea, quiz�s sepa mi secreto) */
== P_BDusk @117 /* Durante a�os me he enfrentado a muchos magos, invocadores, transmutadores, nigromantes... pero nadie se compara contigo en cuando a velocidad y vocalizaci�n de conjuros... */
== BEDWIN @118 /* Pues claro, es algo innato en m�. No se puede esperar otra cosa de alguien tan habili- */
== P_BDusk @119 /* �Por qu� cubres tu amuleto tan recelosamente, mi querido Edwin? No deber�as preocuparte por m�... no soy ning�n ladr�n... No tengo inter�s en tu habili- erhm, quiero decir: amuleto. *sonrisa* */
== BEDWIN @120 /* (Con un demonio, se est� burlando de m�... quiz�s deba acelerar su partida cuanto antes...) Ser� mejor que pongas tu mirada en otra cosa, hombre del palito... No vaya a ser que quieras poner a prueba mis... habilidades... */
EXIT

// VALYGAR 2 ALL

CHAIN
IF ~InParty("Valygar")
See("Valygar")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskValygar1","GLOBAL",2)
Global("P_DuskValygar2","GLOBAL",0)~ THEN P_BDusk P_DuskValygar2
@130 /* �A�n est�s interesado en saber c�mo es que termin� en esa "secta mal�fica", Valygar? */ DO ~SetGlobal("P_DuskValygar2","GLOBAL",1)~
== BVALYGA @131 /* Pues... s�, la verdad es que me interesa saberlo, Dusk. �Est�s dispuesto a hablar? */
== P_BDusk @132 /* Siempre y cuando est�s dispuesto a escuchar, amigo m�o. */
== BVALYGA @133 /* Dusk, soy todo o�dos. */
== P_BDusk @134 /* Hm... de acuerdo... No siempre detest� la magia, �sabes? No fue hasta que un traicionero hechicero arrebat� a alguien que... estimaba. */
== P_BDusk @135 /* O� rumores de un ej�rcito forjado por una aasimar en las cercan�as de Puerta de Baldur. Como debes saber, los aasimar tienen una innata resistencia a la magia debido a su descendencia divina; por lo que asum� que all� tendr�a Asesinos de Magos dispuestos a luchar por ella. Asesinos de Magos entrenados por ella misma, imbuidos, quiz�s, con aquella innata resistencia arcana. */
== P_BDusk @136 /* No estoy seguro de qu� es lo que pas� con esa aasimar, pero cuando llegu�, ella y su ej�rcito hab�an desaparecido... Sin embargo, interrogando a los lugare�os, escuch� los rumores de un ej�rcito en el sur, agazapados en la oscuridad de los Campos de los Muertos, al suroeste de las Colinas de la Serpiente. */
== P_BDusk @137 /* Al cabo de unas semanas pude dar con ellos. No eran m�s que un grupo de mercenarios que hab�a desertado del ej�rcito de Lanzadrag�n. Pero hab�a Asesinos de Magos all�... y les convenc� de que me aceptaran, luego de tener que salir victorioso de unas pruebas de combate con algunos rufianes. */
== P_BDusk @1064 /* Prob� mi val�a y me aceptaron. Lo primero que tuve que hacer fue hablar con el l�der de su grupo, un mago llamado Ojos de Serpiente. Se trataba de un humano adivino, con el que tuve muchas lecturas... particulares... */
== BVALYGA @138 /* �Particulares? */
== P_BDusk @139 /* S�... El adivino ley� mi pasado. Descubri� mi descendencia real y vio c�mo mis antepasados lucharon contra las fuerzas oscuras de Aumvor. Vio en m� un odio gutural contra la magia, pero no pudo leer mis verdaderas intenciones. */
== BVALYGA @1065 /* Tus verdaderas... �intenciones? */
== P_BDusk @1066 /* Hm... ya es un poco tarde, Valygar. �Qu� te parece si continuamos en otro momento? Prometo terminar mi historia m�s adelante. */
== BVALYGA @1067 /* Est� bien, Dusk, est� bien... te tomo la palabra. */
DO ~SetGlobal("P_DuskValygar2","GLOBAL",2)~
EXIT


// Haer-Dalis 2 EVIL
CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskHaerDalis1","GLOBAL",1)
Global("P_DuskHaerDalis1EVIL","GLOBAL",0)~ THEN BHAERDA P_DuskHaerDalis1EVIL
@1035 /* �Qui�n lo dir�a? El canario ha mutado a un gran y terrilbe halc�n. */
DO ~SetGlobal("P_DuskHaerDalis1EVIL","GLOBAL",1)~
== P_BDusk @1036 /* �Me hablas a m�, bardo? */
== BHAERDA @1037 /* �Pues, claro! Un halc�n ciertamente es m�s interesante que un canario, �no lo crees? */
== BHAERDA @1038 /* Aunque, es innegable que el canto del canario es m�s bonito. */
== P_BDusk @1039 /* Me da igual c�mo me llames, tiefling. S�lo, no te vayas a poner a cantar. No estoy de humor. */
== BHAERDA @1040 /* Pues, el humor es algo que me parece que el halc�n no posee, diferente es el caso de un canario. */
== P_BDusk @1041 /* Vuelve a hacer una analog�a de aves una vez m�s y tu lengua ser� un alimento para los perros. */
== BHAERDA @1042 /* �Vaya! Definitivamente, el buen humor es algo que tambi�n ha mutado... */
EXIT

// IMOEN 2 ALL

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskImoen1","GLOBAL",1)~ THEN P_BDusk P_DuskImoen2
@121 /* Imoen, �est� deliciosa esa manzana? */
DO ~SetGlobal("P_DuskImoen1","GLOBAL",2)~
== IMOEN2J @122 /* Hmm... *mastica* �Pues, s�! *mastica* */
== P_BDusk @123 /* �Qu� bueno! En especial, porque ten�a una exactamente igual en mi mochila... y ahora no la encuentro. */
== IMOEN2J @124 /* Oh, Dusk... *mastica* Deber�as ser m�s cuidadoso con tu comida... */
== P_BDusk @126 /* No vaya a ser que alg�n h�mster o rat�n vaya a rob�rmela, �no? */
== IMOEN2J @127 /* Je, je... Eso mismo iba a decir. �Est�s enojado conmigo, Dusk? Oh... no me digas... que sospechas, �de m�! */
== P_BDusk @128 /* (Rayos, no puedo rega�arla si pone ojos de gato abandonado) Hm... No, no, Imoen... es s�lo que ten�a un poco de hambre y yo- */
== IMOEN2J @129 /* �Oh, pues haberlo dicho antes! Come un poco, Dusk. */
== P_BDusk @1082 /* (�Eh? Pero si s�lo me ha dejado el carozo...) Bueno, gracias, Imoen... *suspiro* */
EXIT

// MINSC 2 NEUTRAL-GOOD
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_DuskMinsc1","GLOBAL",1)~ THEN P_BDusk P_DuskMinsc2
@140 /* Minsc, tengo estas galletas de jengibre para nuestro amigo en com�n, Bub�. */
DO ~SetGlobal("P_DuskMinsc1","GLOBAL",2)~
== BMINSC @141 /* �Oh, tranquilo, Bub�! Pocas veces ha visto Minsc a Bub� tan emocionado. Casi no puedo contener su fuerza. */
== BMINSC @142 /* *Chillido de h�mster* */
== P_BDusk @143 /* �Wow! Claramente, se ha fanatizado con el jengibre, �no te parece? */
== BMINSC @144 /* �Bub�, c�lmate! Recuerda que est�s a dieta. */
== BMINSC @145 /* *Gru�ido de h�mster*  */
== P_BDusk @146 /* �Ja! Tiene todo un temperamento nuestro peludo compa�ero. */
== BMINSC @147 /* Dusk, Minsc agradece que pienses en nosotros. Pero la pr�xima vez, recuerda que Bub� no podr� ser tan �gil si tiene la panza llena de galletas de jengibre. */
== P_BDusk @148 /* Cierto, cierto. Lo tendr� en cuenta. Para la pr�xima vez, puede que con una manzana baste. */
== BMINSC @149 /* �S�! Eso le dar� energ�as y no lo har� tan... *susurro* regordete. Pero... muchas gracias, gran Dusk. Bub� est� muy agradecido. Dir�a algo de no ser porque se ha guardado varias galletas en su buche. */
== P_BDusk @150 /* No hay por qu�, Minsc. *susurro* Bub�, cuando quieras escaparte unas horas de tu dieta, sabes a d�nde encontrarme. */
EXIT


// VICONIA 2 ALL
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskViconia2","GLOBAL",0)~ THEN P_BDusk P_DuskViconia2
@151 /* Traje esto para ti. */
DO ~SetGlobal("P_DuskViconia2","GLOBAL",1)~
== BVICONI @152 /* �Q-qu� haces, rivvil? �Qu� es esto? Es... es un broche. */
== P_BDusk @153 /* As� es... representa a la Luna... o al menos, su parte oscura. */
== BVICONI @154 /* Pero... �por qu�? */
== P_BDusk @155 /* Porque somos amigos. Los amigos tienden a darse obsequios. Y me pareci� que hac�a mucho tiempo que nadie te daba algo. */
== BVICONI @156 /* P-pues, no necesito que nadie me d� nada, rivvil... Si quiero algo, simplemente lo tomo. */
== BVICONI @157 /* Pero dime... �en esto has estado trabajando las �ltimas noches? */
== P_BDusk @1083 /* *carraspeo* Pues, s�. Ayuda a distraerme. */
== BVICONI @1084 /* No deber�as haberlo hecho, necio... no necesito ser raz�n para tus distracciones. */
== BVICONI @1085 /* Sin embargo... gracias. Para ser un rivvil, ciertamente tienes habilidades para tallar en la madera. */
== P_BDusk @1086 /* No lo menciones, Viconia. Lo quieras o no, est�s forjando amistades en este grupo. Y los amigos hacen este tipo de cosas. Estar para ti. */
== BVICONI @1087 /* ... */
== BVICONI @1088 /* Pensar� en tus palabras, abbil. Por ahora, d�jame sola. */
== P_BDusk @1089 /* De acuerdo, Vicky. *sonr�e burlonamente* */
== BVICONI @1090 /* No presiones a tu suerte, rivvil. Para tu fortuna, dejar� pasar eso, s�lo porque me gust� tu... regalo. */
EXIT

// AERIE 2 EVIL
CHAIN
IF ~InParty("Aerie")
See("Aerie")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global ("P_DUSK_IS_EVIL","GLOBAL",1)
Global("P_DuskAerie1","GLOBAL",1)
Global("P_DuskAerie1EVIL","GLOBAL",0)~ THEN P_BDusk P_DuskAerie1EVIL
@1018 /* ... */
DO ~SetGlobal("P_DuskAerie1EVIL","GLOBAL",1)~
== BAERIE @1019 /* �Dusk! Otra vez est�s mir�ndome... aunque... tus ojos no son como antes... */
== P_BDusk @1020 /* Me recuerdas a Celine, Aerie. Pero t� no eres fuerte como ella... la visi�n que tienes del mundo, te llevar� a tu perdici�n. */
== BAERIE @1021 /* �D-de qu� est�s hablando, Dusk? */
== P_BDusk @1022 /* Eres inteligente, lo cual es una fortaleza en ti. Pero tambi�n eres amable e ingenua... y ello te llevar� a la ruina. */
== BAERIE @1023 /* P-pues no te he pedido opini�n al respecto, �sabes? Y-yo soy como soy y me gusta ser as�. */
== P_BDusk @1024 /* No te culpo, peque�a. Es m�s f�cil creer en las buenas intenciones de los dem�s. Pero lo cierto es que todos tenemos un demonio interior, agazapado en las sombras, esperando a tomar control. */
== BAERIE @1025 /* *escalofr�o* D-dusk, no entiendo... n-no eras as� antes. Ahora... ya no tienes brillo en tus ojos... s-s�lo... s�lo percibo frialdad en tus palabras. */
== P_BDusk @1026 /* Nunca vi las cosas con tanta claridad como ahora. No debes preocuparte por m�. Soy m�s fuerte que nunca. */
== BAERIE @1027 /* La fuerza no lo es todo... no entiendo por qu� eres as�, Dusk...no lo entiendo. */
== P_BDusk @1028 /* No hay nada que entender, Aerie. Sigo pensando que tu amabilidad ser� tu perdici�n... pero no ser� as� mientras yo est� cerca. */
== P_BDusk @1029 /* Puedes darte el lujo de la ingenuidad. Y si el peligro te acecha, lo detendr� mediante sangre y violencia. */
== BAERIE @1030 /* �N-no necesito que mates por m�, Dusk! N-no todo debe terminar en violencia y asesinato. */
== P_BDusk @1031 /* Pero en verdad s�, peque�a... El mundo en que vivimos fue forjado con sangre y violencia. Y ser� as� hasta que el sol y las estrellas pierdan su brillo... Siempre ser� as�... */
EXIT


// VALYGAR 3 ALL

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskValygar2","GLOBAL",2)
Global("P_DuskValygar3","GLOBAL",0)~ THEN BVALYGA P_DuskValygar3
@171 /* Dusk, creo que ya ha pasado un tiempo prudencial desde nuestra �ltima charla, �no lo crees? */
DO ~SetGlobal("P_DuskValygar3","GLOBAL",1)~
== P_BDusk @172 /* Es verdad, Valygar. Voy a terminar mi relato... */
== P_BDusk @173 /* Como te mencion� antes, Ojos de Serpiente tuvo varias sesiones conmigo. Su especialidad era la escuela de la adivinaci�n, por lo que pudo adentrarse en mi pasado mediante ciertas... conjuraciones. No dijo m�s de lo que ya sab�a, porque su verdadera intenci�n era vislumbrar cu�l era mi intenci�n, �lo captas? */
== BVALYGA @174 /* Entiendo. Tu verdadera intenci�n era mejorar tu resistencia natural a la magia para vengarte de los hechiceros que abusan de su poder, �o me equivoco? Mi pregunta es... �C�mo enga�aste a Ojos de Serpiente? */
== P_BDusk @175 /* Mi deseo por venganza era demasiado grande... tanto, que deslumbr� lo que pretend�a hacer despu�s con ellos, con los mercenarios del valle. */
== P_BDusk @176 /* Ojos de Serpiente se centr� m�s en mi pasado arcano que en mis futuros y f�tiles esfuerzos por darle un uso debido a lo que obtendr�a con la resistencia m�gica innata. Pero no era ning�n tonto... le daba igual si viv�a o mor�a, por lo que sus... m�todos para despertar dicha resistencia en m� no fueron contenidas. */
== BVALYGA @177 /* Tengo una leve sospecha de c�mo se entrenaban los Asesinos de Magos en el norte, en las tribus b�rbaras... �Es lo que creo que es? */
== P_BDusk @1068 /* S�: Ojos de Serpiente utiliz� conjuraciones contra m�. Lanz� todo tipo de hechizos y luego acud�a al cl�rigo del campamento para curarme. */
== P_BDusk @1069 /* Estuve incontable cantidad de veces cerca de la muerte... pero mi prop�sito me mantuvo firme. */
== P_BDusk @1070 /* Al cabo de unos meses entend� c�mo funcionaba la mayor�a de los conjuros... al menos de una forma b�sica. Y fue cuando obtuve este conocimiento que ejecut� la siguiente fase de mi plan. */
== BVALYGA @1071 /* �Qu� fue lo que pas�? */
== P_BDusk @1072 /* Los mat� a todos... */
== P_BDusk @1073 /* Veo que no me juzgas por mis actos... �por qu�? */
== BVALYGA @1074 /* Pues, Dusk... creo que se lo ten�an merecido. S� c�mo act�an los mercenarios y las sectas que preparan Asesinos de Magos no ostentan buenas intenciones. S�lo buscan la muerte y la conquista. T� lo sab�as y de seguro lo viviste... Y puede que quiz�s... hasta hayas tenido que hacer cosas que no quer�as. */
== P_BDusk @1075 /* Tienes raz�n... Muchas veces pude esquivar ciertas "obligaciones" para con el campamento. A fin de cuentas, estaba demasiado focalizado en mi objetivo principal. Y cuando lo logr�, finalmente obtuve mi venganza contra ellos. */
== P_BDusk @1076 /* Ojos de Serpiente se vio sorprendido... pero cuando lo enfrent�, al final, me di cuenta de que �l sab�a que actuar�a de esa forma. */
== P_BDusk @1077 /* De todas formas, no lo pens� demasiado. Asest� contra �l un golpe mort�fero e incluso resist� una de sus conjuraciones. �se fue su fin. Y tambi�n el comienzo de mi redenci�n. */
== P_BDusk @1078 /* Dirig� mi camino hacia Athkatla, pues sab�a que la gran ciudad apestaba a corrupci�n y podr�a usar mis nuevos conocimientos para brindar ayudar a aquellos m�s necesitados. */
== P_BDusk @1079 /* Luego pas� lo que pas� en el Paseo. Irenicus, <CHARNAME>, Imoen. El resto... es historia. */
== BVALYGA @1080 /* Ha sido interesante, Dusk. Gracias por cont�rmelo. Espero que podamos dar un cierre a toda esta cacer�a contra Irenicus... creo que juntos, podremos dar una buena mano a <CHARNAME>. */
== P_BDusk @1081 /* Pienso lo mismo, Valygar... pienso lo mismo... */
DO ~SetGlobal("P_DuskValygar3","GLOBAL",2)~
EXIT