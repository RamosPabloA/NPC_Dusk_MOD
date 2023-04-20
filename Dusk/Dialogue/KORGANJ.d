
BEGIN ~KORGANJ~

IF ~~ THEN BEGIN 0 // from: 15.0
  SAY #2414 /* ~La tumba me reclama, y puede que me vea forzado a escuchar su llamada y vaya disfrutar del jornal sin mis compañeros a mi lado.~ */
  IF ~~ THEN REPLY #2536 /* ~Me he cansado de todo esto. He decidido no ir a la tumba.~ */ GOTO 191
  IF ~~ THEN REPLY #2537 /* ~Comprendo vuestra protesta, Korgan. No os preocupéis. Vamos a la tumba.~ */ GOTO 193
END

IF ~  GlobalTimerExpired("KorganBook","GLOBAL")
Global("KorganComplain","LOCALS",1)
~ THEN BEGIN 1 // from:
  SAY #2415 /* ~¡Muy bien, bebetierras! ¡Ya he aguantado bastante vuestras tonterías! Tengo trabajo que hacer, ¡y no lo voy a hacer con jodíos tejedores!~ [KORGAN74] */
  IF ~~ THEN REPLY #2541 /* ~Tranquilo, Korgan. Esperad un momento. Iremos a la tumba ahora mismo.~ */ GOTO 194
  IF ~~ THEN REPLY #2542 /* ~Ya era hora de que os marcharais, piltrafa. Os necesitamos tanto como a un agujero en la cabeza.~ */ GOTO 195
END

IF ~  Global("KorganTomb","GLOBAL",1)
Global("KorganMummy","GLOBAL",0)
!Dead("mummy")
See("mummy")
~ THEN BEGIN 2 // from:
  SAY #2431 /* ~¡Esta tumba tiene toda la pinta de haber sido saqueada! ¡Aquí fue donde esos jodidos y apestosos bastardos nos dieron una paliza! ¡Esas basuras van a tener una buena ración de acero! ¡Los voy a arrollar!~ [KORGAN75] */
  IF ~~ THEN DO ~AddexperienceParty(11250)
SetGlobal("KorganMummy","GLOBAL",1)
~ EXTERN ~MUMMY~ 0
END

