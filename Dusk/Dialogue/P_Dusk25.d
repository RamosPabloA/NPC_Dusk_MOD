BEGIN P_Dusk25

IF ~Global("P_DuskSummoned","GLOBAL",1)~ b1
SAY @0 /* ¿Dónde estoy? Por Cormyr, otra vez estoy en el Abismo... */
++ @1 /* No, Dusk. Soy yo. Este lugar es una bolsa planar que me pertenece. */ DO ~SetGlobal("P_DuskSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY @3 /* Ya veo. No sabía que blandías tal poder. */
= @4 /* Lo último que se supo de ti fue en Suldanessellar. Pero veo que, dentro de todo, te encuentras bien. */
= @5 /* ¿Me has convocado para viajar contigo? Si es así, sabes que cuentas conmigo. */
++ @6 /* Así es. Únete a mí, Dusk. */ + b1.2
++ @7 /* Aún no. Por favor, espérame por aquí, Dusk. */ + b1.3
END

IF ~~ b1.2
SAY @8 /* ¡Excelente! En marcha. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.3
SAY @9 /* De acuerdo, <CHARNAME>. Te esperaré. */
IF ~~ DO ~MoveToPointNoInterrupt([1637.1430]) Face(5)~ EXIT
END

IF ~Global("P_DuskSummoned","GLOBAL",2)~ b3
SAY @13 /* Veo que has regresado. ¿Esta vez me llevarás contigo? */
++ @14 /* Así es. Únete a mí, Dusk. */ + b3.1
++ @15 /* Aún no. */ + b3.2
END 

IF ~~ b3.1
SAY @16 /* ¡Excelente, <CHARNAME>! En marcha. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @17 /* Supongo que tendré que esperar... */
IF ~~ EXIT
END