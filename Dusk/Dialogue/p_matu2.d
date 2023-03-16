BEGIN p_matu2

IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DUSK_IS_EVIL","GLOBAL",0)
Global("P_Dusk_Mat2_hypno","GLOBAL",0)
AreaCheck("AR1506")~ THEN BEGIN 0 // from:
  SAY @0 /* ~*Notas que su mirada carece de su brillo habitual*~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_Mat2_hypno","GLOBAL",1) 
  ~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @46 /* ~*Mathyus se mantiene inmutable, pese a que todos perciben la llegada de otro ser.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_Mat2_hypno","GLOBAL",1)~ EXIT
END

// DUSK GOOD 1
I_C_T P_MATU2 0 P_Dusk_matu2a
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @1 /* ~¡¿Mathyus?! ¿C-cómo... cómo es posible?~ */
== p_sornhi IF ~~ THEN @2 /* ~Ha sido obra mía, soldado.~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3 /* ~¡Oh, no! Si es el malvado encantador que intentó inculpar a la bella orco... ¡Sommier!~ */
== p_sornhi IF ~InParty("Minsc")~ THEN @4 /* ~Mi nombre es Sornhil, cabeza de hojalata.~ */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @5 /* ~Como sea, mago. ¡Minsc no olvida tus actos malvados! Nos aseguraremos de que ya no ocasiones ningún mal a los inocentes, ¿verdad, Bubú?~ */
== p_sornhi IF ~InParty("Minsc")~ THEN @6 /* ~Será interesante verte intentarlo, bárbaro del norte. Pero mi atención está ahora con tu compañero...~ */
== p_sornhi IF ~~ THEN @7 /* ~El estúpido elfo shilmista ha venido de antemano, antes que tú. Se me ocurrió rápidamente controlar su mente y su cuerpo.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @8 /* ~Desgraciado...~ */
== P_ANTHAG IF ~~ THEN @9 /* ~El poder de Sornhil es un bien preciado para la Orden, así como la del resto de sus integrantes, fieles servidores de la Cripta Olvidada.~ */
== p_valata IF ~~ THEN @10 /* ~Que el estúpido de tu amigo esté encantado es el menor de tus preocupaciones, Capitán.~ */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @11 /* ~V-vaya... también se encuentra ese lunático del bosque druídico, Dusk.~ */
== p_valata IF ~InParty("Aerie")~ THEN @12 /* ~Haces bien en temerme, niña. Pero tú no eres el centro de mis atenciones... por ahora...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @13 /* ~Valatar... imagino que debes estar un poco... colérico por lo que hice con tu "mascota", ¿no?~ */
== p_valata IF ~~ THEN @14 /* ~Bastardo... ¡Pagarás por lo que has hecho con Puki! Tendré tu corazón en una bandeja...~ */
== P_ANTHAG IF ~~ THEN @15 /* ~Tranquilo, Valatar. En breve podrás arrojar tu ira en estos insensatos.~ */
== p_valata IF ~~ THEN @16 /* ~Estás en lo cierto, Antaghar. Además, aún dispongo de otras invocaciones. ¡Pronto serán testigos de cómo las bestias del inframundo danzan bajo mi influjo!~ */
== p_kaland IF ~~ THEN @17 /* ~¡Tsk! Tanta palabrería comienza a cansarme...~ */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID) Global ("P_Dusk_Kalanda_Summon","GLOBAL",2)~ THEN @18 /* ~Ah, si es el extraño pajarillo que nos sorprendió en Brynn Ley, canario. El transmutador.~ */
== p_valata IF ~~ THEN @19 /* ~¡¿Qué has dicho, elfo?! Si no fuera porque tenemos un enemigo que aniquilar, ten por seguro que tendríamos una conversación tú y yo.~ */
== p_kaland IF ~~ THEN @20 /* ~Di lo que quieras, humano. Todos ustedes son iguales. Si aún no has recibido una "conversación" de mi parte es por mi respeto hacia Anthagar.~ */
== p_kaland IF ~~ THEN @21 /* ~Y porque nuestro objetivo final sobrepasa cualquier banalidad terrenal que puedas tener sobre el soldado cormyreano.~ */
== P_ANTHAG IF ~~ THEN @22 /* ~Bien dicho, Kalanda. Capitán... como ya lo sabrás... no podemos dejar que tú y <CHARNAME> sigan deambulando en Faerûn.~ */
== P_ANTHAG IF ~~ THEN @23 /* ~Este es, como ya debes suponer, nuestro enfrentamiento final.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @24 /* ~Es verdad, mago... <CHARNAME> y yo hemos pasado por mucho... hemos hecho frente a las fuerzas de Alabarza, combatido en la Prisión del Hechicero, atravesado los peligros de la Infraoscuridad...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @25 /* ~¡No creas que nos tienes a tu merced!~ */
== P_ANTHAG IF ~~ THEN @27 /* ~Muy bien, mis hechiceros, es hora de--- Pero, ¿qué?~ */
END

