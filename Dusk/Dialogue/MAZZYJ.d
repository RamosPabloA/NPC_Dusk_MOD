// creator  : weidu (version 24700)
// argument : MAZZYJ.DLG
// game     : .
// source   : ./DATA/DIALOG.BIF
// dialog   : .\lang\es_es\dialog.tlk
// dialogF  : .\lang\es_es\dialogf.tlk

BEGIN ~MAZZYJ~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #0 ~Dead("SHADEL")
Global("ShadowLordDead","GLOBAL",1)
Global("MazzyComment","AR1400",1)
Global("MazzyAltar","GLOBAL",0)~ THEN BEGIN 0 // from:
  SAY #24048 /* ~Patrick y mis compañeros tuvieron que servir en la muerte como esclavos del Señor de las sombras.~ [MAZZY77] */
  IF ~~ THEN REPLY #24051 /* ~Murieron con honor a pesar de lo que el Señor de las sombras les hizo.~ */ GOTO 3
  IF ~~ THEN REPLY #24052 /* ~Solo el más fuerte sobrevive. Estos valientes compañeros vuestros no sobrevivieron porque eran débiles.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 3.0
  SAY #24049 /* ~Sí, lo sería. Este altar fue alguna vez un lugar de luz, y lo volverá a ser. Hagamos de él un recuerdo para nuestros nobles y buenos amigos.~ */
  IF ~~ THEN DO ~SetGlobal("MazzyAltar","GLOBAL",1)
StartCutSceneMode()
StartCutScene("cut30c")~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 5.1 0.1
  SAY #24050 /* ~Tenéis un corazón malicioso, <CHARNAME>. No seguiré en este grupo. Dejadme en paz. Tengo un importante trabajo que desempeñar y no quiero que se vea oscurecido por vuestra presencia.~ */
  IF ~~ THEN DO ~LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
SetGlobal("MazzyHappy","GLOBAL",0)
EscapeAreaMove("AR2002",341,400,12)~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #24164 /* ~Un destino realmente trágico. Sería un honor para sus almas sin descanso... Quizás les aporte un poco de paz. Fueron buenas personas que lucharon siempre por la justicia.~ */
  IF ~~ THEN REPLY #24171 /* ~El dios que regía este altar lleva muerto mucho tiempo. ¿No sería un buen homenaje para nuestros compañeros caídos en combate? Podemos hacer una inscripción.~ */ GOTO 1
  IF ~~ THEN REPLY #24172 /* ~No hay tiempo para los muertos. Tenemos cosas más importantes que hacer.~ */ GOTO 5
END

IF WEIGHT #1 ~Global("MazzyAltar","GLOBAL",1)~ THEN BEGIN 4 // from:
  SAY #24173 /* ~Compañeros perdidos, amigos del alma. Que vuestras almas descanse en paz. Siempre habrá un lugar en mi corazón para vuestro valor y vuestro honor. Batallaré contra el mal en vuestro nombre.~ [MAZZY78] */
  IF ~~ THEN DO ~SetGlobal("MazzyAltar","GLOBAL",2)~ GOTO 102
END

IF ~~ THEN BEGIN 5 // from: 3.1
  SAY #24174 /* ~Es algo que debo hacer. Estos caídos han sido mis mejores compañeros durante años. Debemos ofrecerles respeto o, de lo contrario, no seremos mejores que las bestias con las que luchamos.~ */
  IF ~~ THEN REPLY #24175 /* ~Mazzy, tenéis razón. He hablado demasiado pronto. Murieron con honor. Es impensable que sus almas se convirtieran en sombras y existieran solo para destruir la vida.~ */ DO ~SetGlobal("MazzyAltar","GLOBAL",1)
StartCutSceneMode()
StartCutScene("Cut30c")~ EXIT
  IF ~~ THEN REPLY #24176 /* ~Lo cierto es que están muertos, lo que prueba que no tenían la fuerza necesaria para merecer vivir.~ */ GOTO 2
END

IF ~~ THEN BEGIN 6 // from:
  SAY #24216 /* ~Id más despacio, Danno. ¿Qué ha ocurrido? ¿Por qué está herida Pala?~ */
  IF ~~ THEN DO ~SetGlobalTimer("PalaDead","GLOBAL",200000)~ EXTERN ~DANNO1~ 1
END

IF ~~ THEN BEGIN 7 // from:
  SAY #24217 /* ~Sois tonto, Danno, ¡no necesitáis ninguna poción! Ella siempre os ha querido. Debemos ir a buscarla. ¿Dónde está?~ */
  IF ~~ THEN EXTERN ~DANNO1~ 2
END

IF ~~ THEN BEGIN 8 // from:
  SAY #24218 /* ~<CHARNAME>, por favor, debemos ir a casa de mi madre.~ */
  IF ~~ THEN REPLY #24219 /* ~No tengo tiempo para involucrarme en problemas personales.~ */ GOTO 9
  IF ~~ THEN REPLY #24220 /* ~¿Por qué debería? ¿Quiénes son estos medianos, Pala y Danno?~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from: 10.1 8.0
  SAY #24221 /* ~¡Mequetrefe cruel! Deshonráis nuestra amistad.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("AR2000")
LeaveParty()
SetGlobal("mazzynocure","GLOBAL",1)
EscapeAreaMove("AR2002",341,400,12)~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #24222 /* ~Pala es mi hermana y Danno es su prometido. Ella puede haber muerto, debemos ir a buscarla.~ */
  IF ~~ THEN REPLY #24223 /* ~Os acompañaré. Guiadme.~ */ DO ~RevealAreaOnMap("AR2000")~ UNSOLVED_JOURNAL #34673 /* ~Salvar a Pala, la hermana de Mazzy.

Danno, el prometido de Pala, la hermana de Mazzy, compró una poción de amor para la mediana que la envenenó. He accedido a ir con Mazzy a ayudar a su hermana que reside en Caravasar.~ */ EXIT
  IF ~~ THEN REPLY #24224 /* ~No tengo tiempo para eso.~ */ GOTO 9
END

IF WEIGHT #2 ~GlobalTimerExpired("MazzyComplainPalaTimer","GLOBAL")
Global("MazzyComplainPala","GLOBAL",0)
Global("Pala","GLOBAL",1)
!GlobalGT("PalaCureFound","GLOBAL",0)~ THEN BEGIN 11 // from:
  SAY #24272 /* ~<CHARNAME>, mientras vos estabais dando vueltas, guiándonos a todas partes menos a por un antídoto, mi hermana ha muerto envenenada. Habéis probado ser un amigo falso y sin honor.~ ~<CHARNAME>, mientras vos estabais dando vueltas, guiándonos a todas partes menos a por un antídoto, mi hermana ha muerto envenenada. Habéis probado ser una amiga falsa y sin honor.~ */
  IF ~~ THEN REPLY #24273 /* ~No ha sido adrede, Mazzy. Tengo muchas obligaciones y muchos asuntos pendientes. No quise ofenderos.~ */ DO ~SetGlobalTimer("MazzyComplainPalaTimer","GLOBAL",SIX_DAYS)~ GOTO 12
  IF ~~ THEN REPLY #24275 /* ~Supongo que no me iréis a decir cuáles deberían ser mis obligaciones.~ */ GOTO 13
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #24276 /* ~Por favor, resolvamos rápidamente este incidente o tendré que dejar el grupo y ocuparme de mis asuntos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 13 // from: 11.1
  SAY #24277 /* ~Dejaré de deciros cuáles son vuestras obligaciones cuando empecéis a tomároslas en serio. Ya no puedo viajar con alguien como vos. Adiós.~ */
  IF ~~ THEN DO ~EraseJournalEntry(34673)
SetGlobal("MazzyNoCure","GLOBAL",1)
LeaveParty()
EscapeAreaMove("AR2002",341,400,13)~ EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY #24278 /* ~Debéis entender que mi obligación debe ser la vida de mi hermana. Su enfermedad es seria y requiere de atención inmediata. Lo haré así ya que vos no habéis sido capaz. Adiós.~ */
  IF ~~ THEN DO ~LeaveParty()
SetGlobal("MazzyNoCure","GLOBAL",1)
EscapeAreaMove("AR2002",341,400,13)~ EXIT
END

IF WEIGHT #3 ~AreaCheck("AR2002")
Global("Pala","GLOBAL",1)
!GlobalGT("PalaCureFound","GLOBAL",0)~ THEN BEGIN 15 // from:
  SAY #24306 /* ~Madre, ¿qué ha ocurrido?~ */
  IF ~~ THEN EXTERN ~VARA1~ 0
END

IF ~~ THEN BEGIN 16 // from:
  SAY #24307 /* ~¿Wallace? ¿Por qué haría algo semejante?~ */
  IF ~~ THEN EXTERN ~VARA1~ 1
END

IF ~~ THEN BEGIN 17 // from:
  SAY #24308 /* ~¡Os salvaré, hermana! ¡Lo juro!~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #24309 /* ~Tenemos que hacer esto, <CHARNAME>, y rápido. Ese gnomo comerciante, Wallace, probablemente lo encontremos cerca de la plaza del mercado. Busquémoslo allí.~ */
  IF ~~ THEN REPLY #24310 /* ~¡Buscaremos por toda la ciudad hasta que encontremos al culpable!~ */ GOTO 19
  IF ~~ THEN REPLY #24311 /* ~No es asunto mío.~ */ GOTO 20
END

IF ~~ THEN BEGIN 19 // from: 20.1 18.0
  SAY #24312 /* ~Gracias. Nos marcharemos inmediatamente.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #34683 /* ~Salvar a Pala, la hermana de Mazzy.

