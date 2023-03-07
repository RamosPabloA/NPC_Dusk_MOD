// creator  : weidu (version 24700)
// argument : BOY1.DLG
// game     : .
// source   : ./DATA/DIALOG.BIF
// dialog   : .\dialog.tlk
// dialogF  : .\dialogf.tlk

BEGIN ~BOY1~ 2 // non-zero flags may indicate non-pausing dialogue
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~!Global("RescuedMother","GLOBAL",1)
Global("SaveMyMom","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY #14956 /* ~*sollozo* Mi mam� todav�a est� dentro. Dicen que no puede salir.~ */
  IF ~~ THEN REPLY #14957 /* ~�De qu� est�s hablando, muchacho?~ */ GOTO 3
  IF ~~ THEN REPLY #14958 /* ~Deja de lloriquear. Yo no tengo nada que ver.~ */ GOTO 1
  IF ~~ THEN REPLY #14959 /* ~Ver� lo que puedo hacer, muchachito.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 3.1 0.1
  SAY #14961 /* ~*lloriqueo* Yo... yo... yo... s�lo quiero estar con mi mam�...~ */
  //Primero chequeo que si Jaheira, Yoshimo o Dusk NO se encuentran en el grupo, entonces EXIT
  //Segundo, inserto el VALID para Dusk, indicando que si est� con Jaheira Y/O Yoshimo, comience el ITC
  //Se repite para todas las combinaciones posibles para priorizar el ITC de Dusk, ya que en dicho ITC
  //Cargamos el ITC de Jaheira y Yoshimo (ver ~P_DuskJ~ 0)
  //Debajo de lo agregado, dejamos el c�digo como est�, EXCEPTO que agregamos el condicional de 
  //que Dusk NO est� en la party. Esto hace funcionar al ITC original si Dusk NO est� en el grupo
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Yoshimo") !IsValidForPartyDialog("P_Dusk")~ THEN EXIT
  IF ~ IsValidForPartyDialog("P_Dusk") IsValidForPartyDialog("Jaheira") IsValidForPartyDialog("Yoshimo")
  ~ THEN EXTERN ~P_DuskJ~ 0
  IF ~ IsValidForPartyDialog("P_Dusk") IsValidForPartyDialog("Jaheira")
  ~ THEN EXTERN ~P_DuskJ~ 0
  IF ~ IsValidForPartyDialog("P_Dusk") IsValidForPartyDialog("Yoshimo")
  ~ THEN EXTERN ~P_DuskJ~ 0
  IF ~ IsValidForPartyDialog("P_Dusk")
  ~ THEN EXTERN ~P_DuskJ~ 0
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Yoshimo")~ THEN EXIT
  IF ~!IsValidForPartyDialog("P_Dusk") IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 311
  IF ~!IsValidForPartyDialog("Jaheira") !IsValidForPartyDialog("P_Dusk")
IsValidForPartyDialog("Yoshimo")~ THEN EXTERN ~YOSHJ~ 22
END

IF ~~ THEN BEGIN 2 // from: 3.0 0.2
  SAY #14963 /* ~*lloriqueo* De... de acuerdo, se�or.~ ~*lloriqueo* De... de acuerdo, se�ora.~ */
  IF ~!IsValidForPartyDialog("Minsc")~ THEN DO ~SetGlobal("SaveMyMom","GLOBAL",1)~ UNSOLVED_JOURNAL #34112 /* ~Encontrar a la madre del chico dentro de la carpa.

Un chiquillo est� perdido fuera del circo mientras que al parecer su madre est� atrapada dentro. Ver� si a�n est� dentro.~ */ EXIT
  IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~SetGlobal("SaveMyMom","GLOBAL",1)~ EXTERN ~MINSCJ~ 67
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #14965 /* ~Mi mam� entr� en la carpa para ver un espect�culo. Pero ha oDusrido algo y ahora no sale nadie. Adem�s, hay guardias que ya no dejan entrar a nadie. �Pero mi mam� est� dentro! �Quiero estar con mi mam�!~ */
  IF ~~ THEN REPLY #14966 /* ~Ir� a ver si puedo encontrar a tu madre, �de acuerdo? C�lmate y s� valiente.~ */ GOTO 2
  IF ~~ THEN REPLY #14968 /* ~Es una l�stima, muchacho. Una verdadera l�stima.~ */ GOTO 1
END

IF WEIGHT #2 /* Triggers after states #: 5 even though they appear after this state */
~Global("RescuedMother","GLOBAL",1)
~ THEN BEGIN 4 // from:
  SAY #19627 /* ~�Gracias por salvar a mi madre, se�or! �Pap� estar� muy contento!~ ~�Gracias por salvar a mi madre, se�ora! �Pap� estar� muy contento!~ */
  IF ~~ THEN DO ~AddExperienceParty(2500)
EscapeArea()
~ EXIT
END

IF WEIGHT #1 ~!Global("RescuedMother","GLOBAL",1)
Global("SaveMyMom","GLOBAL",1)
~ THEN BEGIN 5 // from:
  SAY #58782 /* ~Por favor, se�or... dijisteis que encontrar�as a mi mam�. (lloriqueo) �Por favor, encontradla, por favor!~ ~Por favor, se�ora... dijisteis que encontrar�as a mi mam�. (lloriqueo) �Por favor, encontradla, por favor!~ */
  IF ~~ THEN EXIT
END
