BEGIN P_BABA

// Bloque 1 (FTF)

IF WEIGHT #0 ~RandomNum(3,1)~ 
THEN BEGIN 0 
  SAY @1 /* El pequeño Baba te mira con sus grandes ojos cuando te acercas. Comienza a mover la cola, no sabes muy bien si eso significa que está feliz o molesto. Mueve su diminuto hocico y emite algo que parece ser una especie de ladrido, lo que te deja confundido ya que estás interactuando con un roedor. */
  IF ~HPGT(Myself,9)~ THEN REPLY @2 /* ¡Salve, gran Baba! Sé que no soy digno de dirigirme a ti, pero con el debido respeto, me atrevo a hacer solicitud de tus servicios. Si tienes algún ítem de valor para mí, ¿sería el gran Baba tan magnánimo de entregármelos y así aligerar su carga? */ GOTO 20
  IF ~HPGT(Myself,9)~ THEN REPLY @3 /* ¿Quién es el ratoncito más lindo del mundo? ¡Tú lo eres, sí, Baba, tú lo eres! Y como es el ratoncito más lindo del mundo, seguro vas a darme lo que sea que tengas de valor contigo, ¿no es así? (intentas acariciarlo, mientras esbozas una gran sonrisa forzada) */ GOTO 21
  IF ~HPGT(Myself,9)~ THEN REPLY @4 /* Oye, Baba. ¿Quieres un trozo de pastel? Debo tener algo guardado en mi mochila. Te daré una porción si me das lo que has robado, ¿qué te parece? */ GOTO 22
  IF ~ HPLT(Myself,10) ~ THEN REPLY @22 /* Oye Baba, ¿te encuentras bien? Pareces más nervioso que de costumbre. ¿Te encuentras herido? */ GOTO 29
END

IF ~~ THEN BEGIN 20 
  SAY @5 /* Por unos segundos, parece que has logrado calar en el orgullo de Baba. Pero de repente, comienza a sacudirse como un loco y huye de ti, barbotando gruñidos. */
  IF ~~ THEN DO ~RunAwayFrom([PC],100)~ EXIT
END

IF ~~ THEN BEGIN 21 
  SAY @6 /* Durante los primeros segundos, te mira con desconfianza. Pero, finalmente, se rinde ante tus caricias mientras emite algunos extraños sonidos agudos. Baba decide darte todo lo que tiene en su inventario. */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 22 
  SAY @7 /* Cuando mencionas comida, las orejas de Baba se estiran durante un momento. Pero al cabo de unos segundos, se percata de que sólo estás intentando sobornarlo. Su orgullo se hiere y sale corriendo como un desquiciado, mientras emite barboteos de furia contra ti. */
  IF ~~ THEN DO ~RunAwayFrom([PC],100)~ EXIT
END

// Bloque 2 (TFF)

IF WEIGHT #1 ~ RandomNum(3,2)
~ THEN BEGIN 1 // from:
 SAY @8 /* El pequeño Baba te mira con sus grandes ojos cuando te acercas. Comienza a saltar como un desquiciado y no sabes si eso significa que está feliz de verte o quizás planea atacarte. Mueve sus manitos y emite sonidos que, inconfundiblemente, parecen los de un cachorro canino, lo que te deja confundido ya que estás interactuando con un roedor. */
  IF ~HPGT(Myself,9)~ THEN REPLY @9 /* ¡Salve, gran Baba! Sé que no soy digno de dirigirme a ti, pero con el debido respeto, me atrevo a hacer solicitud de tus servicios. Si tienes algún ítem de valor para mí, ¿sería el gran Baba tan magnánimo de entregármelos y así aligerar su carga? */ GOTO 23
  IF ~HPGT(Myself,9)~ THEN REPLY @10 /* ¿Quién es el ratoncito más lindo del mundo? ¡Tú lo eres, sí, Baba, tú lo eres! Y como es el ratoncito más lindo del mundo, seguro vas a darme lo que sea que tengas de valor contigo, ¿no es así? (intentas acariciarlo, mientras esbozas una gran sonrisa forzada) */ GOTO 24
  IF ~HPGT(Myself,9)~ THEN REPLY @11 /* Oye, Baba. ¿Quieres un trozo de pastel? Debo tener algo guardado en mi mochila. Te daré una porción si me das lo que has robado, ¿qué te parece? */ GOTO 25
  IF ~ HPLT(Myself,10) ~ THEN REPLY @22 /* Oye Baba, ¿te encuentras bien? Pareces más nervioso que de costumbre. ¿Te encuentras herido? */ GOTO 29
