// creator  : weidu (version 24700)
// argument : AMTGEN01.DLG
// game     : .
// source   : ./DATA/25DIALOG.BIF
// dialog   : .\lang\es_es\dialog.tlk
// dialogF  : .\lang\es_es\dialogf.tlk

BEGIN ~AMTGEN01~

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0 // from:
  SAY #71773 /* ~¡Alto! Soy el general Jamis Tombelzhén, representante del rey y de la reina de Tezhyr. ¡<CHARNAME>, se os acusa de crímenes contra nuestra nación y, es más, contra toda la humanidad!~ */
  IF ~ReputationGT(Player1,14)~ THEN REPLY #71774 /* ~¡¿Qué?! ¡¿Qué crímenes?! ¡No he hecho nada malo!~ */ GOTO 1
  IF ~~ THEN REPLY #71775 /* ~¡¿De qué crímenes se me acusa exactamente?!~ */ GOTO 1
  IF ~~ THEN REPLY #71776 /* ~¿Va a haber un juicio? ¿Puedo defenderme?~ */ GOTO 2
  IF ~~ THEN REPLY #71778 /* ~No espero que comprendáis lo que estoy haciendo, general.~ */ GOTO 1
  IF ~ReputationLT(Player1,5)~ THEN REPLY #71777 /* ~¡Bah! ¡Vuestro ejército no tendrá más suerte que los demás al intentar capturarme!~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 2.0 0.4 0.3 0.1 0.0
  SAY #71779 /* ~Sois un Hijo de Bhaal, y el responsable de la destrucción de la ciudad de Saradush. Se ha ordenado vuestra ejecución, <CHARNAME>. Que los dioses se apiaden de vuestra alma.~ ~Sois una Hija de Bhaal, y la responsable de la destrucción de la ciudad de Saradush. Se ha ordenado vuestra ejecución, <CHARNAME>. Que los dioses se apiaden de vuestra alma.~ */
  IF ~!IsValidForPartyDialog("P_Dusk")~ THEN DO ~SetGlobal("TethyrBattleStart","GLOBAL",1)
Enemy()
Shout(ALERT)~ EXIT
  IF ~ IsValidForPartyDialog("P_Dusk")
  ~ THEN EXTERN ~P_Dus25J~ 100
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #71780 /* ~Sois culpable, <CHARNAME>. No hay duda de ello. Y no nos arriesgaremos a que nos pongáis más en peligro.~ */
  IF ~~ THEN GOTO 1
END
