BEGIN ~AERIEJ~

IF ~~ THEN BEGIN 0 // from:
  SAY #2270 /* ~Tened cuidado, <CHARNAME>. Algunas de esas bestias son reales y otras son ilusiones. No hay forma de adivinar de qué tipo son hasta que os golpean.~ */
  IF ~~ THEN EXTERN ~KALAH~ 2
END

IF ~~ THEN BEGIN 1 // from:
  SAY #2273 /* ~¿Qué? Yo no...~ */
  IF ~~ THEN EXTERN ~KALAH~ 1
END

IF ~~ THEN BEGIN 2 // from:
  SAY #2277 /* ~¿Qué... qué le habéis hecho a mi tío Quayle?~ */
  IF ~~ THEN EXTERN ~QUAYLEM~ 0
END

IF ~  Dead("Quaylem")
Global("AerieQ","LOCALS",0)
~ THEN BEGIN 3 // from:
  SAY #2288 /* ~El tío Quayle está... está muerto. Oh, no...~ [AERIEB5] */
  IF ~~ THEN REPLY #2295 /* ~Todo era un caos... No se sabía quién era quién. Lo lamento.~ */ GOTO 4
  IF ~  ReactionGT(LastTalkedToBy,HOSTILE_UPPER)
~ THEN REPLY #2297 /* ~Veréis muchas muertes si viajáis conmigo. ¿Aún deseáis venir?~ */ GOTO 6
  IF ~  ReactionLT(LastTalkedToBy,NEUTRAL_LOWER)
