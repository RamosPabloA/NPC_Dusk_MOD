// creator  : weidu (version 24700)
// argument : KAYL2.DLG
// game     : .
// source   : ./DATA/DIALOG.BIF
// dialog   : .\lang\es_es\dialog.tlk
// dialogF  : .\lang\es_es\dialogf.tlk

BEGIN ~KAYL2~

IF ~~ THEN BEGIN 0 // from:
  SAY #8120 /* ~Excelente, escudero Anomen. El prelado os aguarda dentro. Que Torm esté con vos en este día.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 90
END

IF ~~ THEN BEGIN 1 // from:
  SAY #8125 /* ~Entrad en la sala. Hablaré con vos cuando hayáis acabado. Vuestro grupo puede acompañaros si lo deseáis.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 91
END

IF ~~ THEN BEGIN 2 // from:
  SAY #8178 /* ~Haced lo que el prelado os indique, Anomen. Ya no sois bienvenido aquí y no debéis corromper este lugar por más tiempo con vuestra presencia.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 100
END

IF ~Global("AnomenIsKnight","GLOBAL",1)
Global("AfterKnight","AR0903",0)
InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)~ THEN BEGIN 3 // from:
  SAY #8395 /* ~Os felicito, sir Anomen. Como vuestro nuevo superior, os doy la bienvenida y rindo honores a vuestro nuevo rango.~ [KAYLXX06] */
  IF ~~ THEN DO ~SetGlobal("AfterKNight","AR0903",1)~ EXTERN ~ANOMENJ~ 108
END

IF ~~ THEN BEGIN 4 // from:
  SAY #8398 /* ~Normalmente me acompañaríais como mi hombre de armas, pero mientras continuéis por el camino de la virtud, podéis proteger a <CHARNAME>. Que os vaya bien, sir Anomen, y que Torm os bendiga.~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 109
END

IF ~ReputationGT([PC],9)
Global("KaylFallenPaladinPlot","GLOBAL",0)
Global("Kayl1Done","GLOBAL",0)
~ THEN BEGIN 5 // from:
  SAY #31800 /* ~Saludos, <CHARNAME>. He oído hablar de vos.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #31801 /* ~Me gustaría ofreceros la oportunidad de ayudar a la Noble Orden del Muy Radiante Corazón. ¿Estáis interesados en escuchar mi propuesta?~ [KAYLXX07] */
  IF ~~ THEN REPLY #31802 /* ~No, tengo mejores cosas que hacer.~ */ GOTO 7
  IF ~~ THEN REPLY #31803 /* ~Por favor, explicaos.~ */ GOTO 9
  IF ~~ THEN REPLY #31804 /* ~¿Cuánto oro ofrecéis?~ */ GOTO 8
END

IF ~~ THEN BEGIN 7 // from: 26.0 13.1 11.0 8.1 6.0
  SAY #31805 /* ~Es una vergüenza, de verdad, dado que no tenemos a alguien que pueda volver a tiempo. Si cambiáis de opinión, por favor volved y hablad conmigo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 6.2
  SAY #31806 /* ~Vuestra recompensa será un objeto mágico de gran valor para la Orden y para un aventurero como vos: unos guanteletes de sanación. ¿Estáis interesado en seguir escuchando?~ ~Vuestra recompensa será un objeto mágico de gran valor para la Orden y para una aventurera como vos: unos guanteletes de sanación. ¿Estáis interesada en seguir escuchando?~ */
  IF ~~ THEN REPLY #31818 /* ~Por supuesto. Continuad, por favor.~ */ GOTO 9
  IF ~~ THEN REPLY #31819 /* ~Ya he oído bastante, y no me interesa. Adiós.~ */ GOTO 7
END

IF ~~ THEN BEGIN 9 // from: 8.0 6.1
  SAY #31807 /* ~Ser un paladín no es tarea sencilla. Muchos se quiebran bajo las exigencias de nuestro camino y lo abandonan por sendas más apropiadas a sus talentos.~ */
  IF ~~ THEN GOTO 10
