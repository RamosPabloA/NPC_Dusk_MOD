BEGIN ~p_huron~

IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global("P_DuskMatMission3","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0 /* ~(Un misterioso hur�n se encuentra en medio de la escena, haciendo nada, observando todo. Pareciera estar esperando a alguien)~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
Global("P_DuskMatMission3","GLOBAL",3)~ THEN BEGIN 1 // from:
  SAY @0 /* ~(Un misterioso hur�n se encuentra en medio de la escena, haciendo nada, observando todo. Pareciera estar esperando a alguien)~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
See("P_Dusk")
CombatCounter(0) 
!See([ENEMY])
Global("P_DuskMatMission3","GLOBAL",3)~ THEN BEGIN 2 // from:
  SAY @1 /* ~(El misterioso hur�n posa su atenci�n en Dusk. Parece incitar a que le siga)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",4)~ EXIT
END

IF ~Global("P_DuskMatMission3","GLOBAL",5)~ THEN BEGIN 3 // from:
  SAY @2 /* ~(Por alguna raz�n, pareces paralizarte al momento en que el hur�n se detiene y te observa con sus ojos brillantes. Del piso, parece surgir un oscuro humo, el cual rodea y hasta parece consumir al animal)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",6) ForceSpell(Myself,POOF_GONE)~ EXIT
END