~ THEN REPLY #2301 /* ~Sí, él está... Si continuáis con nosotros veréis muchas muertes. Acostumbraos.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #2302 /* ~¡No necesito vuestras excusas! Lo... lo siento, yo... por favor, dadme algo de tiempo para recuperarme.~ */
  IF ~~ THEN DO ~SetGlobal("AerieQ","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #2303 /* ~¡No quiero acostumbrarme! Lo... lo siento, dadme algo de tiempo para que me recupere.~ */
  IF ~~ THEN DO ~SetGlobal("AerieQ","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 6 // from: 3.1
  SAY #2304 /* ~¿Es que me queda otra opción, <CHARNAME>? O vos o nada... ¿Podemos salir de aquí? No... no me apetece pensar ahora mismo.~ */
  IF ~~ THEN DO ~SetGlobal("AerieQ","LOCALS",1)
~ EXIT
END

IF ~  !Global("QuayleRaelis","GLOBAL",1)
See("Quayle")
!Dead("Quayle")
!StateCheck("Quayle",STATE_SLEEPING)
InParty("HaerDalis")
!StateCheck("HaerDalis",STATE_SLEEPING)
Global("HaerDalisRomanceActive","GLOBAL",2)
~ THEN BEGIN 7 // from:
  SAY #2580 /* ~¡Tío Quayle! Haer'Dalis y yo creíamos que sería agradable volver y haceros una visita. Él... él me está dando clases de interpretación.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 6
END

IF ~~ THEN BEGIN 8 // from:
  SAY #2582 /* ~Tío, vos siempre me habéis parecido el hombre más inteligente que he conocido. Algún día, cuando tengamos más tiempo, nos quedaremos durante una dekhana y así podréis conocerlo mejor.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 7
END

IF ~~ THEN BEGIN 9 // from:
  SAY #2584 /* ~Entonces, una semana, tío. No pensaré en otra cosa. Hasta entonces...~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 8
END

IF ~  !Global("QuayleRaelis","GLOBAL",1)
See("Quayle")
!StateCheck("Quayle",STATE_SLEEPING)
!StateCheck(Player1,STATE_SLEEPING)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN BEGIN 10 // from:
  SAY #2586 /* ~¡Tío Quayle! <CHARNAME> y yo pensamos que sería una buena idea venir a visitaros.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 9
END

IF ~~ THEN BEGIN 11 // from:
  SAY #14276 /* ~He, he perdido mis alas, pequeño. Desgraciadamente, me las cortaron.~ */
  IF ~~ THEN EXTERN ~BRAT2~ 2
END

IF ~~ THEN BEGIN 12 // from:
  SAY #14277 /* ~¡No, por supuesto que no!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from:
  SAY #14549 /* ~No... no, gracias. No necesito el empleo. (Se ruboriza).~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #15169 /* ~No tengo un buen concepto de mí sin mis alas, pero gracias por vuestro amable comentario.~ */
  IF ~~ THEN EXIT
END

IF ~  !Dead("Quaylem")
See("Quayle")
Global("AerieQ","GLOBAL",0)
Global("QuayleRaelis","GLOBAL",0)
!Global("AerieMove","GLOBAL",1)
~ THEN BEGIN 15 // from:
  SAY #20308 /* ~¡Tío Quayle! ¡¿Estáis bien?!~ [AERIEB6] */
  IF ~~ THEN EXTERN ~QUAYLE~ 10
END

IF ~~ THEN BEGIN 16 // from:
  SAY #20327 /* ~¿Qué hubiera sido de mí sin vos?~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 11
END

IF ~~ THEN BEGIN 17 // from:
  SAY #20328 /* ~Sois el hombre más sabio, más inteligente y más amable que he conocido.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 12
END

IF ~~ THEN BEGIN 18 // from:
  SAY #20329 /* ~¡Oh, Quayle, os echaré tanto de menos!~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 13
END

IF ~~ THEN BEGIN 19 // from:
  SAY #20330 /* ~Está bien... Cuid... cuidad del circo mientras estoy ausente.~ */
  IF ~~ THEN DO ~SetGlobal("AerieQ","GLOBAL",1)
~ EXTERN ~QUAYLE~ 14
END

IF ~~ THEN BEGIN 20 // from:
  SAY #20811 /* ~¡Ah! ¡No tiene ojos! ¡Qué horror!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY #22387 /* ~Gracias... supongo. Es muy amable por vuestra parte.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #24812 /* ~¿Me habláis a mí?~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 13
END

IF ~~ THEN BEGIN 23 // from:
  SAY #24814 /* ~Quayle me habló de hombres como vos. Marchaos, señor. ¡Y dejad de tocarme la mano!~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 14
END

IF ~~ THEN BEGIN 24 // from:
  SAY #24816 /* ~¡Os voy a lanzar un proyectil mágico o dos ahora mismo! Dejaos de tonterías y marchaos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 25 // from:
  SAY #25328 /* ~¡Pe-pero yo no he hecho nada que os pueda molestar! ¿Por qué me recrimináis de esa manera?~ */
  IF ~~ THEN EXTERN ~BELMIN~ 11
END

IF ~~ THEN BEGIN 26 // from:
  SAY #25330 /* ~No... no entiendo por qué hacéis esto, señor, pero no he hecho nada para merecérmelo. No me quedaré a escuchar cómo me insultáis.~ */
  IF ~~ THEN EXTERN ~BELMIN~ 12
END

IF ~~ THEN BEGIN 27 // from:
  SAY #25332 /* ~<CHARNAME>, ¿podemos irnos, por favor? No me gusta nada este hombre.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 28 // from:
  SAY #25468 /* ~¿Qué... qué sabéis de mí? ¿Qué sabéis de mi destino?~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 29 // from:
  SAY #25727 /* ~Lo creáis o no, señor, soy capaz de cuidarme sola.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 30 // from:
  SAY #25831 /* ~Mmm... No, gracias. Creo que eso no es para mí.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #26253 /* ~Lo... lo siento... (Tose). Es que... odio el olor del pescado.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #26271 /* ~¿Seríais capaz de hacer daño a esos pobres pajarillos? ¡Son simples carroñeros! Y estoy segura de que no os han hecho nada.~ */
  IF ~~ THEN EXTERN ~BHALF1~ 6
END

IF ~~ THEN BEGIN 33 // from:
  SAY #27704 /* ~No sé lo que queréis decir... No tengo intención de abandonar a mi señor de los gnomos, Baravar de la Capa de sombra. Le debo demasiado, señor.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #29710 /* ~¡No, ni en un millón de años, bestia apestosa! <CHARNAME>... marchémonos de aquí, por favor...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #38845 /* ~¿Quién, yo?  Nu... nunca he ido a comprar. Ni siquiera sabría si alguien está intentado engañarme, señor.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #38875 /* ~Que... que hombrecillo más patético. Todos se reían de él... pero no merecían morir. No... no puedo odiarle, a pesar de todo lo que ha hecho.~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
~ THEN DO ~StartCutSceneMode()
EraseJournalEntry(34110)
EraseJournalEntry(34111)
SetGlobalTimer("CircusEnded","GLOBAL",ONE_DAY)
AddexperienceParty(25000)
ActionOverride("Kalah",Kill(Myself))
Wait(3)
StartDialogNoSet([PC])
~ EXIT
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 315
END

IF ~~ THEN BEGIN 37 // from:
  SAY #38904 /* ~Estoy viendo muchas cosas, tío Quayle... y quiero que conozcáis a Minsc. Él es mi protector, supongo... Dice que yo soy su "bruja".~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 29
END

IF ~~ THEN BEGIN 38 // from:
  SAY #38928 /* ~No podía pensar que... existiera tanta gente necesitada. ¿Podemos marcharnos de aquí, <CHARNAME>? Me da escalofríos pensar cómo vive esa gente.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 39 // from:
  SAY #38939 /* ~¡Ah, no! ¡Debemos hacer algo por ese pobre hombre! ¡No... no puedo quedarme mirando de brazos cruzados!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY #39167 /* ~¿Se quedan aquí mirando cómo pelean los unos con los otros? ¿Por placer? ¿Cómo pueden hacer eso?  No creo que... esos hombres lo hagan por placer, ¿verdad?~ */
  IF ~~ THEN EXTERN ~COPGREET~ 2
END

IF ~~ THEN BEGIN 41 // from:
  SAY #39174 /* ~¡<CHARNAME>! ¡No seáis tan cruel! Solo es un niño humano. ¿Qué os ha hecho para que lo tratéis así?~ */
  IF ~  !IfValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 42
END

IF ~~ THEN BEGIN 42 // from:
  SAY #39266 /* ~¡Van a obligarle a luchar contra un animal salvaje! ¡Oh, no! No puedo... no puedo presenciar tal atrocidad... ¡Es horrible!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut02c")
~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #39287 /* ~Creo que lo mejor que podemos hacer es liberar a esa gente. Yo fui una esclava, una vez... yo, encerrada en una pequeña jaula. No es... no es justo.~ */
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 76
  IF ~  !IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~HENDAK~ 9
END

IF ~~ THEN BEGIN 44 // from:
  SAY #39374 /* ~¡Sois... sois... un hombre tan despreciable!~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 188
END

IF ~~ THEN BEGIN 45 // from:
  SAY #39399 /* ~¡N-No! ¡No lo está! ¡<CHARNAME> tiene suficiente compañía, y no os... os necesita, escoria!~ */
  IF ~~ THEN DO ~SetGlobal("MadamUpset","GLOBAL",1)
~ EXTERN ~MADAM~ 17
END

IF ~~ THEN BEGIN 46 // from:
  SAY #39416 /* ~¿Por qué? ¿Qué hay de malo en los baños de leche?~ */
  IF ~~ THEN EXTERN ~JANJ~ 88
END

IF ~~ THEN BEGIN 47 // from:
  SAY #39421 /* ~<CHARNAME>, ¿esto... esto es realmente necesario?  ¿Por qué no le ignoráis?~ */
  IF ~~ THEN EXTERN ~RUFFIAN~ 7
END

IF ~~ THEN BEGIN 48 // from:
  SAY #41460 /* ~Trataré... de eliminar cualquier maldición que haya aquí, pero no siento nada. No creo que todo esto se deba a la magia.  Aunque supongo que algunas oraciones no estarán de más...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 49 // from:
  SAY #44113 /* ~Esto no me huele bien. Creo que no tiene control sobre sí mismo. Es como si estuviera dominado, o algo así, ¿no?~ */
  IF ~~ THEN EXTERN ~PPCOWLED~ 2
END

IF ~~ THEN BEGIN 50 // from:
  SAY #47082 /* ~¿Qu-qué significa eso? ¡No entiendo nada! Yo... esperaba que me pudierais decir si algún día podré volar de nuevo. Pero creo que eso no va a ser posible, ¿verdad?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #47213 /* ~¿Que si estoy triste? Vaya, vaya, qué niño tan adorable. No, realmente no estoy tan triste... pero un chico tan joven no debería preocuparse por eso. Deberíais pensar en cosas más alegres.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #48469 /* ~¡Korgan, sois un hombre repulsivo! ¡No puedo creer que digáis esas cosas!~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 59
END

IF ~~ THEN BEGIN 53 // from:
  SAY #48470 /* ~¿Van... van a meter al niño ahí dentro para que esas criaturas lo aplasten? ¿Có-cómo es posible una cosa así? ¿Por qué?~ */
  IF ~  !IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 39
  IF ~  !IfValidForPartyDialogue("Yoshimo")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 99
  IF ~  !IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 41
  IF ~  !IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Edwin")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 179
  IF ~  !IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 349
END

IF ~~ THEN BEGIN 54 // from:
  SAY #48501 /* ~De acuerdo, <CHARNAME>, ¡pero no sé por cuánto tiempo podré mantener a raya a este... este bruto!~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 65
END

IF ~~ THEN BEGIN 55 // from:
  SAY #48505 /* ~¿Ad-admiten que son unos esclavistas? ¡Eso es repugnante! ¡Os destruiremos a todos, rufianes!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 56 // from:
  SAY #48513 /* ~Bueno, por lo menos ahora es libre. Pobre hombre.~ */
  IF ~~ THEN DO ~ActionOverride("quallo",EscapeArea())
~ EXIT
END

IF ~~ THEN BEGIN 57 // from:
  SAY #48588 /* ~¡Tenemos que encontrar a la hija de Garren! ¡Él... él ha limpiado nuestro nombre frente a los paladines, es lo menos que podemos hacer! ¡Tenemos que intentarlo!~ ~¡Tenemos que encontrar al hijo de Garren! ¡Él... él ha limpiado nuestro nombre frente a los paladines, es lo menos que podemos hacer! ¡Tenemos que intentarlo!~ */
  IF ~  !IfValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 98
END

IF ~~ THEN BEGIN 58 // from:
  SAY #48602 /* ~¿Por... por qué le haríais eso a Valygar? ¡Él es un buen hombre, y vos lo habéis traicionado! No... no sois la persona que pensaba, <CHARNAME>. Os... Tengo que marcharme...~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
~ EXTERN ~TOLGER~ 37
END

IF ~~ THEN BEGIN 59 // from:
  SAY #48609 /* ~Vaya... así que para eso quieren vuestro cuerpo. Para entrar en esa esfera y... y quedarse con el tesoro. ¡No podemos... consentirlo, <CHARNAME>!~ */
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 109
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 127
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 100
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~VALYGAR~ 9
END

IF ~~ THEN BEGIN 60 // from:
  SAY #48625 /* ~¡No pu-puedo dejar que lo hagáis, <CHARNAME>! ¡No quiero matar a gente inocente! ¡No lo haré!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #48627 /* ~¿Estáis... estáis seguro de que esto está bien, <CHARNAME>? Supongo que él podría estar mintiendo. Supongo que lucharé con vos...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #48639 /* ~No me encuentro bien. Me... me gustaría que nos fuéramos de este horrible lugar.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #48651 /* ~¡Pobres criaturas! <CHARNAME>, no aguanto más. Sacadme de aquí.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 64 // from:
  SAY #48662 /* ~¿Por qué sigue maltratando a esas pobres criaturas? ¡Es horrible! ¡No puedo presenciar esto!~ */
  IF ~~ THEN EXTERN ~BDOCK2~ 1
END

IF ~~ THEN BEGIN 65 // from:
  SAY #48708 /* ~El tío Quayle me enseñó tantas cosas maravillosas sobre la magia que no me podría imaginar un mundo sin ella. Sería tan... tan mundano.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #48734 /* ~Sí, alas. Fue hace mucho tiempo, pero sí, tenía alas... y ¿queréis dejar de mirarme así, por favor?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 67 // from:
  SAY #48821 /* ~¿Tener... tener niños? Acabo de empezar a conocer el mundo que hay más allá del circo. ¡Prefiero hacer las cosas poco a poco!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #48826 /* ~¿Casarnos? ¡Estáis borracho! Eso... me halaga. ¡Puaj!... Estáis... vomitando. Va-vale, ahora estoy menos halagada.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #48841 /* ~Pero... pero TENGO que mirar hacia abajo para hablar con vos. Sois... más bajo que yo, señor. Yo... ¡Bah! Olvidadlo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #48853 /* ~¡Uf!... ¡Uuuuf! ¡<CHARNAME>, ponedle algo por encima! ¡Puaj, ya olí suficiente hedor como este en el circo!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #48883 /* ~Quizá... quizá podríamos echar un vistazo, <CHARNAME>. No hay razón para que este hombre sufra por eso...~ */
  IF ~~ THEN EXTERN ~LOUTCAPT~ 19
END

IF ~~ THEN BEGIN 72 // from:
  SAY #48888 /* ~¡Qué desagradable sois, Viconia! ¡Sé que sois una drow, pero... tratad de tener más compasión! ¡Esto... esto no durará mucho!~ */
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 197
  IF ~  !IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 110
END

IF ~~ THEN BEGIN 73 // from:
  SAY #48896 /* ~¡Hablad más bajo, por favor! No puedo ayudaros, pero no quiero ver más muertos... ¡Oh no, ya os han escuchado!~ */
  IF ~~ THEN EXTERN ~ARNMAN08~ 0
END

IF ~~ THEN BEGIN 74 // from:
  SAY #48949 /* ~Eso suena... horrible. ¡No puedo imaginarme algo tan espantoso! ¡¿Por qué iba a querer alguien hacer algo así?!~ */
  IF ~  !IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~INSPECT~ 14
  IF ~  IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 244
  IF ~  !IfValidForPartyDialogue("Nalia")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 375
END

IF ~~ THEN BEGIN 75 // from:
  SAY #48952 /* ~¡<CHARNAME>! ¿Me podríais prestar una moneda? ¡Grrr!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #48961 /* ~¿Estáis... estáis seguro de que es prudente dejar que se marche en ese estado? ¿Y si el asesino le hiere? ¡Mmm, esto no me gusta nada!~ ~¿Estáis... estáis segura de que es prudente dejar que se marche en ese estado? ¿Y si el asesino le hiere? ¡Mmm, esto no me gusta nada!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #48974 /* ~Sé que dijisteis eso para evitar un altercado, pero no deberíamos bromear acerca de esta alianza. No es muy sensato tentar a los dioses.~ */
  IF ~~ THEN EXIT
END

IF ~  AreaCheck("AR0502")
Global("EnteredTanner2","AR0502",0)
~ THEN BEGIN 78 // from:
  SAY #48979 /* ~¡Por todos los dioses! ¡Ese he-hedor! ¡Bervan nos proteja, este es el lugar al que trae a sus víctimas! ¡Es-están todos muertos!~ */
  IF ~~ THEN DO ~SetGlobal("EnteredTanner2","AR0502",1)
~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY #49191 /* ~Rezaré una plegaria a los cielos y espero que a cambio os mostréis generoso.~ */
  IF ~~ THEN EXTERN ~DFISHER~ 9
END

IF ~~ THEN BEGIN 80 // from:
  SAY #49204 /* ~Espero que lo estéis diciendo en broma. Eso es horrible. Esta mujer se merece que la traten mejor.~ */
  IF ~~ THEN EXTERN ~DHARLOT2~ 2
END

IF ~~ THEN BEGIN 81 // from:
  SAY #49232 /* ~¡Qué grosero! ¡Deberíais aprender buenas maneras, señor... antes de que alguien os las haga aprender de una forma que no os va a gustar mucho!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #49244 /* ~Me alegro de no haber tenido que... matar a ese pobre hombre. Es terrible lo que en ocasiones nos vemos obligados a hacer.~ */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 139
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 209
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 58
END

IF ~~ THEN BEGIN 83 // from:
  SAY #49386 /* ~¿Es que vamos a buscar a alguien? ¿No existe algún modo de... quitarle el puñal a ese hombre sin... hacerle daño? <CHARNAME>, me siento tan... tan ruin trabajando para ladrones como este.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #49493 /* ~¿Vamos a matar a alguien? ¿Solo porque él lo mande? Eso... eso no está bien, <CHARNAME>. No vamos a hacer eso, ¿verdad?~ */
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 217
  IF ~  !IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 88
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 144
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 70
END

IF ~~ THEN BEGIN 85 // from:
  SAY #49542 /* ~¡Quizá <CHARNAME> no quiera trabajar para esos ladrones, Korgan! Quizá <CHARNAME> tenga principios, ¿habéis pensado en eso?~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 91
END

IF ~~ THEN BEGIN 86 // from:
  SAY #49580 /* ~¡Ese pobre hombre! ¿Por qué le han hecho eso? Tenemos... tenemos que encontrar el lugar del que nos ha hablado y llevarlo allí cuanto antes.~ */
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 219
  IF ~  !IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 94
END

IF ~~ THEN BEGIN 87 // from:
  SAY #49587 /* ~¡<CHARNAME>! ¡Este hombre se está muriendo! ¡No podéis dejarlo aquí! ¡Eso es cruel e infame! ¡Por favor, no lo hagáis!~ */
  IF ~  !IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Keldorn")
~ THEN DO ~SetGlobalTimer("RenfeldDeath","LOCALS",TWO_DAYS)
~ EXIT
  IF ~  IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 253
  IF ~  !IfValidForPartyDialogue("Nalia")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 150
END

IF ~~ THEN BEGIN 88 // from:
  SAY #49786 /* ~Yo... no sé si esto es una buena idea, <CHARNAME>. De repente, estoy... asustada. Quizá deberíamos dejarlo...~ */
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~BODHI~ 130
  IF ~  IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 89 // from:
  SAY #49814 /* ~¿Eso es... todo lo que tenemos que hacer? ¡Uf, qué alivio! De todos modos, <CHARNAME>, me pregunto si esto es solo el principio. ¿Quién es realmente esa mujer? ¿Y por qué está haciendo todas esas cosas?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 90 // from:
  SAY #49820 /* ~¿Se... se ha ido ya? Salgamos de aquí cuanto antes, ¿de acuerdo, <CHARNAME>? No sé cómo explicarlo, pero siento escalofríos aquí. Sea cual sea el motivo, me alegro de que se haya ido.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 91 // from:
  SAY #49823 /* ~No quiero... no quiero hacer nada de lo que pueda arrepentirme. Especialmente sin ningún motivo. ¿Por qué no nos limitamos a algo que no sea tan cuestionable?~ */
  IF ~  !IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~BODHI~ 131
  IF ~  IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 60
  IF ~  !IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 100
END

IF ~~ THEN BEGIN 92 // from:
  SAY #49837 /* ~¿Qué? ¿Matar a alguien? ¿Matarlos del todo? En realidad no queréis seguir con esto, ¿verdad, <CHARNAME>? Suena tan... tan macabro.~ */
  IF ~~ THEN EXTERN ~BODHI~ 132
END

IF ~~ THEN BEGIN 93 // from:
  SAY #49850 /* ~Bueno, creo que esto no está tan mal. Al menos estamos rescatando a alguien.~ */
  IF ~~ THEN EXTERN ~BODHI~ 57
END

IF ~~ THEN BEGIN 94 // from:
  SAY #49868 /* ~¡Vaya, pobre hombre! ¿Qué clase de bestias podrían hacerle esto... a alguien? ¡<CHARNAME>, tenemos que encontrar a los que hicieron esto y detenerlos!~ */
  IF ~~ THEN EXTERN ~TIRDIR~ 3
END

IF ~~ THEN BEGIN 95 // from:
  SAY #49879 /* ~¡Ah! ¿Eso no estaba cerca del puesto de la guarnición? ¿Y ese pobre hombre quemado?~ */
  IF ~~ THEN EXTERN ~JANJ~ 121
END

IF ~~ THEN BEGIN 96 // from:
  SAY #49883 /* ~¡Esto es horrible!~ */
  IF ~~ THEN EXTERN ~JANJ~ 122
END

IF ~~ THEN BEGIN 97 // from:
  SAY #49925 /* ~¿Cariño, estáis bien? Os aliviaré lo mejor que pueda si es necesario.~ */
  IF ~~ THEN REPLY #49927 /* ~Por favor, Aerie, no os quedéis ahí. No sé si podré protegeros.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",2)
~ GOTO 98
  IF ~~ THEN REPLY #49928 /* ~Aerie, deberíais alejaros lo más posible de mí por vuestra propia seguridad.~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",2)
~ GOTO 98
  IF ~~ THEN REPLY #49929 /* ~¡Dejadme solo, Aerie! ¡Seréis una estúpida si os quedáis aquí!~ ~¡Dejadme sola, Aerie! ¡Seréis una estúpida si os quedáis aquí!~ */ DO ~SetGlobal("EndangerLovedOne","GLOBAL",2)
~ GOTO 98
END

IF ~~ THEN BEGIN 98 // from: 97.2 97.1 97.0
  SAY #49930 /* ~¿<CHARNAME>? Vuestros labios se mueven, pero no puedo escuchar lo que decís... Estáis... No... ¡No! ¡<CHARNAME>!~ */
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))
~ EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #49956 /* ~¡Uf! Jan, quizás esta no sea la clase de historia en la que queréis involucraros, teniendo en cuenta que ahí enfrente hay un sacerdote de Talos...~ */
  IF ~~ THEN EXTERN ~JANJ~ 124
