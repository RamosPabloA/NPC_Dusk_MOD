BEGIN P_MICHE2

IF ~Global("P_DuskMichelFinalSpawn","GLOBAL",1)
 ~ THEN BEGIN 0 // from:
  SAY @0 /* ~(De la nada, una risa se percibe hasta en los rincones m�s oscuros del paraje)~ */
 IF ~~ THEN DO ~SetGlobal("P_DuskMichelFinalSpawn","GLOBAL",2)
 ~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~(Finalmente, Michelson hace aparici�n desde las sombras, bailando y riendo, como si de una fiesta se tratase)~ */
	// DUSK y DEMOLE DEAD
    IF ~Dead("P_Dusk") Dead("p_demol2")~ THEN REPLY @2 /* ~��Michelson?! Has llegado... un poco tarde me temo...~ */  GOTO 2
	// DUSK ALIVE, Demole DEAD
	IF ~!Dead("P_Dusk") Dead("p_demol2")~ THEN REPLY @2 /* ~��Michelson?! Has llegado... un poco tarde me temo...~ */  GOTO 4
	// DUSK DEAD, DEMOLE ALIVE
	IF ~Dead("P_Dusk") !Dead("p_demol2")~ THEN REPLY @2 /* ~��Michelson?! Has llegado... un poco tarde me temo...~ */  GOTO 6
	// DUSK ALIVE y DEMOLE ALIVE
	IF ~!Dead("P_Dusk") !Dead("p_demol2")~ THEN REPLY @2 /* ~��Michelson?! Has llegado... un poco tarde me temo...~ */  GOTO 8
END

	// DUSK y DEMOLE DEAD
	// TERMINA: 
	//  Global("P_DuskDUSKDIEDFinalMissionVAL","GLOBAL",1) -> Es necesario porque P_DUSKP resetea la otra variable a 0
	//	Global("P_DuskDEMOLEDIEDFinalMission","GLOBAL",1) 
	
IF ~~ THEN BEGIN 2 // from:
  SAY @3 /* ~(Michelson detiene su danza y mira a su alrededor. Al cabo de unos segundos, cae en la cuenta de lo sucedido)~ */
  IF ~~ THEN DO ~~ GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @8 /* ~(Entrecierra sus ojos y toma el S�mbolo de Velshar�n de Anthagar con ambas manos, elev�ndolo sobre su cabeza... Entiendes que abrir� un portal para volver a Athkatla. S�lo debemos hablar de nuevo con �l cuando estemos listos para volver)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMichelFinalSpawn","GLOBAL",2)
  SetGlobal("P_DuskDUSKDIEDFinalMission","GLOBAL",1)
  SetGlobal("P_DuskDUSKDIEDFinalMissionVAL","GLOBAL",1) 
  SetGlobal("P_DuskDEMOLEDIEDFinalMission","GLOBAL",1) 
  ~ EXIT
END

	// DUSK ALIVE, Demole DEAD
	// TERMINA:
	//  Global("P_DuskDUSKDIEDFinalMissionVAL","GLOBAL",0)
	//	Global("P_DuskDEMOLEDIEDFinalMission","GLOBAL",1)
IF ~~ THEN BEGIN 4 // from:
  SAY @3 /* ~(Michelson detiene su danza y mira a su alrededor. Al cabo de unos segundos, cae en la cuenta de lo sucedido)~ */
  IF ~~ THEN DO ~~ GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @19 /* ~(Asiente ante la declaraci�n de Dusk. Una vez que estemos listos, s�lo debemos hablar con Michelson para que nos regrese a Athkatla)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMichelFinalSpawn","GLOBAL",2)
  SetGlobal("P_DuskDEMOLEDIEDFinalMission","GLOBAL",1) 
  ~ EXIT
END


	// DUSK DEAD y DEMOLE ALIVE
	// TERMINA: 
	//  Global("P_DuskDUSKDIEDFinalMissionVAL","GLOBAL",1) -> Es necesario porque P_DUSKP resetea la otra variable a 0
	//	Global("P_DuskDEMOLEDIEDFinalMission","GLOBAL",0)
	
IF ~~ THEN BEGIN 6 // from:
  SAY @3 /* ~(Michelson detiene su danza y mira a su alrededor. Al cabo de unos segundos, con tristeza, cae en la cuenta de lo sucedido)~ */
  IF ~~ THEN DO ~~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from:
  SAY @8 /* ~(Entrecierra sus ojos y toma el S�mbolo de Velshar�n de Anthagar con ambas manos, elev�ndolo sobre su cabeza... Entiendes que abrir� un portal para volver a Athkatla. S�lo debemos hablar de nuevo con �l cuando estemos listos para volver)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMichelFinalSpawn","GLOBAL",2)
  SetGlobal("P_DuskDUSKDIEDFinalMission","GLOBAL",1)
  SetGlobal("P_DuskDUSKDIEDFinalMissionVAL","GLOBAL",1)
  ~ EXIT
END

	// DUSK ALIVE, Demole ALIVE
	// TERMINA (NO HAY MODIFICADORES):
	//  Global("P_DuskDUSKDIEDFinalMissionVAL","GLOBAL",0)
	//	Global("P_DuskDEMOLEDIEDFinalMission","GLOBAL",0)
IF ~~ THEN BEGIN 8 // from:
  SAY @3 /* ~(Michelson detiene su danza y mira a su alrededor. Al cabo de unos segundos, cae en la cuenta de lo sucedido)~ */
  IF ~~ THEN DO ~~ GOTO 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY @19 /* ~(Asiente ante la declaraci�n de Dusk. Una vez que estemos listos, s�lo debemos hablar con Michelson para que nos regrese a Athkatla)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMichelFinalSpawn","GLOBAL",2)
  ~ EXIT
END


IF ~Global("P_DuskMichelFinalSpawn","GLOBAL",2)
 ~ THEN BEGIN 10 // from:
  SAY @24 /* ~(El ritual de Michelson ha terminado. Pronto ves c�mo un destello aparece delante de ti, abriendo un portal hacia un lugar conocido...)~ */
 IF ~~ THEN DO ~SetGlobal("P_DuskMichelFinalSpawn","GLOBAL",3)
  ~ EXIT
