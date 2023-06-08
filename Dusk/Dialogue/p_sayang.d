BEGIN ~p_sayang~

IF ~See("Rasaad")
InParty("Rasaad")
!StateCheck("Rasaad",STATE_SLEEPING)
RandomNum(4,1)
Global("P_Sayang_ITC_Rasaad1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~*Sayang corretea alrededor de Rasaad, formando un torbellino de polvareda.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Sayang_ITC_Rasaad1","GLOBAL",1)~ GOTO 1
END

IF 
~~ THEN BEGIN 1 // from:
  SAY @4 /* ~*Sayang emite un profundo aullido de aprobaci�n y se sienta a esperar a Rasaad.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Dorn")
InParty("Dorn")
!StateCheck("Dorn",STATE_SLEEPING)
RandomNum(4,2)
Global("P_Sayang_ITC_Dorn1","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @5 /* ~*Sayang, en su habitual trote, se detiene en seco al presenciar la sombr�a presencia de Dorn.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Sayang_ITC_Dorn1","GLOBAL",1)~ GOTO 3
END

IF 
~~ THEN BEGIN 3 // from:
  SAY @10 /* ~*Sayang sale disparada como un rayo, alej�ndose lo m�s posible de Dorn.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~See("Jaheira")
InParty("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
RandomNum(4,3)
Global("P_Sayang_ITC_Jaheira1","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @11 /* ~*Sayang corretea a gran velocidad alrededor de Jaheira.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Sayang_ITC_Jaheira1","GLOBAL",1)~ GOTO 5
END

IF 
~~ THEN BEGIN 5 // from:
  SAY @16 /* ~*Sayang se incorpora con rapidez y mueve la cola con gran velocidad ante las palabras de Jaheira. Luego, sale disparada como un rayo, corriendo de un lado para otro.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~See("Nalia")
InParty("Nalia")
!StateCheck("Nalia",STATE_SLEEPING)
RandomNum(4,4)
Global("P_Sayang_ITC_Nalia1","GLOBAL",0)
~ THEN BEGIN 6 // from:
  SAY @17 /* ~*Sayang se acerca a Nalia y comienza a olfatearla. Levanta la cabeza y mira con un brillo incesante a la humana.*~ */
  IF ~~ THEN DO ~SetGlobal("P_Sayang_ITC_Nalia1","GLOBAL",1)~ GOTO 7
END

IF 
~~ THEN BEGIN 7 // from:
  SAY @23 /* ~*Sayang deja que Nalia le abrace mientras se emociona moviendo su cola de un lado para el otro.*~ */
  IF ~~ THEN EXIT
END


IF
~RandomNum(5,1)~ THEN BEGIN 8 // from:
  SAY @24 /* ~*Sayang ladra con poder. Esto ocasiona que te acerques con rapidez. Al verte, sale corriendo, porque sabe que estabas por rega�arla.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 9 // from:
  SAY @25 /* ~*Sayang corre de un lado para el otro, levantando un hurac�n de polvo. Tanto, que ensucia todas tus pertenencias. Cuando ve que te diriges hacia ella, se detiene unos segundos y luego emprende la hu�da. Claramente no le gusta que la rega�en.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 10 // from:
  SAY @26 /* ~*Llegas a creer que Thiago es el que m�s comil�n ya que siempre est� pidiendo comida, pero te casi te convences de lo contrario cuando ves, en m�s de una ocasi�n, a Sayang olfateando tus pertenencias en busca de alimento.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 11 // from:
  SAY @27 /* ~*Por un momento, ves a Sayang echada en el piso. Ves que se encuentra profundamente dormida, patas para arriba, mostrando toda su panza. Trotar de un lado a otro la debe dejar muy exhausta.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 12 // from:
  SAY @28 /* ~*Sayang trota de un lado a otro en todo su esplendor de worg. Su velocidad es tal que tienes por seguro que ninguna presa habr�a de escaparse de sus fauces. Sin embargo, sabes que no tiene necesidad de cazar a menos que se lo ordenes, as� que s�lo corretea mientras persigue insectos voladores o mariposas y ves qu� no se los come. S�lo lo hace por el placer de ejercitarse.*~ */
  IF ~~ THEN EXIT
END

I_C_T P_Sayang 6 P_Sayang_Nalia1
== NaliaJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @18 /* Buena muchacha. Vaya que te gustan las caricias, �verdad? Me recuerdas a mis cachorros en el castillo. �C�mo los extra�o!*/
== P_Sayang IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @19 /* *La worg inclina la cabeza, sin saber bien a qu� se refiere.*  */
== NaliaJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @20 /* A padre le gustaban los sabuesos de caza. Estoy segura de que t� ser�as una muy buena. Aunque... creo que perteneces a la libertad. */
== P_Sayang IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @21 /* *Sayang levanta una de sus patas delanteras y se la ofrece a Nalia.*  */
== NaliaJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @22 /* Por lo pronto, ni�a, creo que tendr� que conformarme con abrazarte. */
END


I_C_T P_Sayang 4 P_Sayang_Jaheira1
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @12 /* Debo decir que me alegra ver que tengas tanta energ�a, peque�a worg. Pero procura guardar algo por si nos enfrentamos a alg�n enemigo imprevisto. */
== P_Sayang IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @13 /* *Sayang se detiene al frente de Jaheira y se sienta.*  */
== P_BELLD IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @14 /* Eres sorprendente, seguidora de Silvanus. Es muy dif�cil controlar a Sayang. Su esp�ritu tiene demasiado... �mpetu. */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @15 /* Me gusta tu esp�ritu, Sayang. Eres una buena guardiana para Bellfame. Ella debe estar muy orgullosa de ti. */
END


I_C_T P_Sayang 2 P_Sayang_Dorn1
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @6 /* Al�jate de m�, criatura insignificante. Te lo advierto, ninfa. Ordena a tu bestia que no se acerque m�s a mis pertenencias. */
== P_Sayang IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @7 /* *Sayang baja sus orejas y agacha la cabeza ante las palabras del semiorco.*  */
== P_BELLD IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @8 /* Mortal, har� lo que dices, s�lo en beneficio de <CHARNAME>. De no ser as�, es muy probable que nos encontrar�amos como enemigos el uno con el otro. */
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @9 /* Bien, as� me gusta. Ahora, vete de aqu�. */
END


I_C_T P_Sayang 0 P_Sayang_Rasaad1
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @1 /* �Qu� sucede, Sayang? Ah, �est�s buscando una carrera otra vez? */
== P_Sayang IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @2 /* *Sayang demuestra un gran brillo en sus ojos y parece dibujar una sonrisa en su hocico.*  */
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @3 /* De acuerdo, de acuerdo. Deja que termine mi concentraci�n y nos pondremos a ello. */
END