END

IF ~~ THEN BEGIN 100 // from:
  SAY #49978 /* ~¡Vos sois un monstruo! UN MONSTRUO. ¿Cómo pude...?~ */
  IF ~~ THEN GOTO 101
END

IF ~~ THEN BEGIN 101 // from: 100.0
  SAY #49979 /* ~<CHARNAME>, espero que esto no vuelva a suceder. Espero que no. Por favor, salgamos de aquí.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 102 // from:
  SAY #50023 /* ~Esperad un momento, por favor. No voy a dar un paso más mientras parezca que estáis sufriendo.~ */
  IF ~~ THEN REPLY #50024 /* ~No es nada, Aerie, me pondré bien. No os preocupéis por mí.~ */ GOTO 103
  IF ~~ THEN REPLY #50025 /* ~Puede que no me encuentre perfectamente, pero este sigue siendo mi grupo. ¡Continuad!~ */ GOTO 103
END

IF ~~ THEN BEGIN 103 // from: 102.1 102.0
  SAY #50026 /* ~Si vos lo decís. Solo me preocupa que estéis peor de lo que Imoen parecía estar. Los dos habéis sufrido el mismo ritual, ¿verdad? Perdonad, no quería preocuparos.~ ~Si vos lo decís. Solo me preocupa que estéis peor de lo que Imoen parecía estar. Las dos habéis sufrido el mismo ritual, ¿verdad? Perdonad, no quería preocuparos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #50080 /* ~¿Un... contemplador? ¡Los contempladores son increíblemente poderosos e inteligentes! Sus ojos son mágicos... o, o eso es lo que se cree. Nunca he oído hablar de un contemplador ciego...~ */
  IF ~~ THEN EXTERN ~GAAL~ 9
END

IF ~~ THEN BEGIN 105 // from:
  SAY #50097 /* ~¡Vuestra maldad es una afrenta para mis creencias! ¡Esas... esas mutilaciones tienen que terminar, y si para ello tenemos que mataros, lo haremos!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #50117 /* ~¡Eso es muy gracioso! ¡Todo estaba perfectamente planeado! ¡Y yo que pensaba que podríamos tener problemas!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #50150 /* ~Bien, no sé hasta qué punto puedo permitiros que os burléis de un dios, pero esto... bueno, tiene su gracia. (Risas). ¡Qué MALO sois!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #50219 /* ~¡N-No! ¡No, no lo es! Él es... es el tío de <CHARNAME>, y acabamos de hablar con él.~ */
  IF ~  Global("Gavegbegg","AR1000",0)
~ THEN GOTO 109
  IF ~  Global("Gavegbegg","AR1000",1)
~ THEN EXTERN ~GGUARD01~ 4
END

IF ~~ THEN BEGIN 109 // from: 108.0
  SAY #50221 /* ~De hecho... de hecho, aquí tenéis, tío. <CHARNAME> quería que os quedarais con estas monedas para que podáis comer algo caliente y encontrar un sitio donde dormir.~ */
  IF ~~ THEN DO ~ActionOverride("Gbegg01",TakePartyGold(5))
~ EXTERN ~GGUARD01~ 4
END

IF ~~ THEN BEGIN 110 // from:
  SAY #50364 /* ~Yo... yo no soy una doncella, aunque me parezca a una que vos conocéis. Y me da la impresión de que si la hubierais tratado mejor, no se habría ido.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #50512 /* ~Mmm. Es mejor que os vayáis a otra parte con vuestros halagos. El tío Quayle me advirtió bien sobre los viejos verdes como vos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #50533 /* ~¿Una... drow? ¿Aquí? Me pregunto cómo habrá llegado hasta aquí. Y qué le habrá hecho a toda esa gente para que quieran... quemarla. Aunque supongo que no todo el mundo necesita una razón.~ */
  IF ~~ THEN EXTERN ~VICONI~ 8
END

IF ~~ THEN BEGIN 113 // from:
  SAY #50559 /* ~Eso es. Quien quiera que fuese, está muerta. (Se estremece). La Infraoscuridad es un lugar terrible y maligno, <CHARNAME>. ¡Espero que nunca tengamos que ir allí!~ */
  IF ~  !IfValidForPartyDialogue("Keldorn")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 179
END

IF ~~ THEN BEGIN 114 // from:
  SAY #50568 /* ~¡N-No permitáis que venga con nosotros, <CHARNAME>! ¡Todos los drow son criaturas horribles y crueles! ¡Mataron a los avariel sin piedad y no podemos confiar en ellos!~ */
  IF ~~ THEN EXTERN ~VICONI~ 22
END

IF ~~ THEN BEGIN 115 // from:
  SAY #50573 /* ~¡Callaos! <CHARNAME>, vos la salvasteis... ¡ahora echadla de aquí!~ */
  IF ~~ THEN EXTERN ~VICONI~ 23
END

IF ~~ THEN BEGIN 116 // from:
  SAY #50643 /* ~¡<CHARNAME>! ¿Estáis...? ¿Qué ha sido eso? Podéis...~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from: 116.0
  SAY #50644 /* ~<CHARNAME>, ese era un aspecto de Bhaal... lo he leído en algunos escritos. ¿Os habéis vuelto... parte de un avatar... de un dios muerto?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 118 // from:
  SAY #50669 /* ~Rápido, <CHARNAME>, estos pobres prisioneros podrían hacerse daño si no los dirigimos.~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutScene("Cut41m")
~ EXIT
END