END



	// DUSK ALIVE, Demole ALIVE
I_C_T p_miche2 8 P_Dusk_Miche2_Talk4
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @22 /* �Michelson! Has arribado... lamento... lamento lo que pas� con Mathyus... de verdad... lo lamento... */
== p_miche2 IF ~~ THEN @10/* (Inesperadamente, Michelson se pone a bailar desenfrenado) */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11 /* Pero, �qu�...? */
== p_miche2 IF ~~ THEN @12 /* (Con una fuerza sorprendente, toma el cuerpo de Mathyus y con delicadeza, arroja sobre �l un polvo brillante que asumes debe pertenecer a sus extra�as gemas m�gicas) */ DO ~TakePartyItem ("p_matcor") DestroyItem ("p_matcor")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @23 /* Ya veo... intentar�s revivirlo... �no? */
== p_demol2 IF ~~ THEN @21 /* (Demoledor se muestra ansioso ante Michelson, como exigiendo que ejecute sus hechizos de una vez) */
== p_miche2 IF ~~ THEN @14 /* (Michelson asiente velozmente con su cabeza) */
== p_miche2 IF ~~ THEN @15 /* (Ve que, tambi�n, llevan consigo el s�mbolo de Velshar�n de Anthagar. Con cierta duda, extiende su manito hacia ustedes para que se lo entreguen) */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @16 /* El s�mbolo de Velshar�n... si le encuentras utilidad a esto, amigo m�o... entonces es todo tuyo. */
== p_miche2 IF ~~ THEN @17 /* (El leprechaun toma el s�mbolo entre sus manos. Mira a su alrededor y luego observa al grupo) */ DO ~TakePartyItem ("p_simvel") DestroyItem ("p_simvel")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @18 /* Hm... creo que est� listo para llevarnos a casa, <CHARNAME>. Es decir, a nuestro plano. Ser� mejor que hablemos con �l cuando estemos listos... */
END


	// DUSK y DEMOLE DEAD