END

IF ~~ THEN BEGIN 10 // from: 9.0
  SAY #31808 /* ~A veces se rinden antes de caer, mancillando su honor de paladines para servir a su propia causa. Son difíciles de detectar pero, cuando los delatáis, se descubren fácilmente.~ */
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("Mazzy")~ THEN GOTO 25
  IF ~IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~KELDORJ~ 130
  IF ~!IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Anomen")~ THEN EXTERN ~ANOMENJ~ 200
  IF ~!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Anomen")
IsValidForPartyDialog("Mazzy")~ THEN EXTERN ~MAZZYJ~ 140
END

IF ~~ THEN BEGIN 11 // from: 27.0
  SAY #31809 /* ~Los paladines caídos, como son conocidos, pueden reconocer a cualquiera de nuestra Orden y algunos temen enfrentarse a viejos amigos, por lo que necesitamos ayuda del exterior.~ */
  IF ~~ THEN REPLY #31812 /* ~Ya he oído bastante. No me interesa.~ */ GOTO 7
  IF ~~ THEN REPLY #31813 /* ~Entonces, ¿qué es lo que queréis que haga?~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.1
  SAY #31814 /* ~Los paladines caídos necesitan siempre a guerreros para ayudarles en sus actividades ilegales. Queremos que os aliéis con ellos, especialmente con Anarg. Él es la clave de todo.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #31815 /* ~Si consideráis a estos hombres un peligro, entonces haced lo que creáis necesario. Los guanteletes de sanación podrían ser una recompensa adecuada. ¿Aceptáis?~ */
  IF ~~ THEN REPLY #31816 /* ~Sí, acepto.~ */ GOTO 14
  IF ~~ THEN REPLY #31817 /* ~No, mis viajes me llevan a otros lugares.~ */ GOTO 7
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #31820 /* ~Excelente. Gracias a los Ladrones de las Sombras, Anarg ha sido localizado en el distrito del puente. Os sugiero que busquéis allí. Que Torm esté con vos.~ */
  IF ~!IsValidForPartyDialog("Edwin")
!IsValidForPartyDialog("Korgan")
!IsValidForPartyDialog("Keldorn")~ THEN DO ~SetGlobal("KaylFallenPaladinPlot","GLOBAL",1)
~ UNSOLVED_JOURNAL #34244 /* ~Buscar e investigar a los paladines caídos.

Ryan Espinel, de la Noble Orden del Muy Radiante Corazón, me ha contratado para buscar y aliarme con un grupo de paladines caídos. Se rumorea que están en el distrito del puente y liderados por un antiguo caballero llamado Anarg. Si pienso que el grupo es una amenaza, debo actuar en consecuencia e informar a sir Ryan.~ */ EXIT
  IF ~IsValidForPartyDialog("Edwin")~ THEN DO ~SetGlobal("KaylFallenPaladinPlot","GLOBAL",1)~ UNSOLVED_JOURNAL #34244 /* ~Buscar e investigar a los paladines caídos.

Ryan Espinel, de la Noble Orden del Muy Radiante Corazón, me ha contratado para buscar y aliarme con un grupo de paladines caídos. Se rumorea que están en el distrito del puente y liderados por un antiguo caballero llamado Anarg. Si pienso que el grupo es una amenaza, debo actuar en consecuencia e informar a sir Ryan.~ */ EXTERN ~EDWINJ~ 58
  IF ~!IsValidForPartyDialog("Edwin")
IsValidForPartyDialog("Korgan")~ THEN DO ~SetGlobal("KaylFallenPaladinPlot","GLOBAL",1)~ UNSOLVED_JOURNAL #34244 /* ~Buscar e investigar a los paladines caídos.