IF ~~ THEN BEGIN 3 // from:
  SAY #2433 /* ~¡Esos bastardos tragagrog me han fastidiado por última vez! ¡Tenemos unos cuantos muertos vivientes que despachar ahora mismo y, después, algunos muertos vivos que encontrar y enterrar!~ */
  IF ~~ THEN DO ~ActionOverride("mummy",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 29.0
  SAY #2439 /* ~¡Entonces, adelante, hacia la victoria y el botín!~ */
  IF ~~ THEN UNSOLVED_JOURNAL #2060 /* ~Ayudar a Korgan a recuperar el libro de Kaza.

Al parecer, el libro de Kaza se lo han llevado de la tumba unos antiguos compañeros de Korgan. Debemos ir a la casa de Pímlico, en el distrito del templo, e intentar adelantarnos a ellos y recuperar el libro.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 29.1
  SAY #2440 /* ~¡Mentecatos! ¡Granujas rastreros! ¡Solo hay un olor más fuerte que el de la debilidad, y es la peste de la cobardía! Si es así como lo queréis, entonces os dejaré.~ */
  IF ~~ THEN REPLY #2432 /* ~Esperad un momento, Korgan, estábamos impacientes con lo que habéis dicho. Os acompañaremos hasta la casa de Pímlico.~ */ EXTERN ~BKORGAN~ 30
  IF ~~ THEN REPLY #59429 /* ~Lo último que necesito es que os quedéis en el grupo. ¡Escampad! Y mientras lo hagáis, haceos un favor a vos mismo y daos un baño.~ */ DO ~LeaveParty()
EscapeArea()
~ EXIT
END

IF ~  Global("LeavePimlico","GLOBAL",0)
Global("KorganTomb","GLOBAL",1)
Global("TombEmpty","LOCALS",1)
Global("KorganWhineAboutPim","GLOBAL",0)
AreaCheck("AR0900")
~ THEN BEGIN 6 // from:
  SAY #2441 /* ~Maldita sea, ¡estamos tardando demasiado! ¡Registradla!, aunque me parece que ya la han saqueado antes. No podéis llorar como un perro en la calle, y de puertas para dentro acabar con el ron especiado y las comidas de Pímlico.~ [KORGAN76] */
  IF ~~ THEN DO ~SetGlobal("LeavePimlico","GLOBAL",1)
~ GOTO 16
END

IF ~  Global("KorganTomb","GLOBAL",1)
Global("PimlicoDead","GLOBAL",1)
Global("PimDeadDialogue","LOCALS",0)
AreaCheck("ar0905")
~ THEN BEGIN 7 // from:
  SAY #2442 /* ~Por la pinta que tiene esto, me parece que mis antiguos compañeros han hecho filigranas con sus entrañas.~ [KORGAN77] */
  IF ~~ THEN DO ~AddexperienceParty(8750)
SetGlobal("PimDeadDialogue","LOCALS",1)
SetGlobalTimer("FindShagbag","GLOBAL",TWO_DAYS)
~ GOTO 17
END

IF ~  Global("KorShagbag","GLOBAL",0)
!GlobalTimerExpired("FindShagbag","GLOBAL")
!Dead("korshag")
See("korshag")
~ THEN BEGIN 8 // from:
  SAY #2444 /* ~Seguís siendo un infeliz, Tabaquera. No sois más que un jodío saco de estiércol.~ [KORGAN78] */
  IF ~~ THEN DO ~AddexperienceParty(5000)
~ EXTERN ~KORSHAG~ 0
END

IF ~~ THEN BEGIN 9 // from:
  SAY #2446 /* ~Mirad, no hay ninguna dolencia que no pueda curar con mis puños, Tabaquera.~ */
  IF ~~ THEN EXTERN ~KORSHAG~ 1
END

IF ~~ THEN BEGIN 10 // from:
  SAY #2448 /* ~No os lo permitiré. No me gusta ser un bastardo, pero no me dejáis otra opción.~ */
  IF ~~ THEN EXTERN ~KORSHAG~ 4
END

IF ~~ THEN BEGIN 11 // from:
  SAY #2450 /* ~¡Sois unos bastardos! ¡Eso son tonterías! ¡No me atacaron con palabras, sino con armas, Tabaquera, y lo sabéis de sobra!~ */
  IF ~~ THEN EXTERN ~KORSHAG~ 3
END

IF ~~ THEN BEGIN 12 // from:
  SAY #2452 /* ~Perro, rezad, si es que tenéis algún dios.~ */
  IF ~~ THEN DO ~ActionOverride("KorShag",Enemy())
ActionOverride("KorCrazy",Enemy())
ActionOverride("Korscroo",Enemy())
ActionOverride("Korgoo01",Enemy())
ActionOverride("Korgoo02",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #14305 /* ~Nunca me había gustado el desmembramiento. ¡Ahora menos, incluso! ¡Largo!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #15044 /* ~¡Dadme unos minutos, ramera pataslargas, y este vigoroso enano os violará de tal forma que al final no podréis ni caminar!~ */
  IF ~~ THEN EXIT
END

IF ~  GlobalTimerExpired("KorganBook","GLOBAL")
Global("KorganComplain","LOCALS",0)
GlobalLT("KorganSeesCrypt","GLOBAL",2)
Global("KorganNoKillShag","GLOBAL",0)
~ THEN BEGIN 15 // from:
  SAY #17733 /* ~¡Audaces guerreros! El reloj de sol me dice que ha llegado la hora de mi tarea, y os voy a convencer para que os deis más prisa.~ [KORGAN79] */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 16 // from: 6.0
  SAY #17736 /* ~Cuidado con los intrusos... puede que algunos bastardos se hayan rezagado en su interior, olisqueando el lugar.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 17 // from: 7.0
  SAY #17738 /* ~Sería conveniente que hiciéramos una visita a la Corona de Cobre; tengo fuertes sospechas de que esa basura no saldrá todavía de la ciudad. Vivirán la buena vida por ahora.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 18 // from:
  SAY #22320 /* ~Debería haber visto quién os pedía disculpas... Nunca había visto una imitación tan mala de camarada en peligro como vos, mema.~ */
  IF ~~ THEN EXTERN ~DRUFF2~ 5
END

IF ~~ THEN BEGIN 19 // from:
  SAY #22503 /* ~No hay nada más agradable que vomitar hasta la última papilla y que vuestra cabeza se deshaga entre mareos. Los barcos son buenos para los cabezas de chorlito, y eso es todo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY #25591 /* ~Os diré cómo... ¡Glup, glup, glup! ¡Ah! ¡Es así! Sabe a cerveza, sí que sabe... ¿Os han cobrado algún extra por el culín?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #25760 /* ~¡No soy un mediano, pedazo de alcornoque! ¿Qué sois, un neciósofo ciego? Que lo dioses os maldigan, imbécil.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #28982 /* ~Je. Hay ciertas ventajas al poseer una estatura más pequeña... entre ellas, podemos acceder más fácilmente a las mieles de las mujeres. Je, je.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY #29665 /* ~¿Qué? Pero ¿sí dejaréis entrar a los jodidos medianos? ¡Seguid diciendo estupideces, chavala, y sentiréis la punta de mi hacha en vuestro trasero, ya lo veréis!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 17.0
  SAY #30443 /* ~De hecho, me apostaría el nombre del clan a que mientras hablamos esos cabrones predecibles están en el tejado de la Corona de Cobre. ¡Será mejor que nos demos prisa para cazarlos con las manos en la masa!~ */
  IF ~~ THEN UNSOLVED_JOURNAL #2061 /* ~Ayudar a Korgan a recuperar el libro de Kaza

Por lo que parece los antiguos amigos de Korgan no estaban satisfechos con el precio que les ofrecía Pímlico. Mataron al coleccionista y, según dice Korgan, probablemente estén bebiéndose las ganancias en la Corona de Cobre. Korgan desea ir, por así decirlo, a presentarles sus respetos.~ */ EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #30518 /* ~Seguiré adelante hasta alcanzarlos, aunque solo sea para derribarlos y hacer que me laman la mierda de los pies. Huir como lo hicieron, planear una forma para escapar con mi parte del botín.~ */
  IF ~~ THEN EXTERN ~KORPIM~ 11
END

IF ~~ THEN BEGIN 26 // from:
  SAY #30521 /* ~No tengo más que poner mi puño en unas pocas caras y seguro que captarán el mensaje. Me iré y los cogeré antes de que entreguen ese libraco.~ */
  IF ~~ THEN EXTERN ~KORPIM~ 12
END

IF ~~ THEN BEGIN 27 // from:
  SAY #30525 /* ~La suerte no es algo que me preocupe. Marchémonos al jardín de los muertos. Creo que será nuestra mejor elección. Tengo una patada reservada para las partes blandas de todos esos palurdos que se nos han adelantado.~ */
  IF ~~ THEN EXIT
END

IF ~  Dead("Mummy")
AreaCheck("AR0802")
Global("TombEmpty","LOCALS",0)
~ THEN BEGIN 28 // from: 36.0
  SAY #30533 /* ~¡Bailaré tres veces sobre sus tumbas, lo juro! ¡Robado ante mis narices! ¡Hurgué por todas partes hasta encontrar el jodío libro, y esas alimañas me lo han robado!~ [KORGAN80] */
  IF ~~ THEN DO ~SetGlobal("TombEmpty","LOCALS",1)
~ GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #30542 /* ~¡Debemos marcharnos! ¡No parece que hoy sea un buen día para profanar esta tumba! ¡Si volvemos a casa de Pímlico antes que esos memos, quizás pueda pillarlos y recuperar lo que es mío! ¡Tabaquera está pidiendo que le maten!~ */
  IF ~~ THEN REPLY #30547 /* ~¡Estoy con vos!~ */ DO ~SetGlobal("TalkedAboutShagbag","GLOBAL",1)
~ GOTO 4
  IF ~~ THEN REPLY #30548 /* ~Continuad por vuestra cuenta. Estoy cansado de estos juegos.~ ~Continuad por vuestra cuenta. Estoy cansada de estos juegos.~ */ DO ~SetGlobal("TalkedAboutShagbag","GLOBAL",1)
~ GOTO 5
END

IF ~  GlobalTimerExpired("FindShagbag","GLOBAL")
Global("ShagbagEscapeDialogue","GLOBAL",0)
!Dead("korshag")
~ THEN BEGIN 30 // from:
  SAY #30555 /* ~Bien, es una lástima.~ [KORGAN81] */
  IF ~~ THEN REPLY #30556 /* ~¿De qué estáis hablando ahora, Korgan?~ */ DO ~SetGlobal("ShagbagEscapeDialogue","GLOBAL",1)
~ GOTO 31
  IF ~~ THEN REPLY #30557 /* ~¿Algo que decir?~ */ DO ~SetGlobal("ShagbagEscapeDialogue","GLOBAL",1)
~ GOTO 31
  IF ~~ THEN REPLY #30558 /* ~¿Qué ocurre? ¿Algo va mal?~ */ DO ~SetGlobal("ShagbagEscapeDialogue","GLOBAL",1)
~ GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.2 30.1 30.0
  SAY #30560 /* ~Nada importante. Solo lamento que el canto de una moneda me haya quitado el libro de oro. Me apuesto a que los chicos desaparecidos del grupo hace tiempo que se marcharon con el botín.~ */
  IF ~~ THEN GOTO 32
END

IF ~~ THEN BEGIN 32 // from: 31.0
  SAY #30561 /* ~No importa, eso digo yo. Me apuesto a que se saca más provecho de vuestros niñatos a largo plazo. Dejad que los necios se beban lo robado. Los cogeré un día u otro.~ */
  IF ~~ THEN DO ~EraseJournalEntry(2057)
EraseJournalEntry(2060)
EraseJournalEntry(2061)
SetGlobalTimer("KorganContract","GLOBAL",ONE_DAY)
~ SOLVED_JOURNAL #47737 /* ~Ayudar a Korgan a recuperar el libro de Kaza.

Los miembros del antiguo grupo de Korgan, Tabaquera y compañía, han escapado con el libro. Korgan ha declarado bruscamente que pagarán por esto.~ */ EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #33261 /* ~Deseo el libro de Kaza, asqueroso muerto viviente. ¿Dónde lo tenéis escondido?~ */
  IF ~~ THEN EXTERN ~NEVAZIAH~ 17
END

IF ~  Global("KorganSeesCrypt","GLOBAL",1)
~ THEN BEGIN 34 // from:
  SAY #37489 /* ~¡Es por aquí, estoy seguro! Una tumba en el lado sur de la caverna abierta, ¡jodíamente vieja, eso es!~ [KORGAN82] */
  IF ~~ THEN DO ~SetGlobal("KorganSeesCrypt","GLOBAL",2)
~ EXIT
END

IF ~  Dead("korshag")
Global("ShadDead","LOCALS",0)
Global("KorganNoKillShag","GLOBAL",0)
~ THEN BEGIN 35 // from:
  SAY #37490 /* ~Acabo de solucionar un buen follón. Ellos se encargaron de la matanza, pero al final yo me he quedado con el oro, el libro y a gusto por haber pateado sus jodíos traseros. ¡Ja, ja, qué buen día!~ [KORGAN83] */
  IF ~~ THEN DO ~SetGlobal("ShadDead","LOCALS",1)
SetGlobal("KorganNoKillShag","GLOBAL",1)
~ GOTO 38
END

IF ~  Dead("mummy")
Global("KorganTomb","GLOBAL",1)
Global("TombEmpty","LOCALS",0)
~ THEN BEGIN 36 // from:
  SAY #37789 /* ~¡Me cago en los mártires innumerables! ¡Esta cripta parece que ya ha sido saqueada, y bien saqueada! ¡Esos jodidos y apestosos bastardos se nos han adelantado! ¡Esos canallas tendrán de cena mi frío acero antes de que acabe con ellos!~ */
  IF ~~ THEN GOTO 28
END

IF ~~ THEN BEGIN 37 // from:
  SAY #38739 /* ~¡Alegraos si todavía podéis caminar, apestoso tragón, a menos que queráis que me ocupe de ese problema por vos, de forma que deis aún más pena a todos!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 35.0
  SAY #38927 /* ~Adelante, saquead el cadáver de Tabaquera... jodío mentecato. El maldito libro puede valer algo todavía si está intacto.~ */
  IF ~~ THEN DO ~EraseJournalEntry(2057)
EraseJournalEntry(2060)
EraseJournalEntry(2061)
SetGlobalTimer("KorganContract","GLOBAL",TWO_DAYS)
~ SOLVED_JOURNAL #47736 /* ~Ayudar a Korgan a recuperar el libro de Kaza.

El libro había sido recuperado por los miembros del antiguo grupo de Korgan, Tabaquera y compañía (que ahora están criando malvas). Por supuesto, como ellos ya no pueden recibirlo, el dinero de la venta es nuestro.~ */ EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #39169 /* ~¡Bah! No hay nada malo en una buena y puñetera lucha, vuestro clan gritando con todas sus fuerzas, apoyándoos. He oído entretenimientos semejantes, pero nunca los había visto por mí mismo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #39170 /* ~¡Ja, ja, ja! Me recuerda a cuando sorprendí a mi primo Kraggor con mi mujer en la cama. ¡Estaba rojo como un pimiento y alterado como una jodida gallina!~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #39171 /* ~Blasfemé mientras él corría con el rabo entre las piernas como un loco. ¡Ja, ja! Tuve que sacarle las tripas más tarde, por supuesto, pero fue divertido, sin duda.~ */
  IF ~~ THEN DO ~SetGlobal("MadamUpset","GLOBAL",1)
ActionOverride("custom",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #39176 /* ~Vuestro sangrante corazón está poniendo el suelo perdido, niñita. Detenedlo, que no puedo soportar el olor por más tiempo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #39177 /* ~¡Por los pozos del Abismo! Estuvisteis de acuerdo con marcharos de este jodido bosque a toda prisa, ¿no? ¿Habéis perdido la cabeza?~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 319
  IF ~  !IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 74
END

IF ~~ THEN BEGIN 44 // from:
  SAY #39180 /* ~Adorable, de verdad que es adorable. Si estuviese planeando este viaje con ese, lo mejor sería que os mantuvierais apartados. Ya me duele la cabeza...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 45 // from:
  SAY #39283 /* ~Druida, la senda honorable puede irse al Abismo. No tenemos ningún asunto aquí, y <CHARNAME> lo sabe.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 46 // from:
  SAY #39355 /* ~Mmpf. No podrá ser el mejor guerrero si lo capturan. Vamos, eso creo.~ */
  IF ~~ THEN EXTERN ~HENDAK~ 2
END

IF ~~ THEN BEGIN 47 // from:
  SAY #39356 /* ~Sí, ahora, lo hay. No hay ningún beneficio en ello. Dejemos al bárbaro en paz, <CHARNAME>.~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~HENDAK~ 37
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 322
  IF ~  !IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 32
END

IF ~~ THEN BEGIN 48 // from:
  SAY #39363 /* ~Si quisiera escuchar el rebuzno de una mula, elfa, iría a escuchar a una mula rebuznar.~ */
  IF ~~ THEN EXTERN ~HENDAK~ 37
END

IF ~~ THEN BEGIN 49 // from:
  SAY #39373 /* ~¡Ja! Me gustaría participar, si lo propone. He oído algo de los placeres que se encuentran aquí; pero no parecéis el hombre para ello, <CHARNAME>, si se os queda la cara tan pálida.~ ~¡Ja! Me gustaría participar, si lo propone. He oído algo de los placeres que se encuentran aquí; pero no parecéis la mujer para ello, <CHARNAME>, si se os queda la cara tan pálida.~ */
  IF ~  !IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 44
  IF ~  !IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 96
  IF ~  !IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 166
END

IF ~~ THEN BEGIN 50 // from:
  SAY #39376 /* ~No me jodáis, caballero. No he sido creado para tales placeres, solo soy el que toma lo que los dioses han ofrecido. Si lo deseáis, desesperaos por ello.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #39407 /* ~Mmpf. Bien, será mejor que el pago merezca la pena, si tengo que rondar por los yermos y cargarme con mi hacha a osos, comadrejas y bestias semejantes.~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
~ THEN EXIT
  IF ~  !IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 80
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 327
END

IF ~~ THEN BEGIN 52 // from:
  SAY #39408 /* ~Lo haré si lo deseo, jodido abraza-árboles, marica, besucón depravado. ¡Os arrancaré la cabeza de un mordisco si ese pensamiento se os pasa por la cabeza!~ */
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 81
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 328
END

IF ~~ THEN BEGIN 53 // from:
  SAY #39409 /* ~¡No me importa, maldito farsante! Abrid la boca una vez más y os encontraréis en ella el mango de un hacha. ¡Ninguna sabandija del bosque se va a burlar de mí!~ */
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 82
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 329
END

IF ~~ THEN BEGIN 54 // from:
  SAY #39431 /* ~Sí, lo hemos visto, ramera. Estaba en las habitaciones de atrás, haciendo tiempo con su amante. Je, je.~ */
  IF ~~ THEN EXTERN ~TIANA~ 5
END

IF ~~ THEN BEGIN 55 // from:
  SAY #47450 /* ~¡Ja! Si no fuera por mi viejo amigo, Mencar Pisaguijarros... Me pasearé por donde me apetezca, parodia atrofiada de enano. Y no podéis hacer nada al respecto.~ */
  IF ~~ THEN EXTERN ~SEVPAT01~ 7
END

IF ~~ THEN BEGIN 56 // from:
  SAY #47458 /* ~¡No hay nada que decidir, Mencar! No tengo nada que temer de vuestra tripa amarillenta! ¡Venid y seréis cortado en dos, si es que tenéis huevos!~ */
  IF ~~ THEN EXTERN ~SEVPAT01~ 9
END

IF ~~ THEN BEGIN 57 // from:
  SAY #48463 /* ~¡Bah! ¡Es una pérdida de buen oro dárselo a una niñita! ¿Qué sentido tiene la aventura si le dais toda vuestra riqueza a los pobres y a los necesitados?~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Nalia")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 348
  IF ~  !IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 227
END

IF ~~ THEN BEGIN 58 // from:
  SAY #48464 /* ~¡No seáis tan estirada, niñita! El oro hace a las niñas un poco mejores. Es más que probable que encontremos su cuerpo saqueado en menos de quince días.~ */
  IF ~  !IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Nalia")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 52
  IF ~  !IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 228
END

IF ~~ THEN BEGIN 59 // from:
  SAY #48465 /* ~¡Sí que lo soy, moza! ¡Si fuerais más bajita y barbuda os enseñaría cómo me gané mi reputación entre la mujeres de mi clan!~ */
  IF ~~ THEN REPLY #48494 /* ~Korgan, basta. Acabad con él.~ */ GOTO 63
  IF ~~ THEN REPLY #48495 /* ~Je... Es divertido, Korgan.~ */ GOTO 64
  IF ~  IfValidForPartyDialogue("Aerie")
~ THEN REPLY #48496 /* ~Ignoradle.~ */ EXTERN ~AERIEJ~ 54
  IF ~  !IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Nalia")
~ THEN REPLY #48497 /* ~Ignoradle.~ */ EXTERN ~NALIAJ~ 229
  IF ~~ THEN REPLY #48498 /* ~¡Callaos! Sigamos adelante.~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #48479 /* ~¿Qué? ¿Abandonar nuestro oro duramente ganado para dárselo a un pobre al que lo más probable es que se lo roben al día siguiente? Druida, sois un cretino.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 352
END

IF ~~ THEN BEGIN 61 // from:
  SAY #48490 /* ~¿Eh? No hacemos más que reñir, <CHARNAME>. No tenéis que sacaros el cinturón.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #48492 /* ~¿Ahora vais a tener más en cuenta las palabras de una comeflores medio elfo abraza-árboles? ¡Bah! ¡No sois más un kóbold amarillento, eso es lo que sois!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from: 59.0
  SAY #48499 /* ~Ah, no ha sido nada más que una pequeña broma, <CHARNAME>. Bastará con quitarle la faja de un golpe para que dé vueltas.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from: 59.1
  SAY #48500 /* ~¿No es así? ¡Puede que no sea tan atractivo, pero cuando viajo con mi clan, las chicas caen a mis pies!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 65 // from:
  SAY #48503 /* ~¿Quéééé? ¡Soy inocente! ¡Lo juro!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #48506 /* ~¡Bah! ¡No haría tratos ni con niños ni con mujeres aunque fueran animales! ¡Plantémosles un hacha en sus cabezas, <CHARNAME>!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #48509 /* ~¡Basta! ¡Si tiene que haber tesoro, lo colocaréis en nuestras manos sin más acertijos o paparruchas, a menos que queráis que mi hacha encuentre vuestra lengua!~ */
  IF ~~ THEN EXTERN ~SEWERM1~ 24
END

IF ~~ THEN BEGIN 68 // from:
  SAY #48531 /* ~¡Bah! Os conozco, druida. No queréis nada más que volver a vuestras cosas de abraza-árboles y nada más. ¡Es más que probable que huyerais con el rabo entre las piernas en cuanto vierais ogros!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 357
END

IF ~~ THEN BEGIN 69 // from:
  SAY #48532 /* ~Os invito a intentarlo cuando queráis, semielfo...~ */
  IF ~  !IfValidForPartyDialogue("Nalia")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 231
END

IF ~~ THEN BEGIN 70 // from:
  SAY #48536 /* ~Si el jodido noble quiere recompensarnos con un montón de oro, ¿por qué debéis reíros de sus motivos, niñata? ¡<CHARNAME>, salgamos! ¡Mi hacha me está pidiendo más sangre de ogro!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #48596 /* ~¡Decidlo de una vez, mago! ¡Si hay un tesoro, deseo conocerlo!~ */
  IF ~~ THEN EXTERN ~TOLGER~ 8
END

IF ~~ THEN BEGIN 72 // from:
  SAY #48646 /* ~Sois un debilucho. Es algo natural para los hombres mejores que vos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #48649 /* ~No tengo nada para vos, perro. ¡Seréis un débil si os pudrís aquí!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #48670 /* ~¡Oh! Parece que las cosas se han puesto a vuestro favor, ¿eh, mercader? Bien, ¡que nunca se diga que Korgan rechazó una buena fiesta!~ */
  IF ~~ THEN DO ~Attack("Bmerch1")
~ EXIT
END

IF ~~ THEN BEGIN 75 // from:
  SAY #48675 /* ~¡Jar, jar, jar! ¡Creo que ese gordo mercader debería haber alquilado bestias más lentas que él!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #48712 /* ~¡Bien, lo estaba pidiendo, mediano! Metió su pequeña mano en mi bolsillo, así que se la corté con mi hacha. Y os agradecería que no mencionarais de nuevo el tema.~ */
  IF ~~ THEN DO ~ActionOverride("bftown3",RunAwayFrom("Korgan",120))
~ EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #48741 /* ~¡De pronto mi hacha me hace sentir como si tuviera sangre de ogro! ¡Jar, jar!~ */
  IF ~~ THEN DO ~ActionOverride("bogre1",Enemy())
Attack("bogre1")
~ EXIT
END

IF ~~ THEN BEGIN 78 // from:
  SAY #48750 /* ~¡Ja! Me gusta que las chicas luchen un poco y que me escupan a los ojos, pero os tendré siempre en mi corazón, moza.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #48778 /* ~Bien, entonces, disculpadme. Quizás debería haberos destrozado con mi hacha y entonces os preocuparíais menos de vuestra preciosa cerveza, ¿no?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 80 // from:
  SAY #48847 /* ~Por los seis infiernos, ¿qué ocurre? ¡PFFAAAUGHH! ¡No seré el único que cargue con el puto gong, y más si apesta a estiércol! ¡Lo juro, le voy a retorcer el cuello a ese jodido patán por esta indignidad!~ */
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 107
  IF ~  !IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 70
END

IF ~~ THEN BEGIN 81 // from:
  SAY #48891 /* ~¡Sí, solo estaba pensando en lo que ganaría si me convirtiese en un traidor de tres al cuarto como vos! ¡Guardias! ¡Este hombre conspira en vuestra contra!~ */
  IF ~~ THEN EXTERN ~ARNMAN08~ 0
END

IF ~~ THEN BEGIN 82 // from:
  SAY #48909 /* ~¡Sí! ¡Genial! ¡QUÉ JODIDA MARAVILLA! Sí, acabemos con todos los putos trolls y cojamos su gong... SIN RECOMPENSA, ¡recordad! ¡Volvamos a la taberna y pateemos su PUTO TRASERO!~ */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 128
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 76
END

IF ~~ THEN BEGIN 83 // from:
  SAY #48913 /* ~¿Vamos a prescindir de algunos tratos solo porque no están bajo el control de sus propietarios? ¡Bah! ¡Somos unos blandos!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #48938 /* ~¡Por el Gusano de la Avaricia! ¡Este es el gran día, cuando mi hacha y yo vamos a morder las armaduras de esos santurrones guerreros que se creen tan superiores! ¡Salgamos, la batalla me llama!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #48947 /* ~¡Ja! Cualquier tonto que se atreva a pensar en <CHARNAME> y en mí como objetivos, ricos o no, es un mentecato que está pidiendo que le saque las tripas para que vean el sol. Esa es la verdad.~ */
  IF ~~ THEN EXTERN ~INSPECT~ 5
END

IF ~~ THEN BEGIN 86 // from:
  SAY #49193 /* ~No recuerdo que pidiese nada, salmoncete. Salid de mi vista.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #49414 /* ~¡Ellos tolerarán mi "actitud" tanto como desee hacerlo, niño, o serán cortados en dos con mi hacha, y vos también!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #49495 /* ~¡Ya habéis llorado bastante, elfa! ¡Un hacha en la espalda de un despreciable mago sería tan bueno como cualquier otra cosa! ¡Os recuerdo que estamos aquí con un propósito concreto!~ */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 144
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 70
END

IF ~~ THEN BEGIN 89 // from:
  SAY #49505 /* ~Mago, otro insulto más y veréis cómo os saco las tripas por la espalda. Acabaremos la misión enseguida. No necesitamos vuestras impertinencias.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY #49538 /* ~¡No seáis panoli! ¡Los ladrones de esta ciudad tienen sus cofres repletos de oro! ¡No hay razón, además de ser un cobarde amarillo para dejarlo!~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 396
  IF ~  !IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 85
END

IF ~~ THEN BEGIN 91 // from:
  SAY #49543 /* ~Bah. Si fuese un conflicto entre la conciencia y el oro, puedo contar con los dedos de una de mis manos el número de segundos que tardaría en resolver tal duda. ¡Largaos a otra parte con vuestras tonterías, niña!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 92 // from:
  SAY #49565 /* ~¡<CHARNAME>, no seáis mentecato! ¡Maldición! Hemos acabado casi la maldita misión, ¿qué puede importar una masacre más o menos? ¡En mi caso, deseo la recompensa!~ ~¡<CHARNAME>, no seáis mentecata! ¡Maldición! Hemos acabado casi la maldita misión, ¿qué puede importar una masacre más o menos? ¡En mi caso, deseo la recompensa!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 93 // from:
  SAY #49573 /* ~Aah, coged a la llorona de la niña. Destrozaré el lugar si tengo que escuchar sus tonterías un minuto más.~ */
  IF ~~ THEN EXTERN ~IMOEN2~ 23
END

IF ~~ THEN BEGIN 94 // from:
  SAY #49582 /* ~Bah, ¿por qué os molestáis con un cadáver? Saquead el cuerpo y dejádselo a los cuervos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from:
  SAY #49618 /* ~Si hubiese querido golpearos de verdad, humano, estaríais tirado en el suelo con un hacha en vuestro cráneo, así que agradeced que sea solo un codo herido y nada más.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #49630 /* ~¡Jar, jar! ¡Esa sangre zhayina vuestra es tan caliente como había oído, mago! ¡Sois todo un conquistador! ¡Jar, jar, jar!~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 75
END

IF ~~ THEN BEGIN 97 // from:
  SAY #49780 /* ~¡Bien, ha llegado el momento! Estaba casi preparado para empezar a mover mi hacha, con tal de que las cosas se muevan aquí.~ */
  IF ~~ THEN EXTERN ~BODHI~ 4
END

IF ~~ THEN BEGIN 98 // from:
  SAY #49788 /* ~¡Ja! ¡Un excelente trato, para ahorrar mucho oro! ¡Coged la oportunidad, <CHARNAME>, a menos que queráis que esa voluble mujer cambie de opinión!~ */
  IF ~  !IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~BODHI~ 130
  IF ~  IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 99 // from:
  SAY #49811 /* ~Que así sea, ramera. Seáis quien seáis, apuesto a que moriréis tan rápidamente como cualquier otro.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #49825 /* ~Arrr, el primer camino me parece mejor. Tengo un deseo por sangre que no puede ser satisfecho con pegas morales y cosas parecidas.~ */
  IF ~~ THEN EXTERN ~BODHI~ 131
END

IF ~~ THEN BEGIN 101 // from:
  SAY #49900 /* ~Mmpf. Si me hubieseis preguntado a mí, os habría dicho que deberíamos haber sacado provecho de esta aventura. Recoged el rescate de la dama. No hay nada de malo en unas pocas monedas.~ */
  IF ~~ THEN EXTERN ~ELGEA~ 13
END

IF ~~ THEN BEGIN 102 // from:
  SAY #49989 /* ~Otra palabra más de vuestros labios, pataslargas, y os saludará mi hacha. No tengo paciencia para charlas sin sentido.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 103 // from:
  SAY #50033 /* ~¡Pfeh! Como si necesitáramos a alguien más como vos en este grupo. Yo digo que nos alejemos cuanto antes del paladín.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 234
END

IF ~~ THEN BEGIN 104 // from:
  SAY #50039 /* ~Bien, bien. Estoy llegando al punto en el que deseo matar lo que sea. Si este contemplador tiene sangre, la derramará como todos.~ */
  IF ~~ THEN EXTERN ~BHARVAL~ 27
END

IF ~~ THEN BEGIN 105 // from:
  SAY #50112 /* ~<CHARNAME>, el ilicio es un metal muy raro, más raro que un toro con ubres. He oído que hay maneras de duplicar el metal, una aleación, si lo preferís... quizás podamos averiguarlo, ¿no?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #50151 /* ~Uno de estos días os aplastarán como a un insecto por vuestro desparpajo, gnomo. Yo incluso lo tomaría por una broma de los dioses.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #50307 /* ~Y no ha cambiado desde que lo bañasteis, mujer. Sigue lloriqueando, gritando, eructando y vomitando después de cada comida.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 245
END

IF ~~ THEN BEGIN 108 // from:
  SAY #50332 /* ~Decís eso como si el pueblo enano no hiciera nada. Quizás os saque los intestinos, para que veáis la diferencia que tenéis con nosotros.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 109 // from:
  SAY #50674 /* ~¡<CHARNAME>! ¡Aah, no puedo hacer tratos con lunáticos! ¡Haríais mejor en encerrar a todos estos antes de que nos invadan a todos!~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutScene("Cut41m")
~ EXIT
END

IF ~~ THEN BEGIN 110 // from:
  SAY #50952 /* ~Si habéis sentido que el estómago se os rebela y se mueve, <CHARNAME>, sería el momento de olvidar esos pensamientos. No me entusiasman los apestosos drow, pero sé cuándo estoy en su guarida.~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from: 110.0
  SAY #50953 /* ~Drow menores... eso somos... ellos siguen el tono de sus sacerdotes tan rápido como os guste. O morirán miles de formas tan horribles que intimidaría a Clangeddín.~ */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from: 111.0
  SAY #50954 /* ~Y los drow confían incluso menos los unos en los otros. Hay ojos en todas partes, mágicos o no, que vigilarán nuestros movimientos. Debemos actuar como los oscuros. Recordadlo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #52294 /* ~¡Jar, jar! Ya habéis oído a <CHARNAME>, mocita. Si queréis nuestra ayuda, tendréis que darnos algo de oro. Por supuesto... podemos llegar a un acuerdo... je... sí, desde luego...~ */
  IF ~~ THEN EXTERN ~NALIA~ 9
END

IF ~~ THEN BEGIN 114 // from:
  SAY #55199 /* ~¡Jar! ¡Una victoria excelente, eso es lo que digo! ¡Ahora todo lo que necesitamos es salir de esta arboleda y encontrarnos con algunas chicas y algo de beber, eso es!~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 115 // from:
  SAY #55224 /* ~Mmm... Sentí que me tiraban de las botas, o algo así, cuando morí... y aquí estamos. Está bien, es mucho mejor de lo que esperaba que iba a ser el otro mundo.~ [KORGAN86] */
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 147
  IF ~  !IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 117
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 90
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("HaerDalis")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 268
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Nalia")
IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 95
END

IF ~~ THEN BEGIN 116 // from:
  SAY #55660 /* ~Tuve un compañero una vez que tuve una desafortunada reacción a una espada en particular. Lo que no lo convierte en un accidente.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 15
END

IF ~~ THEN BEGIN 117 // from:
  SAY #55669 /* ~¡Bah! ¡Bien, no tengo ningún interés en ser agradable! ¡He vomitado tantas veces en este viaje como para marcharme más vacío que la cabeza de un mediano! ¡No me volveré a subir a este barco de nuevo!~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Viconia")
Global("ThiefGroup","GLOBAL",2)
~ THEN EXTERN ~PPBODHI3~ 12
  IF ~  !IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Viconia")
Global("ThiefGroup","GLOBAL",1)
~ THEN EXTERN ~PPSIME~ 1
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 453
  IF ~  !IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 103
  IF ~  !IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 124
END

IF ~~ THEN BEGIN 118 // from:
  SAY #55670 /* ~Mmpf. Os respondería a vuestro comentario con mi hacha si el mero pensamiento del movimiento no me revolviese el estómago. ¡Salid de mi vista y consideraos afortunado por esta vez!~ */
  IF ~  Global("ThiefGroup","GLOBAL",2)
~ THEN EXTERN ~PPBODHI3~ 12
  IF ~  Global("ThiefGroup","GLOBAL",1)
~ THEN EXTERN ~PPSIME~ 1
END

IF ~~ THEN BEGIN 119 // from:
  SAY #55703 /* ~Muerto, como lo estaréis vos pronto si no os marcháis. Sed agradable como una niña buena y quizás <CHARNAME> no os mate... aunque no contaría con ello.~ */
  IF ~~ THEN EXTERN ~PIRMUR01~ 3
END

IF ~~ THEN BEGIN 120 // from:
  SAY #55709 /* ~Una recompensa sería aceptable por rescatar a vuestra niña. Puede que no tenga a su novio, pero tiene su libertad, y pienso que es algo que merece la pena, ¿no?~ */
  IF ~~ THEN EXTERN ~PIRMUR09~ 18
END

IF ~~ THEN BEGIN 121 // from:
  SAY #55711 /* ~He conocido niños más agradables en pantanos con llantos de banshee. Guardad mi espalda de ella, es una serpiente como nunca he visto otra.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #55717 /* ~Sí, sentaos a un lado y esperad lo mejor, ¿no? Y lo próximo que vendrá es la traición, sin duda.~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 36
END

IF ~~ THEN BEGIN 123 // from:
  SAY #55720 /* ~Está hablando de gemas y cosas parecidas, lo sé. Una pena que no podamos mirar en la cabeza del demente.~ */
  IF ~  !IfValidForPartyDialogue("NALIA")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("NALIA")
~ THEN EXTERN ~NALIAJ~ 275
END

IF ~~ THEN BEGIN 124 // from:
  SAY #55722 /* ~Miraré dentro de vuestra cabeza con mi hacha si me seguís dando la lata otra vez. No iba a herirle. Todavía.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 125 // from:
  SAY #55759 /* ~Lo secundo. Y que alguien le dé una patada al gnomo deforme.~ */
  IF ~~ THEN EXTERN ~PPTIAX~ 13
END

IF ~~ THEN BEGIN 126 // from:
  SAY #55760 /* ~Me haré unos zapatos con las orejas de esos cretinos si no se callan de una puta vez y rápido. Solo estoy expresando lo que pienso.~ */
  IF ~  !IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~PPTIAX~ 13
  IF ~  IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 161
END

IF ~~ THEN BEGIN 127 // from:
  SAY #55766 /* ~¡No! ¡Estoy hasta las narices de este maldito barco! ¡He tenido más que suficiente! Si vamos a cualquier parte, es a la Infraoscuridad. ¡Nos abriremos paso a través de sus vísceras!~ */
  IF ~  !IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PPSAEM2~ 20
  IF ~  IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 130
  IF ~  !IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 135
  IF ~  !IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 18
END

IF ~~ THEN BEGIN 128 // from:
  SAY #55778 /* ~Bien. Se acaba el mundo o se calla de una vez. Lo que sea más rápido.~ */
  IF ~~ THEN EXTERN ~JANJ~ 158
END

IF ~~ THEN BEGIN 129 // from:
  SAY #55782 /* ~El diablillo no ha podido continuar su larga historia. Alabados sean los dioses, parece que el final está cerca.~ */
  IF ~  !IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~JANJ~ 158
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 109
END

IF ~~ THEN BEGIN 130 // from:
  SAY #55804 /* ~¡Suficiente, gnomo! ¡Vuestras historias están empezando a congelarme las tripas! ¡Otra palabra más y juro que os destripo!~ */
  IF ~~ THEN EXTERN ~JANJ~ 160
END

IF ~~ THEN BEGIN 131 // from:
  SAY #55823 /* ~Adonde quiera que vayamos, parece que esto os ocurre a vos, <CHARNAME>. Bien, eso está bien. Pero si nos sentamos alrededor de otro fuego, os advierto que empezaré a empuñar mi hacha.~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 13
END

IF ~~ THEN BEGIN 132 // from:
  SAY #55858 /* ~¡Bah! Vuestro rey nos ha ofrecido un rescate con oro y demás. No nos importa vuestra causa, tío. Si os apoyamos a vos, ¿nos ofreceréis algo mejor que lo que nos ha ofrecido vuestro rey?~ */
  IF ~~ THEN EXTERN ~SAHPR2~ 14
END

IF ~~ THEN BEGIN 133 // from:
  SAY #55883 /* ~Mmm... no me ha gustado ese tono. Conozco unos pocos insultos en la infralengua, y eso no ha sido una lisonja.~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 1
END

IF ~~ THEN BEGIN 134 // from:
  SAY #55925 /* ~Podría sacarle utilidad a este tipo de tratos, incluso si estoy clavado a una concha.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 135 // from:
  SAY #55951 /* ~No vais a enviar nada. Si hacéis un movimiento hostil, os juro que os encontraréis con mi hacha en vuestro estómago.~ */
  IF ~~ THEN EXTERN ~C6CATTI1~ 0
END

IF ~~ THEN BEGIN 136 // from:
  SAY #55963 /* ~Unas cuantas cosas del mago que estaba descubriendo, ¿eh? Ahora que parecen dar su fruto.~ */
  IF ~~ THEN EXTERN ~UDDUER02~ 13
END

IF ~~ THEN BEGIN 137 // from:
  SAY #55965 /* ~Entonces lo llamo directamente y se acabaron las charlas, mago. Conozco de qué clase sois y lo avaricioso que podéis llegar a ser.~ */
  IF ~  Class(Player1,MAGE_ALL)
~ THEN GOTO 138
  IF ~  !Class(Player1,MAGE_ALL)
~ THEN EXTERN ~UDDUER02~ 13
END

IF ~~ THEN BEGIN 138 // from: 137.0
  SAY #55967 /* ~<CHARNAME>, no pretendía ser tan ofensivo con vos. Edwin puede morderme, sin embargo.~ */
  IF ~~ THEN EXTERN ~UDDUER02~ 13
END

IF ~~ THEN BEGIN 139 // from:
  SAY #56015 /* ~Mmpf. Aventureros, ¿eh? Me gusta el aspecto de su equipo, <CHARNAME>. Matémoslos.~ */
  IF ~  !IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~C6BRUEN1~ 8
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 173
END

IF ~~ THEN BEGIN 140 // from:
  SAY #56028 /* ~No necesitamos suerte cuando encontremos a esos dos. Si los veis otra vez, decídselo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #56030 /* ~Sí, aunque cogisteis el oro lo suficientemente rápido, sin avisar de que os iríais con él. Me tienta la idea de cortaros la garganta y que nos maldigáis.~ */
  IF ~~ THEN EXTERN ~ARAN~ 78
END

IF ~~ THEN BEGIN 142 // from:
  SAY #56036 /* ~Por supuesto que estáis hablado por vos mismo. Me marcharé con una bolsa de botín a mi espalda y el sonido de la lucha en mis oídos.~ */
  IF ~~ THEN EXTERN ~CERNDJ~ 115
END

IF ~~ THEN BEGIN 143 // from:
  SAY #56039 /* ~Lo que sea. No tenéis que huir de todos ellos, solo tenéis que huir de vos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #56043 /* ~Hablad por vos mismo, paladín. Prefiero estar sucio que muerto.~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 210
END

IF ~~ THEN BEGIN 145 // from:
  SAY #56047 /* ~Sí, así que la maldita vampiresa ha vuelto a su nido, y tenéis más miedo que once viejas. Ahora vamos... decidnos algo que nos impresione: ¿por qué no vos?~ */
  IF ~~ THEN EXTERN ~ARAN~ 86
END

IF ~~ THEN BEGIN 146 // from:
  SAY #56065 /* ~¡En absoluto, memo! Hablaréis con respeto cuando os dirijáis a mí o dormiréis a dos metros más profundo de lo habitual. ¿Lo entendéis?~ */
  IF ~  !IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("IMOEN2")
!IfValidForPartyDialogue("EDWIN")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 175
  IF ~  IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~KELDORJ~ 212
  IF ~  IfValidForPartyDialogue("IMOEN2")
!IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("KELDORN")
~ THEN EXTERN ~IMOEN2J~ 29
  IF ~  IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~EDWINJ~ 122
END

IF ~~ THEN BEGIN 147 // from:
  SAY #56068 /* ~¿Qué? Oh, vale, drow. Lo que sea.~ */
  IF ~  !IfValidForPartyDialogue("EDWIN")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN GOTO 148
END

IF ~~ THEN BEGIN 148 // from: 147.1
  SAY #56072 /* ~Maldito pomposo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #56089 /* ~Parece que hemos cometido un desliz, somos unos memos fuera de lugar. Dejémonos de tanto sigilo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #56101 /* ~Habláis muy bien, mago, pero por más magias que hagáis ya os maté una vez, y me encantará volver a hacerlo.~ [KORGAN85] */
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut85c")
~ EXIT
  IF ~  IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 276
  IF ~  !IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 214
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 159
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 151 // from:
  SAY #56119 /* ~¿Qué tiene de bueno esta bestia añil si es tan buen blanco aquí abajo como el resto de nosotros?~ */
  IF ~  !IfValidForPartyDialogue("IMOEN2")
!IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~VICONIJ~ 96
  IF ~  IfValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~IMOEN2J~ 33
  IF ~  IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("IMOEN2")
~ THEN EXTERN ~EDWINJ~ 127
END

IF ~~ THEN BEGIN 152 // from:
  SAY #56121 /* ~¿Habéis oído eso, Vico? La niñita os protege.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 96
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56123 /* ~Vico, aquí. Que Edwin sea bueno con vos.~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 96
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56148 /* ~Bien, id y hacedlo. Dejaré limpio esto sin venganzas mezquinas. Guardadlo para otro día, cuando vuelvan las espaldas.~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 6
END

IF ~~ THEN BEGIN 155 // from:
  SAY #56149 /* ~Bien, entonces estaréis muerto. Dejad de ladrar y dejad al resto dormir.~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 13
END

IF ~~ THEN BEGIN 156 // from:
  SAY #56163 /* ~¡<CHARNAME>, no enfurezcáis a la bestia! No lo tenemos nada fácil...~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 15
END

IF ~~ THEN BEGIN 157 // from:
  SAY #56168 /* ~Sí, listos de verdad. Se las apañaron para llevarse la única cosa que podía evitar que se desencadenase vuestra ira. Brillante.~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 19
END

IF ~~ THEN BEGIN 158 // from:
  SAY #56195 /* ~Os va a dar lo mismo, vampiresa. No conseguiréis escapar de nuevo. Venimos a ajustar cuentas.~ */
  IF ~  !IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 184
  IF ~  IfValidForPartyDialogue("Imoen2")
!IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~IMOEN2J~ 36
END

IF ~~ THEN BEGIN 159 // from:
  SAY #56223 /* ~Me ha provocado, vale. Le mandaré suave y personalmente al filo de mi espada.~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 12
END

IF ~~ THEN BEGIN 160 // from:
  SAY #56236 /* ~Bueno, es más que cierto que no le matasteis. ¿Qué pérdida de tiempo ha supuesto?~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 23
END

IF ~~ THEN BEGIN 161 // from:
  SAY #56406 /* ~Aah, entonces esto es lo más cerca que podemos estar de entender al necio. Una causa que puedo respetar.~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 16
END

IF ~~ THEN BEGIN 162 // from:
  SAY #56422 /* ~Yo, por ejemplo, nunca me han gustado los abraza-árboles ni la gente por el estilo. Una arboleda menos bonita no hará ninguna diferencia en mi libro. Envenenemos a esos bastardos que se pavonean.~ */
  IF ~  !IfValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 130
END

IF ~~ THEN BEGIN 163 // from:
  SAY #56435 /* ~Entonces, marchémonos de aquí. Tengo el gusanillo de hacer matanzas y me da en la nariz que la del alcalde sería una buena forma de empezar.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 164 // from:
  SAY #56485 /* ~Esto apenas es un anticipo. Si queréis que me lo piense soltad algunas monedas.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 4
END

IF ~~ THEN BEGIN 165 // from:
  SAY #56493 /* ~Bien, he estado pensando que hay algo que apesta tanto como el Estigia, y me alegra ver que mis sentidos no me han defraudado. ¡Ja! Menos mal que no pagué por verla, ¿verdad?~ */
  IF ~~ THEN EXTERN ~RAELIS~ 34
END

IF ~~ THEN BEGIN 166 // from:
  SAY #56500 /* ~Eeeeh, hay muchas cosas que haría con gusto. Herir niños no es una de ellas. Su hombre es un perro y no merece la pena ni que le escupa.~ */
  IF ~  !IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~JANJ~ 37
  IF ~  IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 177
END

IF ~~ THEN BEGIN 167 // from:
  SAY #56512 /* ~Oh, qué bien. Un retoño sin ningún sentido en su jodida cabeza. Ayuda a los demás, ¿no? Ayudadme, chica, pero teniendo la boca cerrada, y quedaré satisfecho.~ */
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~NALIA~ 66
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 194
  IF ~  !IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 502
END

IF ~~ THEN BEGIN 168 // from:
  SAY #56513 /* ~Oh, qué bien. Un retoño sin ningún sentido en su jodida cabeza. Ayuda a los demás, ¿no? Ayudadme, chica, pero teniendo la boca cerrada, y quedaré satisfecho.~ */
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~NALIA~ 53
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 195
  IF ~  !IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 503
END

IF ~~ THEN BEGIN 169 // from:
  SAY #56543 /* ~¡Jar! ¡Me gustaría más si la misión consistiera en poner a esa moza de sangre azul sobre mi regazo y enseñarle que no hay mujer que se me resista! ¡Jar, jar!~ */
  IF ~  !IfValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 96
END

IF ~~ THEN BEGIN 170 // from:
  SAY #56873 /* ~Bueno para quién, ¿eh? No para nosotros, eso seguro. ¿Cuándo podemos esperar para ver los resultados de la estúpida inversión de <CHARNAME>?~ */
  IF ~~ THEN EXTERN ~ARAN~ 50
END

IF ~~ THEN BEGIN 171 // from:
  SAY #56953 /* ~Sí, he oído algo de un enano negro. Un mercenario emperifollado, eso he oído, famoso y cargado de magia. No podría enfrentarse a mí con un hacha, creo, pero suena suficientemente terrible.~ */
  IF ~~ THEN EXTERN ~BREG01~ 8
END

IF ~~ THEN BEGIN 172 // from:
  SAY #57194 /* ~¡Al infierno con vos, drow! ¡Os cogeremos! ¡Os encontraremos y os rajaré de lado a lado con una sonrisa, os lo juro!~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 39
END

IF ~~ THEN BEGIN 173 // from:
  SAY #57671 /* ~<CHARNAME>, estáis un poco pálido. Quizás alguien debería ir delante en vuestro lugar. Quizás debería yo.~ ~<CHARNAME>, estáis un poco pálida. Quizás alguien debería ir delante en vuestro lugar. Quizás debería yo.~ */
  IF ~~ THEN REPLY #57672 /* ~Gracias por vuestro interés, Korgan, pero me las apañaré bien.~ */ GOTO 174
  IF ~~ THEN REPLY #57673 /* ~Bien, la próxima vez quedaos delante de alguien que necesite que le aspiren el alma.~ */ GOTO 175
  IF ~~ THEN REPLY #57674 /* ~Continuaré así. Seguidme, como dicen.~ */ GOTO 176
END

IF ~~ THEN BEGIN 174 // from: 173.0
  SAY #57675 /* ~Sí, tenedlo en cuenta. Os estaré observando por si flaqueáis. Por no hablar del efecto que os produjo el ritual.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 175 // from: 173.1
  SAY #57676 /* ~Aah, quizás guiéis mejor al grupo, después de todo. Lo cierto es que estos son vuestros enemigos. Además, es mejor que os cuide las espaldas por si volvéis a flaquear.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 176 // from: 173.2
  SAY #57677 /* ~Sí, sí, estoy seguro de que os las apañaréis. No obstante, no dudéis en pedirme ayuda si os sentís débil. Tengo derecho a saber si no podéis controlar la situación.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 177 // from:
  SAY #57718 /* ~¡<CHARNAME>! ¡Qué resplandor! ¡Sois una especie de monstruo poderoso, eso seguro! Una vez vi una pintura en un templo de esa bestia. Os habéis convertido en el avatar del Señor del Asesinato.~ */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #57719 /* ~Teniendo como tengo amigos poderosos, no quiero estar cerca cuando perdáis la cabeza por semejante poder.~ */
  IF ~~ THEN GOTO 179
END

IF ~~ THEN BEGIN 179 // from: 178.0
  SAY #57720 /* ~Enfrentaos al deseo de sucumbir de nuevo. Os pondré una daga en el cuello antes de verme atrapado en el despertar de esa bestia.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 180 // from:
  SAY #57904 /* ~Y si creéis eso, es que os lo creéis todo.~ */
  IF ~  !IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~VICONIJ~ 120
  IF ~  IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~MINSCJ~ 205
END

IF ~~ THEN BEGIN 181 // from:
  SAY #58134 /* ~No veo por qué tenemos que hacer todo esto. Me estoy cansando de seguir a alguien que ni siquiera conozco.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 515
END

IF ~~ THEN BEGIN 182 // from:
  SAY #58135 /* ~Seguid hablando, preciosa. Cruzaréis la línea algún día.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 183 // from:
  SAY #58136 /* ~Abandonáis sin problemas vuestra brillante honestidad cuando os conviene, ¿eh? Os haréis un magnífico paladín, pequeño.~ */
  IF ~~ THEN EXTERN ~MAZZYJ~ 198
END

IF ~~ THEN BEGIN 184 // from:
  SAY #58188 /* ~No tendré ningún problema con ello. Tengo experiencia de ser robado por traidores. Les daré a estos dos a probar de lo que les debo a los demás.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 185 // from:
  SAY #58189 /* ~Memo, estaréis en más peligro si reclutan cobardes. Y ahora, estaos callado.~ */
  IF ~~ THEN EXTERN ~ARAN~ 41
END

IF ~~ THEN BEGIN 186 // from:
  SAY #58203 /* ~Sí, sí, una descarga de estos probará que son un nido de problemas. Los he visto antes, lo he sufrido en persona.~ */
  IF ~~ THEN EXTERN ~ARAN~ 41
END

IF ~~ THEN BEGIN 187 // from:
  SAY #58223 /* ~¡Agh, no me vengáis con esas! Mi hacha está tan afilada como puede estarlo, y está deseando hacer que corra la sangre de los magos. ¡Si muero, será porque ha llegado mi hora, pero me ahorraré vuestros mimos!~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IfValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IfValidForPartyDialogue("Aerie")
Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 51
  IF ~  IfValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IfValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IfValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
  IF ~  IfValidForPartyDialogue("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 47
  IF ~  IfValidForPartyDialogue("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 46
  IF ~  IfValidForPartyDialogue("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 45
  IF ~  IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~PLAYER1~ 44
  IF ~  IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~PLAYER1~ 43
END

IF ~~ THEN BEGIN 188 // from:
  SAY #58499 /* ~Si quisiera escuchar vuestros lamentos, elfo ridículo, os pondría en mis rodillas y os azotaría en el trasero. Al menos, entonces tendría algo interesante que hacer mientras balbuceáis.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 189 // from:
  SAY #58523 /* ~¡Pfeh! No me importa si pasáis de vuestro mago o no. Me gustaría ver los tesoros que se encuentran en la esfera de la que el guardián nos habló. Mucho más botín del que nos ofrece este mago, ¿no?~ */
  IF ~~ THEN EXTERN ~TOLGER~ 82
END

IF ~~ THEN BEGIN 190 // from:
  SAY #58749 /* ~¡Yoshimo, incluso el más cándido de los paladines sabe que no sois más que un gusano! ¡Voto por que le arranquemos los intestinos!~ */
  IF ~  !IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("VALYGAR")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("CERND")
!IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 161
  IF ~  IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~MAZZYJ~ 201
  IF ~  IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~JANJ~ 182
  IF ~  IfValidForPartyDialogue("VALYGAR")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~VALYGARJ~ 119
  IF ~  IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("VALYGAR")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~HAERDAJ~ 150
  IF ~  IfValidForPartyDialogue("CERND")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("VALYGAR")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~CERNDJ~ 137
  IF ~  IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("CERND")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("VALYGAR")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 191 // from: 0.0
  SAY #58890 /* ~¡De todas las afrentas, esta es la peor! ¡Sois más mentiroso y embustero que los chacales! ¡Teníamos un pacto y lo habéis roto!~ */
  IF ~~ THEN GOTO 192
END

IF ~~ THEN BEGIN 192 // from: 191.0
  SAY #58891 /* ~¡El destino dicta que no os raje a todos, panda de desgraciados! Hasta la vista, cretinos, y no dejéis de mirar por encima del hombro, porque la muerte porta un hacha.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 193 // from: 0.1
  SAY #58892 /* ~¡Entonces, aceleremos!~ */
  IF ~~ THEN DO ~SetGlobalTimer("KorganBook","GLOBAL",SIX_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 194 // from: 1.0
  SAY #58893 /* ~¡Vuestras disculpas están repletas de tonterías y mentiras! ¡Idos con viento fresco!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~~ THEN BEGIN 195 // from: 1.1
  SAY #58894 /* ~Sería más prudente si recordarais que no estoy en este grupo con vos. ¡Vos estáis en este grupo conmigo!~ */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #58900 /* ~¡No deseo otra cosa que no dejar vivos a esta patética panda de pataslargas que sois! Hasta la vista, necios, y nunca sabréis qué es lo que os aguardará cuando durmáis.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~  GlobalTimerExpired("KorganContract","GLOBAL")
!Global("TalkedToMadeen","GLOBAL",1)
!Global("TalkedToTolgerias","GLOBAL",1)
Global("KorMentionedContract","LOCALS",0)
AreaType(OUTDOOR)
!AreaCheck("AR0406")
See(Player1)
CombatCounter(0)
~ THEN BEGIN 197 // from:
  SAY #58906 /* ~Eeeh... algo que debería haberos contado, <CHARNAME>. Ahora que el asunto con Tabaquera y mis antiguos colegas ha acabado, me vuelve la memoria de un acuerdo anterior que suscribí.~ */
  IF ~~ THEN DO ~SetGlobal("KorMentionedContract","LOCALS",1)
~ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #58907 /* ~Hay un hombre que deseaba que me uniese a otros para un trabajo con recompensa. No era gran cosa, tan solo una muestra de interés, pero no deseo que mi reputación se desvanezca como el humo.~ */
  IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #58908 /* ~No sé nada del trabajo, pero el oro siempre me parece bien. Parece que llevo viajando mucho tiempo con vosotros, y quizás debamos ir a escuchar la oferta de ese tipo, ¿no?~ */
  IF ~~ THEN REPLY #58909 /* ~¿Quién es este hombre del que habláis?~ */ UNSOLVED_JOURNAL #3304 /* ~Korgan me ofrece otro trabajo.

Korgan ha mencionado que su grupo de aventureros había recibido una oferta antes de que tuviera lugar su... desafortunada separación. Me ha pedido que vaya a ver a Madín, el hombre que les hizo la oferta, ya que tiene una reputación que mantener. Podemos encontrarlo enfrente del edificio del Consejo, en el distrito gubernamental.~ */ GOTO 200
  IF ~~ THEN REPLY #58910 /* ~Podríamos ir a ver a este hombre, pero no estoy seguro de tengamos tiempo de aceptar ninguna oferta.~ ~Podríamos ir a ver a este hombre, pero no estoy segura de tengamos tiempo de aceptar ninguna oferta.~ */ UNSOLVED_JOURNAL #3304 /* ~Korgan me ofrece otro trabajo.

Korgan ha mencionado que su grupo de aventureros había recibido una oferta antes de que tuviera lugar su... desafortunada separación. Me ha pedido que vaya a ver a Madín, el hombre que les hizo la oferta, ya que tiene una reputación que mantener. Podemos encontrarlo enfrente del edificio del Consejo, en el distrito gubernamental.~ */ GOTO 200
  IF ~~ THEN REPLY #58911 /* ~No tengo ningún interés en algo semejante, Korgan.~ */ UNSOLVED_JOURNAL #3304 /* ~Korgan me ofrece otro trabajo.

Korgan ha mencionado que su grupo de aventureros había recibido una oferta antes de que tuviera lugar su... desafortunada separación. Me ha pedido que vaya a ver a Madín, el hombre que les hizo la oferta, ya que tiene una reputación que mantener. Podemos encontrarlo enfrente del edificio del Consejo, en el distrito gubernamental.~ */ GOTO 203
  IF ~  Dead("korshag")
~ THEN REPLY #58912 /* ~Olvidadlo, enano. Ya me ha bastado con viajar con vos a través de la tumba; no voy a prolongar esta agonía por más tiempo.~ */ GOTO 204
  IF ~  !Dead("korshag")
~ THEN REPLY #58913 /* ~Olvidadlo, enano. Ya me ha bastado con viajar con vos a través de la tumba; no voy a prolongar esta agonía por más tiempo.~ */ GOTO 206
END

IF ~~ THEN BEGIN 200 // from: 199.1 199.0
  SAY #58914 /* ~Dijo que su nombre era Madín; representa a algún mago, o algo así. Dijo que su amo necesitaba aventureros deseosos de trabajar por un buen montón de monedas. Sonaba bastante bien.~ */
  IF ~~ THEN GOTO 201
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #58915 /* ~Me dijo que lo podría encontrar delante del edificio gubernamental en el distrito del mismo nombre y echaría un vistazo por mí y mi grupo. Puede que vayamos y veamos a este Madín.~ */
  IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 202 // from: 203.0 201.0
  SAY #58916 /* ~No hay prisa con esto, <CHARNAME>. Es solo que no quiero ver cómo otro aventurero ansioso acepta la oferta de Madín y llama a Korgan pusilánime, eso es todo.~ */
  IF ~~ THEN DO ~SetGlobalTimer("KorganRemindsMadeen","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~~ THEN BEGIN 203 // from: 199.2
  SAY #58917 /* ~Bien, si no tenéis ningún interés, no tenéis ningún interés. Que así sea. Si cambiáis de opinión, el hombre se llama Madín, y dijo que podíais encontrarlo en el distrito gubernamental.~ */
  IF ~~ THEN GOTO 202
END

IF ~~ THEN BEGIN 204 // from: 199.3
  SAY #58918 /* ~Bien, podéis haberlo mencionado antes, muchacho. Tengo cosas mejores que hacer que escuchar lo mucho que os duele la tripita. Me ayudasteis con la misión de Tabaquera, y eso basta.~ ~Bien, podéis haberlo mencionado antes, muchacha. Tengo cosas mejores que hacer que escuchar lo mucho que os duele la tripita. Me ayudaste con la misión de Tabaquera, y eso basta.~ */
  IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205 // from: 204.0
  SAY #58919 /* ~Si reunís suficiente coraje de nuevo, venid y me encontraréis en la Corona de Cobre. Si no, mantened vuestras piernas amarillas en forma y bastante alejadas.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR0406",950,1867,E)
~ EXIT
END

IF ~~ THEN BEGIN 206 // from: 199.4
  SAY #58920 /* ~Primero dejamos a Tabaquera marcharse con el dinero de vuestra tumba, y ahora me lo recrimináis, ¿no? ¡Bah! ¡Ya he tenido bastante de vuestras quejas! ¡Si vais a pretender juzgarme, me marcho!~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
LeaveParty()
EscapeArea()
~ EXIT
END

IF ~  GlobalTimerExpired("KorganRemindsMadeen","GLOBAL")
Global("KorReminder","LOCALS",0)
!Global("TalkedToMadeen","GLOBAL",1)
!Global("TalkedToTolgerias","GLOBAL",1)
AreaType(OUTDOOR)
!AreaCheck("AR1000")
CombatCounter(0)
See(Player1)
~ THEN BEGIN 207 // from:
  SAY #58921 /* ~<CHARNAME>, ¿nos dirigiremos a ver a ese tal Madín? Sé que estáis muy ocupado, pero mi reputación está en juego. Lo que digo es que debemos ir y ver de qué va.~ */
  IF ~~ THEN DO ~IncrementGlobal("KorReminder","LOCALS",1)
SetGlobalTimer("KorganRemindsMadeen","GLOBAL",ONE_DAY)
~ EXIT
END

IF ~  GlobalTimerExpired("KorganRemindsMadeen","GLOBAL")
Global("KorReminder","LOCALS",1)
!Global("TalkedToMadeen","GLOBAL",1)
!Global("TalkedToTolgerias","GLOBAL",1)
AreaType(OUTDOOR)
!AreaCheck("AR1000")
CombatCounter(0)
See(Player1)
~ THEN BEGIN 208 // from:
  SAY #58922 /* ~Así que no estamos dando la cara para ver al amigo Madín, ¿no? Sois una verdadera mula, <CHARNAME>. Pero tan pronto como reunamos el oro, no tendré nada que decir al respecto...~ */
  IF ~~ THEN DO ~IncrementGlobal("KorReminder","LOCALS",1)
~ EXIT
END

IF ~  GlobalTimerExpired("KorganRemindsValygar","GLOBAL")
Global("KorReminder2","LOCALS",0)
!Global("BetrayedCowled","GLOBAL",1)
!InParty("Valygar")
!PartyHasItem("MISC7L")
!Global("BetrayedValygar","GLOBAL",1)
AreaType(OUTDOOR)
!AreaCheck("AR1100")
CombatCounter(0)
See(Player1)
~ THEN BEGIN 209 // from:
  SAY #58923 /* ~<CHARNAME>, no quiero ser pesado, pero estamos de acuerdo en encontrar el explorador para los malditos magos, ¿sí? Movámonos y hagámoslo, antes de que pierda la paciencia.~ */
  IF ~~ THEN DO ~SetGlobal("KorReminder2","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 210 // from:
  SAY #59350 /* ~Si habláis de Tabaquera y otros traidores parecidos, entonces no. Este es mi nuevo grupo, y es mucho mejor que el anterior.~ */
  IF ~~ THEN GOTO 211
END

IF ~~ THEN BEGIN 211 // from: 210.0
  SAY #59351 /* ~Pero ya basta, humano. Me pedisteis que viniera. ¿Tenéis un contrato para Korgan, o no? Si me habéis hecho perder el tiempo, me voy a enfadar muchísimo, os lo advierto.~ */
  IF ~~ THEN EXTERN ~MADEEN~ 13
END

IF ~~ THEN BEGIN 212 // from:
  SAY #59353 /* ~Sí, sí, lo que queráis, pataslargas. Pero no me llaméis "señor Hacha Sangrienta" de nuevo. Mi nombre es Korgan, nada más. Y podéis hablar con <CHARNAME>, aquí presente, si es que necesitáis hablar con alguien.~ */
  IF ~~ THEN EXTERN ~MADEEN~ 1
END

IF ~~ THEN BEGIN 213 // from:
  SAY #59355 /* ~No tengáis tanta prisa en haceros cargo de mis propios asuntos. Estoy deseando aceptar el encargo, Madín, incluso si tengo que esperar hasta que <CHARNAME> cambie de idea de una puta vez.~ */
  IF ~~ THEN EXTERN ~MADEEN~ 8
END

IF ~~ THEN BEGIN 214 // from:
  SAY #59359 /* ~No me emociona pensar que voy a trabajar para los malditos magos... pero sería un contrato más provechoso y no lo dejaría caer en manos de cualquier farsante.~ */
  IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 215 // from: 214.0
  SAY #59360 /* ~Deberíais tener en cuenta, <CHARNAME>, que los Magos Encapuchados pueden daros información... y pueden ser más proclives a ello si habéis trabajado para ellos. O no... lo dejo a vuestro criterio.~ */
  IF ~~ THEN GOTO 216
END

IF ~~ THEN BEGIN 216 // from: 215.0
  SAY #59361 /* ~Digo que entremos en el edificio y, al menos, hablemos con Tolgerias, ¿vale? Y os dejaré que toméis la decisión final, <CHARNAME>, para hacerlo más justo, je...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 217 // from:
  SAY #59363 /* ~Puedo con cualquier tarea, mago, pero si hay que convencer de que se haga, sería mejor que persuadierais a mi camarada, <CHARNAME>, aquí presente. Será su decisión si aceptamos el trabajo o no.~ */
  IF ~~ THEN EXTERN ~TOLGER~ 86
END

IF ~~ THEN BEGIN 218 // from:
  SAY #59367 /* ~¡Por todos los jodidos demonios! ¡Debería haber sabido que los magos pedirían algo así! Es vuestra decisión, <CHARNAME>, pero prefiero patear su culo antes que besarlo.~ */
  IF ~~ THEN EXTERN ~TOLGER~ 2
END

IF ~~ THEN BEGIN 219 // from:
  SAY #59375 /* ~Una caza por un botín, ¿no? Pfeh... Me pregunto por qué el mago nos ha dado tantas explicaciones. Mentiras, todas, no me cabe la menor duda. <CHARNAME>, si logramos imaginar por qué quieren a ese hombre, quizás obtengamos más riquezas.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 220 // from:
  SAY #59378 /* ~Así que es donde estaba el explorador, escondido como un cobarde, ¿eh? Tenéis razón, chico... los magos nos contrataron para encontraros a cambio de una cierta retribución. La diferencia significa poco para nosotros.~ */
  IF ~~ THEN EXTERN ~VALYGAR~ 1
END

IF ~~ THEN BEGIN 221 // from:
  SAY #59380 /* ~Es una mancha en mi reputación que aceptaseis dinero en nuestra posición, <CHARNAME>, pero no diré nada en contra.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 222 // from:
  SAY #70521 /* ~¡Entonces, entrad en vuestra mazmorra y haced vosotros mismos el trabajo, malditos cobardes! ¿Para qué estáis aquí, entonces?~ */
  IF ~~ THEN EXTERN ~GORODR1~ 12
END

IF ~~ THEN BEGIN 223 // from:
  SAY #70528 /* ~¡¿De manera que nos enviasteis a una muerte segura?! Estoy tentado de enseñaros cómo tratamos a vuestro demonio. ¡<CHARNAME>, arrasemos este lugar y acabemos con todos!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 36
END

IF ~~ THEN BEGIN 224 // from:
  SAY #70536 /* ~Mmm... (Quejas, quejas... nadie me había hablado como si fuera un crío estúpido excepto aquel tipo al que decapité...).~ */
  IF ~~ THEN DO ~SetGlobal("KnightsInKeep","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 225 // from:
  SAY #70410 /* ~¡No tengo ninguna objeción a poner a prueba mi valor contra un príncipe de los demonios, aunque deberíais aseguraros de que la recompensa merezca la pena, <CHARNAME>!~ */
  IF ~~ THEN EXTERN ~GORAPP1~ 11
  IF ~  IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 141
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 533
END

IF ~~ THEN BEGIN 226 // from:
  SAY #70432 /* ~¡Cerrad el pico, renacuajo charlatán! ¡No puedo oír los gemidos de agonía de mis enemigos si no dejáis de parlotear!~ */
  IF ~~ THEN EXTERN ~JANJ~ 188
END

IF ~~ THEN BEGIN 227 // from:
  SAY #78614 /* ~No es muy distinto, desde mi punto de vista.~ */
  IF ~~ THEN EXTERN ~OHRSSCAR~ 40
END

IF ~~ THEN BEGIN 228 // from:
  SAY #79526 /* ~¿"Numerosas penurias"? ¡No reconoceríais una penuria ni aunque os mordiera el trasero, niñato repelente! ~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 11
END

IF ~~ THEN BEGIN 229 // from:
  SAY #79171 /* ~No, pero debéis admitir que saben cómo pasárselo bien.~ */
  IF ~~ THEN EXTERN ~OHRSLARA~ 2
END

IF ~~ THEN BEGIN 230 // from:
  SAY #74591 /* ~¿Conocéis a este semiorco, <CHARNAME>? No imaginaba una cosa así.~ */
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN EXTERN ~DORN~ 20
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN EXTERN ~DORN~ 22
END

IF ~~ THEN BEGIN 231 // from:
  SAY #74785 /* ~Estoy con el semiorco. Yo tengo un hacha, estos santurrones tienen cabezas. ¿A qué estamos esperando?~ */
  IF ~~ THEN EXTERN ~OHDFIREJ~ 1
END

IF ~~ THEN BEGIN 232 // from:
  SAY #74830 /* ~Los matices son para los juegos. Una hoja afilada os llevará más lejos en el mundo real. Demonios, incluso un simple garrote es mejor.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 312
END

IF ~~ THEN BEGIN 233 // from:
  SAY #74917 /* ~Pues que vengan. No son más que una panda de lamebotas piojosos de Helm.~ */
  IF ~~ THEN REPLY #74918 /* ~Estupendo.~ */ EXTERN ~DORNJ~ 348
END

IF ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 234 // from:
  SAY #75722 /* ~Este no es un lugar adecuado para un enano, <CHARNAME>. Recordadme por qué os tolero.~ */
  IF ~~ THEN REPLY #75723 /* ~No tengáis miedo, Korgan.~ */ GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #75724 /* ~¿Miedo? Debería arrancaros la lengua por eso, <PRO_RACE>. Ni que nos estuviéramos enfrentando a una horda de dragones... ¡Es solo un maldito árbol!~ */
  IF ~  !IfValidForPartyDialogue("mazzy")
!IfValidForPartyDialogue("minsc")
!IfValidForPartyDialogue("valygar")
!IfValidForPartyDialogue("viconia")
!IfValidForPartyDialogue("dorn")
!IfValidForPartyDialogue("neera")
!IfValidForPartyDialogue("hexxat")
~ THEN REPLY #75725 /* ~Así me gusta.~ */ DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  !IfValidForPartyDialogue("mazzy")
!IfValidForPartyDialogue("minsc")
!IfValidForPartyDialogue("valygar")
!IfValidForPartyDialogue("viconia")
!IfValidForPartyDialogue("dorn")
!IfValidForPartyDialogue("neera")
IfValidForPartyDialogue("hexxat")
~ THEN REPLY #75725 /* ~Así me gusta.~ */ EXTERN ~HEXXATJ~ 2
  IF ~  !IfValidForPartyDialogue("mazzy")
!IfValidForPartyDialogue("minsc")
!IfValidForPartyDialogue("valygar")
!IfValidForPartyDialogue("viconia")
!IfValidForPartyDialogue("dorn")
IfValidForPartyDialogue("neera")
~ THEN REPLY #75725 /* ~Así me gusta.~ */ EXTERN ~NEERAJ~ 15
  IF ~  !IfValidForPartyDialogue("mazzy")
!IfValidForPartyDialogue("minsc")
!IfValidForPartyDialogue("valygar")
!IfValidForPartyDialogue("viconia")
IfValidForPartyDialogue("dorn")
~ THEN REPLY #75725 /* ~Así me gusta.~ */ EXTERN ~DORNJ~ 502
  IF ~  !IfValidForPartyDialogue("mazzy")
!IfValidForPartyDialogue("minsc")
!IfValidForPartyDialogue("valygar")
IfValidForPartyDialogue("viconia")
~ THEN REPLY #75725 /* ~Así me gusta.~ */ EXTERN ~VICONIJ~ 410
  IF ~  !IfValidForPartyDialogue("mazzy")
!IfValidForPartyDialogue("minsc")
IfValidForPartyDialogue("valygar")
~ THEN REPLY #75725 /* ~Así me gusta.~ */ EXTERN ~VALYGARJ~ 128
  IF ~  !IfValidForPartyDialogue("mazzy")
IfValidForPartyDialogue("minsc")
~ THEN REPLY #75725 /* ~Así me gusta.~ */ EXTERN ~MINSCJ~ 252
  IF ~  IfValidForPartyDialogue("mazzy")
~ THEN REPLY #75725 /* ~Así me gusta.~ */ EXTERN ~MAZZYJ~ 208
END

IF ~  Global("OHD_ritual_interjects","GLOBAL",1)
~ THEN BEGIN 236 // from:
  SAY #77506 /* ~Hmm. Todas las comodidades de una caverna de Piedra Profunda y nada del encanto. Haced lo que habéis venido a hacer, <CHARNAME>, y larguémonos de aquí.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_ritual_interjects","GLOBAL",2)
~ EXIT
  IF ~  IfValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 56
  IF ~  IfValidForPartyDialogue("rasaad")
~ THEN EXTERN ~RASAADJ~ 771
END

IF ~~ THEN BEGIN 237 // from:
  SAY #74712 /* ~No queremos hacerla esperar. ¡Y creedme, vos tampoco queréis hacernos esperar!~ */
  IF ~~ THEN EXTERN ~OHDBBRO~ 2
  IF ~  IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 162
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 196
END

IF ~~ THEN BEGIN 238 // from:
  SAY #74712 /* ~No queremos hacerla esperar. ¡Y creedme, vos tampoco queréis hacernos esperar!~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 224
  IF ~  IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 164
  IF ~  IfValidForPartyDialogue("AERIE")
~ THEN EXTERN ~AERIEJ~ 226
  IF ~  IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 163
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 197
END

IF ~~ THEN BEGIN 239 // from:
  SAY #74805 /* ~Pues claro que van a morir. ¿Algún otro sobrecogedor giro argumental o puedo pasar a la acción?~ */
  IF ~~ THEN EXTERN ~OHDBRIDE~ 0
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 198
END

IF ~~ THEN BEGIN 240 // from:
  SAY #74805 /* ~Pues claro que van a morir. ¿Algún otro sobrecogedor giro argumental o puedo pasar a la acción?~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 538
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 199
END

IF ~~ THEN BEGIN 241 // from:
  SAY #74846 /* ~Cerdo tacaño. ¿Llamáis a esto regalos de boda? No se los daría ni a un perro, y mucho menos a alguien de mi familia. Bueno, puede que a alguno sí. Menudos cabrones están hechos.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 318
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 200
  IF ~  IfValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 417
END

IF ~~ THEN BEGIN 242 // from:
  SAY #74860 /* ~¿El semiorco se viene con nosotros? Menuda estrategemia o como se diga. Bien pensado, <CHARNAME>. Pero acordaos de enviarlo el primero a la batalla.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 320
END

IF ~  Global("OHH_mazestart","OH7000",1)
~ THEN BEGIN 243 // from:
  SAY #80980 /* ~No me gusta la pinta de ese rastro de huesos. ¿Qué hay ahí abajo?~ */
  IF ~~ THEN EXTERN ~OHHFAK~ 28
END

IF ~~ THEN BEGIN 244 // from:
  SAY #81454 /* ~Cerrad el maldito pico, gnomo. Vuestros desvaríos me agotan.~ */
  IF ~~ THEN EXTERN ~HEXXAT~ 67
END

IF ~~ THEN BEGIN 245 // from:
  SAY #93253 /* ~Si vais a liberar a esa bestia, me gustaría ver cómo reaccionan esos patanes borrachos. ¡Pelea, pelea! ¡Espero ver una buena pelea!~ */
  IF ~~ THEN EXIT
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 98
  IF ~  IfValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 290
END

IF ~~ THEN BEGIN 246 // from:
  SAY #88083 /* ~¿Un maldito gato? Como no cargamos ya con bastantes cosas, añadamos una bestia que nos moleste con sus gemidos, nos arañe, nos robe la comida y para rematar se mee en nuestras armaduras, ¿no?~ */
  IF ~~ THEN EXTERN ~OHNBARAD~ 25
  IF ~  IfValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 201
END

IF ~~ THEN BEGIN 247 // from:
  SAY #93665 /* ~Cómo no. Maldita niñata entrometida...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN P_1 // from:
  SAY @3104/* ~Muy bien, flacucho. Me gusta tu determinación. Déjame ese gigante a mí, ¿quieres?  ¡Ja!~ */
  IF ~!IsValidForPartyDialog("Mazzy")~
THEN DO ~SetGlobal ("P_DuskMatMission2","GLOBAL",7)~ EXTERN ~P_FALON~ 3
IF ~IsValidForPartyDialog("Mazzy")
  ~ THEN EXTERN ~MAZZYJ~ P_1
END

IF ~~ THEN BEGIN P_2 // from:
  SAY @3025/* ~¡Con un carajo, <CHARNAME>! Desperdicias una cerveza de buena calidad en ese enclenque del bosque. Mejor se la hubieras dado al buen Korgan.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DUSKJ~ 19
END