END

IF ~~ THEN BEGIN 23 
  SAY @12 /* Baba, de repente erguido, parece estar de acuerdo contigo, emitiendo sonidos extraños de canino. El hecho de que hayas hablado con la verdad, le ha convencido de entregarte lo que tiene en su inventario. */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

IF ~~ THEN BEGIN 24 
  SAY @13 /* Por unos segundos casi logras convencerlo, pero Baba descubre que sólo quieres lo que él tiene, por lo que sale corriendo mientras le escuchas quejarse en un idioma incomprensible. */
  IF ~~ THEN DO ~RunAwayFrom([PC],100)~ EXIT
END

IF ~~ THEN BEGIN 25 
  SAY @14 /* Cuando mencionas comida, las orejas de Baba se estiran durante un momento. Pero al cabo de unos segundos, se percata de que sólo estás intentando sobornarlo. Su orgullo se hiere y sale corriendo como un desquiciado, mientras emite barboteos de furia contra ti. */
  IF ~~ THEN DO ~RunAwayFrom([PC],100)~ EXIT
END


// Bloque 3 (FFT)

IF WEIGHT #2 ~ RandomNum(3,3)
~ THEN BEGIN 2 // from:
 SAY @15 /* El pequeño Baba te mira con sus grandes ojos cuando te acercas. Comienza a correr alrededor tuyo sin razón aparente y no sabes si lo hace porque está feliz de verte o porque planea robarte alguna joya de valor que puedas poseer. Se te sube por tus ropas, trepando por una de tus piernas. Intentas sacártelo de encima pero es difícil. Mientras, emite sonido de jadeo, similares a los de un perro, lo que te deja extrañado, porque sabes que interactúas con un roedor. */
  IF ~HPGT(Myself,9)~ THEN REPLY @16 /* ¡Salve, gran Baba! Sé que no soy digno de dirigirme a ti, pero con el debido respeto, me atrevo a hacer solicitud de tus servicios. Si tienes algún ítem de valor para mí, ¿sería el gran Baba tan magnánimo de entregármelos y así aligerar su carga? */ GOTO 26
  IF ~HPGT(Myself,9)~ THEN REPLY @17 /* ¿Quién es el ratoncito más lindo del mundo? ¡Tú lo eres, sí, Baba, tú lo eres! Y como es el ratoncito más lindo del mundo, seguro vas a darme lo que sea que tengas de valor contigo, ¿no es así? (intentas acariciarlo, mientras esbozas una gran sonrisa forzada) */ GOTO 27
  IF ~HPGT(Myself,9)~ THEN REPLY @18 /* Oye, Baba. ¿Quieres un trozo de pastel? Debo tener algo guardado en mi mochila. Te daré una porción si me das lo que has robado, ¿qué te parece? */ GOTO 28
  // Test HPLT
  IF ~ HPLT(Myself,10) ~ THEN REPLY @22 /* Oye Baba, ¿te encuentras bien? Pareces más nervioso que de costumbre. ¿Te encuentras herido? */ GOTO 29
END

IF ~~ THEN BEGIN 26 
  SAY @19 /* Por unos segundos, parece que has logrado calar en el orgullo de Baba. Pero de repente, comienza a sacudirse como un loco y huye de ti, barbotando gruñidos. */
  IF ~~ THEN DO ~RunAwayFrom([PC],100)~ EXIT
END

IF ~~ THEN BEGIN 27 
  SAY @20 /* Por unos segundos casi logras convencerlo, pero Baba descubre que sólo quieres lo que él tiene, por lo que sale corriendo mientras le escuchas quejarse en un idioma incomprensible. */
  IF ~~ THEN DO ~RunAwayFrom([PC],100)~ EXIT
END

IF ~~ THEN BEGIN 28 
  SAY @21 /* Si bien ves el evidente desagrado que tiene Baba sobre ti, el pequeñuelo se ha dado cuenta de que lleva varias horas sin comer, por lo que decide darte lo que ha conseguido, a cambio de la promesa de comida. */
  IF ~~ THEN DO ~GivePartyAllEquipment()~ EXIT
END

// HPLT Test
IF ~~ THEN BEGIN 29 
  SAY @23 /* Baba parece indignarse por tan obvia afirmación, por lo que decide mostrarte con sus pequeñas manitos dónde tiene la herida de combate. Luego, decide huir de ti, ya que pareces no preocuparte por su bienestar. */
  IF ~~ THEN DO ~RunAwayFrom([PC],100)~ EXIT 
END
