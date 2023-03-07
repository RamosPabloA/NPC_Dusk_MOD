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
== P_BDus25 @1 /* A�n no te acostumbras a mi presencia, �verdad, Aerie? */
== BAERIE25 @2 /* Y-yo, y-yo... */
== P_BDus25 @3 /* Descuida. Me da igual si te acostumbras o no. Soy lo que soy. */
== BAERIE25 @4 /* Pero, Dusk... t� no eras as� antes... has cambiado. */
== P_BDus25 @5 /* Todos lo hacemos. Incluso t�, peque�a. */
== BAERIE25 @6 /* S�, p-pero... t� lo has hecho por un factor externo. */
== P_BDus25 @7 /* S�... el orbe escarlata. Puede que, simplemente, el orbe haya sacado a relucir mi verdadera personalidad. Mi verdadero ser. */
== BAERIE25 @8 /* No, no creo que sea as�, Dusk. Creo que puedes volver a ser el que eras. No es demasiado tarde. */
== P_BDus25 @9 /* Para algunas cosas... ya es demasiado tarde, amiga m�a... demasiado tarde... */
EXIT

CHAIN
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",0)
Global("P_DuskAnomenToB1","GLOBAL",0)~ THEN BANOME25 P_DuskAnomenToB1
@10 /* Si hay algo que quieras decir, dilo, buen Dusk. He notado que intentas sacar conversaci�n sobre algo desde hace ya un buen tiempo. */
DO ~SetGlobal("P_DuskAnomenToB1","GLOBAL",1)~
== P_BDus25 @11 /* *carraspeo* Lo siento, Anomen. Es verdad, quer�a preguntarte algo sobre el ej�rcito, si no te molesta. */
== BANOME25 @12 /* Entiendo. Pregunta, amigo m�o. */
== P_BDus25 @13 /* �Qu� es lo que hace el ej�rcito de Amn con... los desertores? */
== BANOME25 @14 /* Hm... cuando era escudero no vi tantas situaciones as�. Pero lo que he visto ha sido la expulsi�n inmediata del ej�rcito. En algunos casos, la c�rcel. */
== BANOME25 @15 /* �Por qu� lo preguntas? */
== P_BDus25 @16 /* Oh, no es por nada... b�sicamente... nunca volv� a Cormyr luego de mi enfrentamiento contra los orcos. */
== P_BDus25 @17 /* Supongo que eso cuenta como... deserci�n. */
== BANOME25 @18 /* Oh, ya entiendo... */
== P_BDus25 IF ~ReputationLT([PC],12)~ THEN @19 /* S�... bueno, gracias por tu tiempo, Anomen. */
== BANOME25 IF ~ReputationGT([PC],12)~ THEN @20 /* Pero, junto a <CHARNAME> has forjado una reputaci�n impecable. Sin lugar a dudas, es algo que un superior tendr�a en cuenta. */
== P_BDus25 IF ~ReputationGT([PC],12)~ THEN @21 /* �De verdad? Gracias, Anomen. Ha sido un placer hablar contigo. */
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
@124 /* �Por qu� me observas tan fijamente, hombrecito? */
DO ~SetGlobal("P_DuskSarevokToB2","GLOBAL",1)~
== P_BDus25 @125 /* �Hombrecito? Cuidado, cretino. Mi nombre es Ardusk Aldant, Primera Espada de-- */
== BSAREV25 @126 /* S�, s�. No me interesa. */
== P_BDus25 @127 /* *carraspeo* De todas formas... hay algo en ti que no logro comprender. */
== BSAREV25 @128 /* Seguramente debe haber cosas que no comprendes, muchacho. */
== P_BDus25 @129 /* ~Tu alianza con <CHARNAME>, para empezar. �l es tu hermano.~ ~Tu alianza con <CHARNAME>, para empezar. Ella es tu hermana.~ */
== P_BDus25 @130 /* ~�C�mo has sido capaz de intentar asesinarlo? Yo no tengo hermanos... pero de tenerlos, el asesinato ser�a el �ltimo de mis pensamientos.~ ~�C�mo has sido capaz de intentar asesinarla? Yo no tengo hermanos... pero de tenerlos, el asesinato ser�a el �ltimo de mis pensamientos.~ */
== BSAREV25 @131 /* No pretendo que un simple cormyreano entienda el prop�sito de un engendro de Bhaal. */
== P_BDus25 @132 /* Ser� un simple soldado, Sarevok. Pero s� lo que es la lealtad. Y aqu� est�s t�, siendo leal a <CHARNAME>. �Por qu�? */
== BSAREV25 @133 /* ~Mira a nuestro alrededor, muchacho. Estamos viviendo �pocas milagrosas. El poder est� ah� para ser tomado. Yo... simplemente quiero ser testigo de lo que haga mi hermano.~ ~Mira a nuestro alrededor, muchacho. Estamos viviendo �pocas milagrosas. El poder est� ah� para ser tomado. Yo... simplemente quiero ser testigo de lo que haga mi hermana.~ */
== P_BDus25 @134 /* Tal vez... Incluso tal vez logres hallar la respuesta. */
== BSAREV25  @135 /* �Respuesta? */
== P_BDus25 @136 /* Eres un hombre de pocas palabras, Sarevok. Pero s� reconocer cu�ndo un hombre est� en busca de algo. Quiz�s, acompa�ando a <CHARNAME>, lo encuentres. */
EXIT

CHAIN 
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("Sarevok",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_Dusk_IS_EVIL_TOB","GLOBAL",1)
Global("P_DuskSarevokToB2","GLOBAL",0)~ THEN BSAREV25 P_DuskSarevokToB3
@137 /* Tu aura... No proviene de este plano. �Qu� eres? */
DO ~SetGlobal("P_DuskSarevokToB3","GLOBAL",1)~
== P_BDus25 @138 /* He obtenido poder a trav�s del Pandemonium, Sarevok. �Conoces tal lugar? */
== BSAREV25 @139 /* S�, lo conozco, pero no he tenido el placer de estar all�. �C�mo lo obtuviste? */
== P_BDus25 @140 /* Traicion� a mis aliados. Us� su fuerza vital para liberar a un Demonio Sombr�o. Actualmente, mi alma est� ligada a �l. */
== BSAREV25 @141 /* Ya veo. Un camino comprensible. Aquellos que no nacen con el destino del poder en su interior, est�n obligados a tomarlo. */
== P_BDus25 @142 /* No s� si fue obligaci�n lo que sent�... pero s�, entiendo a lo que te refieres. */
== BSAREV25 @143 /* Lo s�. He visto lo que puedes hacer en el campo de batalla. Sin lugar a dudas, <CHARNAME> se ha conseguido aliados poderosos. */
== P_BDus25 @144 /* �Qu� me dices de ti? Pese a no ser m�s un engendro de Bhaal, el poder en ti es notable. El Caos pr�cticamente emana de la punta de tus dedos. */
== BSAREV25 @145 /* He dedicado toda mi vida a tomar el Trono de Bhaal. El arte de la guerra y el enga�o eran el pan de cada d�a. */
== BSAREV25 @146 /* *suspiro* Eso ahora qued� en el pasado. S�lo quiero atestiguar estos tiempos. <CHARNAME> ser� protagonista y estar� a su lado para ver c�mo termina esta historia. */
== P_BDus25 @147 /* Un sentimiento que acompa�ar�, si me es posible. Nuestros enemigos no tendr�n ninguna oportunidad. */
== BSAREV25  @148 /* T� lo has dicho... */
EXIT
