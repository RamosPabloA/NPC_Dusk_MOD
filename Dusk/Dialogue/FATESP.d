// Dialog para Dusk cuando es convocado por el Espiritu en TOB

// Dusk is summoned via Fate Spirit. This code is taken directly from the game.
// #2 means that Dusk's line(summoning Dusk) will be placed right after the first two lines, Anomen's and Aerie's. Unfortunately, we can't account for all NPCs like Adrian and Arath, but at least it's best to have an option to summon Dusk right after Yoshimo. 
// Lots of lines here, I know. 

EXTEND_TOP FATESP 6 #2
+ ~!Dead("P_Dusk") !InMyArea("P_Dusk") Global("P_DuskSummoned","GLOBAL",0)~ 
+ @0 /* Tráeme a Dusk, el Asesino de Magos. */
DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
Wait(2) 
CreateCreature("P_Dusk25",[1999.1228],0) 
SetGlobal("P_DuskSummoned","GLOBAL",1)~ GOTO 8
END