Pala ha sido envenenada por una poción comprada a un gnomo llamado Wallace. He accedido a ir con Mazzy rápidamente a la plaza del mercado de Caravasar para encontrarlo.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 18.1
  SAY #24313 /* ~Podéis llamarme amiga si lo deseáis. Un amigo con honor no deja a una mujer que muera si puede evitarlo.~ ~Podéis llamarme amiga si lo deseáis. Una amiga con honor no deja a una mujer que muera si puede evitarlo.~ */
  IF ~~ THEN REPLY #24314 /* ~Vos no sois mi amiga, mediana. Ya tardabais en largaros.~ */ GOTO 21
  IF ~~ THEN REPLY #24315 /* ~Os ayudaré en vuestra búsqueda. Marchemos hacia el Paseo de Waukin y encontremos a ese gnomo, Wallace.~ */ GOTO 19
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #24316 /* ~Que así sea. ¡Salid de mi vista! Ya no soy una de vuestros compañeros.~ */
  IF ~~ THEN DO ~EraseJournalEntry(34673)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetGlobal("MazzyNoCure","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY #24317 /* ~Esto es demasiado. Debo encontrar a Wallace y desvelar este misterio.~ */
  IF ~~ THEN EXTERN ~VARA1~ 2
END

IF WEIGHT #4 ~Global("Pala","GLOBAL",2)
See("Walla")
!Dead("Walla")~ THEN BEGIN 23 // from:
  SAY #24321 /* ~¡Gnomo, esperad! Quiero hablar con vos.~ */
  IF ~~ THEN EXTERN ~WALL1~ 0
END

IF ~~ THEN BEGIN 24 // from:
  SAY #24322 /* ~No ha pasado tanto tiempo para Danno y Pala.~ */
  IF ~~ THEN EXTERN ~WALL1~ 1
END

IF ~~ THEN BEGIN 25 // from:
  SAY #24323 /* ~¿Y si vos hubieseis asesinado a mi hermana?~ */
  IF ~~ THEN EXTERN ~WALL1~ 2
END

IF ~~ THEN BEGIN 26 // from:
  SAY #24324 /* ~La poción que le habéis vendido a Danno es veneno. Nada puede detenerlo. Ha estado en coma desde que lo bebió.~ */
  IF ~~ THEN EXTERN ~WALL1~ 3
END

IF ~~ THEN BEGIN 27 // from:
  SAY #24325 /* ~Entonces, ¿quién pudo ser?~ */
  IF ~~ THEN EXTERN ~WALL1~ 4
END

IF ~~ THEN BEGIN 28 // from:
  SAY #24326 /* ~¿Cuál es su nombre y dónde puedo encontrarlo?~ */
  IF ~~ THEN EXTERN ~WALL1~ 5
END

IF ~~ THEN BEGIN 29 // from:
  SAY #24327 /* ~Os creo, aunque os sugiero más discreción. Cualquier hombre de negocios un poco responsable se aseguraría de que sus productos estuviesen a salvo. Vuestros productos no lo están.~ */
  IF ~~ THEN EXTERN ~WALL1~ 6
END

IF ~~ THEN BEGIN 30 // from:
  SAY #24328 /* ~Muy bien, Wallace. No lo sabíais. <CHARNAME>, parece un poco surrealista. Realmente lo es. La vida de mi hermana corre peligro.~ */
  IF ~~ THEN REPLY #24329 /* ~Mazzy, ¿al templo, entonces?~ */ GOTO 31
  IF ~~ THEN REPLY #24330 /* ~Basta con la caza del zorro. Tenemos cosas importantes que atender.~ */ GOTO 32
END

IF ~~ THEN BEGIN 31 // from: 32.0 30.0
  SAY #24331 /* ~Sí, amigo mío. Os agradezco vuestro apoyo. Creo que debemos buscar el superior del templo, Masoro Renwellyn. No tenemos más pruebas de la culpabilidad de Barl que la palabra de Wallace y mi intuición.~ ~Sí, amiga mía. Os agradezco vuestro apoyo. Creo que debemos buscar el superior del templo, Masoro Renwellyn. No tenemos más pruebas de la culpabilidad de Barl que la palabra de Wallace y mi intuición.~ */
  IF ~~ THEN DO ~SetGlobal("Pala","GLOBAL",3)~ UNSOLVED_JOURNAL #34687 /* ~Salvar a Pala, la hermana de Mazzy.

Después de perseguir al buhonero Wallace, hemos descubierto que había cambiado sus pociones a un acólito del templo de Waukin llamado Barl. Mazzy sugiere que hablemos con el superior del templo sobre las actividades de su subordinado.~ */ EXIT
END

IF ~~ THEN BEGIN 32 // from: 30.1
  SAY #24332 /* ~Entonces, id sin mí. No puedo mostrarme indiferente con la vida de mi hermana.~ */
  IF ~~ THEN REPLY #24333 /* ~Perdonadme, Mazzy. Pagué con vos mi frustración. Iremos al templo de Waukin y encontraremos al clérigo.~ */ GOTO 31
  IF ~~ THEN REPLY #24334 /* ~Ya era hora.~ */ GOTO 33
  IF ~~ THEN REPLY #24335 /* ~Sinceramente, mi buena mediana, tenemos cosas más importantes que atender.~ */ GOTO 34
END

IF ~~ THEN BEGIN 33 // from: 32.1
  SAY #24336 /* ~¡Salid de mi vista! Espero no volver a veros, maldito mentiroso.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetGlobal("MazzyNoCure","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.2
  SAY #24337 /* ~Nada es más importante para mí que el bienestar de mi hermana. Marchaos, ya no seré una de vosotros.~ */
  IF ~~ THEN DO ~EraseJournalEntry(34673)
EraseJournalEntry(34683)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetGlobal("MazzyNoCure","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #24393 /* ~¡Barl, falso clérigo! Me acusáis de intento de asesinato.~ */
  IF ~~ THEN EXTERN ~BARL~ 0
END

IF ~~ THEN BEGIN 36 // from:
  SAY #24394 /* ~Soy Mazzy Fentan. Wallace el comerciante os compró "pociones de amor"... venenos, en realidad. No podéis mantener vuestra inocencia por más tiempo porque Masoro ha descubierto vuestras artimañas.~ */
  IF ~~ THEN EXTERN ~BARL~ 1
END

IF ~~ THEN BEGIN 37 // from:
  SAY #24395 /* ~Barl, tenéis que confesar vuestro delito. No necesito teneros por más tiempo con vida.~ */
  IF ~~ THEN EXTERN ~BARL~ 2
END

IF ~~ THEN BEGIN 38 // from:
  SAY #24396 /* ~Barl, habéis cometido vuestro último crimen. Habéis dado la espalda al bien y habéis abrazado el mal. Talona no se preocupa por sus esclavos, como pronto descubriréis.~ */
  IF ~~ THEN EXTERN ~BARL~ 3
END

IF WEIGHT #5 ~Dead("Barl")
Global("PalaCureFound","GLOBAL",0)~ THEN BEGIN 39 // from:
  SAY #24397 /* ~Se ha hecho justicia. Quizá sea posible obtener una cura para la enfermedad de Barl. Debemos conseguirla y volver con Pala.~ [MAZZY79] */
  IF ~~ THEN DO ~AddexperienceParty(25000)
SetGlobal("TemsupNoTalkBattle","GLOBAL",0)~ GOTO 115
END

IF ~~ THEN BEGIN 40 // from:
  SAY #24418 /* ~Mmpf, ¿de quién habláis?~ */
  IF ~~ THEN EXTERN ~GORF1~ 1
END

IF ~~ THEN BEGIN 41 // from:
  SAY #24419 /* ~Puedo soportar vuestros insultos, pero al ofender ahora a un inocente me habéis deshonrado. ¡Pido una satisfacción, bestia estúpida!~ */
  IF ~~ THEN EXTERN ~GORF1~ 2
END

IF ~~ THEN BEGIN 42 // from:
  SAY #24420 /* ~Un duelo, idiota. Habéis ido demasiado lejos. Mi honor exige una satisfacción.~ */
  IF ~~ THEN EXTERN ~GORF1~ 3
END

IF ~~ THEN BEGIN 43 // from:
  SAY #24421 /* ~Eso es lo que he dicho, estúpido. Escoged el campo de batalla.~ */
  IF ~~ THEN EXTERN ~GORF1~ 4
END

IF ~~ THEN BEGIN 44 // from:
  SAY #24422 /* ~¡Mmpf, allí estaré!~ */
  IF ~~ THEN DO ~SetGlobal("GorfBystander","GLOBAL",3)~ UNSOLVED_JOURNAL #34668 /* ~Mazzy desafía a Gorf el Aplastador.

Al parecer Mazzy ha desafiado a un duelo a un ogro luchador de pozo llamado Gorf. Se disputará en la posada Corona de Cobre. Deberíamos dirigirnos allí lo antes posible.~ */ EXIT
END

IF WEIGHT #20 /* Triggers after states #: 48 55 103 110 111 112 113 114 117 118 119 146 202 203 even though they appear after this state */
~Global("GorfPlotOn","GLOBAL",1)
Global("GorfMazzyTalk1","GLOBAL",0)~ THEN BEGIN 45 // from:
  SAY #24423 /* ~¡Qué deshonroso! ¡La grosería de la gente grande nunca deja de asombrarme!~ [MAZZY84] */
  IF ~~ THEN REPLY #24424 /* ~¿De verdad queréis luchar con el idiota de Gorf? No creo que sea lo más acertado.~ */ DO ~SetGlobal("GorfMazzyTalk1","GLOBAL",1)
SetGlobal("GorfPlotOn","GLOBAL",0)~ GOTO 46
  IF ~~ THEN REPLY #24425 /* ~¡Mazzy, se lo dijisteis!~ */ DO ~SetGlobal("GorfMazzyTalk1","GLOBAL",1)
SetGlobal("GorfPlotOn","GLOBAL",0)~ GOTO 47
END

IF ~~ THEN BEGIN 46 // from: 45.0
  SAY #24426 /* ~El honor exige riesgos, amigo mío. Debo derrotar al ogro. Entremos en la taberna para que pueda hacerlo.~ ~El honor exige riesgos, amiga mía. Debo derrotar al ogro. Entremos en la taberna para que pueda hacerlo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from: 45.1
  SAY #24427 /* ~Como exige el honor. Entremos en la Corona de Cobre.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 ~GlobalGT("GorfBystander","GLOBAL",2)
See("surly")
Global("GorfMazzyTalk1","GLOBAL",1)
InParty("mazzy")
!Global("GorfBystander","GLOBAL",8)~ THEN BEGIN 48 // from:
  SAY #24433 /* ~¡Eh, el encargado del pozo! Vengo a batirme en duelo con el ogro Gorf. ¿Dónde está?~ */
  IF ~~ THEN DO ~SetGlobal("GorfMazzyTalk1","GLOBAL",2)~ EXTERN ~SURLY~ 0
END

IF ~~ THEN BEGIN 49 // from:
  SAY #24434 /* ~¿Vais a pasar todo el día aquí, insultándome, o vais a decirme dónde está?~ */
  IF ~~ THEN EXTERN ~SURLY~ 1
END

IF ~~ THEN BEGIN 50 // from:
  SAY #24442 /* ~Será mejor que empecéis a buscar un nuevo ogro. Gorf no ganará esta batalla.~ */
  IF ~~ THEN EXTERN ~SURLY~ 2
END

IF ~~ THEN BEGIN 51 // from:
  SAY #24457 /* ~Os arrepentiréis de vuestros actos deshonrosos.~ */
  IF ~~ THEN EXTERN ~GORF1~ 6
END

IF ~~ THEN BEGIN 52 // from:
  SAY #24459 /* ~Eso significa que estoy preparada para pelear. <CHARNAME>..., por favor, cuidad de mis cosas. Las dejaré aquí cuando entre en el pozo.~ */
  IF ~~ THEN EXTERN ~GORF1~ 7
END

IF ~~ THEN BEGIN 53 // from:
  SAY #24467 /* ~Hemos encontrado la poción que puede curar a Pala.~ */
  IF ~~ THEN EXTERN ~VARA1~ 4
END

IF ~~ THEN BEGIN 54 // from:
  SAY #24469 /* ~No, madre, no tenemos otra opción. Pala se encuentra al borde de la muerte.~ */
  IF ~~ THEN EXTERN ~VARA1~ 5
END

IF WEIGHT #7 ~Global("PalaCureFound","GLOBAL",2)~ THEN BEGIN 55 // from:
  SAY #24470 /* ~Respira mejor y el color está volviendo a sus mejillas. Debe de estar funcionando.~ [MAZZY80] */
  IF ~~ THEN DO ~SetGlobal("PalaCureFound","GLOBAL",3)~ EXTERN ~VARA1~ 6
END

IF ~~ THEN BEGIN 56 // from:
  SAY #24472 /* ~Callad, Pala. Estáis en casa. Todo saldrá bien.~ */
  IF ~~ THEN EXTERN ~PALA~ 1
END

IF ~~ THEN BEGIN 57 // from:
  SAY #24477 /* ~Danno, despacio. Necesita reposar. Podemos hablar de ello cuando esté más fuerte.~ */
  IF ~~ THEN EXTERN ~PALA~ 2
END

IF ~~ THEN BEGIN 58 // from:
  SAY #24478 /* ~Ahora está descansando y me siento aliviada. Si todo va bien, me marcharé cuando Pala vuelva a despertar. Entenderé, no obstante, que no podáis esperar.~ */
  IF ~~ THEN REPLY #24481 /* ~Podemos esperar. Cuidad de vuestra hermana. Volveré.~ */ GOTO 59
  IF ~~ THEN REPLY #24482 /* ~Hemos estado fuera mucho tiempo. Debemos volver a nuestra misión.~ */ GOTO 60
END

IF ~~ THEN BEGIN 59 // from: 58.0
  SAY #24479 /* ~Gracias. Mañana...~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
EraseJournalEntry(34673)
EraseJournalEntry(34683)
EraseJournalEntry(34687)
EraseJournalEntry(34691)
EraseJournalEntry(34692)
LeaveParty()
SetGlobalTimer("PalaWakeUp","GLOBAL",ONE_DAY)~ SOLVED_JOURNAL #34695 /* ~Salvar a Pala, la hermana de Mazzy.

Después de enfrentarnos con ese clérigo maligno de Barl en el templo de Waukin, hemos encontrado el antídoto en su cuerpo. Pala se ha curado y Mazzy quiere pasar la noche con ella. Dice que si no me preparo para entonces, ella estará lista para marcharse por la mañana.~ */ EXIT
END

IF ~~ THEN BEGIN 60 // from: 58.1
  SAY #24480 /* ~Entonces, bien, <CHARNAME>; estaré aquí por si me necesitáis en cualquier momento.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
EraseJournalEntry(34673)
EraseJournalEntry(34683)
EraseJournalEntry(34687)
EraseJournalEntry(34691)
EraseJournalEntry(34692)
LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
SetGlobal("MazzyHappy","GLOBAL",1)
SetGlobalTimer("PalaWakeUp","GLOBAL",ONE_DAY)~ SOLVED_JOURNAL #34696 /* ~Salvar a Pala, la hermana de Mazzy.

Después de enfrentarnos con ese clérigo maligno de Barl en el templo de Waukin, hemos encontrado el antídoto en su cuerpo. Pala se ha curado y Mazzy quiere quedarse con ella un día más. No puedo esperar tanto, así que Mazzy me ha dicho que se quedará en Caravasar hasta que la necesite de nuevo.~ */ EXIT
END

IF ~~ THEN BEGIN 61 // from:
  SAY #24531 /* ~¡Demonio retorcido! ¡Solo la muerte me impedirá vengar a esas nobles almas que habéis robado!~ [MAZZY86] */
  IF ~~ THEN EXTERN ~SHADEL~ 1
END

IF ~~ THEN BEGIN 62 // from:
  SAY #24532 /* ~¡Nunca me uniré a vos! ¡Me resistiré con cada fibra de mi cuerpo!~ [MAZZY87] */
  IF ~~ THEN EXTERN ~SHADEL~ 2
END

IF ~~ THEN BEGIN 63 // from:
  SAY #24533 /* ~¡Estaréis muerto del todo cuando acabe con vos!~ [MAZZY88] */
  IF ~~ THEN EXTERN ~SHADEL~ 3
END

IF ~~ THEN BEGIN 64 // from:
  SAY #14229 /* ~Uno que no fuera tan paciente como yo no esperaría a que crecierais.~ */
  IF ~~ THEN EXTERN ~URCHIN1~ 2
END

IF ~~ THEN BEGIN 65 // from:
  SAY #14321 /* ~Mmpf. Niño, estoy muy orgullosa de mi pelo. Y mis pies de mediana son más grandes y fuertes que cualquier calzado de cuero. Os lo demostraré.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 66 // from:
  SAY #14484 /* ~Por supuesto que sí. Qué nobleza por vuestra parte meterse con los que son más pequeños que vos.~ */
  IF ~~ THEN EXTERN ~MTOWN3~ 9
END

IF ~~ THEN BEGIN 67 // from:
  SAY #14557 /* ~Soy una verdadera luchadora de corazón y deseo alcanzar la sabiduría y la perfección. No creo que mi estatura tenga nada que ver con eso.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #15040 /* ~Grrr... Soy una virtuosa seguidora de Arvorin. Ella me guía en la paciencia. (Suspira).~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 69 // from:
  SAY #16975 /* ~¡Tenemos que hacer algo! ¡Tenemos que ayudarlos!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 70 // from:
  SAY #19995 /* ~Soy una devota al servicio de Arvorin, amigo, como una verdadera guerrera. El acero me guiará por el camino de la virtud.~ ~Soy una devota al servicio de Arvorin, amiga, como una verdadera guerrera. El acero me guiará por el camino de la virtud.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 71 // from:
  SAY #20006 /* ~Aunque sea una guerrera, soy también una doncella. Sin embargo, se agradece vuestra admiración.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #22324 /* ~Guardaos vuestros comentarios maliciosos para vos, enano... y vuestros ojos lascivos también, u os demostraré que estoy más que preparada para la lucha.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #22452 /* ~¡Pobre primo! Que Arvorin os sonría y os traiga fortuna.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 74 // from:
  SAY #24806 /* ~¡Por Arvorin, vos no! Y parad de llamarme pequeña castaña... Es un nombre ridículo.~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 10
END

IF ~~ THEN BEGIN 75 // from:
  SAY #24808 /* ~No, no estoy contenta de veros. ¿Cuántas veces tengo que decíroslo?~ */
  IF ~~ THEN EXTERN ~SALVANAS~ 11
END

IF ~~ THEN BEGIN 76 // from:
  SAY #24810 /* ~(Suspira). Si queréis enseñarme vuestras heridas de crueldad y castigo, puedo soportarlas. Pero que sea la última vez. ¡MARCHAOS!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 77 // from:
  SAY #25472 /* ~¿Cómo... cómo sabéis todo eso?~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 78 // from:
  SAY #25583 /* ~El nombre es Mazzy. Y no, dudo que esté aquí para conocer a escoria como vos.~ */
  IF ~~ THEN EXTERN ~FFCUST01~ 7
END

IF ~~ THEN BEGIN 79 // from:
  SAY #25645 /* ~Está bien, gracias sean dadas a Arvorin. Veo que os habéis retirado de la Vida, ¿no?~ */
  IF ~~ THEN EXTERN ~FFWENCH~ 4
END

IF ~~ THEN BEGIN 80 // from:
  SAY #25672 /* ~Supongo que debo daros las gracias. Aunque preferiría ser conocida por mi virtud y mi honor.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 81 // from:
  SAY #25748 /* ~¡No, no lo soy! Y no, los medianos no somos todos iguales!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 82 // from:
  SAY #25763 /* ~Soy una devota servidora de Arvorin y también su más valiente guerrera. Nosotros, como pueblo, no deberíamos limitar nuestras miras, hermano.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #26159 /* ~Conque chuleta de cerdo, ¿eh? Abrid vuestra boca otra vez, gnomo estúpido, y escupiréis tantos dientes que asustaréis a mi madre.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #26617 /* ~Esto es... un tragedia terrible. Mi corazón sufre por los dos. La vida más allá de nuestras simples madrigueras nunca es simple ni fácil. Que Arvorin bendiga a vuestro hijo.~ */
  IF ~~ THEN EXTERN ~MOURNER5~ 4
END

IF ~~ THEN BEGIN 85 // from:
  SAY #27624 /* ~Rindo homenaje a todos nuestros dioses, pero solo sirvo a Arvorin. Espero convertirme algún día en una de sus espadas sagradas.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 86 // from:
  SAY #30073 /* ~Estáis peligrosamente cerca de cuestionar mi honor, señora. Soy una guerrera de la virtud, algo de lo que nadie debe burlarse.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 87 // from:
  SAY #30104 /* ~¡Por Arvorin, niña! ¿Me estáis diciendo que nunca habíais visto a un mediano?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 88 // from:
  SAY #32198 /* ~Alcalde, este el honorable compañero que me liberó de las garras del terrible Señor de las sombras, quien es, de hecho, la perdición de vuestro pueblo.~ ~Alcalde, esta la honorable compañera que me liberó de las garras del terrible Señor de las sombras, quien es, de hecho, la perdición de vuestro pueblo.~ */
  IF ~Dead("SHADEL")~ THEN GOTO 89
  IF ~!Dead("SHADEL")~ THEN GOTO 91
END

IF ~~ THEN BEGIN 89 // from: 88.0
  SAY #32201 /* ~Parece que las sombras poseyeron a vuestra exploradora y cometieron sus malvados actos a través de su cuerpo. Mis compañeros han muerto... y Merela fue tristemente asesinada por la sombra.~ */
  IF ~~ THEN GOTO 90
END

IF ~~ THEN BEGIN 90 // from: 89.0
  SAY #32202 /* ~Pero tenéis aquí a <CHARNAME> para agradecerle vuestra salvación. Yo también hubiese muerto si no hubiese sido por su acertada intervención.~ */
  IF ~~ THEN EXTERN ~UHMAY01~ 30
END

IF ~~ THEN BEGIN 91 // from: 88.1
  SAY #32203 /* ~Todavía no ha sido destruido, alcalde, pero <CHARNAME> asegura que lo haremos. Confío en él. Si no fuera por su oportuna intervención, probablemente estaría muerta.~ ~Todavía no ha sido destruido, alcalde, pero <CHARNAME> asegura que lo haremos. Confío en ella. Si no fuera por su oportuna intervención, probablemente estaría muerta.~ */
  IF ~Global("WainwrightJob","GLOBAL",0)~ THEN EXTERN ~UHMAY01~ 41
  IF ~Global("WainwrightJob","GLOBAL",1)~ THEN EXTERN ~UHMAY01~ 45
END

IF ~~ THEN BEGIN 92 // from:
  SAY #32212 /* ~¿Cómo? ¿No destruiréis al Señor de las sombras teniendo el poder para hacerlo? ¡He jurado ayudar a estas gentes y os pediría que vos también los ayudarais!~ */
  IF ~~ THEN REPLY #32215 /* ~Muy bien. Lo intentaré.~ */ EXTERN ~UHMAY01~ 22
  IF ~~ THEN REPLY #32216 /* ~Olvidadlo, no tengo ningún interés en ello.~ */ GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.1
  SAY #32217 /* ~Entonces continuaréis sin mí. Mis disculpas, alcalde. Creía que estos patanes eran honorables. Debo partir hacia Caravasar y volver tan pronto como me sea posible.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR2002",341,400,11)~ EXTERN ~UHMAY01~ 50
END

IF ~~ THEN BEGIN 94 // from:
  SAY #32374 /* ~Muerto, buen señor. Una muerte innoble, además... Espero que apreciéis que murieron tratando de salvaros.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from:
  SAY #38856 /* ~¿Ribald? Ribald... ¿sois realmente vos?~ */
  IF ~~ THEN EXTERN ~RIBALD~ 21
END

IF ~~ THEN BEGIN 96 // from:
  SAY #38857 /* ~Bastante bien, mi buen amigo, gracias a <CHARNAME>, aquí presente. Es un hombre de buen corazón, y salvó mi vida de un demonio de las sombras en las colinas.~ ~Bastante bien, mi buen amigo, gracias a <CHARNAME>, aquí presente. Es una mujer de buen corazón, y salvó mi vida de un demonio de las sombras en las colinas.~ */
  IF ~~ THEN EXTERN ~RIBALD~ 22
END

IF ~~ THEN BEGIN 97 // from:
  SAY #38858 /* ~Bastante bien, Ribald. Aunque podría decir que la Vida se pierde vuestra noble presencia.~ */
  IF ~~ THEN EXTERN ~RIBALD~ 23
END

IF ~~ THEN BEGIN 98 // from:
  SAY #38859 /* ~No soñaría con ello, mi buen amigo.~ ~No soñaría con ello, mi buena amiga.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #38930 /* ~Tengo... tengo una moneda para vos, mendigo. Rezad a Ilmáter; que los dioses sean bondadosos con vos, humano.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 100 // from:
  SAY #38938 /* ~¡<CHARNAME>, debemos ayudar a los desafortunados! ¡Nuestro honor nos exige intervenir!~ */
  IF ~~ THEN DO ~Attack("SlumsMugger2")~ EXIT
END

IF ~~ THEN BEGIN 101 // from:
  SAY #39360 /* ~Anomen, un comentario semejante es indigno de vos. Por lo que parece, tenemos más razones para confiar en este hombre que para confiar en vos.~ */
  IF ~~ THEN EXTERN ~HENDAK~ 37
END

IF ~~ THEN BEGIN 102 // from: 4.0
  SAY #42118 /* ~Sabed, nobles héroes, que no se os olvida. Que este altar siempre permanezca como monumento a vuestra generosa valentía. ¡Hasta la vista! <CHARNAME>, colocad la inscripción cuando queráis.~ */
  IF ~~ THEN DO ~FadeToColor([30.0],0)
Wait(2)
FadeFromColor([30.0],0)
StartDialogueNoSet([PC])~ EXIT
END

IF WEIGHT #8 ~Global("MazzyAltar","GLOBAL",2)~ THEN BEGIN 103 // from:
  SAY #42119 /* ~Se acabó... y la vida continúa. Deberíamos retirarnos al Valle de Imnes, amigo mío, e informar al buen pastor de que la sombra ha sido eliminada. Vamos.~ [MAZZY81] ~Se acabó... y la vida continúa. Deberíamos retirarnos al Valle de Imnes, amiga mía, e informar al buen pastor de que la sombra ha sido eliminada. Vamos.~ [MAZZY81] */
  IF ~~ THEN DO ~SetGlobal("MazzyAltar","GLOBAL",3)
ActionOverride("uhrang01",StartDialogueNoSet([PC]))~ EXIT
END

IF ~~ THEN BEGIN 104 // from:
  SAY #42121 /* ~¡Patrick!... No, no es Patrick, solo su espíritu torturado. Amigos míos, ¿qué es lo que ese maldito ha hecho con vosotros?~ [MAZZY85] */
  IF ~~ THEN EXTERN ~RNGSHA02~ 1
END

IF ~~ THEN BEGIN 105 // from:
  SAY #46887 /* ~<CHARNAME>, este es Danno Piesdefuego. Es el prometido de mi hermana.~ */
  IF ~~ THEN EXTERN ~DANNO1~ 7
END

IF ~~ THEN BEGIN 106 // from:
  SAY #46890 /* ~¡Danno! ¡Qué alegría veros! ¿Habéis acabado vuestro aprendizaje?~ */
  IF ~~ THEN EXTERN ~DANNO1~ 6
END

IF ~~ THEN BEGIN 107 // from:
  SAY #46894 /* ~Debería, Danno. ¡Hasta la vista!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 108 // from:
  SAY #46907 /* ~No temáis, madre. Siempre he tenido buenos y fuertes amigos a mi lado. No obstante, el peligro está siempre presente para aquellos que deseamos seguir el camino de la virtud.~ */
  IF ~~ THEN EXTERN ~VARA1~ 11
END

IF ~~ THEN BEGIN 109 // from:
  SAY #46909 /* ~Gracias, madre.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #9 ~GlobalTimerExpired("MazzyComplainPalaTimer","GLOBAL")
Global("MazzyComplainPala","GLOBAL",1)
!GlobalGT("PalaCureFound","GLOBAL",0)~ THEN BEGIN 110 // from:
  SAY #46913 /* ~No puedo seguir a vuestro lado. Mi hermana se muere mientras hablamos y os negáis a acompañarme a la aldea de Caravasar a verla. Vuestra falta de sensibilidad me ha ofendido. ¡Adiós!~ [MAZZY82] */
  IF ~~ THEN DO ~SetGlobal("MazzyComplainPala","GLOBAL",2)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetGlobal("MazzyNoCure","GLOBAL",1)~ EXIT
END

IF WEIGHT #10 ~Global("FindWallace","GLOBAL",1)
Global("Pala","GLOBAL",2)
GlobalTimerExpired("MazzyComplainWallaceTimer","GLOBAL")~ THEN BEGIN 111 // from:
  SAY #46914 /* ~<CHARNAME>, debo insistir en que encontremos al comerciante Wallace. Solo a través de él podremos saber cómo ha sido envenenada mi hermana.~ */
  IF ~~ THEN DO ~SetGlobalTimer("MazzyComplainWallaceTimer","GLOBAL",TWO_DAYS)~ EXIT
END

IF WEIGHT #11 ~Global("FindWallace","GLOBAL",2)
Global("Pala","GLOBAL",2)
GlobalTimerExpired("MazzyComplainWallaceTimer","GLOBAL")~ THEN BEGIN 112 // from:
  SAY #46915 /* ~<CHARNAME>, debo insistir en que encontremos al comerciante Wallace. Solo a través de él podremos saber cómo ha sido envenenada mi hermana.~ */
  IF ~~ THEN DO ~SetGlobal("FindWallace","GLOBAL",3)
SetGlobalTimer("MazzyComplainWallaceTimer","GLOBAL",TWO_DAYS)~ EXIT
END

IF WEIGHT #12 ~Global("FindWallace","GLOBAL",3)
Global("Pala","GLOBAL",2)
GlobalTimerExpired("MazzyComplainWallaceTimer","GLOBAL")~ THEN BEGIN 113 // from:
  SAY #46916 /* ~<CHARNAME>, debo insistir en que encontremos al comerciante Wallace. Solo a través de él podremos saber cómo ha sido envenenada mi hermana.~ */
  IF ~~ THEN DO ~SetGlobal("FindWallace","GLOBAL",4)
SetGlobalTimer("MazzyComplainWallaceTimer","GLOBAL",TWO_DAYS)~ EXIT
END

IF WEIGHT #13 ~Global("FindWallace","GLOBAL",4)
Global("Pala","GLOBAL",2)
GlobalTimerExpired("MazzyComplainWallaceTimer","GLOBAL")~ THEN BEGIN 114 // from:
  SAY #46917 /* ~No queréis ayudarme a encontrar a Wallace el buhonero. Eso me demuestra una gran falta de sensibilidad ante la suerte de mi hermana. ¡Dejo este grupo!~ [MAZZY83] */
  IF ~~ THEN DO ~SetGlobal("FindWallace","GLOBAL",5)
SetGlobal("MazzyComplainPala","GLOBAL",2)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetGlobal("MazzyNoCure","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 115 // from: 39.0
  SAY #46926 /* ~¡Sí! ¡Aquí hay una botella! No es realmente mi trabajo, pero ¿qué otra cosa podemos hacer? El veneno es más fuerte que los remedios mágicos y normales.~ */
  IF ~~ THEN DO ~GiveItemCreate("MISC7D",Player1,0,0,0)
SetGlobal("PalaCureFound","GLOBAL",1)~ EXTERN ~TEMSUP~ 24
END

IF ~~ THEN BEGIN 116 // from:
  SAY #46928 /* ~Esta es nuestra única esperanza. <CHARNAME>. Regresemos a mi casa.~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut40c")~ EXIT
END

IF WEIGHT #14 ~GlobalTimerExpired("MazzyComplainTemSupTimer","GLOBAL")
Global("FindTemSup","GLOBAL",1)
Global("TalkedToTemSup","GLOBAL",0)
Global("Pala","GLOBAL",3)~ THEN BEGIN 117 // from:
  SAY #46937 /* ~Debo recordaros que mi hermana está bastante enferma y que la respuesta puede hallarse en el templo waukíneo de Caravasar... ¡Debemos ir allí tan pronto como nos sea posible!~ */
  IF ~~ THEN DO ~SetGlobalTimer("MazzyComplainTemSupTimer","GLOBAL",TWO_DAYS)~ EXIT
END

IF WEIGHT #15 ~Global("FindTemSup","GLOBAL",2)
Global("TalkedToTemSup","GLOBAL",0)
Global("Pala","GLOBAL",3)~ THEN BEGIN 118 // from:
  SAY #46938 /* ~Debo recordarte que mi hermana está bastante enferma y que la respuesta puede hallarse en el templo waukíneo de Caravasar... ¡Debemos ir allí tan pronto como nos sea posible!~ */
  IF ~~ THEN DO ~SetGlobal("FindTemSup","GLOBAL",3)
SetGlobalTimer("MazzyComplainTemSupTimer","GLOBAL",TWO_DAYS)
~ EXIT
END

IF WEIGHT #16 ~Global("FindTemSup","GLOBAL",3)
Global("TalkedToTemSup","GLOBAL",0)
Global("Pala","GLOBAL",3)~ THEN BEGIN 119 // from:
  SAY #46939 /* ~Vuestra frialdad frente a la enfermedad de mi hermana me molesta. Debéis llevarme al templo superior ahora mismo. Abandono este grupo.~ */
  IF ~~ THEN DO ~SetGlobal("FindTemSup","GLOBAL",4)
SetGlobal("MazzyComplainPala","GLOBAL",2)
ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
SetGlobal("MazzyNoCure","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN 120 // from:
  SAY #46948 /* ~Me hace feliz estar de vuelta. Veo que Danno ya casi tiene todas sus cosas en nuestra casa. ¿Quizás sienta algo... por vos?~ */
  IF ~~ THEN EXTERN ~PALA~ 11
END

IF ~~ THEN BEGIN 121 // from:
  SAY #46950 /* ~Danno Piesdefuego es un buen partido, Pala. Que nadie diga lo contrario. Hablaremos más tarde.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #47073 /* ~Ya... veo. Bien dicho, gitana. Es casi como si la misma Arvorin estuviese sentada en vuestro hombro...~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 123 // from:
  SAY #47201 /* ~¿Nunca habíais visto antes a un mediano, niño? Dulce Arvorin, no pensé que pudiese ser posible en esta parte del mundo.~ */
  IF ~~ THEN EXTERN ~TRGYP03~ 5
END

IF ~~ THEN BEGIN 124 // from:
  SAY #48556 /* ~¡Bah! ¿Qué sabréis vos de valor, mago? Solo escucháis a vuestro primer instinto, ¡que es giraros y correr!~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 45
END

IF ~~ THEN BEGIN 125 // from:
  SAY #48598 /* ~<CHARNAME>, esta tarea no le sienta bien a mi estómago. No lo apruebo.~ */
  IF ~!IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~TOLGER~ 19
  IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 361
END

IF ~~ THEN BEGIN 126 // from:
  SAY #48600 /* ~¿Cómo? ¿Conocéis qué egoísta intención tienen los magos respecto a Valygar y todavía la defendéis? Sois despreciable, y no voy a aguantarlo por más tiempo.~ */
  IF ~OR(2)
!IsValidForPartyDialog("Aerie")
!CheckStatLT(Player1,13,CHR)~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR2002",341,400,11)~ EXTERN ~TOLGER~ 37
  IF ~IsValidForPartyDialog("Aerie")
CheckStatLT(Player1,13,CHR)~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR2002",341,400,11)~ EXTERN ~AERIEJ~ 58
END

IF ~~ THEN BEGIN 127 // from:
  SAY #48614 /* ~¿Estos magos os cazarán como a un perro simplemente para conseguir el acceso a esta esfera? ¿Cómo es que nadie planta cara a estos demonios?~ */
  IF ~!IsValidForPartyDialog("Minsc")~ THEN EXTERN ~VALYGAR~ 9
  IF ~IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ 100
END

IF ~~ THEN BEGIN 128 // from:
  SAY #48617 /* ~<CHARNAME>, un explorador no nos mentiría... y debe haber alguna razón por la que los Magos Encapuchados perseguirían a este hombre de esta manera, pero no le juzgo capaz de asesinar.~ */
  IF ~~ THEN EXTERN ~VALYGAR~ 2
END

IF ~~ THEN BEGIN 129 // from:
  SAY #48621 /* ~<CHARNAME>, este un buen hombre. No puedo condenarlo por este acto en vuestro nombre o en el de cualquier otro.~ */
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Aerie")~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR2002",341,400,11)~ EXIT
  IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR2002",341,400,11)~ EXTERN ~MINSCJ~ 102
  IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Aerie")~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
SetGlobal("KickedOut","LOCALS",1)
LeaveParty()
EscapeAreaMove("AR2002",341,400,11)~ EXTERN ~AERIEJ~ 61
END

IF ~~ THEN BEGIN 130 // from:
  SAY #48622 /* ~Os he condenado por vuestra maldad, <CHARNAME>, ¡y ahora sé que es verdad! Este es un explorador, un hombre de honor, ¡y no permitiré que lo matéis!~ */
  IF ~!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Aerie")~ THEN DO ~LeaveParty()
Enemy()~ EXIT
  IF ~IsValidForPartyDialog("Minsc")~ THEN DO ~LeaveParty()
Enemy()~ EXTERN ~MINSCJ~ 103
  IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Aerie")
ReactionGT(Player1,10)~ THEN DO ~LeaveParty()
Enemy()~ EXTERN ~AERIEJ~ 61
  IF ~!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Aerie")
ReactionLT(Player1,11)~ THEN DO ~LeaveParty()
Enemy()~ EXTERN ~AERIEJ~ 60
END

IF ~~ THEN BEGIN 131 // from:
  SAY #48663 /* ~<CHARNAME>, sé que tenemos una pequeña oportunidad, pero ¿podríamos mantenernos alejados de los más criminales? El conflicto es inevitable.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 132 // from:
  SAY #48664 /* ~Me pone enfermo ser testigo de una escena así. ¿No se da cuenta este tonto de que los monstruos que azota pueden dejarlo hecho papilla? ¿Les importaría algo?~ */
  IF ~~ THEN EXTERN ~BDOCK2~ 1
END

IF ~~ THEN BEGIN 133 // from:
  SAY #48671 /* ~Respeto vuestro tamaño como deseo que los demás respeten el mío, pero no tomaré ese nombre. Nuestra asociación es temporal.~ */
  IF ~~ THEN EXTERN ~ARNMAN04~ 1
END

IF ~~ THEN BEGIN 134 // from:
  SAY #48786 /* ~Samuel... Samuel Eructrueno. El más grande luchador del Valle Alto y reconocido villano. Sí, realmente ha pasado mucho tiempo.~ */
  IF ~~ THEN EXTERN ~FFBART~ 17
END

IF ~~ THEN BEGIN 135 // from:
  SAY #48788 /* ~Patrick ha muerto, Samuel. Todos han muerto. Yo también lo estaría de no ser por <CHARNAME>, que me rescató de las garras de una criatura de locura infernal.~ */
  IF ~~ THEN EXTERN ~FFBART~ 18
END

IF ~~ THEN BEGIN 136 // from:
  SAY #48789 /* ~Sí. Que el Sabueso Negro los vigile. Han sido enterrados con honores. Samuel... por eso, al menos, os estoy muy agradecida.~ */
  IF ~~ THEN EXTERN ~FFBART~ 19
END

IF ~~ THEN BEGIN 137 // from:
  SAY #48793 /* ~No, Samuel. En otra ocasión.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 138 // from:
  SAY #48825 /* ~¡Oh, por favor! Puede que no esté muy acostumbrada a tabernas y lugares como este, pero esta debe ser la entrada más poco convincente que he soportado nunca. Volved con vuestros licores, mequetrefe.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #48840 /* ~Ah... Jerry. Me acuerdo de vos, y también de aquel... aburrido... encuentro que tuvimos en Scornubel. ¿Seguís tratando de aprender magia?~ */
  IF ~~ THEN EXTERN ~FFCUST08~ 7
END

IF ~~ THEN BEGIN 140 // from:
  SAY #48925 /* ~Es triste que los caballeros justos de la Orden puedan sucumbir a las tentaciones más oscuras del alma. Pero ¿qué tiene esto que ver con nosotros, sir Ryan?~ */
  IF ~~ THEN EXTERN ~KAYL2~ 25
END

IF ~~ THEN BEGIN 141 // from:
  SAY #48928 /* ~¿Es esto justicia? Su crimen puede haber sido vil, pero esto es... horrible. Vámonos, <CHARNAME>. Por favor.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 142 // from:
  SAY #48975 /* ~<CHARNAME>, por favor, evitad tentar a los dioses de la oscuridad. Busco el favor, pero no pretendo que me cueste el alma.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY #49242 /* ~¿Es una simple cuestión de orgullo, Yoshimo? Me sorprende en vos. A un tonto semejante no merece la pena ni que le roben.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #49374 /* ~Aunque sepa adónde nos conduce esto, un robo semejante en la casa de Lazhánder me revuelve el estómago. Debemos tener cuidado para que no nos volvamos tan crueles como aquellos que perseguimos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #49563 /* ~<CHARNAME>, no podría llamarme a mí misma guerrera de la luz si os permitiera hacer tal cosa. Abandonadme en su lugar para probar mi fe. No permitáis que esta persona venga para hacer daño.~ */
  IF ~~ THEN EXTERN ~IMOEN2~ 23
END

IF WEIGHT #17 ~Global("ShadowTrigger","GLOBAL",1)
AreaCheck("AR1401")
Global("ShadowLordDead","GLOBAL",0)~ THEN BEGIN 146 // from:
  SAY #49583 /* ~Este es el lugar que recordaba. ¿Veis la gema solar sobre su pedestal? En cuanto sea colocada aquí, ninguna sombra podrá acercarse y estaremos a salvo. Cuando nos la llevemos, las criaturas nos atacarán.~ */
  IF ~~ THEN DO ~SetGlobal("ShadowTrigger","GLOBAL",2)~ GOTO 147
END

IF ~~ THEN BEGIN 147 // from: 146.0
  SAY #49584 /* ~Necesitamos esta gema para cruzar una de las barreras de la sombra. Necesitamos estar preparados para luchar una vez que nos la llevemos.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 148 // from:
  SAY #49776 /* ~Hay algo sobrenatural alrededor de esta... esta "Bodhi". <CHARNAME>, no confío en ella. En este lugar todo emana maldad y perdición.~ */
  IF ~~ THEN EXTERN ~BODHI~ 2
END

IF ~~ THEN BEGIN 149 // from:
  SAY #49782 /* ~No os estoy obligando a aceptar esta oferta, amiga mía. Cuanto más tiempo paso en este lugar, peor es la sensación que me da... No podría soportar trabajar para semejante ser.~ */
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Valygar")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("Korgan")
!IsValidForPartyDialog("Yoshimo")~ THEN EXTERN ~BODHI~ 130
  IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 408
  IF ~!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ 126
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Valygar")~ THEN EXTERN ~VALYGARJ~ 59
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Valygar")
IsValidForPartyDialog("Aerie")~ THEN EXTERN ~AERIEJ~ 88
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Valygar")
!IsValidForPartyDialog("Aerie")
IsValidForPartyDialog("Anomen")~ THEN EXTERN ~ANOMENJ~ 222
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Valygar")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Anomen")
IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGANJ~ 98
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Valygar")
!IsValidForPartyDialog("Aerie")
!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("Korgan")
IsValidForPartyDialog("Yoshimo")~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 150 // from:
  SAY #49808 /* ~Mi conciencia no me permite quedarme con un grupo que ha elegido semejante camino. <CHARNAME>, rezaré por vuestra alma. Yo... no creo que nos volvamos a ver.~ */
  IF ~~ THEN DO ~ChangeAIScript("",DEFAULT)
SetLeavePartyDialogFile()
LeaveParty()
EscapeArea()~ EXTERN ~BODHI~ 121
END

IF ~~ THEN BEGIN 151 // from:
  SAY #49905 /* ~Ignorad a <CHARNAME>, buena señora. A veces puede resultar tan vulgar como un enano borracho. Os liberaré... Confío en que no os hayan herido.~ */
  IF ~~ THEN EXTERN ~ELGEA~ 14
END

IF ~~ THEN BEGIN 152 // from:
  SAY #49988 /* ~Sois ignorante, incluso para un humano. Afortunadamente para vos, Arvorin pide que se tenga paciencia con los que son como vos, si no, acabaría con vos por mantener semejante blasfemia.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 153 // from:
  SAY #50002 /* ~Sí, y Arvorin siempre se esforzará por proteger este hogar. La vigilancia no es una característica asociada con mi gente, pero es una de las que hemos aprendido con dureza.~ */
  IF ~!IsValidForPartyDialog("Jan")~ THEN EXIT
  IF ~IsValidForPartyDialog("Jan")~ THEN EXTERN ~JANJ~ 126
END

IF ~~ THEN BEGIN 154 // from:
  SAY #50004 /* ~No me interesa escuchar historias espeluznantes de vuestras relaciones con mi especie, gnomo. Mi paciencia tiene un límite.~ */
  IF ~~ THEN EXTERN ~JANJ~ 127
END

IF ~~ THEN BEGIN 155 // from:
  SAY #50115 /* ~Una jugarreta semejante sería muy desconsiderada... pero supongo que no más que el odioso artista. Ilicio, en efecto. ¡Él se hubiera negado y se acabó!~ */
  IF ~~ THEN EXTERN ~SCJERLIA~ 13
END

IF ~~ THEN BEGIN 156 // from:
  SAY #50131 /* ~Gnomo, no habéis hecho tal cosa. Habríais encontrado la voz divina en un lugar común, ¿no?~ */
  IF ~~ THEN EXTERN ~JANJ~ 132
END

IF ~~ THEN BEGIN 157 // from:
  SAY #50146 /* ~¡Jan, eso que acabáis de decir es terrible! Por el dios del saber... ¿borracho en el césped de vuestro primo? Si yo fuera Oghma, os golpearía donde estáis.~ */
  IF ~~ THEN EXTERN ~JANJ~ 133
END

IF ~~ THEN BEGIN 158 // from:
  SAY #50149 /* ~Yo... (Suspira). A veces, gnomo, os daría una paliza.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #50202 /* ~Su eficacia es demasiado mala para no extenderse al resto de la nación. ¿Tal vez deberíamos ver la rebelión en Riatavín como un claro ejemplo de un  buen gobierno?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 160 // from:
  SAY #50374 /* ~Grrr... Ya veo que todavía permiten a los rudos humanos arrastrarse fuera de sus agujeros hasta aquí, entre la gente civilizada. Supongo que hay cosas que nunca cambian.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 161 // from:
  SAY #50401 /* ~¿Puede ser esto, señor? Pensé por un instante que quizás os hubiesen robado vuestro anillo... pero aquí está. Tomadlo.~ */
  IF ~~ THEN EXTERN ~GNOBLEM2~ 8
END

IF ~~ THEN BEGIN 162 // from:
  SAY #51483 /* ~Seguramente los gnomos de las profundidades no tienen trato con los drow. Son seres inofensivos y neutrales. ¡No es necesaria una medida tan drástica para infundirles el miedo que deseáis!~ */
  IF ~~ THEN EXTERN ~UDPHAE01~ 62
END

IF ~~ THEN BEGIN 163 // from:
  SAY #52298 /* ~¡En el nombre de Arvorin! <CHARNAME>, ¿habíais considerado una acción semejante? ¡No voy a soportarlo! ¡Forma parte del mal!~ */
  IF ~!IsValidForPartyDialog("Aerie")~ THEN EXTERN ~FIRKRA02~ 36
  IF ~IsValidForPartyDialog("Aerie")~ THEN EXTERN ~AERIEJ~ 128
END

IF ~~ THEN BEGIN 164 // from:
  SAY #52314 /* ~Muy bien. <CHARNAME>, habéis hecho ya vuestra elección... y es malvada. No voy a tolerarlo.~ */
  IF ~~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~FIRKRA02~ 37
END

IF ~~ THEN BEGIN 165 // from:
  SAY #55191 /* ~Parece que hemos salido victoriosos... pero ha sido demasiado fácil. No tiene sentido de finalidad ni de justicia. ¿Quizás es lo que se siente solo porque se ha acabado?~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 166 // from:
  SAY #55212 /* ~Hemos muerto, por supuesto. Por lógica no debería estar aquí, pero sabía que esto... que esta batalla no había acabado. Sentí que tirabais de mí y acudí gustosa. ¡Mazzy Fentan nunca volvió la espalda a la batalla!~ [MAZZY90] */
  IF ~!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("HaerDalis")
!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Nalia")
!IsValidForPartyDialog("Edwin")~ THEN EXIT
  IF ~IsValidForPartyDialog("Anomen")~ THEN EXTERN ~ANOMENJ~ 258
  IF ~!IsValidForPartyDialog("Anomen")
IsValidForPartyDialog("HaerDalis")~ THEN EXTERN ~HAERDAJ~ 100
  IF ~!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("HaerDalis")
IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~KELDORJ~ 189
  IF ~!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("HaerDalis")
!IsValidForPartyDialog("Keldorn")
IsValidForPartyDialog("Nalia")~ THEN EXTERN ~NALIAJ~ 268
  IF ~!IsValidForPartyDialog("Anomen")
!IsValidForPartyDialog("HaerDalis")
!IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Nalia")
IsValidForPartyDialog("Edwin")~ THEN EXTERN ~EDWINJ~ 95
END

IF ~~ THEN BEGIN 167 // from:
  SAY #55661 /* ~Realmente es una mala reacción si se resiste a cualquier intento por enmendar el daño provocado. A menos que la finalidad fuese realizar el daño...~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 15
END

IF ~~ THEN BEGIN 168 // from:
  SAY #55691 /* ~¡Pirata, una mera disculpa por semejante atrocidad no os vendría mal! Os habéis asociado con los más perversos no muertos, ¡y compartiréis su destino!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 169 // from:
  SAY #55700 /* ~Un hombre ha muerto, posadero, y haríais bien en mostrar algo más que un mero desagrado. Decidnos lo que sabéis de la muerte de este hombre. ¿Quién es el culpable?~ */
  IF ~~ THEN EXTERN ~PPINN01~ 6
END

IF ~~ THEN BEGIN 170 // from:
  SAY #55702 /* ~Vuestros guardianes han tomado una senda a la que pronto os uniréis, so estúpida. Vuestros días de especulación han llegado a su fin... ¡Es hora de que paguéis por vuestros crímenes!~ */
  IF ~~ THEN EXTERN ~PIRMUR01~ 4
END

IF ~~ THEN BEGIN 171 // from:
  SAY #55723 /* ~Ayudaría a este hombre si tuviese el don de la sanación con mis manos. Creo que toda esta locura es solo producto de mi mente.~ */
  IF ~!IsValidForPartyDialogue("KELDORN")~ THEN EXIT
  IF ~IsValidForPartyDialogue("KELDORN")~ THEN EXTERN ~KELDORJ~ 194
END

IF ~~ THEN BEGIN 172 // from:
  SAY #55795 /* ~<CHARNAME>, no comprendo por qué continuáis haciendo tratos con este canalla. Me imagino que no nos necesitará cuando tenga su nuevo barco. Vigiladlo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 173 // from:
  SAY #55829 /* ~Mmpf. ¿Tenemos que escuchar esto? ¿Realmente piensan que no comprendemos que están hablando de comernos? ¡Bárbaros!~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 37
END

IF ~~ THEN BEGIN 174 // from:
  SAY #55848 /* ~Paladín, yo tengo poco en común con estos salvajes. Pero no siento el odio que vos sentís hacia ellos... ¿Seguro que no creéis que todos son malvados sin excepción?~ */
  IF ~~ THEN EXTERN ~KELDORJ~ 199
END

IF ~~ THEN BEGIN 175 // from:
  SAY #55910 /* ~¿Qué? ¡<CHARNAME>, si hubiese sabido que erais capaz de semejante acto, os hubiese matado hace mucho! ¡Rectificaré mi error ahora!~ */
  IF ~OR(2)
!IsValidForPartyDialog("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")~ THEN DO ~ChangeAIScript("",DEFAULT)
ChangeAIScript("wtarsgt",GENERAL)
ChangeAIScript("mazzyx",CLASS)
LeaveParty()
Enemy()~ EXTERN ~UDDEMON~ 22
  IF ~IsValidForPartyDialog("Anomen")
Alignment("Anomen",LAWFUL_GOOD)~ THEN DO ~ChangeAIScript("",DEFAULT)
ChangeAIScript("wtarsgt",GENERAL)
ChangeAIScript("mazzyx",CLASS)
LeaveParty()
Enemy()~ EXTERN ~ANOMENJ~ 271
  IF ~OR(2)
!IsValidForPartyDialog("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
IsValidForPartyDialog("Jaheira")~ THEN DO ~ChangeAIScript("",DEFAULT)
ChangeAIScript("wtarsgt",GENERAL)
ChangeAIScript("mazzyx",CLASS)
LeaveParty()
Enemy()~ EXTERN ~JAHEIRAJ~ 470
  IF ~OR(2)
!IsValidForPartyDialog("Anomen")
!Alignment("Anomen",LAWFUL_GOOD)
!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Minsc")~ THEN DO ~ChangeAIScript("",DEFAULT)
ChangeAIScript("wtarsgt",GENERAL)
ChangeAIScript("mazzyx",CLASS)
LeaveParty()
Enemy()~ EXTERN ~MINSCJ~ 170
END

IF ~~ THEN BEGIN 176 // from:
  SAY #55941 /* ~¡Pfeh! ¿Ahora matamos svirfneblin? ¿Por qué razón? No hay ningún gran demonio aquí desde que Solaufein se fue.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 177 // from:
  SAY #55964 /* ~Yo... no había oído nada de este drow ni de sus supuestas buenas acciones. Rezo para que estéis en lo cierto, <CHARNAME>, drow o no...~ */
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Viconia")~ THEN EXIT
  IF ~IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 474
  IF ~!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ 172
  IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Viconia")~ THEN EXTERN ~VICONIJ~ 146
END

IF ~~ THEN BEGIN 178 // from:
  SAY #56032 /* ~Se tiene en cuenta. Gracias.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 179 // from:
  SAY #56079 /* ~¿Haer'Dalis? ¿Es apropiado su comportamiento?~ */
  IF ~~ THEN EXTERN ~HAERDAJ~ 121
END

IF ~~ THEN BEGIN 180 // from:
  SAY #56109 /* ~¡Arvorin me otorga su fuerza para que hoy pueda enmendar una grave injusticia! ¡Resistiré en el Infierno contra esta maldad y no caeré derrotada!~ [MAZZY89] */
  IF ~!IsValidForPartyDialog("Valygar")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")
!IsValidForPartyDialog("Imoen2")~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut85c")
~ EXIT
  IF ~IsValidForPartyDialog("Valygar")~ THEN EXTERN ~VALYGARJ~ 90
  IF ~!IsValidForPartyDialog("Valygar")
IsValidForPartyDialog("Jaheira")~ THEN EXTERN ~JAHEIRAJ~ 482
  IF ~!IsValidForPartyDialog("Valygar")
!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Minsc")~ THEN EXTERN ~MINSCJ~ 179
  IF ~!IsValidForPartyDialog("Valygar")
!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Minsc")
IsValidForPartyDialog("Imoen2")~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 181 // from:
  SAY #56139 /* ~¡No sostendría el título de paladín si permitiera que estas cosas pasasen! ¡Espero no ser la única que quiere poner fin a este asesinato!~ */
  IF ~~ THEN REPLY #56140 /* ~¿Os oponéis a mi? ¡Qué gracia! He tomado esta decisión. ¡Que es la que debía tomar!~ */ DO ~SetGlobal("SvirHostile","GLOBAL",1)
ChangeAIScript("",DEFAULT)
ChangeAIScript("wtarsgt",GENERAL)
ChangeAIScript("mazzyx",CLASS)
LeaveParty()
Enemy()
ActionOverride("Aerie",ChangeAIScript("",DEFAULT))
ActionOverride("Aerie",ChangeAIScript("aeriex",CLASS))
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())~ SOLVED_JOURNAL #57768 /* ~Asuntos del poblado svirfneblin.

He hablado con Oroander Roquemada, señor del poblado svirfneblin. Su pomposo título ha revelado la superflua naturaleza de sus necesidades. Me ha hablado de un método para entrar en la ciudad drow: solicitando la ayuda de Ádalon, una poderosa criatura que se encuentra la base de la gran escalera. Oroander quería que primero realizara un servicio para su poblado derrotando a alguna criatura que habían desenterrado. Como recompensa me había garantizado que podría llegar hasta Ádalon, dándome una piedra luminosa o algo parecido, para así poder atravesar la oscuridad que protege su guarida. He acabado con ese medio hombre y con todos los que se han interpuesto en mi camino.~ */ EXIT
  IF ~~ THEN REPLY #56141 /* ~Oh, vale. Les ayudaré.~ */ EXTERN ~UDSVIR03~ 26
END

IF ~~ THEN BEGIN 182 // from:
  SAY #56238 /* ~Habéis hecho un valiente intento para redimirlo. No pueden culparos por intentarlo.~ */
  IF ~~ THEN EXTERN ~SUDEMIN~ 23
END

IF ~~ THEN BEGIN 183 // from:
  SAY #56415 /* ~¿Hay algo más que pueda hacer? Lucharé contra el mal hasta el final, pero... hemos luchado esta batalla antes y fuimos derrotados.~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 46
END

IF ~~ THEN BEGIN 184 // from:
  SAY #56438 /* ~¿Qué? No, mi buen alcalde... ignorad a este patán. Si dinero es todo lo que desea, la armadura se puede vender a buen precio. Me disculpo en su nombre.~ ~¿Qué? No, mi buen alcalde... ignorad a esta patana. Si dinero es todo lo que desea, la armadura se puede vender a buen precio. Me disculpo en su nombre.~ */
  IF ~~ THEN EXTERN ~UHMAY01~ 142
END

IF ~~ THEN BEGIN 185 // from:
  SAY #56454 /* ~¡Esta... esta gente no desea luchar aunque lo haga! ¡Sus mentes están esclavizadas por un hechizo! ¡Si al menos pudiéramos hacer algo para evitar su muerte!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 186 // from:
  SAY #56520 /* ~<CHARNAME>, no seáis zoquete. Aunque estéis bromeando, este pobre hombre está demasiado asustado para ver la diferencia.~ */
  IF ~~ THEN EXTERN ~DALESON~ 14
END

IF ~~ THEN BEGIN 187 // from:
  SAY #56541 /* ~Esa mujer puede con la paciencia de cualquiera. No me extraña que los troll no se la comieran... sin duda debe saber tan agria como aparenta. Aah... ¿He dicho eso?~ */
  IF ~!IsValidForPartyDialog("Viconia")
!IsValidForPartyDialog("Korgan")
!IsValidForPartyDialog("Yoshimo")~ THEN EXIT
  IF ~IsValidForPartyDialog("Viconia")~ THEN EXTERN ~VICONIJ~ 169
  IF ~!IsValidForPartyDialog("Viconia")
IsValidForPartyDialog("Korgan")~ THEN EXTERN ~KORGANJ~ 169
  IF ~!IsValidForPartyDialog("Viconia")
!IsValidForPartyDialog("Korgan")
IsValidForPartyDialog("Yoshimo")~ THEN EXTERN ~YOSHJ~ 96
END

IF ~~ THEN BEGIN 188 // from:
  SAY #56905 /* ~No creo que sea el momento para eso. Estamos en una misión sagrada.~ */
  IF ~!IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~ARAN~ 54
  IF ~IsValidForPartyDialogue("JAHEIRA")~ THEN EXTERN ~JAHEIRAJ~ 508
END

IF ~~ THEN BEGIN 189 // from:
  SAY #57382 /* ~No... no lo hará. Id a las puertas... decidles que estáis en una misión para Veldrin. Al menos de esa manera tendréis una oportunidad. Rezaré por vosotros.~ */
  IF ~Global("DrowSlavesFree","GLOBAL",1)~ THEN EXTERN ~DASLAVE1~ 7
  IF ~Global("DrowSlavesFree","GLOBAL",2)~ THEN EXTERN ~DASLAVE1~ 8
END

IF ~~ THEN BEGIN 190 // from:
  SAY #57654 /* ~<CHARNAME>, ¿estáis bien? Oh, me gustaría tener la habilidad de imponer las manos. Podría ver vuestra enfermedad si así fuera.~ */
  IF ~~ THEN REPLY #57655 /* ~Sí, bien, si desarrolláis alguna habilidad útil, seguro que os llamaré. Dejadme.~ */ GOTO 191
  IF ~~ THEN REPLY #57656 /* ~No os preocupéis. Estaré bien en un momento.~ */ GOTO 192
  IF ~~ THEN REPLY #57657 /* ~Agradezco vuestro interés, pero no creo que este malestar se cure inmediatamente.~ */ GOTO 193
END

IF ~~ THEN BEGIN 191 // from: 190.0
  SAY #57658 /* ~Eso no es necesario. Dirigiré mis esfuerzos a otra parte si ese es vuestro deseo. Quejaos todo lo que queráis, yo miraré a otro lado... a menos que penséis que es serio.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 192 // from: 190.1
  SAY #57659 /* ~Sí, vuestros poderes de recuperación son grandes, aunque una crisis espiritual es más difícil de tratar. Cuidaos, <CHARNAME>, debemos vigilar cualquier efecto secundario que pueda haber.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 193 // from: 190.2
  SAY #57660 /* ~Muchas son las razones por las que debemos mantener la atención. Desconocemos los efectos que puede traer el ritual consigo. <CHARNAME>, sed prudente y vigilad atentamente vuestra salud.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 194 // from:
  SAY #57727 /* ~¡Por todos los dioses! Puede que no sea un paladín, ¡pero he estudiado lo suficiente como para saber qué es la maldad y qué no! ¿Aquello era... el avatar de Bhaal?~ */
  IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 195 // from: 194.0
  SAY #57728 /* ~¡Os habéis convertido en la esencia de Bhaal! ¡Un avatar del Asesino! ¡<CHARNAME>, un poder semejante no es apto para los mortales!~ */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from: 195.0
  SAY #57729 /* ~Si no os recuperáis... no sé qué pasará. Si os posee a menudo... estaréis perdido.~ ~Si no os recuperáis... no sé qué pasará. Si os posee a menudo... estaréis perdida.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 197 // from:
  SAY #58168 /* ~No tengo ningún interés en aliarme con los Ladrones de las Sombras, pero visto que no hay otra oportunidad. Estamos atrapados entre un demonio pequeño que sí conocemos y entre otro mayor que desconocemos.~ */
  IF ~!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("KORGAN")~ THEN EXIT
  IF ~IsValidForPartyDialogue("MINSC")~ THEN EXTERN ~MINSCJ~ 206
  IF ~IsValidForPartyDialogue("ANOMEN")
!IsValidForPartyDialogue("MINSC")~ THEN EXTERN ~ANOMENJ~ 298
  IF ~IsValidForPartyDialogue("KORGAN")
!IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("ANOMEN")~ THEN EXTERN ~KORGANJ~ 183
END

IF ~~ THEN BEGIN 198 // from:
  SAY #58169 /* ~Vos, y toda esta gente, no tenéis ningún derecho de hablar de estas cosas. Al menos yo sirvo al dios supremo, mientras que vos habéis perdido todas vuestras creencias posiblemente al nacer.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 182
END

IF ~~ THEN BEGIN 199 // from:
  SAY #58172 /* ~Ahora que mis viejos amigos pueden estar en las mazmorras del Señor de las sombras no puedo abandonaros, <CHARNAME>. Permaneceré digna... hasta la muerte.~ */
  IF ~True()~ THEN EXTERN ~PLAYER1~ 53
  IF ~IsValidForPartyDialog("Anomen")
Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 52
  IF ~IsValidForPartyDialog("Aerie")
Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 51
  IF ~IsValidForPartyDialog("Viconia")
Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 50
  IF ~IsValidForPartyDialog("Jaheira")
Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 49
  IF ~IsValidForPartyDialog("Anomen")
!Global("AnomenRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 48
  IF ~IsValidForPartyDialog("Aerie")
!Global("AerieRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 47
  IF ~IsValidForPartyDialog("Viconia")
!Global("ViconiaRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 46
  IF ~IsValidForPartyDialog("Jaheira")
!Global("JaheiraRomanceActive","GLOBAL",2)~ THEN EXTERN ~PLAYER1~ 45
  IF ~IsValidForPartyDialog("Cernd")~ THEN EXTERN ~PLAYER1~ 44
  IF ~IsValidForPartyDialog("Nalia")~ THEN EXTERN ~PLAYER1~ 43
  IF ~IsValidForPartyDialog("Korgan")~ THEN EXTERN ~PLAYER1~ 42
  IF ~IsValidForPartyDialog("Keldorn")~ THEN EXTERN ~PLAYER1~ 41
  IF ~IsValidForPartyDialog("HaerDalis")~ THEN EXTERN ~PLAYER1~ 40
  IF ~IsValidForPartyDialog("Edwin")~ THEN EXTERN ~PLAYER1~ 39
  IF ~IsValidForPartyDialog("Jan")~ THEN EXTERN ~PLAYER1~ 38
END

IF ~~ THEN BEGIN 200 // from:
  SAY #58517 /* ~¡Hechicero, no somos tontos! ¡Ninguno de nosotros! ¡El explorador nunca será vuestro y vuestra estúpida magia no nos va a intimidar!~ */
  IF ~~ THEN EXTERN ~TOLGER~ 81
END

IF ~~ THEN BEGIN 201 // from:
  SAY #58751 /* ~No... no sé cómo responder a este tipo de traición, Yoshimo. Pensaba que el mal al que debía enfrentarme estaba más... definido.~ */
  IF ~!IsValidForPartyDialogue("JAN")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("MINSC")~ THEN EXTERN ~YOSHJ~ 114
  IF ~IsValidForPartyDialogue("JAN")~ THEN EXTERN ~JANJ~ 182
  IF ~IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")~ THEN EXTERN ~VALYGARJ~ 119
  IF ~IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")~ THEN EXTERN ~HAERDAJ~ 150
  IF ~IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")~ THEN EXTERN ~CERNDJ~ 137
  IF ~IsValidForPartyDialogue("MINSC")
!IsValidForPartyDialogue("CERND")
!IsValidForPartyDialogue("HAERDALIS")
!IsValidForPartyDialogue("VALYGAR")
!IsValidForPartyDialogue("JAN")~ THEN EXTERN ~MINSCJ~ 211
END

IF WEIGHT #18 ~Global("GorfWonFight","GLOBAL",1)
Global("MazzyLamentsFight","LOCALS",1)~ THEN BEGIN 202 // from:
  SAY #61231 /* ~Bah... es evidente que hasta el más bruto y zafio vencerá al virtuoso. Ya veo que debo recordar esto y ser más lista la próxima vez.~ */
  IF ~~ THEN DO ~SetGlobal("MazzyLamentsFight","LOCALS",2)~ EXIT
END

IF WEIGHT #19 ~Global("MazzyWonFight","GLOBAL",1)
Global("MazzyLamentsFight","LOCALS",1)~ THEN BEGIN 203 // from:
  SAY #61232 /* ~Ya está. La virtud ha triunfado, por una vez... y espero que la lección haya penetrado en el cráneo de este gañan. Vamos, <CHARNAME>... salgamos de este tosco lugar.~ */
  IF ~~ THEN DO ~SetGlobal("MazzyLamentsFight","LOCALS",2)
AddExperienceParty(5000)~ EXIT
END

IF ~~ THEN BEGIN 204 // from:
  SAY #70523 /* ~Aunque la tarea pueda parecer desagradable, amigo mío, la solución parece bastante simple. ¿Por qué no entrar directamente en esas mazmorras y destruir a todos los monstruos que allí se encuentren?~ */
  IF ~~ THEN EXTERN ~GORODR1~ 12
END

IF ~~ THEN BEGIN 205 // from:
  SAY #70533 /* ~Siempre procuro ver lo mejor de las personas, pero esto ya es demasiado. *Sabíais* a lo que nos enfrentábamos. ¡Nos habéis engañado, todos vosotros!~ */
  IF ~~ THEN EXTERN ~GORODR1~ 35
END

IF ~~ THEN BEGIN 206 // from:
  SAY #70434 /* ~¡Cuánto honor, <CHARNAME>; ni siquiera la muerte puede romper el juramento de este noble caballero! ¡Quizá algún día nosotros seamos tan dignos como él!~ */
  IF ~~ THEN EXTERN ~FSSPIR2~ 2
  IF ~  IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 46
  IF ~  IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 187
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 535
END

IF ~~ THEN BEGIN 207 // from:
  SAY #74616 /* ~¡La maldad de este semiorco mancilla el mundo! Arvorin sonreirá a aquellos que se opongan a él.~ */
  IF ~~ THEN REPLY #74617 /* ~Opinamos lo mismo, Mazzy.~ */ EXTERN ~DORN~ 30
END

IF WEIGHT #21 ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 208 // from:
  SAY #75726 /* ~Pensándolo bien, prefiero tener mis pies en el suelo que a cientos de metros sobre él.~ */
  IF ~  !IfValidForPartyDialogue("minsc")
!IfValidForPartyDialogue("valygar")
!IfValidForPartyDialogue("viconia")
!IfValidForPartyDialogue("dorn")
!IfValidForPartyDialogue("neera")
!IfValidForPartyDialogue("hexxat")
~ THEN REPLY #75727 /* ~Cuidado, Mazzy. Podríais encontraros en el suelo antes de lo que os gustaría.~ */ DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
~ EXIT
  IF ~  !IfValidForPartyDialogue("minsc")
!IfValidForPartyDialogue("valygar")
!IfValidForPartyDialogue("viconia")
!IfValidForPartyDialogue("dorn")
!IfValidForPartyDialogue("neera")
IfValidForPartyDialogue("hexxat")
~ THEN REPLY #75727 /* ~Cuidado, Mazzy. Podríais encontraros en el suelo antes de lo que os gustaría.~ */ EXTERN ~HEXXATJ~ 2
  IF ~  !IfValidForPartyDialogue("minsc")
!IfValidForPartyDialogue("valygar")
!IfValidForPartyDialogue("viconia")
!IfValidForPartyDialogue("dorn")
IfValidForPartyDialogue("neera")
~ THEN REPLY #75727 /* ~Cuidado, Mazzy. Podríais encontraros en el suelo antes de lo que os gustaría.~ */ EXTERN ~NEERAJ~ 15
  IF ~  !IfValidForPartyDialogue("minsc")
!IfValidForPartyDialogue("valygar")
!IfValidForPartyDialogue("viconia")
IfValidForPartyDialogue("dorn")
~ THEN REPLY #75727 /* ~Cuidado, Mazzy. Podríais encontraros en el suelo antes de lo que os gustaría.~ */ EXTERN ~DORNJ~ 502
  IF ~  !IfValidForPartyDialogue("minsc")
!IfValidForPartyDialogue("valygar")
IfValidForPartyDialogue("viconia")
~ THEN REPLY #75727 /* ~Cuidado, Mazzy. Podríais encontraros en el suelo antes de lo que os gustaría.~ */ EXTERN ~VICONIJ~ 410
  IF ~  !IfValidForPartyDialogue("minsc")
IfValidForPartyDialogue("valygar")
~ THEN REPLY #75727 /* ~Cuidado, Mazzy. Podríais encontraros en el suelo antes de lo que os gustaría.~ */ EXTERN ~VALYGARJ~ 128
  IF ~  IfValidForPartyDialogue("minsc")
~ THEN REPLY #75727 /* ~Cuidado, Mazzy. Podríais encontraros en el suelo antes de lo que os gustaría.~ */ EXTERN ~MINSCJ~ 252
END

IF ~~ THEN BEGIN 209 // from:
  SAY #89490 /* ~La lengua inteligible y el sentido del honor compensan con creces la baja estatura y la falta de... pelaje.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 210 // from:
  SAY #87846 /* ~Vuestra ira es justa, maga salvaje, pero no permitáis que el deseo de venganza nuble vuestro juicio.~ */
  IF ~~ THEN EXIT
  IF ~  IfValidForPartyDialogue("VALYGAR")
~ THEN EXTERN ~VALYGARJ~ 132
  IF ~  IfValidForPartyDialogue("Dorn")
~ THEN EXTERN ~DORNJ~ 828
END


IF ~~ THEN BEGIN P_1 // from:
  SAY @3105/* ~No estoy de acuerdo con esto, Dusk... pero supongo que si no los aniquilamos ahora, estos humanoides bien podrían hacer daño a inocentes.~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskMatMission2","GLOBAL",7)~ EXTERN ~P_FALON~ 3
END