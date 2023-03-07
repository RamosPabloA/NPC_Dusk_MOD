// WILSON test

CHAIN
IF ~
InParty("Wilson")
See("Wilson")
!StateCheck("Wilson",CD_STATE_NOTVALID)
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskWilson1","GLOBAL",0)~ THEN P_BDusk P_DuskWilson1
@0 /* *mira a Wilson con desconfianza* ¿Qué sucede, mi peludo amigo? */
DO ~SetGlobal("P_DuskWilson1","GLOBAL",1)~
== BWILSON @1 /* (Bufido, bufido) */
== P_BDusk @2 /* ¡Lo sabía! Quieres mis galletas. */
== BWILSON @3 /* (Gruñido, lamento) */
== P_BDusk @4 /* De acuerdo, de acuerdo. Aquí tienes. No tienes por qué poner esa cara de perro mojado. */
== BWILSON @5 /* (Bufido) (Wilson engulle las galletas con entusiasmo) */
== P_BDusk @6 /* *suspiro* Pero... no te las comas todas... (Rayos...) */
EXIT


//I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_WIL_JOKES3
//== BWILSON IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @5 /* (Bufido, bufido) */
//END