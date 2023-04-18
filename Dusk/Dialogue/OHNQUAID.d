// creator  : weidu (version 24700)
// argument : OHNQUAID.DLG
// game     : .
// source   : ./DATA/NEERA.BIF
// dialog   : .\lang\es_es\dialog.tlk
// dialogF  : .\lang\es_es\dialogf.tlk

BEGIN ~OHNQUAID~

IF ~  Global("ohn_fortnight","locals",0)
~ THEN BEGIN 0 // from:
  SAY #89491 /* ~¡Atención, viajero díscolo! Partí hace una quincena. Dad media vuelta, hacedme caso: el camino que recorréis es traicionero y no lleva a ninguna parte.~ [OH89491] ~¡Atención, viajera díscola! Partí hace una quincena. Dad media vuelta, hacedme caso: el camino que recorréis es traicionero y no lleva a ninguna parte.~ [OH89491] */
  IF ~~ THEN REPLY #89492 /* ~Decidme, amigo, ¿cómo puedo ayudaros? Dudo que podáis usar vuestro carro.~ */ DO ~SetGlobal("ohn_fortnight","locals",1)
~ GOTO 1
  IF ~~ THEN REPLY #89493 /* ~Siempre recorro caminos traicioneros. Seguro que podré superar cualquier peligro que se me presente.~ */ DO ~SetGlobal("ohn_fortnight","locals",1)
~ GOTO 2
  IF ~~ THEN REPLY #89494 /* ~Tonterías. El camino debe llevar a algún sitio. ¿Qué sabéis del campamento oculto que hay por aquí?~ */ DO ~SetGlobal("ohn_fortnight","locals",1)
~ GOTO 3
END

IF ~~ THEN BEGIN 1 // from: 6.0 2.0 0.0
  SAY #89495 /* ~No podéis ayudarme en nada. Hace una quincena que partí. Dad media vuelta, hacedme caso.~ [OH89495] */
  IF ~~ THEN REPLY #89496 /* ~Si habéis viajado tanto tiempo, estaréis cansado y hambriento. Dejad que os ayude.~ */ GOTO 4
  IF ~~ THEN REPLY #89497 /* ~¿A dónde os dirigíais y qué estáis haciendo aquí?~ */ GOTO 5
  IF ~~ THEN REPLY #89498 /* ~Decidme qué sabéis del campamento oculto.~ */ GOTO 5
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #89499 /* ~No, viajero. Partí hace una quincena y mirad cómo ha acabado mi carro. Dad media vuelta.~ [OH89499] ~No, viajera. Partí hace una quincena y mirad cómo ha acabado mi carro. Dad media vuelta.~ [OH89499] */
  IF ~~ THEN REPLY #89500 /* ~¡Pobre hombre! Tal vez pueda echaros una mano.~ */ GOTO 1
  IF ~~ THEN REPLY #89501 /* ~Sé defenderme mejor que vuestro carro.~ */ GOTO 6
  IF ~~ THEN REPLY #89502 /* ~¿Habéis visto alguna señal de un campamento oculto en los alrededores?~ */ GOTO 5
END

IF ~~ THEN BEGIN 3 // from: 6.1 4.1 0.2
  SAY #89503 /* ~No sé nada de un campamento oculto. Hace una quincena que partí. Dad media vuelta.~ [OH89503] */
  IF ~~ THEN REPLY #89504 /* ~¿Puedo ayudaros de algún modo? Parece que estáis en un aprieto.~ */ GOTO 5
  IF ~~ THEN REPLY #89505 /* ~De eso, nada. Debo seguir adelante.~ */ GOTO 5
  IF ~~ THEN REPLY #89506 /* ~No pongáis a prueba mi paciencia. Sabéis más de ese campamento de lo que reconocéis. ¿Qué estáis ocultando?~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.0
  SAY #89507 /* ~No, no. No podéis ayudarme en nada. He viajado durante una quincena. Dad media vuelta, hacedme caso.~ [OH89507] */
  IF ~~ THEN REPLY #89508 /* ~¡Dejad de lado vuestra terquedad y vuestro orgullo, amigo! Seguro que puedo ayudaros en muchos aspectos sin importar el tiempo que llevéis viajando.~ */ GOTO 5
  IF ~~ THEN REPLY #89509 /* ~De acuerdo. ¿Sabéis algo sobre el campamento oculto que hay por aquí?~ */ GOTO 3
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
!IfValidForPartyDialogue("jan")
!IfValidForPartyDialogue("neera")
~ THEN REPLY #89510 /* ~En ese caso, adiós. Si no queréis mi ayuda, debo seguir mi camino.~ */ EXIT
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
!IfValidForPartyDialogue("jan")
IfValidForPartyDialogue("neera")
~ THEN REPLY #89510 /* ~En ese caso, adiós. Si no queréis mi ayuda, debo seguir mi camino.~ */ EXTERN ~NEERAJ~ 73
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
IfValidForPartyDialogue("jan")
~ THEN REPLY #89510 /* ~En ese caso, adiós. Si no queréis mi ayuda, debo seguir mi camino.~ */ EXTERN ~JANJ~ 200
  IF ~  !IfValidForPartyDialogue("jaheira")
