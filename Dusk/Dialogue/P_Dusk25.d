BEGIN P_Dusk25

IF ~Global("P_DuskSummoned","GLOBAL",1)~ b1
SAY @0 /* �D�nde estoy? Por Cormyr, otra vez estoy en el Abismo... */
++ @1 /* No, Dusk. Soy yo. Este lugar es una bolsa planar que me pertenece. */ DO ~SetGlobal("P_DuskSummoned","GLOBAL",2)~ + b1.1
END

IF ~~ b1.1
SAY @3 /* Ya veo. No sab�a que bland�as tal poder. */
= @4 /* Lo �ltimo que se supo de ti fue en Suldanessellar. Pero veo que, dentro de todo, te encuentras bien. */
= @5 /* �Me has convocado para viajar contigo? Si es as�, sabes que cuentas conmigo. */
++ @6 /* As� es. �nete a m�, Dusk. */ + b1.2
++ @7 /* A�n no. Por favor, esp�rame por aqu�, Dusk. */ + b1.3
END

IF ~~ b1.2
SAY @8 /* �Excelente! En marcha. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b1.3
SAY @9 /* De acuerdo, <CHARNAME>. Te esperar�. */
IF ~~ DO ~MoveToPointNoInterrupt([1637.1430]) Face(5)~ EXIT
END

IF ~Global("P_DuskSummoned","GLOBAL",2)~ b3
SAY @13 /* Veo que has regresado. �Esta vez me llevar�s contigo? */
++ @14 /* As� es. �nete a m�, Dusk. */ + b3.1
++ @15 /* A�n no. */ + b3.2
END 

IF ~~ b3.1
SAY @16 /* �Excelente, <CHARNAME>! En marcha. */
IF ~~ DO ~JoinParty()~ EXIT
END

IF ~~ b3.2
SAY @17 /* Supongo que tendr� que esperar... */
IF ~~ EXIT
END