IF ~  Global("AerieCheckMad1","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",1)
!Range("Phaere",6)
Global("AerieMad1","LOCALS",0)
~ THEN BEGIN 119 // from:
  SAY #51266 /* ~¿<CHARNAME>? ¿Qué estáis haciendo? ¿Por qué estáis hablando con ella de esa forma? No os gustará... realmente esa drow, ¿verdad?~ */
  IF ~~ THEN REPLY #51271 /* ~Aerie, no estaréis celosa, ¿verdad?~ */ DO ~SetGlobal("AerieMad1","LOCALS",1)
~ GOTO 120
  IF ~~ THEN REPLY #51272 /* ~No, no. Solo es un truco.~ */ DO ~SetGlobal("AerieMad1","LOCALS",1)
~ GOTO 121
  IF ~~ THEN REPLY #51273 /* ~No lo sé. Quizá. No es asunto vuestro.~ */ DO ~SetGlobal("AerieMad1","LOCALS",1)
~ GOTO 122
END

IF ~~ THEN BEGIN 120 // from: 119.0
  SAY #51274 /* ~Bueno... puede que un poco. Ella es muy guapa, a pesar de ser una drow. ¡Pero ellos son malvados, <CHARNAME>, ya lo sabéis! Y... y la forma con la que habéis hablado con ella me ha hecho pensar que quizá...~ */
  IF ~~ THEN REPLY #51275 /* ~Aerie, solo es un truco, nada más.~ */ GOTO 121
  IF ~~ THEN REPLY #51276 /* ~Bueno, puede que sí. De todos modos, no es asunto vuestro.~ */ GOTO 122
END

IF ~~ THEN BEGIN 121 // from: 120.0 119.1
  SAY #51277 /* ~Oh. No creí que se pudiera manipular a los drow de esa manera, <CHARNAME>. Y... y no me gusta nada. Por favor, no vayáis demasiado lejos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from: 120.1 119.2
  SAY #51278 /* ~¿Cómo podéis...? Con una persona tan malvada y despreciable... Me parece que no sois el tipo de persona que yo creía, <CHARNAME>. Creo... creo que no me meteré en vuestros asuntos.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~~ THEN BEGIN 123 // from:
  SAY #51484 /* ~¡Pero si los svirfneblin no son malignos! ¡Solo son gnomos inofensivos! ¿Por qué tenemos que hacer esto?~ */
  IF ~~ THEN EXTERN ~UDPHAE01~ 62
END

IF ~  Global("AerieCheckMad2","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",2)
!Range("Phaere",6)
Global("AerieMad2","LOCALS",0)
~ THEN BEGIN 124 // from:
  SAY #52252 /* ~Permitisteis... que esa drow os tocara, ¿no es así? ¿Permitisteis que esa cosa maligna se os echara encima? ¡No puedo entender cómo habéis podido permitir que ocurra una cosa así!~ */
  IF ~~ THEN DO ~SetGlobal("AerieMad2","LOCALS",1)
~ GOTO 125
END

IF ~~ THEN BEGIN 125 // from: 124.0
  SAY #52255 /* ~No intentéis explicarme nada... ¡No quiero escucharlo! Ya no sois la misma persona que conocí, <CHARNAME>. Me... me gustaría estar sola un instante.~ */
  IF ~~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
END