IfValidForPartyDialogue("aerie")
~ THEN REPLY #89510 /* ~En ese caso, adiós. Si no queréis mi ayuda, debo seguir mi camino.~ */ EXTERN ~AERIEJ~ 237
  IF ~  IfValidForPartyDialogue("jaheira")
~ THEN REPLY #89510 /* ~En ese caso, adiós. Si no queréis mi ayuda, debo seguir mi camino.~ */ EXTERN ~JAHEIRAJ~ 551
END

IF ~~ THEN BEGIN 5 // from: 4.0 3.2 3.1 3.0 2.2 1.2 1.1
  SAY #89511 /* ~He viajado durante una quincena, y partí hace una quincena. Dad media vuelta.~ [OH89511] */
  IF ~~ THEN REPLY #89512 /* ~No os entiendo.~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ GOTO 7
  IF ~~ THEN REPLY #89513 /* ~Cambiemos de tema. ¿Os importaría responder a otras preguntas?~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ GOTO 7
  IF ~  !IfValidForPartyDialogue("jan")
~ THEN REPLY #89514 /* ~¿Por qué tienen todos los gnomos este tipo de actitud?~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ GOTO 7
  IF ~  IfValidForPartyDialogue("jan")
~ THEN REPLY #89514 /* ~¿Por qué tienen todos los gnomos este tipo de actitud?~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ EXTERN ~JANJ~ 198
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
!IfValidForPartyDialogue("jan")
!IfValidForPartyDialogue("neera")
~ THEN REPLY #89515 /* ~Aquí está pasando algo... extraño. Adiós, desconocido.~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ EXIT
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
!IfValidForPartyDialogue("jan")
IfValidForPartyDialogue("neera")
~ THEN REPLY #89515 /* ~Aquí está pasando algo... extraño. Adiós, desconocido.~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ EXTERN ~NEERAJ~ 73
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
IfValidForPartyDialogue("jan")
~ THEN REPLY #89515 /* ~Aquí está pasando algo... extraño. Adiós, desconocido.~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ EXTERN ~JANJ~ 200
  IF ~  !IfValidForPartyDialogue("jaheira")
IfValidForPartyDialogue("aerie")
~ THEN REPLY #89515 /* ~Aquí está pasando algo... extraño. Adiós, desconocido.~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ EXTERN ~AERIEJ~ 237
  IF ~  IfValidForPartyDialogue("jaheira")
~ THEN REPLY #89515 /* ~Aquí está pasando algo... extraño. Adiós, desconocido.~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ EXTERN ~JAHEIRAJ~ 551
END

IF ~~ THEN BEGIN 6 // from: 2.1
  SAY #89516 /* ~Pero, viajero díscolo, hace una quincena que partí. No sigáis avanzando.~ [OH89516] ~Pero, viajera díscola, hace una quincena que partí. No sigáis avanzando.~ [OH89516] */
  IF ~~ THEN REPLY #89517 /* ~Parece que vuestros problemas os han afectado bastante. ¿Qué puedo hacer por vos?~ */ GOTO 1
  IF ~~ THEN REPLY #89518 /* ~¡Me estoy cansando de esto! ¿Dónde está el campamento?~ */ GOTO 3
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
!IfValidForPartyDialogue("jan")
!IfValidForPartyDialogue("neera")
~ THEN REPLY #89519 /* ~Creo que ha llegado el momento de que me vaya. Adiós.~ */ EXIT
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
!IfValidForPartyDialogue("jan")
IfValidForPartyDialogue("neera")
~ THEN REPLY #89519 /* ~Creo que ha llegado el momento de que me vaya. Adiós.~ */ EXTERN ~NEERAJ~ 73
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
IfValidForPartyDialogue("jan")
~ THEN REPLY #89519 /* ~Creo que ha llegado el momento de que me vaya. Adiós.~ */ EXTERN ~JANJ~ 200
  IF ~  !IfValidForPartyDialogue("jaheira")
IfValidForPartyDialogue("aerie")
~ THEN REPLY #89519 /* ~Creo que ha llegado el momento de que me vaya. Adiós.~ */ EXTERN ~AERIEJ~ 237
  IF ~  IfValidForPartyDialogue("jaheira")
~ THEN REPLY #89519 /* ~Creo que ha llegado el momento de que me vaya. Adiós.~ */ EXTERN ~JAHEIRAJ~ 551
END