I_C_T p_miche2 6 P_Dusk_Miche2_Talk3
== p_miche2 IF ~~ THEN @4 /* (Sin embargo, ve que llevas contigo el cuerpo de Mathyus y parece que sus esperanzas vuelven, ya que se pone a bailar desenfrenado como es ya algo usual de su parte) */  DO ~TakePartyItem ("p_matcor") DestroyItem ("p_matcor")~
== p_miche2 IF ~~ THEN @5 /* (Con una fuerza sorprendente, toma el cuerpo de Mathyus y con delicadeza, arroja sobre �l un polvo brillante que asumes debe pertenecer a sus extra�as gemas m�gicas) */
== p_miche2 IF ~~ THEN @6 /* (Ve que, tambi�n, llevas contigo el s�mbolo de Velshar�n de Anthagar. Con cierta duda, extiende su manito hacia ti para que se lo entregues. Como no le ves utilidad al mismo, lo das sin m�s.) */  DO ~TakePartyItem ("p_simvel") DestroyItem ("p_simvel")~
== p_miche2 IF ~~ THEN @20 /* (El leprechaun mira a su alrededor y ve que Dusk, lamentablemente, ha ca�do en batalla. Sin embargo, supones que el peque�o sab�a que ello era una posibilidad) */
== p_demol2 IF ~~ THEN @21 /* (Demoledor se muestra ansioso ante Michelson, como exigiendo que ejecute sus hechizos de una vez) */
END


	// DUSK ALIVE, Demole DEAD
I_C_T p_miche2 4 P_Dusk_Miche2_Talk2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9 /* �Michelson! Has arribado... lamento... lamento lo que pas� con Mathyus y Demole... de verdad... lo lamento... */
== p_miche2 IF ~~ THEN @10/* (Inesperadamente, Michelson se pone a bailar desenfrenado) */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11 /* Pero, �qu�...? */
== p_miche2 IF ~~ THEN @12 /* (Con una fuerza sorprendente, toma el cuerpo de Mathyus y con delicadeza, arroja sobre �l un polvo brillante que asumes debe pertenecer a sus extra�as gemas m�gicas) */ DO ~TakePartyItem ("p_matcor") DestroyItem ("p_matcor")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @13 /* Ya veo... intentar�s revivirlo... y tambi�n a Demole, �no? */
== p_miche2 IF ~~ THEN @14 /* (Michelson asiente velozmente con su cabeza) */
== p_miche2 IF ~~ THEN @15 /* (Ve que, tambi�n, llevan consigo el s�mbolo de Velshar�n de Anthagar. Con cierta duda, extiende su manito hacia ustedes para que se lo entreguen) */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @16 /* El s�mbolo de Velshar�n... si le encuentras utilidad a esto, amigo m�o... entonces es todo tuyo. */
== p_miche2 IF ~~ THEN @17 /* (El leprechaun toma el s�mbolo entre sus manos. Mira a su alrededor y luego observa al grupo) */ DO ~TakePartyItem ("p_simvel") DestroyItem ("p_simvel")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @18 /* Hm... creo que est� listo para llevarnos a casa, <CHARNAME>. Es decir, a nuestro plano. Ser� mejor que hablemos con �l cuando estemos listos... */
END


	// DUSK y DEMOLE DEAD
I_C_T p_miche2 2 P_Dusk_Miche2_Talk1
== p_miche2 IF ~~ THEN @4 /* (Sin embargo, ve que llevas contigo el cuerpo de Mathyus y parece que sus esperanzas vuelven, ya que se pone a bailar desenfrenado como es ya algo usual de su parte) */  DO ~TakePartyItem ("p_matcor") DestroyItem ("p_matcor")~
== p_miche2 IF ~~ THEN @5 /* (Con una fuerza sorprendente, toma el cuerpo de Mathyus y con delicadeza, arroja sobre �l un polvo brillante que asumes debe pertenecer a sus extra�as gemas m�gicas) */
== p_miche2 IF ~~ THEN @6 /* (Ve que, tambi�n, llevas contigo el s�mbolo de Velshar�n de Anthagar. Con cierta duda, extiende su manito hacia ti para que se lo entregues. Como no le ves utilidad al mismo, lo das sin m�s.) */  DO ~TakePartyItem ("p_simvel") DestroyItem ("p_simvel")~
== p_miche2 IF ~~ THEN @7 /* (El leprechaun mira a su alrededor y ve que Dusk y Demole, lamentablemente, han ca�do en batalla. Sin embargo, supones que el peque�o sab�a que ello era una posibilidad) */
END