IF ~  Global("AerieCheckMad2","GLOBAL",1)
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
Global("PhaereInnuendo","GLOBAL",3)
!Range("Phaere",6)
Global("AerieMad3","LOCALS",0)
~ THEN BEGIN 126 // from:
  SAY #52256 /* ~No habéis estado mucho tiempo en su dormitorio. No lo suficiente como para... Bueno, es decir... obviamente habéis escapado de ella. Eso... es un alivio. Estaba empezando a inquietarme.~ */
  IF ~~ THEN DO ~SetGlobal("AerieMad3","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 127 // from:
  SAY #52287 /* ~¡<CHARNAME>! ¡Eso es horrible! ¡Le dijimos a Nalia que la ayudaríamos, y eso es lo que deberíamos hacer! Nalia... ¿por qué no nos decís a qué nos vamos a... a enfrentar allí?~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 149
END

IF ~~ THEN BEGIN 128 // from:
  SAY #52299 /* ~<CHARNAME>... sé que habéis hecho algunas cosas... discutibles, pero por favor, no hagáis esto. No podría vivir sabiendo que he tomado parte en una cosa así. Por favor, no lo hagáis.~ */
  IF ~~ THEN EXTERN ~FIRKRA02~ 36
END

IF ~~ THEN BEGIN 129 // from:
  SAY #52315 /* ~Si... si eso es lo que vais a hacer, yo no pienso tomar parte, <CHARNAME>. Vuelvo... vuelvo al circo. Por lo menos allí... la gente es decente.~ */
  IF ~  OR(2)
!IfValidForPartyDialogue("Anomen")
!Alignment("Anomen",MASK_GOOD)
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
~ EXIT
  IF ~  IfValidForPartyDialogue("Anomen")
Alignment("Anomen",MASK_GOOD)
~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogueFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
MoveGlobal("AR0607","Aerie",[1034.1034])
~ EXTERN ~ANOMENJ~ 256
END

IF ~~ THEN BEGIN 130 // from:
  SAY #55196 /* ~Así que... ha terminado. Así, como suena. Qué raro... pensé que las cosas serían diferentes; sin embargo, no podía ser tan... tan fácil. No lo sé.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 131 // from:
  SAY #55217 /* ~¡Este... este lugar es espantoso! Se-sentí que tiraban de mí al morir y supe que erais vos. Tuve que volver; puede que necesitéis mi ayuda.~ [AERIEB9] */
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
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
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 155
  IF ~  !IfValidForPartyDialogue("Minsc")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 77
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 115
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 147
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 117
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 90
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 100
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("HaerDalis")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 189
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
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
  IF ~  !IfValidForPartyDialogue("Minsc")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
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

IF ~~ THEN BEGIN 132 // from:
  SAY #55301 /* ~¿De veras? Es decir que, con el pecho vacío, ¿qué sentido tendría? ¿Quién... quién podría querer que protegierais un pecho vacío?~ */
  IF ~~ THEN EXTERN ~SAHBEH01~ 39
END

IF ~~ THEN BEGIN 133 // from:
  SAY #55653 /* ~He visto el aspecto de este lugar antes de estar aquí. Es donde abandonan a los que son diferentes, donde olvidan a los parias.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 7
END

IF ~~ THEN BEGIN 134 // from:
  SAY #55762 /* ~Suldanessalar... me... me suena familiar. Es la mayor ciudad élfica, pero no sé qué es lo que Irenicus podría querer de allí. Pero... es obvio que no podemos permitir que suceda.~ */
  IF ~~ THEN EXTERN ~PPSAEM2~ 12
END

IF ~~ THEN BEGIN 135 // from:
  SAY #55769 /* ~¿La Infraoscuridad? ¡No... no! ¡Yo no puedo ir allí! ¿No lo entendéis?, ¡significaría mi muerte! ¡Ningún avariel ha viajado nunca a las profundidades!~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from: 135.0
  SAY #55770 /* ~¡Por favor, <CHARNAME>, tomemos el barco! Pero... pero también hay que detener a Irenicus. Si vos... creéis que es mejor que vayamos a la Infraoscuridad... yo iré también. Bervan, protegedme.~ */
  IF ~  !IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PPSAEM2~ 20
  IF ~  IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 18
END

IF ~~ THEN BEGIN 137 // from:
  SAY #55791 /* ~¡Sabíais que no había ningún barco! ¡Incluso cuando nos lo ofrecisteis! ¿Cómo habéis podido hacer una cosa así? ¿Qué es lo que esperáis conseguir?~ */
  IF ~~ THEN EXTERN ~PPSAEM3~ 3
END

IF ~~ THEN BEGIN 138 // from:
  SAY #55847 /* ~¡Keldorn! ¡Nunca habéis sido tan frío! ¡No creo que los sajuaguines sean tan malos! ¡Y sentenciarlos a muerte no os hará ser mejor que ellos!~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 199
END

IF ~~ THEN BEGIN 139 // from:
  SAY #55852 /* ~¿<CHARNAME>? ¿Por... por qué tendríais que hacer eso? ¡Esa sacerdotisa no nos había hecho nada, y este... este rey va a descuartizarla!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("cut41za")
~ EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #55857 /* ~¿Qué es lo que podemos hacer? Parece que intentan dominar el mundo. Pero son muy pocos. Bueno, de ilusión también se vive, ¿no?~ */
  IF ~~ THEN EXTERN ~SAHPR4~ 5
END

IF ~  !Dead("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
Global("AerieInUnderdark","AR2100",1)
Global("AerieWhined","LOCALS",0)
~ THEN BEGIN 141 // from:
  SAY #55864 /* ~Esto... esto es la Infraoscuridad. ¡Oh! ¡No quiero seguir aquí, no quiero! Este lugar es la muerte para mi gente. Siento como si me fuera a ahogar aquí mismo.~ [AERIEB7] */
  IF ~~ THEN REPLY #55865 /* ~Vamos Aerie, dijisteis que estabais ansiosa por venir aquí.~ */ DO ~SetGlobal("AerieWhined","LOCALS",1)
~ GOTO 142
  IF ~~ THEN REPLY #55866 /* ~Si os vais a quejar todo el rato, ¿por qué no os marcháis?~ */ DO ~SetGlobal("AerieWhined","LOCALS",1)
~ GOTO 143
  IF ~~ THEN REPLY #55867 /* ~Aerie, necesito que seáis fuerte. Este es un lugar hostil.~ */ DO ~SetGlobal("AerieWhined","LOCALS",1)
~ GOTO 145
  IF ~  OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN REPLY #55868 /* ~Estoy aquí. Yo os protegeré, Aerie.~ */ DO ~SetGlobal("AerieWhined","LOCALS",1)
~ GOTO 147
END

IF ~~ THEN BEGIN 142 // from: 141.0
  SAY #55869 /* ~Sé que dije eso... pero es muy diferente decirlo a estar realmente aquí. Puedo... sentir el peso del suelo, presionándome. ¡Se supone que puedo volar, y siento como si me hundiera!~ */
  IF ~~ THEN REPLY #55870 /* ~Ya está bien de quejas. Marchaos si es lo que queréis.~ */ GOTO 143
  IF ~~ THEN REPLY #55871 /* ~Quiero que seáis fuerte, Aerie, tenemos una misión.~ */ GOTO 145
  IF ~~ THEN REPLY #55872 /* ~Está bien, Aerie. Encontraremos alguna forma de solucionar esto.~ */ GOTO 146
  IF ~  OR(2)
Global("AerieRomanceActive","GLOBAL",1)
Global("AerieRomanceActive","GLOBAL",2)
~ THEN REPLY #55873 /* ~Estoy aquí. Yo os protegeré, Aerie.~ */ GOTO 147
END

IF ~~ THEN BEGIN 143 // from: 142.0 141.1
  SAY #55874 /* ~¿Marcharme? ¿Adónde? ¡Si no fuera por el hecho de que no tengo ni idea de cómo salir de este terrible lugar, me alejaría de vuestra crueldad!~ */
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from: 143.0
  SAY #55875 /* ~Me quedaré... No tengo otra elección. Hagamos lo que hemos venido a hacer y después nos marchamos de aquí. Pero no me abandonéis, <CHARNAME>, os lo ruego. ¡Podría enloquecer!~ */
  IF ~  OR(2)
!IfValidForPartyDialogue("Minsc")
!Global("MinscWitch","GLOBAL",1)
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Minsc")
Global("MinscWitch","GLOBAL",1)
~ THEN EXTERN ~MINSCJ~ 168
END

IF ~~ THEN BEGIN 145 // from: 142.1 141.2
  SAY #55877 /* ~Sí. Sí, tenéis razón. Debo... parecer idiota. Os han robado el alma, y yo lloro porque no quiero estar aquí...~ */
  IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 146 // from: 147.0 145.0 142.2
  SAY #55878 /* ~Esta bien, sigamos y hagamos lo que debemos. Intentaré... controlarme. Pero no me abandonéis aquí, <CHARNAME>, os lo ruego. ¡Podría enloquecer!~ */
  IF ~  OR(2)
!IfValidForPartyDialogue("Minsc")
!Global("MinscWitch","GLOBAL",1)
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Minsc")
Global("MinscWitch","GLOBAL",1)
~ THEN EXTERN ~MINSCJ~ 168
END

IF ~~ THEN BEGIN 147 // from: 142.3 141.3
  SAY #55880 /* ~¿Vos? Tiene gracia. Debo parecer estúpida. Os han robado el alma y yo estoy llorando por estar... en este lugar.~ */
  IF ~~ THEN GOTO 146
END

IF ~~ THEN BEGIN 148 // from:
  SAY #55884 /* ~Gracias, Minsc. Me... siento mucho mejor ahora. Es que me dan escalofríos solo de pensar en este lugar. Caminemos un poco y así dejare de pensar tanto en esto.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 149 // from:
  SAY #55907 /* ~¡<CHARNAME>! ¡N-No! ¡No dejaré que sacrifiquéis sus huevos! ¡No permitiré que lo hagáis!~ */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Mazzy")
OR(2)
!IfValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~UDDEMON~ 22
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~KELDORJ~ 201
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~VALYGARJ~ 85
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MAZZYJ~ 175
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Anomen")
Alignment("Anomen",LAWFUL_GOOD)
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~ANOMENJ~ 271
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Mazzy")
OR(2)
!IfValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
IfValidForPartyDialogue("Jaheira")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~JAHEIRAJ~ 470
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Mazzy")
OR(2)
!IfValidForPartyDialogue("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~MINSCJ~ 170
END

IF ~~ THEN BEGIN 150 // from:
  SAY #55926 /* ~Por favor, no tengáis miedo de nosotros.~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 25
END

IF ~~ THEN BEGIN 151 // from:
  SAY #55929 /* ~Yo solo quería decir...~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 143
END

IF ~~ THEN BEGIN 152 // from:
  SAY #55959 /* ~¿También entro dentro de vuestro estereotipo? Pensé que nos llevaríamos bien...~ */
  IF ~~ THEN EXTERN ~VALYGARJ~ 88
END

IF ~~ THEN BEGIN 153 // from:
  SAY #56050 /* ~Lo necesitaremos... <CHARNAME>, insisto en que no quiero estar aquí. No me gusta nada...~ */
  IF ~  !IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("VICONIA")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 119
  IF ~  !IfValidForPartyDialogue("HAERDALIS")
IfValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 153
END

IF ~~ THEN BEGIN 154 // from:
  SAY #56059 /* ~¡Por supuesto que ayudaremos! ¡Puedo sentir la afligida llamada del Árbol de la Vida... y el dolor de los elfos también es el suyo! ¡Debemos hacer lo que podamos, <CHARNAME>!~ */
  IF ~  !IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~SUDEMIN~ 35
  IF ~  IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 121
  IF ~  !IfValidForPartyDialogue("Edwin")
IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 28
END

IF ~~ THEN BEGIN 155 // from:
  SAY #56066 /* ~¡No! ¡¿Qué estáis haciendo?! ¡Estamos aquí para ayudarlos, no para matarlos! ¡No permitiré que lo hagáis!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Cernd",LeaveParty())
ActionOverride("Cernd",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
~ EXIT
END

IF ~~ THEN BEGIN 156 // from:
  SAY #56077 /* ~¿Haer'Dalis? No es... como vos.~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 121
END

IF ~~ THEN BEGIN 157 // from:
  SAY #56081 /* ~¿Está intentando unirse a los seldarine? ¿El círculo élfico de lo divino? ¡Pero... Corelon Larezhian nunca lo permitiría! ¡Está loco!~ */
  IF ~~ THEN EXTERN ~SUAVATAR~ 6
END

IF ~~ THEN BEGIN 158 // from:
  SAY #56090 /* ~Aparento estar asustada y fuera de lugar. No veo ningún problema en seguir haciéndolo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #56104 /* ~¡Llegaré hasta el Infierno para ayudar a mi amigo! ¿Quién os va ayudar, Irenicus, los demonios? Vais a morir solo y el Infierno, y lo sabéis.~ [AERIEB8] ~¡Llegaré hasta el Infierno para ayudar a mi amiga! ¿Quién os va ayudar, Irenicus, los demonios? Vais a morir solo y el Infierno, y lo sabéis.~ [AERIEB8] */
  IF ~  !IfValidForPartyDialogue("HaerDalis")
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
  IF ~  IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 123
  IF ~  !IfValidForPartyDialogue("HaerDalis")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 159
  IF ~  !IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 126
  IF ~  !IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 168
  IF ~  !IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 180
  IF ~  !IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 90
  IF ~  !IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~  !IfValidForPartyDialogue("HaerDalis")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 179
  IF ~  !IfValidForPartyDialogue("HaerDalis")
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

IF ~~ THEN BEGIN 160 // from:
  SAY #56126 /* ~Por favor, quiero que sepáis que prestaremos nuestra ayuda a pesar de todo.~ */
  IF ~~ THEN EXTERN ~UDSVIR03~ 24
END

IF ~~ THEN BEGIN 161 // from:
  SAY #56142 /* ~¡No, <CHARNAME>! ¡Esto es un error, un grave error! ¡No lo permitiré y espero no ser la única!~ */
  IF ~~ THEN REPLY #56143 /* ~Haced lo que queráis. ¡Yo he dado una orden!~ */ DO ~LeaveParty()
Enemy()
SetGlobal("SvirHostile","GLOBAL",1)
~ SOLVED_JOURNAL #57768 /* ~Asuntos del poblado svirfneblin.

He hablado con Oroander Roquemada, señor del poblado svirfneblin. Su pomposo título ha revelado la superflua naturaleza de sus necesidades. Me ha hablado de un método para entrar en la ciudad drow: solicitando la ayuda de Ádalon, una poderosa criatura que se encuentra la base de la gran escalera. Oroander quería que primero realizara un servicio para su poblado derrotando a alguna criatura que habían desenterrado. Como recompensa me había garantizado que podría llegar hasta Ádalon, dándome una piedra luminosa o algo parecido, para así poder atravesar la oscuridad que protege su guarida. He acabado con ese medio hombre y con todos los que se han interpuesto en mi camino.~ */ EXIT
  IF ~~ THEN REPLY #56144 /* ~De acuerdo. Les voy a ayudar, por supuesto.~ */ EXTERN ~UDSVIR03~ 26
END

IF ~~ THEN BEGIN 162 // from:
  SAY #56151 /* ~No pueden hacernos esto, ¿verdad? Recluirnos a todos juntos para que podamos hablar... y después obligarnos a luchar... es espantoso. ¿U os estáis burlando de nosotros?~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 13
END

IF ~~ THEN BEGIN 163 // from:
  SAY #56156 /* ~¿<CHARNAME>? Yo... yo no creo que nos estén llevando junto a ellos. ¡Nos van a dejar aquí!~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 27
END

IF ~~ THEN BEGIN 164 // from:
  SAY #56160 /* ~Sois... maravillosa...~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 58
END

IF ~~ THEN BEGIN 165 // from:
  SAY #56235 /* ~¡No! ¡¿Qué hacéis?!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 166 // from:
  SAY #56407 /* ~Esta parece ser la estatua descrita en el Vampiricus Omnibus. En el libro se dice que hay que colocar al vampiro y el corazón de su amo en los brazos de la estatua, para así acabar con la maldición.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 167 // from:
  SAY #56424 /* ~¡No! ¡Estáis... estáis usando el veneno! ¡¿Cómo podéis hacer eso?! ¡También envenenaréis al Árbol de la Vida! ¡No permitiré que os salgáis con la vuestra! ¿Quién me va a ayudar?~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Cernd",LeaveParty())
ActionOverride("Cernd",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
~ EXTERN ~TREVIL02~ 6
  IF ~  OR(2)
Dead("trevil02")
!See("trevil02")
~ THEN DO ~LeaveParty()
Enemy()
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Cernd",LeaveParty())
ActionOverride("Cernd",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Minsc",LeaveParty())
ActionOverride("Minsc",Enemy())
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
~ EXTERN ~CEFALD04~ 4
END

IF ~~ THEN BEGIN 168 // from:
  SAY #56434 /* ~Bueno, eso ha sido muy grosero. ¡No creo que sea apropiado que vayamos por ahí como si fuéramos matones ante la gente inocente que necesita nuestra ayuda!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #56439 /* ~¡No, por supuesto que no vamos a presionar más a este pobre hombre por una moneda! ¡Tenemos suficientes! Ignoradle, alcalde... nos vamos ahora que todo está solucionado.~ ~¡No, por supuesto que no vamos a presionar más a este pobre hombre por una moneda! ¡Tenemos suficientes! Ignoradla, alcalde... nos vamos ahora que todo está solucionado.~ */
  IF ~~ THEN EXTERN ~UHMAY01~ 142
END

IF ~~ THEN BEGIN 170 // from:
  SAY #56443 /* ~Si los lobos fueran sombras y hubieran hecho esto, ¡tendrían que ser muy malvados! Quizá lobos terribles. No creo que fueran ogros los que hayan hecho esto, pero no estoy segura... todo esto parece bastante inquietante.~ */
  IF ~  !IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~UHMAY01~ 19
  IF ~  IfValidForPartyDialogue("Minsc")
~ THEN EXTERN ~MINSCJ~ 228
END

IF ~~ THEN BEGIN 171 // from:
  SAY #56446 /* ~¿Es-estáis seguro de que debemos dejarla enjaulada de esta manera? Me parece tan cruel. Por favor, <CHARNAME>, no podemos... dejarla aquí tirada...~ ~¿Es-estáis segura de que debemos dejarla enjaulada de esta manera? Me parece tan cruel. Por favor, <CHARNAME>, no podemos... dejarla aquí tirada...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 172 // from:
  SAY #56451 /* ~¡Oh, ese pobre hombre! Lo mantienen en ese estado con algún tipo de magia. ¡Tenemos que ayudarle!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #56455 /* ~¡Esta pobre gente no se puede defender por sí misma! ¡Sus... sus mentes han sido esclavizadas! ¡Si pudiéramos ayudarlos!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 174 // from:
  SAY #56472 /* ~¡Anomen! ¡¿Qué es lo que habéis hecho?! ¡Esa muchacha... no es culpable de lo que haya hecho su padre! ¡Es inocente!~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 281
END

IF ~~ THEN BEGIN 175 // from:
  SAY #56476 /* ~Oh, cielos... quizá este no fuera el mejor momento para que nos uniéramos a Keldorn. Me da la impresión de que estamos entrometiéndonos en... en algo que debería ser privado.~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 22
END

IF ~~ THEN BEGIN 176 // from:
  SAY #56490 /* ~¿Qué estáis haciendo, <CHARNAME>? ¡Tenemos que ayudar a esta gente! ¡Después de todo ya hemos recibido nuestra paga!~ */
  IF ~  !IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~BOUNHA~ 6
  IF ~  IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 284
END

IF ~~ THEN BEGIN 177 // from:
  SAY #56501 /* ~¿Esto... esto lo hizo su padre? ¡Oh, qué horror! ¡Tenemos que ayudarle!~ */
  IF ~~ THEN EXTERN ~JANJ~ 37
END

IF ~~ THEN BEGIN 178 // from:
  SAY #56554 /* ~No tengo miedo de que pierda, Bodhi. Confío en que él triunfará.~ ~No tengo miedo de que pierda, Bodhi. Confío en que ella triunfará.~ */
  IF ~~ THEN EXTERN ~BODHIAMB~ 17
END

IF ~~ THEN BEGIN 179 // from:
  SAY #56891 /* ~El oro no es importante, Edwin. Tenemos que ayudar a <CHARNAME> para que localice a Imoen y a ese Irenicus.~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 142
END

IF ~~ THEN BEGIN 180 // from:
  SAY #57067 /* ~Entonces... vos debéis ser el mercenario del que nos había hablado el comerciante. Vos sois Jarlaxle, ¿me equivoco?~ */
  IF ~~ THEN EXTERN ~JARLAXLE~ 1
END

IF ~~ THEN BEGIN 181 // from:
  SAY #57375 /* ~¡No, <CHARNAME>! ¡Esa idea es horrible! ¡Enviadlos... enviadlos a otro lado, pero no los mandéis allí!~ */
  IF ~~ THEN EXTERN ~DASLAVE1~ 5
END

IF ~~ THEN BEGIN 182 // from:
  SAY #57457 /* ~Bueno... Veldrin no necesita ese... ese tipo de relajación. Marchaos.~ */
  IF ~~ THEN EXTERN ~DADROW21~ 3
END

IF ~~ THEN BEGIN 183 // from:
  SAY #58173 /* ~<CHARNAME>, no es necesario que os repita cuánto odio este lugar. Me da miedo. En cuanto salvemos a vuestra Imoen, no nos uniremos más a esa gente.~ */
  IF ~  !IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("VICONIA")
!IfValidForPartyDialogue("MINSC")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 148
  IF ~  IfValidForPartyDialogue("VICONIA")
!IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~VICONIJ~ 176
  IF ~  IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~MINSCJ~ 207
END

IF ~~ THEN BEGIN 184 // from:
  SAY #58174 /* ~Lo sé. Pero preferiría cruzar la calle en vez de tener que pasar al lado de esos ladrones.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 185 // from:
  SAY #58176 /* ~Si no fuera por vos no podría haber escapado de Kalah. No hubiera podido estar aquí y tener la oportunidad de enfrentarme a este mal. No me voy a detener ahora, cueste lo que cueste.~ */
  IF ~  True()
~ THEN EXTERN ~PLAYER1~ 53
  IF ~  IfValidForPartyDialogue("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 52
  IF ~  IfValidForPartyDialogue("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 50
  IF ~  IfValidForPartyDialogue("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 49
  IF ~  IfValidForPartyDialogue("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)
~ THEN EXTERN ~PLAYER1~ 48
END

IF ~~ THEN BEGIN 186 // from:
  SAY #58272 /* ~Lo sé, <CHARNAME>. Lo sé. O al menos eso creo. No es importante. Siempre tengo algo que decir.~ */
  IF ~~ THEN GOTO 187
END

IF ~~ THEN BEGIN 187 // from: 186.0
  SAY #58273 /* ~Me habéis mostrado lo importante que puede ser mi vida. Qué podría hacer para que sea diferente. Debemos detener a Irenicus, sea como sea. Y vos tenéis que recuperar vuestra alma.~ */
  IF ~~ THEN GOTO 188
END

IF ~~ THEN BEGIN 188 // from: 187.0
  SAY #58274 /* ~Os... os lo debo todo, <CHARNAME>. Me habéis salvado la vida... más aún, habéis salvado mi alma. Si tuviera que entregar mi vida ahora mismo para ayudaros, lo haría de buen grado.~ */
  IF ~~ THEN GOTO 189
END

IF ~~ THEN BEGIN 189 // from: 188.0
  SAY #58275 /* ~Lo haría porque os... os amo. Y antes no sabía lo que eso quería decir en realidad... pero ahora sí lo sé. Sin embargo, tenemos una tarea por delante que tiene preferencia. El futuro que nos aguarda... será lo que deba ser. Y si lo que nos aguarda es sobrevivir juntos a todo esto... bueno, nada me haría más feliz.~ ~Lo haría porque os... os amo. Y antes no sabía lo que eso quería decir en realidad... pero ahora sí lo sé. Sin embargo, tenemos una tarea por delante que tiene preferencia. El futuro que nos aguarda... será lo que deba ser. Y si lo que nos aguarda es sobrevivir juntas a todo esto... bueno, nada me haría más feliz.~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 53
END

IF ~~ THEN BEGIN 190 // from:
  SAY #58520 /* ~Vos no haríais una cosa así, ¿verdad, <CHARNAME>? ¡Valygar es un buen hombre! ¡Decidle al mago que se vaya! ¡Decidle que ya no trabajaremos más para él, nunca más!~ */
  IF ~  OR(2)
!IfValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
!IfValidForPartyDialogue("Nalia")
!IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~TOLGER~ 82
  IF ~  IfValidForPartyDialogue("Anomen")
!Alignment("Anomen",CHAOTIC_NEUTRAL)
~ THEN EXTERN ~ANOMENJ~ 304
  IF ~  OR(2)
!IfValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
IfValidForPartyDialogue("Nalia")
~ THEN EXTERN ~NALIAJ~ 316
  IF ~  OR(2)
!IfValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
!IfValidForPartyDialogue("Nalia")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 189
END

IF ~~ THEN BEGIN 191 // from:
  SAY #58532 /* ~No me voy a quedar aquí y presenciar esto. Adiós, <CHARNAME>. Desde luego no sois el tipo de persona que creía que erais...~ */
  IF ~  OR(2)
!IfValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
!IfValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutScene("Cut61a")
~ EXIT
  IF ~  IfValidForPartyDialogue("Anomen")
!Alignment("Anomen",CHAOTIC_NEUTRAL)
~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutScene("Cut61a")
~ EXTERN ~ANOMENJ~ 305
  IF ~  OR(2)
!IfValidForPartyDialogue("Anomen")
Alignment("Anomen",CHAOTIC_NEUTRAL)
IfValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
EscapeArea()
StartCutSceneMode()
StartCutScene("Cut61a")
~ EXTERN ~VALYGARJ~ 118
END

IF ~~ THEN BEGIN 192 // from:
  SAY #58738 /* ~¿Yo-Yoshimo? ¡Cómo pudisteis...! ¡Cómo pudisteis!~ */
  IF ~  !IfValidForPartyDialogue("ANOMEN")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("VALYGAR")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("CERND")
!IfValidForPartyDialogue("MINSC")
~ THEN EXTERN ~YOSHJ~ 114
  IF ~  IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~ANOMENJ~ 306
  IF ~  IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~NALIAJ~ 317
  IF ~  IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~KELDORJ~ 250
  IF ~  IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~KORGANJ~ 190
  IF ~  IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~EDWINJ~ 161
  IF ~  IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~MAZZYJ~ 201
  IF ~  IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~JANJ~ 182
  IF ~  IfValidForPartyDialogue("VALYGAR")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~VALYGARJ~ 119
  IF ~  IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("VALYGAR")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~HAERDAJ~ 150
  IF ~  IfValidForPartyDialogue("CERND")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("VALYGAR")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~CERNDJ~ 137
  IF ~  IfValidForPartyDialogue("MINSC")
!IfValidForPartyDialogue("CERND")
!IfValidForPartyDialogue("HAERDALIS")
!IfValidForPartyDialogue("VALYGAR")
!IfValidForPartyDialogue("JAN")
!IfValidForPartyDialogue("MAZZY")
!IfValidForPartyDialogue("EDWIN")
!IfValidForPartyDialogue("KORGAN")
!IfValidForPartyDialogue("KELDORN")
!IfValidForPartyDialogue("NALIA")
!IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~MINSCJ~ 211
END

IF ~~ THEN BEGIN 193 // from:
  SAY #58951 /* ~So-soy yo. Pero Quayle está muerto. ¿Por qué? ¿Qué significa esto?~ */
  IF ~~ THEN EXTERN ~AEMESS~ 4
END

IF ~~ THEN BEGIN 194 // from:
  SAY #58952 /* ~Bueno, sí. ¿Por qué? ¿Le ha pasado algo al tío Quayle? ¿Qué significa todo esto?~ */
  IF ~~ THEN EXTERN ~AEMESS~ 1
END

IF ~~ THEN BEGIN 195 // from:
  SAY #58958 /* ~¿El tío Quayle necesita mi ayuda? ¡Entonces deberíamos volver al circo! Oh, <CHARNAME>, por favor... ¡No podría cargar con la culpa de pensar que me necesitaba y no le ayudé! ¡Por favor!~ */
  IF ~~ THEN DO ~SetGlobal("QuayleRaelis","GLOBAL",1)
SetGlobalTimer("AerieRemindsQuayle","GLOBAL",TWO_DAYS)
~ UNSOLVED_JOURNAL #3296 /* ~Quayle llama a Aerie.

Después de recibir un mensaje de Quayle solicitando nuestra ayuda, Aerie quiere que vayamos y lo busquemos en la carpa del circo del Paseo de Waukin tan pronto como sea posible.~ */ EXTERN ~AEMESS~ 3
END

IF ~~ THEN BEGIN 196 // from:
  SAY #58971 /* ~¿Una carta? ¿Alguien envió una carta al tío Quayle?~ */
  IF ~~ THEN EXTERN ~AEMESS~ 5
END

IF ~  Global("AerieReadsLetter","GLOBAL",1)
~ THEN BEGIN 197 // from:
  SAY #58989 /* ~Bien, veamos. Voy a leérosla. Es de una amiga de Quayle, Raelis Shai. Qué raro... No me suena de nada el nombre. Pero Quayle tenía muchos viejos amigos.~ */
  IF ~~ THEN DO ~SetGlobal("AerieReadsLetter","GLOBAL",2)
~ GOTO 198
END

IF ~~ THEN BEGIN 198 // from: 197.0
  SAY #58992 /* ~"Mi querido amigo Quayle. No nos hemos visto desde vuestra breve visita a mi antigua casa. Me alegró escuchar, hace poco, que habíais venido a esta ciudad".~ */
  IF ~~ THEN GOTO 199
END

IF ~~ THEN BEGIN 199 // from: 198.0
  SAY #58994 /* ~"Me encantaría veros de nuevo. En primer lugar para renovar nuestra vieja amistad y en segundo lugar porque, aunque me da vergüenza pedíroslo, necesito la experiencia de vuestros años de aventuras".~ */
  IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 200 // from: 199.0
  SAY #58995 /* ~"Por favor, venid a verme lo antes posible al teatro cercano a la posada Las Cinco Jarras, en el distrito del puente de Athkatla. Estaré ansiosa por daros la bienvenida.

Vuestra amiga, Raelis Shai".~ */
  IF ~~ THEN GOTO 201
END

IF ~~ THEN BEGIN 201 // from: 200.0
  SAY #58996 /* ~Si el tío Quayle conocía a esta mujer y ella necesita su ayuda... tendremos que visitarla, <CHARNAME>, y ayudarla. Es lo que Quayle hubiera hecho. Por favor, <CHARNAME>, ¿iremos?~ */
  IF ~~ THEN DO ~SetGlobal("QuayleJob","GLOBAL",1)
SetGlobalTimer("AerieRemindsRaelis","GLOBAL",TWO_DAYS)
~ UNSOLVED_JOURNAL #3301 /* ~Una amiga de Quayle necesita ayuda.

Con Quayle muerto, Aerie ha recibido una carta que iba dirigida a él, en la cual una vieja amiga de nombre Raelis solicitaba su ayuda. Aerie me ha pedido que al menos vaya y hable con esa mujer. Puedo encontrarla en un teatro que hay bajo la posada Las Cinco Jarras, en el distrito del puente.~ */ EXIT
END

IF ~  Global("QuayleRaelis","GLOBAL",1)
AreaCheck("AR0607")
See("Quayle")
!Dead("Quayle")
~ THEN BEGIN 202 // from:
  SAY #59001 /* ~¡Tío Quayle! ¡Qué agradable veros de nuevo! ¿Va... va todo bien? ¿Habéis mandado a alguien a buscarme?~ */
  IF ~~ THEN DO ~EraseJournalEntry(3296)
SetGlobal("QuayleRaelis","GLOBAL",2)
~ EXTERN ~QUAYLE~ 38
END

IF ~~ THEN BEGIN 203 // from:
  SAY #59014 /* ~Me encantará hacerlo. ¿De qué amiga estáis hablando?~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 39
END

IF ~~ THEN BEGIN 204 // from:
  SAY #59021 /* ~Estaré encantada de ayudaros, tío Quayle. Bueno, siempre y cuando <CHARNAME> considere que tenemos tiempo. ¿Vos... qué opináis, <CHARNAME>?~ */
  IF ~~ THEN REPLY #59022 /* ~No hay ningún inconveniente en echar una mano.~ */ UNSOLVED_JOURNAL #3303 /* ~Una amiga de Quayle necesita ayuda.

Raelis Shai, una vieja amiga de Quayle, le ha solicitado ayuda. El gnomo cree que yo estoy en mejor posición para ayudarla que él. Me ha pedido que vaya a hablar con esa mujer cuando tenga tiempo. Raelis se encuentra en un teatro que hay bajo la posada Las Cinco Jarras, en el distrito del puente.~ */ EXTERN ~QUAYLE~ 41
  IF ~~ THEN REPLY #59023 /* ~Podríamos ayudar, pero no en este momento.~ */ UNSOLVED_JOURNAL #3303 /* ~Una amiga de Quayle necesita ayuda.

Raelis Shai, una vieja amiga de Quayle, le ha solicitado ayuda. El gnomo cree que yo estoy en mejor posición para ayudarla que él. Me ha pedido que vaya a hablar con esa mujer cuando tenga tiempo. Raelis se encuentra en un teatro que hay bajo la posada Las Cinco Jarras, en el distrito del puente.~ */ EXTERN ~QUAYLE~ 41
  IF ~~ THEN REPLY #59024 /* ~Aerie, no tenemos tiempo para esas cosas.~ */ UNSOLVED_JOURNAL #3303 /* ~Una amiga de Quayle necesita ayuda.

Raelis Shai, una vieja amiga de Quayle, le ha solicitado ayuda. El gnomo cree que yo estoy en mejor posición para ayudarla que él. Me ha pedido que vaya a hablar con esa mujer cuando tenga tiempo. Raelis se encuentra en un teatro que hay bajo la posada Las Cinco Jarras, en el distrito del puente.~ */ EXTERN ~QUAYLE~ 41
END

IF ~~ THEN BEGIN 205 // from:
  SAY #59027 /* ~Tío Quayle, estoy segura de que por lo menos encontraremos tiempo para hablar con ella.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 43
END

IF ~  GlobalTimerExpired("AerieRemindsQuayle","GLOBAL")
Global("AerieReminder","LOCALS",0)
Global("QuayleJob","GLOBAL",0)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
CombatCounter(0)
Global("HaerDalisPlotStarted","GLOBAL",0)
Global("HaerDalisFree","GLOBAL",0)
~ THEN BEGIN 206 // from:
  SAY #59038 /* ~Me... me encantaría ir y ver al tío Quayle. Quiero asegurarme de que esté bien.  ¿Iremos pronto al circo? ¿Por favor, <CHARNAME>?~ */
  IF ~~ THEN DO ~SetGlobal("AerieReminder","LOCALS",1)
~ EXIT
END

IF ~  GlobalTimerExpired("AerieRemindsRaelis","GLOBAL")
Global("AerieReminder2","LOCALS",0)
Global("QuayleJob","GLOBAL",1)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
CombatCounter(0)
Global("HaerDalisPlotStarted","GLOBAL",0)
Global("HaerDalisFree","GLOBAL",0)
~ THEN BEGIN 207 // from:
  SAY #59041 /* ~<CHARNAME>, me encantaría poder ir a ver a Raelis. Al menos podríamos  hablar con ella, si no causa demasiados problemas, ¿no? Tenemos que hacerlo por el tío Quayle...~ */
  IF ~~ THEN DO ~IncrementGlobal("AerieReminder2","LOCALS",1)
SetGlobalTimer("AerieRemindsRaelis","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~  GlobalTimerExpired("AerieRemindsRaelis","GLOBAL")
Global("AerieReminder2","LOCALS",1)
Global("QuayleJob","GLOBAL",1)
AreaType(OUTDOOR)
AreaType(CITY)
!AreaCheck("AR2000")
CombatCounter(0)
Global("HaerDalisPlotStarted","GLOBAL",0)
Global("HaerDalisFree","GLOBAL",0)
~ THEN BEGIN 208 // from:
  SAY #59042 /* ~Supongo que pensáis que no tenemos tiempo para ir a ver a Raelis. (Suspira). Bueno... si pasamos por los alrededores de Las Cinco Jarras quizá podamos visitarla, ¿no? Me encantaría poder hacerlo.~ */
  IF ~~ THEN DO ~SetGlobal("AerieReminder2","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 209 // from:
  SAY #59398 /* ~Bueno, no estamos aquí para... Es decir, hemos venido a ayudaros, si podemos. Mi tío, bueno, en realidad no es mi tío... Parece que os conoce y me pidió que viniera a veros...~ */
  IF ~~ THEN EXTERN ~RAELIS~ 80
END

IF ~~ THEN BEGIN 210 // from:
  SAY #59402 /* ~Bueno, no estamos aquí para... es decir, hemos venido a ayudaros, si podemos. Mi tío, bueno, en realidad no es mi tío... Parece que os conocía, que erais amigos desde hace tiempo...~ */
  IF ~~ THEN EXTERN ~RAELIS~ 80
END

IF ~~ THEN BEGIN 211 // from:
  SAY #59403 /* ~Quayle... se llama Quayle. Él me crió en el circo.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 81
END

IF ~~ THEN BEGIN 212 // from:
  SAY #59406 /* ~¿El joven...? Entonces, lo debéis conocer desde hace mucho tiempo. Quayle está bien. Ha instalado el circo en la ciudad, y cuando recibió vuestra carta nos pidió que viniéramos.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 82
END

IF ~~ THEN BEGIN 213 // from:
  SAY #59407 /* ~¿El joven...? Entonces, lo debéis conocer desde hace mucho tiempo. Quayle está muerto. Lo siento. Ha sido hace poco. Hemos venido hasta aquí porque yo recibí la carta en su lugar.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 83
END

IF ~~ THEN BEGIN 214 // from:
  SAY #59409 /* ~En verdad, señorita, eso depende más de <CHARNAME>. He viajado con él, pero es él quien tiene la experiencia para ayudaros. Quizá podríais contarnos a nosotros... cuál es el problema.~ ~En verdad, señorita, eso depende más de <CHARNAME>. He viajado con ella, pero es ella quien tiene la experiencia para ayudaros. Quizá podríais contarnos a nosotros... cuál es el problema.~ */
  IF ~~ THEN EXTERN ~RAELIS~ 41
END

IF ~~ THEN BEGIN 215 // from:
  SAY #59411 /* ~Quayle, ya hemos hablado con la señorita Raelis. No tenía ni idea de que fuera amiga vuestra.~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 47
END

IF ~~ THEN BEGIN 216 // from:
  SAY #59413 /* ~Cr-creo que podríamos ayudar a Raelis si estuviera en nuestra mano. ¿Qué habría de malo en ello? Me gustaría hacerlo por mi tío Quayle si no hay inconveniente... pero supongo que vos estáis más cualificado.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 217 // from:
  SAY #59414 /* ~Estoy encantada de que queráis ayudarla. Si... si no recuerdo mal, podríamos entrar a las cloacas por el distrito del templo y desde allí localizar a ese mago, Mekrath.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 218 // from:
  SAY #59415 /* ~¿Vos sois... Haer'Dalis? Raelis nos envía... para liberaros.~ */
  IF ~~ THEN EXTERN ~HAERDA~ 8
END

IF ~~ THEN BEGIN 219 // from:
  SAY #70501 /* ~Siento algo aquí. Una... presencia. ¡Es tan poderosa! ¡Tan poderosa que no puedo sentir nada más sobre ella! ¡Que Bervan nos proteja!~ */
  IF ~~ THEN EXTERN ~GORDEMO~ 2
END

IF ~~ THEN BEGIN 220 // from:
  SAY #70553 /* ~¡Oh, pobre hombre, pobrecito! No os preocupéis... prometo que no os haré daño. De verdad que no soy ningún demonio.~ */
  IF ~~ THEN EXTERN ~GORMAD1~ 11
END

IF ~~ THEN BEGIN 221 // from:
  SAY #70414 /* ~¡Qué destino más atroz! Son locos como Carston los que dan una mala reputación a todos los usuarios de la magia.~ */
  IF ~~ THEN EXTERN ~GORAPR~ 11
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 123
  IF ~  IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 189
END

IF ~~ THEN BEGIN 222 // from:
  SAY #70508 /* ~¿Hay gente que puede morir por esto y vos hacéis chistes?~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 157
END

IF ~~ THEN BEGIN 223 // from:
  SAY #74580 /* ~No sé si me siento a gusto con esto, <CHARNAME>...~ */
  IF ~  Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY #74579 /* ~¿Qué hay que hacer hoy?~ */ EXTERN ~DORN~ 20
  IF ~  !Global("OHD_KNOWS_DORN","LOCALS",1)
~ THEN REPLY #74579 /* ~¿Qué hay que hacer hoy?~ */ EXTERN ~DORN~ 22
  IF ~  IfValidForPartyDialogue("Haerdalis")
~ THEN EXTERN ~HAERDAJ~ 160
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 537
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 126
END

IF ~~ THEN BEGIN 224 // from: 226.0
  SAY #74718 /* ~¿Y vos qué pensáis, <CHARNAME>?~ */
  IF ~~ THEN REPLY #74719 /* ~Creo que el amor lo cura todo. La persona adecuada proporciona paz. Veamos si nuestra amiga, la novia, la ha encontrado.~ */ EXTERN ~OHDBBRO~ 5
  IF ~~ THEN REPLY #74720 /* ~No me gustan mucho las bodas, pero una fiesta es una fiesta.~ */ EXTERN ~OHDBBRO~ 5
  IF ~~ THEN REPLY #74721 /* ~Solo un necio aumentaría su carga haciéndose responsable de otra persona. Y ahora, dejadnos pasar. ~ */ EXTERN ~OHDBBRO~ 2
END

IF ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 225 // from:
  SAY #75703 /* ~Esto sería muy sencillo si aún... si tuviera mis alas.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 2
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 15
  IF ~  IfValidForPartyDialogue("dorn")
~ THEN EXTERN ~DORNJ~ 502
  IF ~  IfValidForPartyDialogue("viconia")
~ THEN EXTERN ~VICONIJ~ 410
  IF ~  IfValidForPartyDialogue("valygar")
~ THEN EXTERN ~VALYGARJ~ 128
  IF ~  IfValidForPartyDialogue("minsc")
~ THEN EXTERN ~MINSCJ~ 252
  IF ~  IfValidForPartyDialogue("mazzy")
~ THEN EXTERN ~MAZZYJ~ 208
  IF ~  IfValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 234
  IF ~  IfValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 265
  IF ~  IfValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 192
  IF ~  IfValidForPartyDialogue("jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 539
  IF ~  IfValidForPartyDialogue("imoen2")
~ THEN EXTERN ~IMOEN2J~ 55
  IF ~  IfValidForPartyDialogue("haerdalis")
~ THEN EXTERN ~HAERDAJ~ 161
  IF ~  IfValidForPartyDialogue("edwin")
~ THEN EXTERN ~EDWINJ~ 195
  IF ~  IfValidForPartyDialogue("cernd")
~ THEN EXTERN ~CERNDJ~ 142
  IF ~  IfValidForPartyDialogue("anomen")
~ THEN EXTERN ~ANOMENJ~ 322
END

IF ~~ THEN BEGIN 226 // from:
  SAY #74716 /* ~¿Tan terribles os parecen las bodas?~ */
  IF ~~ THEN GOTO 224
  IF ~  IfValidForPartyDialogue("HAERDALIS")
~ THEN EXTERN ~HAERDAJ~ 164
END

IF ~  Global("OHD_sexreactions","GLOBAL",1)
~ THEN BEGIN 227 // from:
  SAY #96640 /* ~<CHARNAME>, no puedo... Hemos terminado. Ni siquiera puedo miraros. Tengo náuseas.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_sexreactions","GLOBAL",2)
SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXIT
  IF ~  IfValidForPartyDialogue("rasaad")
OR(2)
Global("RasaadRomanceActive","GLOBAL",1)
Global("RasaadRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXTERN ~RASAADJ~ 772
  IF ~  IfValidForPartyDialogue("hexxat")
OR(2)
Global("HexxatRomanceActive","GLOBAL",1)
Global("HexxatRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXTERN ~HEXXATJ~ 3
  IF ~  IfValidForPartyDialogue("neera")
OR(2)
Global("NeeraRomanceActive","GLOBAL",1)
Global("NeeraRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXTERN ~NEERAJ~ 19
  IF ~  IfValidForPartyDialogue("jaheira")
OR(2)
Global("JaheiraRomanceActive","GLOBAL",1)
Global("JaheiraRomanceActive","GLOBAL",2)
~ THEN DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ EXTERN ~JAHEIRAJ~ 541
END

IF ~~ THEN BEGIN 228 // from:
  SAY #100083 /* ~No... no sé de qué estáis hablando.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 256
END

IF ~~ THEN BEGIN 229 // from:
  SAY #100085 /* ~¡<CHARNAME> nunca aceptaría a un monstruo c-como vos!~ */
  IF ~~ THEN EXTERN ~DORNJ~ 257
END

IF ~~ THEN BEGIN 230 // from:
  SAY #100087 /* ~¡Intentadlo!~ */
  IF ~~ THEN REPLY #100096 /* ~¡BASTA! Aerie es una mujer valiente y hermosa. No permitiré que la menospreciéis, Dorn.~ */ DO ~SetGlobal("DornRomanceActive","GLOBAL",3)
~ GOTO 231
  IF ~~ THEN REPLY #100097 /* ~Deteneos, Dorn. Sabéis que sois vos quien me interesa.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ GOTO 232
  IF ~~ THEN REPLY #100098 /* ~Excelente. Un combate es un modo adecuado de demostrar vuestro amor por mí.~ */ DO ~SetGlobal("AerieRomanceActive","GLOBAL",3)
~ GOTO 233
END

IF ~~ THEN BEGIN 231 // from: 230.0
  SAY #100088 /* ~Gracias, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~DORNJ~ 258
END

IF ~~ THEN BEGIN 232 // from: 230.1
  SAY #100090 /* ~Pero... pero yo pensaba...~ */
  IF ~~ THEN EXTERN ~DORNJ~ 259
END

IF ~~ THEN BEGIN 233 // from: 230.2
  SAY #100092 /* ~¡No! No lo haré.~ */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 234 // from: 233.0
  SAY #100093 /* ~No sois el hombre que imaginaba, <CHARNAME>.~ ~No sois la mujer que imaginaba, <CHARNAME>.~ */
  IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 235 // from: 234.0
  SAY #100094 /* ~Os deseo lo mejor, pero no puedo seguir cerca de ese demonio. Adiós, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
MoveGlobal("AR0607","Aerie",[469.437])
~ EXTERN ~DORNJ~ 260
END

IF ~~ THEN BEGIN 236 // from:
  SAY #102470 /* ~¿Estáis seguro de eso, <CHARNAME>?~ ~¿Estáis segura de eso, <CHARNAME>?~ */
  IF ~  !IfValidForPartyDialogue("keldorn")
~ THEN EXTERN ~HEXXAT~ 3
  IF ~  IfValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 268
END

IF ~~ THEN BEGIN 237 // from:
  SAY #89528 /* ~Normalmente, me sentiría mal si abandonara a alguien de ese modo, pero me recuerda a las ilusiones que usaba Kalah. Dudo que sea real.~ */
  IF ~~ THEN EXIT
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 73
  IF ~  IfValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 200
END

IF ~~ THEN BEGIN 238 // from:
  SAY #93247 /* ~¡No podemos abandonarlos aquí! Pero primero hay que echar a esos mercenarios. Si no, se derramará más sangre de la necesaria.~ */
  IF ~~ THEN EXIT
  IF ~  IfValidForPartyDialogue("neera")
~ THEN EXTERN ~NEERAJ~ 98
  IF ~  IfValidForPartyDialogue("keldorn")
~ THEN EXTERN ~KELDORJ~ 290
  IF ~  IfValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 245
END

IF ~~ THEN BEGIN P_1 // from:
  SAY @3030/* ~No estoy de acuerdo con esto, Dusk... pero supongo que si no los aniquilamos ahora, estos humanoides bien podrían hacer daño a inocentes.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MICHEL~ 8
END