IF ~~ THEN BEGIN 7 // from: 5.2 5.1 5.0
  SAY #89520 /* ~Una quincena.~ [OH89520] */
  IF ~~ THEN REPLY #89521 /* ~Eso no tiene sentido. ¿Qué queréis decir?~ */ GOTO 10
  IF ~~ THEN REPLY #89522 /* ~No seguiré tolerando esto. ¡Hablad con claridad o haceos a un lado!~ */ GOTO 10
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
!IfValidForPartyDialogue("jan")
!IfValidForPartyDialogue("neera")
~ THEN REPLY #89523 /* ~Pues vale. Espero que disfrutéis muchas quincenas en este lugar desolado. Adiós.~ */ DO ~SetGlobal("ohn_fortnight","locals",3)
~ EXIT
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
!IfValidForPartyDialogue("jan")
IfValidForPartyDialogue("neera")
~ THEN REPLY #89523 /* ~Pues vale. Espero que disfrutéis muchas quincenas en este lugar desolado. Adiós.~ */ DO ~SetGlobal("ohn_fortnight","locals",3)
~ EXTERN ~NEERAJ~ 73
  IF ~  !IfValidForPartyDialogue("jaheira")
!IfValidForPartyDialogue("aerie")
IfValidForPartyDialogue("jan")
~ THEN REPLY #89523 /* ~Pues vale. Espero que disfrutéis muchas quincenas en este lugar desolado. Adiós.~ */ DO ~SetGlobal("ohn_fortnight","locals",3)
~ EXTERN ~JANJ~ 200
  IF ~  !IfValidForPartyDialogue("jaheira")
IfValidForPartyDialogue("aerie")
~ THEN REPLY #89523 /* ~Pues vale. Espero que disfrutéis muchas quincenas en este lugar desolado. Adiós.~ */ DO ~SetGlobal("ohn_fortnight","locals",3)
~ EXTERN ~AERIEJ~ 237
  IF ~  IfValidForPartyDialogue("jaheira")
~ THEN REPLY #89523 /* ~Pues vale. Espero que disfrutéis muchas quincenas en este lugar desolado. Adiós.~ */ DO ~SetGlobal("ohn_fortnight","locals",3)
~ EXTERN ~JAHEIRAJ~ 551
END

IF ~  Global("ohn_fortnight","locals",1)
~ THEN BEGIN 8 // from:
  SAY #89511 /* ~He viajado durante una quincena, y partí hace una quincena. Dad media vuelta.~ [OH89511] */
  IF ~~ THEN REPLY #89512 /* ~No os entiendo.~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ GOTO 9
  IF ~~ THEN REPLY #89513 /* ~Cambiemos de tema. ¿Os importaría responder a otras preguntas?~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ GOTO 9
  IF ~  !IfValidForPartyDialogue("jan")
~ THEN REPLY #89514 /* ~¿Por qué tienen todos los gnomos este tipo de actitud?~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ GOTO 9
  IF ~  IfValidForPartyDialogue("jan")
~ THEN REPLY #89514 /* ~¿Por qué tienen todos los gnomos este tipo de actitud?~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ EXTERN ~JANJ~ 199
  IF ~~ THEN REPLY #89515 /* ~Aquí está pasando algo... extraño. Adiós, desconocido.~ */ DO ~SetGlobal("ohn_fortnight","locals",2)
~ EXIT
END

IF ~  Global("ohn_fortnight","locals",2)
~ THEN BEGIN 9 // from: 8.2 8.1 8.0
  SAY #89520 /* ~Una quincena.~ [OH89520] */
  IF ~~ THEN REPLY #89521 /* ~Eso no tiene sentido. ¿Qué queréis decir?~ */ DO ~SetGlobal("ohn_fortnight","locals",3)
~ GOTO 10
  IF ~~ THEN REPLY #89522 /* ~No seguiré tolerando esto. ¡Hablad con claridad o haceos a un lado!~ */ DO ~SetGlobal("ohn_fortnight","locals",3)
~ GOTO 10
  IF ~~ THEN REPLY #89523 /* ~Pues vale. Espero que disfrutéis muchas quincenas en este lugar desolado. Adiós.~ */ DO ~SetGlobal("ohn_fortnight","locals",3)
~ EXIT
END

IF ~  Global("ohn_fortnight","locals",3)
~ THEN BEGIN 10 // from: 9.1 9.0 7.1 7.0
  SAY #89525 /* ~¡UNA QUINCENA! ¡UNA QUINCENA!~ [OH89525] */
  IF ~~ THEN DO ~ReallyForceSpell(Myself,TRAP_FIREBALL)
~ EXIT
  IF ~ IsValidForPartyDialog("P_Dusk")
  ~ THEN EXTERN ~P_DuskJ~ 337
END

IF ~~ THEN BEGIN P_QUAID1 // from: 9.1 9.0 7.1 7.0
  SAY #89525 /* ~¡UNA QUINCENA! ¡UNA QUINCENA!~ [OH89525] */
  IF ~~ THEN DO ~ReallyForceSpell(Myself,TRAP_FIREBALL)
~ EXIT
END