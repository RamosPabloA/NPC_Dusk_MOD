BEGIN P_CELGH


IF ~InParty("P_Dusk")
See("P_Dusk")
Global("P_Dusk_Celine_Ghost_TalkBegin","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0 /* ~Amor mío... ¿cuánto tiempo ha pasado? Has venido a mí... ¿te unirás a mí en el gélido abrazo eterno, esposo mío?~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_Celine_Ghost_TalkBegin","GLOBAL",2)~ EXTERN ~P_DuskJ~ 324
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~¿No me reconoces, Ardusk? Soy tu esposa... soy aquella mujer a la que juraste proteger...~ */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from:
  SAY @24 /* ~ *El espíritu de Celine emite una macabra sonrisa antes de desvanecerse en una nube negra y sombría* ~ */
  IF ~~ THEN DO ~ SetGlobal("P_Dusk_Celine_Ghost_TalkBegin","GLOBAL",2) ForceSpell(Myself,POOF_GONE)~ EXIT
END

I_C_T P_CELGH 1 P_Dusk_CELGH_1
== P_CELGH IF ~~ THEN @2 /* Soy aquella a la que juraste amar hasta el último día de tu vida. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3 /* Y aún lo mantengo, Celine... no pasa un día en que no piense en ti. */
== P_CELGH IF ~~ THEN @4 /* Oh, Ardusk... es muy solitario aquí... el tiempo es como un océano infinito e insoportable... */
== P_CELGH IF ~~ THEN @5 /* Extraño tus brazos alrededor mío... extraño tu voz... el calor de tu cuerpo... */
== P_CELGH IF ~~ THEN @6 /* Es muy frío aquí, amor mío... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @7 /* Celine... */
== P_CELGH IF ~~ THEN @8 /* Aún hay tiempo, Ardusk... podemos estar juntos para siempre... podrás cumplir tu promesa conmigo... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9 /* Amor mío... lo lamento tanto... */
== P_CELGH IF ~~ THEN @10 /* ¿Qué lamentas, esposo mío? ¿Lamentas haber dejado que Darvin me lanzara aquella fatídica maldición? */
== P_CELGH IF ~~ THEN @11 /* ¿Lamentas no haber podido hacer nada para curarme? */
== P_CELGH IF ~~ THEN @12 /* ¿Lamentas haberme llevado a aquel maldito lugar por siempre hundido en las sombras? */
== P_CELGH IF ~~ THEN @13 /* ¿Lamentas... haberme matado? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @14 /* Celine... yo... yo no quería... */
== P_CELGH IF ~~ THEN @15 /* ¿No querías qué, amor mío? ¿Dejarme vivir? */
== P_CELGH IF ~~ THEN @16 /* Sé muy bien lo que pasó esa noche, Ardusk... Sé lo que sentiste. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @17 /* ¿Celine? */
== P_CELGH IF ~~ THEN @18 /* Sé que el miedo inundó tu corazón... no querías morir... ¡Y me dejaste morir en tu lugar! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @19 /* No fue así... */
== P_CELGH IF ~~ THEN @20 /* ¡Esa es la verdad, cobarde! Te escondes detrás de esa máscara de honor y lealtad... pero al único al que le eres leal es a ti mismo. */
== P_CELGH IF ~~ THEN @21 /* ~¡Mereces morir... y el engendro de Bhaal contigo!~ ~¡Mereces morir... y la hija de Bhaal contigo!~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @22 /* Ya veo... ¡Anthagar! Donde quieras que estés, sal de las sombras. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @23 /* En cuanto a ti, espectro... tienes el aspecto de mi amada esposa... pero no eres más que una vil copia de ella. Haré que tu creador pagué con sangre por sus pecados. */
END
