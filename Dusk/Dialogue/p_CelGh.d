BEGIN P_CELGH


IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_Dusk_Celine_Ghost_TalkBegin","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0 /* ~Amor m�o... �cu�nto tiempo ha pasado? Has venido a m�... �te unir�s a m� en el g�lido abrazo eterno, esposo m�o?~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_Celine_Ghost_TalkBegin","GLOBAL",2)~ EXTERN ~P_DuskJ~ 324
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~�No me reconoces, Ardusk? Soy tu esposa... soy aquella mujer a la que juraste proteger...~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @24 /* ~ *El esp�ritu de Celine emite una macabra sonrisa antes de desvanecerse en una nube negra y sombr�a* ~ */
  IF ~~ THEN DO ~ SetGlobal("P_Dusk_Celine_Ghost_TalkBegin","GLOBAL",2) ForceSpell(Myself,POOF_GONE)~ EXIT
END

I_C_T P_CELGH 1 P_Dusk_CELGH_1
== P_CELGH IF ~~ THEN @2 /* Soy aquella a la que juraste amar hasta el �ltimo d�a de tu vida. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3 /* Y a�n lo mantengo, Celine... no pasa un d�a en que no piense en ti. */
== P_CELGH IF ~~ THEN @4 /* Oh, Ardusk... es muy solitario aqu�... el tiempo es como un oc�ano infinito e insoportable... */
== P_CELGH IF ~~ THEN @5 /* Extra�o tus brazos alrededor m�o... extra�o tu voz... el calor de tu cuerpo... */
== P_CELGH IF ~~ THEN @6 /* Es muy fr�o aqu�, amor m�o... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @7 /* Celine... */
== P_CELGH IF ~~ THEN @8 /* A�n hay tiempo, Ardusk... podemos estar juntos para siempre... podr�s cumplir tu promesa conmigo... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9 /* Amor m�o... lo lamento tanto... */
== P_CELGH IF ~~ THEN @10 /* �Qu� lamentas, esposo m�o? �Lamentas haber dejado que Darvin me lanzara aquella fat�dica maldici�n? */
== P_CELGH IF ~~ THEN @11 /* �Lamentas no haber podido hacer nada para curarme? */
== P_CELGH IF ~~ THEN @12 /* �Lamentas haberme llevado a aquel maldito lugar por siempre hundido en las sombras? */
== P_CELGH IF ~~ THEN @13 /* �Lamentas... haberme matado? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @14 /* Celine... yo... yo no quer�a... */
== P_CELGH IF ~~ THEN @15 /* �No quer�as qu�, amor m�o? �Dejarme vivir? */
== P_CELGH IF ~~ THEN @16 /* S� muy bien lo que pas� esa noche, Ardusk... S� lo que sentiste. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @17 /* �Celine? */
== P_CELGH IF ~~ THEN @18 /* S� que el miedo inund� tu coraz�n... no quer�as morir... �Y me dejaste morir en tu lugar! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @19 /* No fue as�... */
== P_CELGH IF ~~ THEN @20 /* �Esa es la verdad, cobarde! Te escondes detr�s de esa m�scara de honor y lealtad... pero al �nico al que le eres leal es a ti mismo. */
== P_CELGH IF ~~ THEN @21 /* ~�Mereces morir... y el engendro de Bhaal contigo!~ ~�Mereces morir... y la hija de Bhaal contigo!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @22 /* Ya veo... �Anthagar! Donde quieras que est�s, sal de las sombras. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @23 /* En cuanto a ti, espectro... tienes el aspecto de mi amada esposa... pero no eres m�s que una vil copia de ella. Har� que tu creador pagu� con sangre por sus pecados. */
END
