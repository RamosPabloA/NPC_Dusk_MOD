// Read this after all SoA dialogue. Start reading with P_Dusk.d
// This is a dialogue file for Dusk's kickout in ToB.

BEGIN P_Dus25P

IF ~Global("P_DuskToBKickedOut","GLOBAL",0)~ b1
SAY @0 /* Supongo que un cambio de estrategia de vez en cuando no viene mal, ¿no es así, <CHARNAME>? */
++ @1 /* Perdón, Dusk. Fue un error. No te vayas. */ DO ~JoinParty()~ EXIT

+ ~AreaCheck("AR4500")~ + @2 /* Sólo espérame por aquí. */ DO ~SetGlobal("P_DuskToBKickedOut","GLOBAL",1) MoveToPointNoInterrupt([1637.1430]) Face(0)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @2 /* Sólo espérame por aquí. */ DO ~SetGlobal("P_DuskToBKickedOut","GLOBAL",1)~ EXIT

+ ~!AreaCheck("AR4500") !AreaCheck("AR4000") !AreaCheck("AR6200")~ + @3 /* Te enviaré a la bolsa planar, Dusk. Espérame allí. */ DO ~SetGlobal("P_DuskToBKickedOut","GLOBAL",1)
CreateVisualEffectObject("spdimndr",Myself)
Wait(2)
MoveBetweenAreas("AR4500",[1637.1430],0)~ EXIT 

END

IF ~Global("P_DuskToBKickedOut","GLOBAL",1)~ b2
SAY @4 /* ¿Es hora de unir fuerzas una vez más? */
++ @5 /* Así es, Dusk. Únete a mí. */ + b2.1
++ @6 /* No, por el momento no. */ + b2.2
END 

IF ~~ b2.1
SAY @7 /* Excelente. En marcha, pues. */
IF ~~ DO ~SetGlobal("P_DuskToBKickedOut","GLOBAL",0) JoinParty()~ EXIT
END

IF ~~ b2.2
SAY @8 /* Te esperaré aquí hasta que cambies de opinión, <CHARNAME>. */
IF ~~ EXIT
END