Ryan Espinel, de la Noble Orden del Muy Radiante Corazón, me ha contratado para buscar y aliarme con un grupo de paladines caídos. Se rumorea que están en el distrito del puente y liderados por un antiguo caballero llamado Anarg. Si pienso que el grupo es una amenaza, debo actuar en consecuencia e informar a sir Ryan.~ */ EXTERN ~KORGANJ~ 84
  IF ~!IsValidForPartyDialog("Edwin")
!IsValidForPartyDialog("Korgan")
IsValidForPartyDialog("Keldorn")~ THEN DO ~SetGlobal("KaylFallenPaladinPlot","GLOBAL",1)~ UNSOLVED_JOURNAL #34244 /* ~Buscar e investigar a los paladines caídos.

Ryan Espinel, de la Noble Orden del Muy Radiante Corazón, me ha contratado para buscar y aliarme con un grupo de paladines caídos. Se rumorea que están en el distrito del puente y liderados por un antiguo caballero llamado Anarg. Si pienso que el grupo es una amenaza, debo actuar en consecuencia e informar a sir Ryan.~ */ EXTERN ~KELDORJ~ 132
END

IF ~Global("KaylFallenPaladinPlot","GLOBAL",1)
!Dead("kaypala")
OR(2)
Global("ReynaldJob","GLOBAL",0)
Global("KaylAcceptCupMission","GLOBAL",2)
ReputationGT([PC],9)
Global("Kayl1Done","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY #31821 /* ~¿Habéis completado vuestra misión?~ */
  IF ~~ THEN REPLY #31822 /* ~No, no aunque sigo trabajando en ello.~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #31823 /* ~Volved cuando hayáis acabado.~ */
  IF ~~ THEN EXIT
END

IF ~Dead("kaypala")
PartyHasItem("Misc6i")
ReputationGT([PC],9)
Global("Kayl1Done","GLOBAL",0)~ THEN BEGIN 17 // from:
  SAY #31824 /* ~Por vuestra torva expresión, creo que habéis hecho lo que os pedí. ¿Es así?~ */
  IF ~~ THEN REPLY #31825 /* ~Sí, los paladines caídos han sido destruidos.~ */ DO ~AddXPObject(Player1,17500)
AddXPObject(Player2,17500)
AddXPObject(Player3,17500)
AddXPObject(Player4,17500)
AddXPObject(Player5,17500)
AddXPObject(Player6,17500)
~ GOTO 18
  IF ~~ THEN REPLY #31826 /* ~He hecho lo que me pediste.~ */ DO ~AddXPObject(Player1,17500)
AddXPObject(Player2,17500)
AddXPObject(Player3,17500)
AddXPObject(Player4,17500)
AddXPObject(Player5,17500)
AddXPObject(Player6,17500)
~ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.1 17.0
  SAY #31828 /* ~Entonces se os recompensará. La Noble Orden del Muy Radiante Corazón os da su más sincero agradecimiento.~ */
  IF ~~ THEN DO ~SetGlobal("Kayl1Done","GLOBAL",1)
EraseJournalEntry(34244)
EraseJournalEntry(34245)
EraseJournalEntry(34246)
ReputationInc(1)
TakePartyItem("misc6i")
GiveItemCreate("brac20",LastTalkedToBy,1,0,0)~ SOLVED_JOURNAL #47725 /* ~Localizar e investigar a los paladines caídos.

He matado a ese paladín bribón de Anarg y he ahuyentado al grupo de paladines caídos para sir Ryan Espinel, el líder de la Noble Orden del Muy Radiante Corazón. Mi reputación se ha incrementado junto con una buena cantidad de buenos deseos de sir Ryan.~ */ EXIT
END

IF ~Global("KaylFallenPaladinPlot","GLOBAL",1)
!Global("KaylAcceptCupMission","GLOBAL",2)
Global("ReynaldJob","GLOBAL",1)
ReputationGT([PC],9)
Global("Kayl1Done","GLOBAL",0)~ THEN BEGIN 19 // from:
  SAY #31831 /* ~Habéis vuelto antes de lo que esperaba. ¿Qué es lo que necesitáis?~ */
  IF ~~ THEN REPLY #31832 /* ~Los paladines caídos nos han pedido una valiosa copa como prueba de nuestra lealtad hacia ellos.~ */ GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #31836 /* ~¿La copa de Anarg? No me es posible dárosla, pues le fue despojada cuando perdió su posición de paladín.~ */
  IF ~~ THEN REPLY #31838 /* ~Entonces no podré acabar la misión que me encomendasteis.~ */ GOTO 21
  IF ~~ THEN REPLY #31840 /* ~Dadme la copa u os la quitaré.~ */ GOTO 22
  IF ~~ THEN REPLY #36771 /* ~¿Por qué es tan importante la copa?~ */ GOTO 28
END

IF ~~ THEN BEGIN 21 // from: 30.1 30.0 22.0 20.0
  SAY #31841 /* ~Entonces, muy bien, os la prestaré. Devolvedla pronto o no os daré la recompensa. Es muy importante que la copa vuelva a manos de la Orden.~ */
  IF ~~ THEN DO ~SetGlobal("KaylAcceptCupMission","GLOBAL",2)
CreateItem("misc6i",0,0,0)
GiveItem("misc6i", [PC])~ UNSOLVED_JOURNAL #34246 /* ~Buscar e investigar a los paladines caídos.

Ryan Espinel ha accedido a darme la copa de Anarg, aunque le ha costado lo suyo. Espera que esta sea devuelta a la Orden una vez haya finalizado la misión.~ */ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #31844 /* ~Tened cuidado con lo que decís. Trabajáis para nosotros, no al contrario.~ */
  IF ~~ THEN REPLY #31848 /* ~Sin la copa, Los paladines caídos no confiarán en mí.~ */ GOTO 21
END

IF ~Dead("kaypala")
!PartyHasItem("MISC6I")
Global("Kayl1Done","GLOBAL",0)~ THEN BEGIN 23 // from:
  SAY #32056 /* ~Mis contactos dicen que Anarg ha muerto, pero ¿dónde está la copa? Como dije, es muy importante. Antes de que recibáis vuestra recompensa, debo tener su copa.~ */
  IF ~~ THEN EXIT
END

IF ~ReputationLT([PC],10)~ THEN BEGIN 24 // from:
  SAY #32060 /* ~Os sugiero que os marchéis. Vuestra reputación os precede.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from: 10.0
  SAY #36507 /* ~Recientemente uno de nuestros altos cargos estuvo implicado en el tráfico de esclavos. Su nombre es Anarg y aunque fuimos una vez amigos, fue expulsado de la Orden.~ */
  IF ~~ THEN GOTO 26
END

IF ~~ THEN BEGIN 26 // from: 25.0
  SAY #36513 /* ~Pensábamos que todo había terminado, pero Anarg se llevó a otros consigo cuando se marchó. Es un hombre carismático y engatusó a algunos jóvenes caballeros con su palabrería.~ */
  IF ~~ THEN REPLY #36515 /* ~No me gusta el cariz que toma esto. Adiós.~ */ GOTO 7
  IF ~~ THEN REPLY #36516 /* ~¿Así que os ha robado a algunos de vuestros miembros?~ */ GOTO 27
END

IF ~~ THEN BEGIN 27 // from: 26.1
  SAY #36518 /* ~Podemos aceptar la pérdida, pero ellos se hacen pasar por paladines, abusando de nuestro buen nombre. Capturan y trafican con esclavos, y escupen en todo lo que honramos.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 28 // from: 20.2
  SAY #36772 /* ~Cuando un nuevo paladín se une a nuestra Orden se le da una copa. Es un símbolo de unidad entre la Orden y los paladines que la sirven.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #36773 /* ~Anarg quiere mantener un vínculo con la Orden utilizando la copa, pero veo que es necesario para vos dárselo para conseguir su confianza.~ */
  IF ~~ THEN GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.0
  SAY #36774 /* ~¿Puedo confiar en que la traigáis de vuelta cuando la misión haya acabado?~ */
  IF ~~ THEN REPLY #36775 /* ~Sí, la traeré de vuelta.~ */ GOTO 21
  IF ~~ THEN REPLY #61133 /* ~Haré lo que deba para obtener el mejor resultado posible.~ */ GOTO 21
END

IF ~Global("Kayl1Done","GLOBAL",1)~ THEN BEGIN 31 // from:
  SAY #36777 /* ~Que tengáis un buen día, <CHARNAME>.~ */
  IF ~GlobalGT("chapter","GLOBAL",3)~ THEN EXIT
  IF ~GlobalLT("chapter","GLOBAL",4)~ THEN REPLY #45838 /* ~Una pregunta: una amiga ha sido encarcelada por los Magos Encapuchados. ¿Sabéis dónde tienen a sus prisioneros?~ */ GOTO 36
  IF ~GlobalLT("chapter","GLOBAL",4)~ THEN REPLY #45839 /* ~¿Qué es lo que sabéis de la guerra entre las cofradías de ladrones de la ciudad?~ */ GOTO 39
  IF ~GlobalLT("chapter","GLOBAL",4)~ THEN REPLY #45842 /* ~Saludos. Debo continuar mi camino.~ */ GOTO 42
END

IF ~False()~ THEN BEGIN 32 // from:
  SAY #36790 /* ~He oído hablar de vuestro servicio a la causa de la bondad, pero no os daré órdenes sobre este particular. Ved al prelado; hablaremos de otras cosas más tarde.~ */
  IF ~~ THEN EXIT
END

IF ~Global("PaladinOrder","GLOBAL",1)~ THEN BEGIN 33 // from:
  SAY #36791 /* ~Bienvenido a nuestras filas, <CHARNAME>. William Reirrac os explicará vuestros deberes y obligaciones.~ ~Bienvenida a nuestras filas, <CHARNAME>. William Reirrac os explicará vuestros deberes y obligaciones.~ */
  IF ~~ THEN EXIT
END

IF ~Global("PaladinOrder","GLOBAL",2)~ THEN BEGIN 34 // from:
  SAY #36792 /* ~Me confunde que rechacéis tal honor. Muchos han trabajado durante años para conseguirlo.~ */
  IF ~~ THEN EXIT
END

IF ~Global("PaladinOrder","GLOBAL",3)~ THEN BEGIN 35 // from:
  SAY #36793 /* ~No puedo imaginarme por qué arrebataríais el honor y el respeto de un igual. No encontraréis santuario aquí.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from: 31.1
  SAY #45870 /* ~No puedo decir que lo haga. Incluso si la Orden desease encontrar la localización de su prisión, los Magos Encapuchados no nos lo dirían. Poco es lo que los asusta.~ */
  IF ~~ THEN GOTO 38
END

IF ~~ THEN BEGIN 37 // from:
  SAY #45871 /* ~~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 38 // from: 36.0
  SAY #45872 /* ~Y me temo que haya poco que la Orden... o el mismo Consejo... pueda deciros. Espero que Tyr sea benévolo y que vuestra amiga esté a salvo, si es que es inocente.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from: 31.2
  SAY #45874 /* ~Poco, pero cualquier cosa que disminuya la influencia de los Ladrones de las Sombras es un apoyo. Debería expulsarlos de Athkatla igual que de Aguas Profundas si tuviese el poder para hacerlo.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #45875 /* ~No obstante, no soy tonto. Conozco poco de esa otra cofradía y no creo que reemplazar una serpiente con un desconocido pueda mejorar las cosas.~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #45876 /* ~En el caso de su guerra, me alegro de que la Orden se asegure de que por sus enfrentamientos no mueren inocentes.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from: 31.3
  SAY #45878 /* ~Como queráis. Si deseáis algo más, <CHARNAME>, no dudéis en pedirlo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN p_1 // from: 31.3
  SAY @30000 /* ~Ah, si es el capitán del norte. Dime, Dusk, ¿hay algo en lo que pueda ayudarte?~ */
  IF ~~ THEN EXTERN  ~P_DUSKj~ 122
END

IF ~~ THEN BEGIN p_2 // from: 31.3
  SAY @30001 /* ~¿Un grupo de renegados, dices? Ya veo. ¿Y qué es lo que buscas de la Noble Orden del Radiante Corazón?~ */
  IF ~~ THEN EXTERN  ~P_DUSKj~ 123
END

IF ~~ THEN BEGIN p_3 // from: 31.3
  SAY @30002 /* ~Hm... Supongo que podría interceder con el prelado por ti y tu grupo de humanoides. Pero dime, ¿por qué habría de hacerlo?~ */
  IF ~~ THEN EXTERN  ~P_DUSKj~ 124
END

IF ~~ THEN BEGIN p_4 // from: 31.3
  SAY @30003 /* ~Tiene sentido... Está bien, hablaré con el prelado, seguro que no habrá problemas. Hay mucho lugar aquí en el cuartel, incluso para humanoides de gran tamaño. Pueden ayudar con los quehaceres diarios, además de servir para un bien mayor para la nación.~ */
  IF ~~ THEN GOTO p_5
END

IF ~~ THEN BEGIN p_5 // from: 31.3
  SAY @30004 /* ~Pero primero necesito que me hagan un favor... Siempre y cuando la reputación de ustedes sea pertinente, claro está.~ */
  IF ~~ THEN GOTO p_6
END

IF ~~ THEN BEGIN p_6 // from: 31.3
  SAY @30005 /* ~Además, necesitaría hablar con tu líder <CHARNAME>. Tenemos un asunto tedioso relacionado al tráfico de esclavos, con hombres que solían llamarse Paladines.~ */
  IF ~~ THEN GOTO p_7
END

IF ~~ THEN BEGIN p_7 // from: 31.3
  SAY @30006 /* ~Haz esto, Dusk... y yo convenceré al prelado sobre los humanoides que intentas proteger.~ */
  IF ~~ THEN EXTERN  ~P_DUSKj~ 126
END

IF ~~ THEN BEGIN p_8 // from: 31.3
  SAY @30007 /* ~Sí, Dusk. El asunto de tus humanoides...~ */
  IF ~~ THEN GOTO p_9
END

IF ~~ THEN BEGIN p_9 // from: 31.3
  SAY @30008 /* ~Con gusto intercederé con el prelado por ti. Puedes volver con los desertores de Sothillis y decirles que vengan al cuartel de la Orden.~ */
  IF ~~ THEN EXTERN  ~P_DUSKj~ 128
END

IF ~~ THEN BEGIN p_10 // from: 31.3
  SAY @30000 /* ~Ah, si es el capitán del norte. Dime, Dusk, ¿hay algo en lo que pueda ayudarte?~ */
  IF ~~ THEN EXTERN  ~P_DUSKj~ 130
END

IF ~~ THEN BEGIN p_11 // from: 31.3
  SAY @30001 /* ~¿Un grupo de renegados, dices? Ya veo. ¿Y qué es lo que buscas de la Noble Orden del Radiante Corazón?~ */
  IF ~~ THEN EXTERN  ~P_DUSKj~ 131
END

IF ~~ THEN BEGIN p_12 // from: 31.3
  SAY @30002 /* ~Hm... Supongo que podría interceder con el prelado por ti y tu grupo de humanoides. Pero dime, ¿por qué habría de hacerlo?~ */
  IF ~~ THEN EXTERN  ~P_DUSKj~ 133
END

IF ~~ THEN BEGIN p_13 // from: 31.3
  SAY @30003 /* ~Tiene sentido... Está bien, hablaré con el prelado, seguro que no habrá problemas. Hay mucho lugar aquí en el cuartel, incluso para humanoides de gran tamaño. Pueden ayudar con los quehaceres diarios, además de servir para un bien mayor para la nación.~ */
  IF ~~ THEN EXTERN ~P_DUSKj~ 128
END
