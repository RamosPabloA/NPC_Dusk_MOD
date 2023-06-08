BEGIN ~p_uma~

IF ~See("Hexxat")
InParty("Hexxat")
!StateCheck("Hexxat",STATE_SLEEPING)
RandomNum(3,1)
Global("P_uma_ITC_Hexxat1","GLOBAL",0)
~ THEN BEGIN 0 // from:
  SAY @0 /* ~*Uma se sienta al lado de Hexxat con una comodidad que pocos se atrever�an a demostrar ante la oscura presencia de la vampiresa.*~ */
  IF ~~ THEN DO ~SetGlobal("P_uma_ITC_Hexxat1","GLOBAL",1)~ GOTO 1
END

IF 
~~ THEN BEGIN 1 // from:
  SAY @5 /* ~*Uma emite un aullido mientras es acariciada por Hexxat. Ciertamente, la loba se siente a gusto a su lado.*~ */
  IF ~~ THEN EXIT
END

IF ~See("Imoen2")
InParty("Imoen2")
!StateCheck("Imoen2",STATE_SLEEPING)
RandomNum(3,2)
Global("P_uma_ITC_Imoen21","GLOBAL",0)
~ THEN BEGIN 2 // from:
  SAY @6 /* ~*Uma parece corretar sigilosamente y observa a Imoen con una actitud un tanto juguetona.*~ */
  IF ~~ THEN DO ~SetGlobal("P_uma_ITC_Imoen21","GLOBAL",1)~ GOTO 3
END

IF 
~~ THEN BEGIN 3 // from:
  SAY @12 /* ~*Uma se escapa con velocidad y su pelaje parece confundirse con las sombras del paraje.*~ */
  IF ~~ THEN DO ~RunAwayFrom([PC],10)~ EXIT
END

IF ~See("Aerie")
InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
RandomNum(3,3)
Global("P_uma_ITC_Aerie1","GLOBAL",0)
~ THEN BEGIN 4 // from:
  SAY @13 /* ~*Uma se echa de espaldas al lado de Aerie y expone su panza a la avariel para que �sta la acaricie.*~ */
  IF ~~ THEN DO ~SetGlobal("P_uma_ITC_Aerie1","GLOBAL",1)~ GOTO 5
END

IF 
~~ THEN BEGIN 5 // from:
  SAY @18 /* ~*Uma sigue recibiendo las caricias de Aerie mientras se relaja con el tono de su voz.*~ */
  IF ~~ THEN DO ~~ EXIT
END


IF
~RandomNum(5,1)~ THEN BEGIN 6 // from:
  SAY @19 /* ~*Uma se pone a tu lado y espera fervientemente unas caricias de tu parte. Por su aspecto l�brego, primero hubieses pensado que quer�a devorarte. Ahora s�lo observas como se regodea cuando la acaricias.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF
~RandomNum(5,2)~ THEN BEGIN 7 // from:
  SAY @20 /* ~*Uma comienza a cavar en un peque�o lugar, arrojando tierra por todos lados. Intentas comprender la raz�n, pero imaginas que es algo rutinario para ella.*~ */
  IF ~~ THEN DO ~~ EXIT
END

IF
~RandomNum(5,3)~ THEN BEGIN 8 // from:
  SAY @21 /* ~*De la nada, Uma comienza a ladrar. Pero su ladrido es extra�o, casi como si estuviese tosiendo como un humano que se encuentra en agon�a. Bellfame te indica que no te preocupes, que es simplemente algo que Uma hace cuando est� emocionada.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,4)~ THEN BEGIN 9 // from:
  SAY @22 /* ~*Los arg�nteos ojos de Uma se posan en ti. Durante unos segundos te observa con solemnidad y luego muestra sus afilados colmillos y su lengua, dibujando una sonrisa en su hocico.*~ */
  IF ~~ THEN EXIT
END

IF
~RandomNum(5,5)~ THEN BEGIN 10 // from:
  SAY @23 /* ~*Sientes una fr�a presencia a tu lado. No es otra m�s que Uma, quien se ha ocultado en las sombras s�lo para sorprenderte. Pretendes estar asombrado, haciendo que Uma comience a corretear a tu alrededor, demostrando alegr�a ante su juego.*~ */
  IF ~~ THEN EXIT
END

I_C_T P_uma 4 P_uma_Aerie1
== AerieJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @14 /* �Te gustan los mimos, Uma! Y no es de esperar. Eres sumamente hermosa. */
== P_uma IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @15 /* *Uma jadea y mueve la cola, levantando una sutil polvareda.*  */
== P_BELLD IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @16 /* Pese a la sombr�a actitud de Uma, pareces agradarle, querida. Aunque no es de sorprender. Tu naturaleza afable es un don en estos tiempos. */
== AerieJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @17 /* Amo a tus animales, Bellfame. En cierto sentido, e-es un alivio pensar que est�n a salvo en el Plano Astral. */
END


I_C_T P_uma 2 P_uma_Imoen21
== Imoen2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @7 /* Hmmm... me pregunto a d�nde habr� dejado mi cinta de cabello. Si tengo los mechones sueltos me cubren la cara y as� se me dificulta lugar para <CHARNAME>. */
== P_uma IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @8 /* *Uma para sus orejas y escucha atenta a las palabras de Imoen. Parece divertirse.*  */
== Imoen2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @9 /* �D�nde estar�? Es posible que... una loba de pelaje negro y actitud traviesa... �me la haya robado? */
== P_uma IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @10 /* *Uma muestra sus blancecinos colmillos y entre ellos se ve una cinta de cabello color avellana. Imoen la observa divertida y Uma comienza la hu�da.*  */
== Imoen2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @11 /* �Ja! Lo sab�a. �Ven aqu�, peque�a tramposa! �Otra vez hurgando mis cosas, eh? �Te atrapar�! */
END


I_C_T P_uma 0 P_uma_Hexxat1
== HexxatJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @1 /* Ah, la cachorra de las sombras viene de nuevo a m�. No puedes mantenerte alejada de m�, �verdad? */
== P_uma IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @2 /* *Uma mueve la cola ante la voz de Hexxat y sus enormes ojos brillan de admiraci�n.*  */
== P_BELLD IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @3 /* Uma siempre se ha visto atra�da hacia las sombras. Puede que su naturaleza sea oscura, pero eso no la hace de sangre fr�a como t�, criatura de la noche. */
== HexxatJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @4 /* Has criado a una hermosa criatura, ninfa. Soy m�s que capaz de admirar su belleza... y de comprender su naturaleza poco... apreciada. */
END
