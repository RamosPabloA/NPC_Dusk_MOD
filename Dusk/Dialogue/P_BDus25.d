BEGIN P_BDus25

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)
Global("P_DuskAerieToB1","GLOBAL",0)~ THEN BAERIE25 P_DuskAerieToB1
@0 /* ... */
DO ~SetGlobal("P_DuskAerieToB1","GLOBAL",1)~
== P_BDus25 @1 /* Aún no te acostumbras a mi presencia, ¿verdad, Aerie? */
== BAERIE25 @2 /* Y-yo, y-yo... */
== P_BDus25 @3 /* Descuida. Me da igual si te acostumbras o no. Soy lo que soy. */
== BAERIE25 @4 /* Pero, Dusk... tú no eras así antes... has cambiado. */
== P_BDus25 @5 /* Todos lo hacemos. Incluso tú, pequeña. */
== BAERIE25 @6 /* Sí, p-pero... tú lo has hecho por un factor externo. */
== P_BDus25 @7 /* Sí... el orbe escarlata. Puede que, simplemente, el orbe haya sacado a relucir mi verdadera personalidad. Mi verdadero ser. */
== BAERIE25 @8 /* No, no creo que sea así, Dusk. Creo que puedes volver a ser el que eras. No es demasiado tarde. */
== P_BDus25 @9 /* Para algunas cosas... ya es demasiado tarde, amiga mía... demasiado tarde... */
EXIT

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)
Global("P_DuskAnomenToB1","GLOBAL",0)~ THEN BANOME25 P_DuskAnomenToB1
@10 /* Si hay algo que quieras decir, dilo, buen Dusk. He notado que intentas sacar conversación sobre algo desde hace ya un buen tiempo. */
DO ~SetGlobal("P_DuskAnomenToB1","GLOBAL",1)~
== P_BDus25 @11 /* *carraspeo* Lo siento, Anomen. Es verdad, quería preguntarte algo sobre el ejército, si no te molesta. */
== BANOME25 @12 /* Entiendo. Pregunta, amigo mío. */
== P_BDus25 @13 /* ¿Qué es lo que hace el ejército de Amn con... los desertores? */
== BANOME25 @14 /* Hm... cuando era escudero no vi tantas situaciones así. Pero lo que he visto ha sido la expulsión inmediata del ejército. En algunos casos, la cárcel. */
== BANOME25 @15 /* ¿Por qué lo preguntas? */
== P_BDus25 @16 /* Oh, no es por nada... básicamente... nunca volví a Cormyr luego de mi enfrentamiento contra los orcos. */
== P_BDus25 @17 /* Supongo que eso cuenta como... deserción. */
== BANOME25 @18 /* Oh, ya entiendo... */
== P_BDus25 IF ~ReputationLT([PC],12)~ THEN @19 /* Sí... bueno, gracias por tu tiempo, Anomen. */
== BANOME25 IF ~ReputationGT([PC],12)~ THEN @20 /* Pero, junto a <CHARNAME> has forjado una reputación impecable. Sin lugar a dudas, es algo que un superior tendría en cuenta. */
== P_BDus25 IF ~ReputationGT([PC],12)~ THEN @21 /* ¿De verdad? Gracias, Anomen. Ha sido un placer hablar contigo. */
EXIT

//CHAIN 
//IF ~InParty("P_Dusk")
//See("P_Dusk")
//!StateCheck("Cernd",CD_STATE_NOTVALID)
//!StateCheck("P_Dusk",CD_STATE_NOTVALID)
//Global("P_DuskCerndToB1","GLOBAL",0)~ THEN BCERND25 P_DuskCerndToB1
//@1700 /*  */
//DO ~SetGlobal("P_DuskCerndToB1","GLOBAL",1)~
//== P_BDus25 @1800 /*  */
//EXIT 



CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)
Global("P_DuskSarevokToB2","GLOBAL",0)~ THEN BSAREV25 P_DuskSarevokToB2
@124 /* ¿Por qué me observas tan fijamente, hombrecito? */
DO ~SetGlobal("P_DuskSarevokToB2","GLOBAL",1)~
== P_BDus25 @125 /* ¿Hombrecito? Cuidado, cretino. Mi nombre es Ardusk Aldant, Primera Espada de-- */
== BSAREV25 @126 /* Sí, sí. No me interesa. */
== P_BDus25 @127 /* *carraspeo* De todas formas... hay algo en ti que no logro comprender. */
== BSAREV25 @128 /* Seguramente debe haber cosas que no comprendes, muchacho. */
== P_BDus25 @129 /* ~Tu alianza con <CHARNAME>, para empezar. Él es tu hermano.~ ~Tu alianza con <CHARNAME>, para empezar. Ella es tu hermana.~ */
== P_BDus25 @130 /* ~¿Cómo has sido capaz de intentar asesinarlo? Yo no tengo hermanos... pero de tenerlos, el asesinato sería el último de mis pensamientos.~ ~¿Cómo has sido capaz de intentar asesinarla? Yo no tengo hermanos... pero de tenerlos, el asesinato sería el último de mis pensamientos.~ */
== BSAREV25 @131 /* No pretendo que un simple cormyreano entienda el propósito de un engendro de Bhaal. */
== P_BDus25 @132 /* Seré un simple soldado, Sarevok. Pero sé lo que es la lealtad. Y aquí estás tú, siendo leal a <CHARNAME>. ¿Por qué? */
== BSAREV25 @133 /* ~Mira a nuestro alrededor, muchacho. Estamos viviendo épocas milagrosas. El poder está ahí para ser tomado. Yo... simplemente quiero ser testigo de lo que haga mi hermano.~ ~Mira a nuestro alrededor, muchacho. Estamos viviendo épocas milagrosas. El poder está ahí para ser tomado. Yo... simplemente quiero ser testigo de lo que haga mi hermana.~ */
== P_BDus25 @134 /* Tal vez... Incluso tal vez logres hallar la respuesta. */
== BSAREV25  @135 /* ¿Respuesta? */
== P_BDus25 @136 /* Eres un hombre de pocas palabras, Sarevok. Pero sé reconocer cuándo un hombre está en busca de algo. Quizás, acompañando a <CHARNAME>, lo encuentres. */
EXIT

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)
Global("P_DuskSarevokToB2","GLOBAL",0)~ THEN BSAREV25 P_DuskSarevokToB3
@137 /* Tu aura... No proviene de este plano. ¿Qué eres? */
DO ~SetGlobal("P_DuskSarevokToB3","GLOBAL",1)~
== P_BDus25 @138 /* He obtenido poder a través del Pandemonium, Sarevok. ¿Conoces tal lugar? */
== BSAREV25 @139 /* Sí, lo conozco, pero no he tenido el placer de estar allí. ¿Cómo lo obtuviste? */
== P_BDus25 @140 /* Traicioné a mis aliados. Usé su fuerza vital para liberar a un Demonio Sombrío. Actualmente, mi alma está ligada a él. */
== BSAREV25 @141 /* Ya veo. Un camino comprensible. Aquellos que no nacen con el destino del poder en su interior, están obligados a tomarlo. */
== P_BDus25 @142 /* No sé si fue obligación lo que sentí... pero sí, entiendo a lo que te refieres. */
== BSAREV25 @143 /* Lo sé. He visto lo que puedes hacer en el campo de batalla. Sin lugar a dudas, <CHARNAME> se ha conseguido aliados poderosos. */
== P_BDus25 @144 /* ¿Qué me dices de ti? Pese a no ser más un engendro de Bhaal, el poder en ti es notable. El Caos prácticamente emana de la punta de tus dedos. */
== BSAREV25 @145 /* He dedicado toda mi vida a tomar el Trono de Bhaal. El arte de la guerra y el engaño eran el pan de cada día. */
== BSAREV25 @146 /* *suspiro* Eso ahora quedó en el pasado. Sólo quiero atestiguar estos tiempos. <CHARNAME> será protagonista y estaré a su lado para ver cómo termina esta historia. */
== P_BDus25 @147 /* Un sentimiento que acompañaré, si me es posible. Nuestros enemigos no tendrán ninguna oportunidad. */
== BSAREV25  @148 /* Tú lo has dicho... */
EXIT
