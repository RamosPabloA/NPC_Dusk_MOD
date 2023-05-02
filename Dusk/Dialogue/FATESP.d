// Dialog para Dusk cuando es convocado por el Espiritu en TOB

EXTEND_TOP FATESP 6 #2
+ ~!Dead("P_Dusk") !InMyArea("P_Dusk") Global("P_DuskSummoned","GLOBAL",0)~ 
+ @0 /* Tráeme a Dusk, el Asesino de Magos. */
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("P_Dusk25",[1999.1228],0) 
SetGlobal("P_DuskSummoned","GLOBAL",1)~ GOTO 8
END
