
BEGIN ~MINSCJ~

IF ~  ReputationGT(Player1,13)
Global("MinscGoodRep","LOCALS",0)
~ THEN BEGIN 0 // from:
  SAY #2632 /* ~Hemos hecho buenas cosas aquí. Todos nos recordarán como héroes: a Minsc, a Bubú y a vosotros.~ [MINSC78] */
  IF ~~ THEN REPLY #2644 /* ~Minsc, no haremos amigos con vos jactándoos de lo heroicos que somos.~ */ GOTO 3
  IF ~~ THEN REPLY #2645 /* ~No os falta razón, Minsc. Solo cosas buenas pueden salir del ejemplo que hemos dado.~ */ GOTO 2
  IF ~~ THEN REPLY #2646 /* ~Er, sí. Ahora, sigamos adelante, antes de que nos detenga una multitud. No hay necesidad de hacer alarde de nuestras hazañas.~ */ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.2
  SAY #2648 /* ~¡No tiene sentido! Todos disfrutan viendo a los héroes. ¡Seremos la comidilla del pueblo durante días! Saludad a las buenas gentes, Bubú. Saludad al buen hámster, gente. ¡Saludadle!~ */
  IF ~~ THEN DO ~SetGlobal("MinscGoodRep","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #2650 /* ~¡Sí! ¡Seguid el sendero del mal, y un día ya no necesitaremos patear a aquellos que se alejan del bien por el estiércol y la hiel de los malignos, que dejan grandes huellas sanguinolentas en nuestro camino, blanco como la nieve! ¡Bubú hará virutas de vosotros, malvados bastardos!~ */
  IF ~~ THEN REPLY #2668 /* ~Vaaaaaaleeee.~ */ DO ~SetGlobal("MinscGoodRep","LOCALS",1)
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.0
  SAY #2651 /* ~¡El bien no necesita de la discreción! ¡No hay que avergonzarse de alardear de lo que uno ha cumplido, y no voy a bajar la voz! ¡Quizás Bubú sí, pero yo no!~ */
  IF ~~ THEN DO ~SetGlobal("MinscGoodRep","LOCALS",1)
~ EXIT
END

IF ~  ReputationGT(Player1,15)
Global("MinscGoodRep2","LOCALS",0)
~ THEN BEGIN 4 // from:
  SAY #2669 /* ~¡Estamos siguiendo la senda que lleva hacia la gloria! Bubú está orgulloso de estar aquí, os lo aseguro.~ [MINSC79] */
  IF ~~ THEN REPLY #2670 /* ~Esto no merece tanto alboroto, Minsc. Es un simple y anónimo acto de caridad.~ */ DO ~SetGlobal("MinscGoodRep2","LOCALS",1)
~ GOTO 5
  IF ~~ THEN REPLY #2671 /* ~¡Y no me extraña! ¡Somos el modelo de bondad sobre el que otros deben medirse!~ */ DO ~SetGlobal("MinscGoodRep2","LOCALS",1)
~ GOTO 6
  IF ~~ THEN REPLY #2672 /* ~No estoy intentando complacer a vuestro roedor. Hago esto porque me beneficiará a largo plazo.~ */ DO ~SetGlobal("MinscGoodRep2","LOCALS",1)
~ GOTO 7
  IF ~~ THEN REPLY #2673 /* ~Minsc, ¿habéis considerado usar magia sanadora para esa cabeza que os ha quedado?~ */ DO ~SetGlobal("MinscGoodRep2","LOCALS",1)
~ GOTO 8
END

IF ~~ THEN BEGIN 5 // from: 4.0
  SAY #2674 /* ~¡Entonces, decidlo más alto! ¡Debemos provocar temor en los malvados! Las discretas historias de los hámsteres no valen nada, pero ¿qué hay de un hombre y su hámster, que arrancan miembro tras miembro? ¡Es espeluznante!~ */
  IF ~~ THEN REPLY #2675 /* ~¡Ayudo solo porque me sale rentable! ¡No viajo haciendo obras de caridad!~ */ GOTO 8
  IF ~~ THEN REPLY #2679 /* ~Eeeh, sí, aunque no creo que asustéis tanto como os imagináis.~ */ GOTO 9
  IF ~~ THEN REPLY #2680 /* ~¿Cómo puedo escapar de este espectáculo circense?~ */ GOTO 10
  IF ~~ THEN REPLY #2681 /* ~Aah, por todos los demonios. ¡De acuerdo, Minsc! ¡Marcaremos nuestras hazañas en las orejas que guardaremos de los malvados y nos abriremos paso hasta el Festival de la Luna!~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.3 4.1
  SAY #2676 /* ~¡Ahora estáis hablando el idioma de Minsc! ¡Lo único que os falta es conseguir un hámster! O quizás una comadreja de las nieves, lo que más os guste.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 7 // from: 4.2
  SAY #2677 /* ~Me alegra saber que bromeabais. Odiaría tener que extirpar el mal dentro de mi propio grupo. Siempre hay que estar en el lado bueno de la bota de la justicia.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.0 4.3
  SAY #2678 /* ~Sé que pienso con claridad porque Bubú me lo ha dicho. Eso es suficiente para mí, aunque nunca parece suficiente para nadie más. Ellos se lo pierden, porque estoy satisfecho.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 9 // from: 5.1
  SAY #2682 /* ~Con tal de que algunos se asusten y se lo digan al resto, eso es todo lo que importa. Vamos, tenemos que cargar contra la ola de maldad. Vigilad por dónde ponéis los pies.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 10 // from: 5.2
  SAY #2683 /* ~No entiendo a qué os referís, pero a Bubú le ha divertido. Un augurio de cosas buenas... o de una muerte horrible pero divertida, no estoy seguro.~ */
  IF ~~ THEN GOTO 231
END

IF ~  ReputationGT(Player1,18)
Global("MinscGoodRep3","LOCALS",0)
~ THEN BEGIN 11 // from:
  SAY #2684 /* ~¡Estos actos de valor nos dejarán un puesto en las canciones de juglares y bardos de aquí a mi hogar, sin duda!~ [MINSC80] */
  IF ~~ THEN DO ~SetGlobal("MinscGoodRep3","LOCALS",1)
~ EXIT
END

IF ~  ReputationLT(Player1,7)
Global("MinscBadRep","LOCALS",0)
~ THEN BEGIN 12 // from:
  SAY #2685 /* ~¡No toleraré más actos como este! ¡Deberíamos esforzarnos por ser rectos y honorables!~ [MINSC81] */
  IF ~~ THEN DO ~SetGlobal("MinscBadRep","LOCALS",1)
~ EXIT
END

IF ~  ReputationLT(Player1,3)
Global("MinscBadRep2","LOCALS",0)
~ THEN BEGIN 13 // from:
  SAY #2689 /* ~Cuando quiero hacer una gloriosa tortilla de bondad, soy consciente de que hay que romper algunos huevos. Pero acciones como esta son, simplemente, deplorables.~ [MINSC82] */
  IF ~~ THEN REPLY #2690 /* ~¿Pensáis antes de hablar, o es que vuestras palabras salen como buenamente pueden?~ */ DO ~SetGlobal("MinscBadRep2","LOCALS",1)
~ GOTO 14
  IF ~~ THEN REPLY #2691 /* ~Tenéis razón, Minsc. Trataré de ser más amable con la gente. Sí, lo intentaré.~ */ DO ~SetGlobal("MinscBadRep2","LOCALS",1)
~ GOTO 15
  IF ~~ THEN REPLY #2692 /* ~Ha sido un lapsus momentáneo, aunque empiezo a ver cómo esto podría dar beneficios.~ */ DO ~SetGlobal("MinscBadRep2","LOCALS",1)
~ GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #2693 /* ~Las palabras son solo aire sonoro. Los actos deben tener prioridad en mi mente. Una frase podría causar alguna molestia, pero son las buenas acciones las que infligen mayor dolor al mal.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 15 // from: 13.1
  SAY #2694 /* ~Eso es todo lo que se puede pedir. Una cruzada sería mejor, pero pocos tienen la concentración necesaria. Seré el ejemplo si cualquiera desea seguir mi camino.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 16 // from: 13.2
  SAY #2695 /* ~Un héroe no necesita beneficios. Una espada solo vale unas monedas; la armadura, algo más. No, es el mal el que necesita oro para costear sus maquinaciones, no los héroes.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("MinscComplain","LOCALS",0)
HPLT(Myself,20)
Global("MinscInjured","LOCALS",0)
~ THEN BEGIN 17 // from:
  SAY #2696 /* ~Yo... quizá podría descansar un poquito, para luego no tener que dejar a Bubú en el campo de batalla. ¿Hay algún sanador por aquí?~ [MINSC83] */
  IF ~~ THEN REPLY #2697 /* ~Aguantad, compadre. Os curaremos lo más pronto posible.~ */ DO ~SetGlobal("MinscInjured","LOCALS",1)
~ GOTO 18
  IF ~~ THEN REPLY #2698 /* ~¡Aguantad! ¡Nunca me habría imaginado que el gran y poderoso Minsc era tan quejica!~ */ DO ~SetGlobal("MinscInjured","LOCALS",1)
~ GOTO 19
  IF ~~ THEN REPLY #2699 /* ~Debéis tener paciencia, Minsc. No siempre estamos en el mejor momento para detenernos a curaros.~ */ DO ~SetGlobal("MinscInjured","LOCALS",1)
~ GOTO 20
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #2700 /* ~Sí, eso sería lo mejor. No me gustaría que el mal saltara sobre la espalda de un Minsc debilitado. Debemos estar en perfectas condiciones para la lucha que se avecina.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.1
  SAY #2701 /* ~¡Minsc no es un quejica! ¡He sobrevivido a más batallas de lo que podríais soportar! ¡Es que no es inteligente dejar las heridas sin tratar! ¡Los enemigos se encontrarán con la mitad de su trabajo hecho!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.2
  SAY #2702 /* ~Lo sé, pero es algo que preocupa a Bubú.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("MinscComplain","LOCALS",0)
HPLT(Myself,20)
Global("MinscInjured","LOCALS",1)
~ THEN BEGIN 21 // from:
  SAY #2703 /* ~Debemos descansar y recuperarnos. No nos ayudará el que nos cojan con Minsc estando así.~ [MINSC84] */
  IF ~~ THEN DO ~SetGlobal("MinscInjured","LOCALS",2)
~ EXIT
END

IF ~  Global("MinscComplain","LOCALS",0)
HPLT(Myself,20)
Global("MinscInjured","LOCALS",2)
~ THEN BEGIN 22 // from:
  SAY #2704 /* ~¡No puedo luchar en tantos combates sin resultar herido! ¿Por qué Minsc está siempre en primera línea recibiendo heridas?~ [MINSC85] */
  IF ~~ THEN REPLY #2707 /* ~¿Sois un extraño monstruo de destrucción que carga por las buenas? Solo es una pregunta.~ */ DO ~SetGlobal("MinscInjured","LOCALS",3)
~ GOTO 23
  IF ~~ THEN REPLY #2708 /* ~Pero habéis retrasado vuestras curas, una tras otra. Ese ha sido un valiente sacrificio, Minsc.~ */ DO ~SetGlobal("MinscInjured","LOCALS",3)
~ GOTO 24
  IF ~~ THEN REPLY #2709 /* ~¿Es que queréis escabulliros de la batalla? Jamás me hubiera imaginado eso de vos.~ */ DO ~SetGlobal("MinscInjured","LOCALS",3)
~ GOTO 25
  IF ~~ THEN REPLY #2711 /* ~Si seguís con esa actitud, me aseguraré de que caigáis en el siguiente combate.~ */ DO ~SetGlobal("MinscInjured","LOCALS",3)
~ GOTO 26
END

IF ~~ THEN BEGIN 23 // from: 22.0
  SAY #2713 /* ~Quizás siempre esté cercano a la lucha, pero modero mi temperamento con sentido común y recapacito acerca de a quién debería atacar. ¿Qué? ¡Yo lo hago! ¿Por qué se ríe Bubú?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.1
  SAY #2717 /* ~¡Si protejo a más gente al estar en primera línea, que así sea! ¡Cargaré al instante, y haré que mis enemigos se arrepientan de haber nacido tan malvados!~ */
  IF ~~ THEN GOTO 234
END

IF ~~ THEN BEGIN 25 // from: 22.2
  SAY #2735 /* ~Si eso es lo que pensáis, es que no conocéis a Minsc. ¡Jamás me escabullo! Bubú sí, pero porque le da miedo que le pisen. ¡A mí no! ¡Yo soy el pie gigantesco que aplasta el pie del malvado!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 26 // from: 22.3
  SAY #2774 /* ~¡Si no os preocupáis por los integrantes de vuestro grupo, entonces me aseguraré de que seáis vos quien caiga en combate! No puedo luchar con semejantes heridas...~ */
  IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 27 // from:
  SAY #2486 /* ~¡Bubú apunta y yo golpeo! Es una relación muy simple, pero efectiva.~ [MINSC49] */
  IF ~~ THEN EXTERN ~BKORGAN~ 23
END

IF ~~ THEN BEGIN 28 // from:
  SAY #3022 /* ~¡Bubú es un buen amigo, y es poderoso en cosas que no podéis llegar a ver! Insultar a Bubú es insultar a todas las pequeñas cositas que se esfuerzan de veras. Oh, y también a Minsc, de paso.~ */
  IF ~~ THEN EXTERN ~BKORGAN~ 24
END

IF ~~ THEN BEGIN 29 // from:
  SAY #14216 /* ~Bubú no es una rata, pequeño. Es un hámster del espacio, y se come los ojos de los niños que le llaman rata.~ */
  IF ~~ THEN EXTERN ~BRAT1~ 1
END

IF ~~ THEN BEGIN 30 // from:
  SAY #14247 /* ~No. Estoy harto de los alfeñiques que intentan robar a Bubú. ¡Largo!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 31 // from:
  SAY #14311 /* ~El estúpido es el que hace estupideces, jovencito. Eso es lo que dice Bubú.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 32 // from:
  SAY #14496 /* ~¡No! ¡Bubú no se come! Bubú es poderoso y sabio, y probablemente tenga bastantes nervios. Esto... ¡y es mi compañero!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 33 // from:
  SAY #14533 /* ~Lo siento. Solo soy para Bubú y para mi bruja.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY #15154 /* ~<CHARNAME> es quien decide si puedo disfrutar de mis licores. Estas espumas tan agradables me marean a veces, pero gracias por el ofrecimiento. Bubú también os lo agradece.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 35 // from:
  SAY #15461 /* ~No estoy impresionado por peleas entre esclavos, ¡pero MACHACARÍA a cualquier oponente que se atreva a enfrentarse a mí!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 36 // from:
  SAY #15959 /* ~¿Venís de Rashemen? Lo recuerdo vívidamente y espero llevar a Bubú a verlo, una vez que haya completado mi dajemma.~ */
  IF ~~ THEN EXTERN ~SHOP03~ 6
END

IF ~~ THEN BEGIN 37 // from:
  SAY #15960 /* ~No. Bubú es mi hámster y mi amigo.~ */
  IF ~~ THEN EXTERN ~SHOP03~ 7
END

IF ~~ THEN BEGIN 38 // from:
  SAY #24851 /* ~¿Sí? ¿Estáis hablando de Minsc?~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 1
END

IF ~~ THEN BEGIN 39 // from:
  SAY #24855 /* ~Bubú dice que semejante esfera no entrará en mi bolsillo. Si no puedo llevarla conmigo, no es una buena compra.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 2
END

IF ~~ THEN BEGIN 40 // from:
  SAY #24858 /* ~Pues sí. Bubú es excepcionalmente inteligente para ser un hámster. Más inteligente que todos los charlatanes de Calimshán.~ */
  IF ~~ THEN EXTERN ~WAYLANE~ 3
END

IF ~~ THEN BEGIN 41 // from:
  SAY #24861 /* ~A veces murmura sobre compañeros hámsteres que os matarán a todos, pero solo porque está un poco malhumorado, así que no os preocupéis. ¿Habéis visto cómo le brillan los ojos? Chsss, deberíamos dejarlo en paz.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 42 // from:
  SAY #25009 /* ~¡Nadie engaña a Minsc! ¡Si alguien se atreviese a tratar de engañarme, le patearé el culo hasta reajustar su sistemas de valores!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY #25370 /* ~¡Yo siempre estoy dispuesto a ayudar a los necesitados! ¡Pondré fin a vuestros problemas de un puntapié!~ */
  IF ~~ THEN EXTERN ~RADEEL~ 6
END

IF ~~ THEN BEGIN 44 // from:
  SAY #25375 /* ~A veces me siento perdido, pero Bubú me dice adónde ir. Bubú señala, ¡y yo golpeo! Bien, Bubú indica el camino y, ¡yo voy! ¡Sí, señor!~ */
  IF ~~ THEN EXTERN ~RADEEL~ 7
END

IF ~~ THEN BEGIN 45 // from:
  SAY #25378 /* ~Bubú lo sabe todo, y está siempre deseoso de ayudar a los demás. Vos... parecéis el tipo de los que le gustan los animales, ¿no? ¿Los roedores en particular?~ */
  IF ~~ THEN EXTERN ~RADEEL~ 8
END

IF ~~ THEN BEGIN 46 // from:
  SAY #25380 /* ~A Bubú no le gustan las ratas. Le ponen muy tenso con sus colas... ¡y no sabéis lo terroríficos que pueden ser hasta que no veis un hámster furioso!~ */
  IF ~~ THEN GOTO 232
END

IF ~~ THEN BEGIN 47 // from:
  SAY #25385 /* ~Sí, Bubú es amigo de todos. Tanta grandeza en un cuerpecito tan pequeño.~ */
  IF ~~ THEN EXTERN ~RADEEL~ 10
END

IF ~~ THEN BEGIN 48 // from:
  SAY #25452 /* ~¿Eh? ¿Estáis hablando conmigo? ¿Cómo sabéis eso?~ */
  IF ~~ THEN EXTERN ~CELVAN~ 1
END

IF ~~ THEN BEGIN 49 // from:
  SAY #25589 /* ~No. No actúo. Lucho, lucho de verdad.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 50 // from:
  SAY #25649 /* ~Lo siento, pequeño mediano.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 51 // from:
  SAY #25686 /* ~¿Por qué este revoltoso mediano salta a mí alrededor? ¿Baila? ¡A Bubú le gusta cuando los medianos bailan!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 52 // from:
  SAY #25807 /* ~Eso está bien. Bubú también os da su enhorabuena.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY #26277 /* ~Puede que me una a vuestra cacería en otro momento, pero Bubú no se siente cómodo con las aves marinas. Es mejor que les ahorre su cólera. ¡Sí, mejor para todos! Pero ahora debo marcharme, amigo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 54 // from:
  SAY #27689 /* ~Bubú no es una mascota, es el mejor compañero de Minsc. Pero parece que le gustáis.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY #29580 /* ~¡Puede que la gente necesite una buena patada en sus partes!~ */
  IF ~~ THEN EXTERN ~PEHLLUS~ 9
END

IF ~~ THEN BEGIN 56 // from:
  SAY #29582 /* ~No, no suelo tener tiempo para leer. ¡Hay demasiado trabajo por hacer!~ */
  IF ~~ THEN EXTERN ~PEHLLUS~ 10
END

IF ~~ THEN BEGIN 57 // from:
  SAY #29662 /* ~¿Por qué? En mi querido Rashemen, si las cosas no funcionan, las estimulamos con un cariñoso revés de productividad.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY #29838 /* ~¡Un juego mental! ¡Minsc sabe la respuesta! ¡La maldad termina en muerte, porque pongo mi pie en su trasero!~ */
  IF ~~ THEN EXTERN ~RIFTG01~ 13
END

IF ~~ THEN BEGIN 59 // from:
  SAY #29839 /* ~Ups. Lo siento.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 60 // from:
  SAY #29854 /* ~¡Es una pregunta estúpida! ¿Quién viaja con vos? ¡Lo hace Minsc! ¿Qué más importa?~ */
  IF ~~ THEN EXTERN ~RIFTG01~ 16
END

IF ~~ THEN BEGIN 61 // from:
  SAY #29857 /* ~Ups... Lo siento, la próxima vez dejaré a Bubú que responda.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 62 // from:
  SAY #30107 /* ~¡No os puedo dar a Bubú, pequeñaja! Pero podéis jugar con él, hacerle cariñitos si queréis.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY #33134 /* ~Bubú no es comestible, <CHARNAME>. ¿Qué os parece si os echo a nuestros pequeños amigos comedores de carne para ver qué tal os sienta? ¿Eh?~ */
  IF ~~ THEN EXTERN ~OBSHAL03~ 4
END

IF ~~ THEN BEGIN 64 // from:
  SAY #38668 /* ~¡Esto no tiene sentido! ¡Uno no se escapa de una mazmorra gracias a un botón! ¡Yo aplastaría el botón y daría una soberana paliza al mago por usar un truco así!~ */
  IF ~~ THEN EXTERN ~AATAQAH~ 23
END

IF ~~ THEN BEGIN 65 // from:
  SAY #38696 /* ~¿Irenicus? ¡Hay un lugar especial en la suela de mi bota para él, y lo rellenaré en el nombre de Dynaheir! ¡Hay que ser muy malvado para encerrar a los espíritus del bosque!~ */
  IF ~~ THEN EXTERN ~IDRYAD2~ 16
END

IF ~~ THEN BEGIN 66 // from:
  SAY #38723 /* ~Odiaría que me olvidaran en una botella. En cierto modo, podría depender del tipo de botella pero, en general, creo que el efecto sería similar. No está bien.~ */
  IF ~~ THEN EXTERN ~LIFE2~ 2
END

IF ~~ THEN BEGIN 67 // from:
  SAY #38764 /* ~¡Debemos ayudar a este niño! Encontraré a quien se llevó a su madre y le enseñaré un cosa o tres sobre decencia, respeto, ¡y a mantener sus manos alejadas de los padres de la gente!~ */
  IF ~~ THEN UNSOLVED_JOURNAL #34112 /* ~Encontrar a la madre del chico dentro de la carpa.

Un chiquillo está perdido fuera del circo mientras que al parecer su madre está atrapada dentro. Veré si aún sigue en su interior.~ */ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY #38774 /* ~¿Magos qué?~ */
  IF ~~ THEN EXTERN ~BYSTAND2~ 17
END

IF ~~ THEN BEGIN 69 // from:
  SAY #38779 /* ~¡No supone ningún riesgo! ¡Al menos mientras nuestras espadas y nuestro valor rebosen como el cáliz de la bondad! ¿Verdad, Bubú?~ */
  IF ~  !IfValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 25
END

IF ~~ THEN BEGIN 70 // from:
  SAY #38911 /* ~¡Protegeré a mi bruja! ¡EL MAL SUFRIRÁ A MANOS DE MINSC Y SU BRUJA! ¡POBRES DE AQUELLOS QUE PONGAN A AERIE EN PELIGRO!~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 32
END

IF ~~ THEN BEGIN 71 // from:
  SAY #38936 /* ~¡<CHARNAME>! ¡Debemos ayudarle! ¡La maldad está justo delante de mí y está pidiendo a gritos una buena patada en el trasero!~ */
  IF ~~ THEN DO ~Attack("SlumsMugger4")
ActionOverride("Mazzy",Attack("SlumsMugger2"))
~ EXIT
END

IF ~~ THEN BEGIN 72 // from:
  SAY #38943 /* ~¡No me quedaré mirando a hombres traficando con esclavos! ¡SENTIRÁN EL FILO DE MI ESPADA, MI BOTA Y MIS PUÑOS! ¡DIRECTO A LOS OJOS, BUBÚ, A LOS OJOS!~ */
  IF ~~ THEN DO ~Attack("SlumsSlaver2")
~ EXIT
END

IF ~~ THEN BEGIN 73 // from:
  SAY #38960 /* ~Mmmmm... La esfera es tremendamente grande para costar solo quinientas monedas de oro. Podría ser una buena ganga. ¿Y bien, Bubú?~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 143
END

IF ~~ THEN BEGIN 74 // from:
  SAY #39182 /* ~¡Iremos a salvar la aldea del niño! ¡Aplastaré al mal! ¡Todo el mal! Por muy pequeño que sea, aun del tamaño de un roedor... aunque eso es más un trabajo para Bubú.~ */
  IF ~  !IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 44
  IF ~  !IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 320
END

IF ~~ THEN BEGIN 75 // from:
  SAY #39270 /* ~¿Lanzan a un hombre a un agujero donde hay una bestia? ¡Es un crimen contra el hombre y la naturaleza! ¡Sentirán mi ira por este atrevimiento!~ */
  IF ~~ THEN DO ~StartCutSceneMode()
StartCutScene("Cut02c")
~ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY #39288 /* ~¿Vamos a liberar a este guerrero y a su pueblo? ¡Esta es una tarea de mucho honor! ¡Seremos grandes héroes, héroes haciendo cosas heroicas que todos verán!~ */
  IF ~~ THEN EXTERN ~HENDAK~ 9
END

IF ~~ THEN BEGIN 77 // from:
  SAY #39353 /* ~¡Este hombre es realmente malvado si hace tales cosas! ¡Las espadas resplandecientes de la bondad deben ser alzadas contra él! ¡La justicia pide un doloroso pero acertado golpe!~ */
  IF ~~ THEN EXTERN ~HENDAK~ 6
END

IF ~~ THEN BEGIN 78 // from:
  SAY #39365 /* ~¡Más niños tratados como esclavos! ¡Bubú hierve de rabia por el mal que se cierne sobre la ciudad como una rápida comadreja! ¡Debemos salvar a los niños, <CHARNAME>, debemos salvarlos!~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~HENDAK~ 24
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 323
  IF ~  !IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 33
END

IF ~~ THEN BEGIN 79 // from:
  SAY #39403 /* ~¡No puede ser! ¡Preferiría que me arrancaran los ojos antes que abatir a animales inocentes! Bueno, tal vez solo un ojo... ¡pero no creáis que por eso estoy menos indignado!~ */
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 87
  IF ~  !IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 51
END

IF ~~ THEN BEGIN 80 // from:
  SAY #39410 /* ~¡No lo haréis! ¡Lucharé para salvar a todas y cada una de las criaturas, enano! ¡El bosque alimenta y nutre, y no dudaré en meteros una vara por el trasero!~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 52
END

IF ~~ THEN BEGIN 81 // from:
  SAY #39411 /* ~¿Por qué? Nunca he conocido una vileza igual, excepto quizá en las grandes ciudades, pero a mí no me toca decidir lo que hoy en día se considera entretenimiento.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 53
END

IF ~~ THEN BEGIN 82 // from:
  SAY #39412 /* ~Vuestra extraña broma no tiene gracia, enano. Os sugiero que os saciéis con pollos en el lugar y momento correctos, y que dejéis tranquilas a las criaturas del bosque.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 83 // from:
  SAY #39419 /* ~¡Si insultáis a <CHARNAME>, estáis insultando a Minsc! ¡Y os vais a llevar una patada en el trasero, ahora!~ */
  IF ~~ THEN DO ~Attack("amalas")
~ EXIT
END

IF ~~ THEN BEGIN 84 // from:
  SAY #39425 /* ~¿Pagáis a perros para que luchen en este repugnante lugar? ¡No os podéis imaginar hasta dónde llega mi ira! ¡Me buscaré otros compañeros verdaderamente heroicos si continuáis con estas atrocidades!~ */
  IF ~~ THEN DO ~ClearAllActions()
SetGlobal("SurlyFight","AR0406",1)
~ EXIT
END

IF ~~ THEN BEGIN 85 // from:
  SAY #39591 /* ~¿Irenicus? Hay un lugar especial en la suela de mi bota para él, ¡y lo rellenaré en el nombre de Dynaheir! ¡Hay que ser muy malvado para encerrar aquí a los espíritus del bosque!~ */
  IF ~~ THEN EXTERN ~IDRYAD2~ 15
END

IF ~~ THEN BEGIN 86 // from:
  SAY #40230 /* ~¿Qué? No, ¡Bubú no es un guante! ¡Bubú es un hámster, y puede ser de todo menos manejable si no lo desea, pequeñaja!~ */
  IF ~~ THEN EXTERN ~ARNGRL01~ 11
END

IF ~~ THEN BEGIN 87 // from:
  SAY #42222 /* ~Aquí cayó un hombre valiente, pero esa no es causa para lanzar insultos a los vivos. Bubú os confortará.~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 341
END

IF ~~ THEN BEGIN 88 // from:
  SAY #44075 /* ~¿El señor de los piratas? Tal nombre no me trae a la cabeza la imagen de la rectitud. Esperad un momento, que Bubú os va echar un vistazo.~ */
  IF ~  !IfValidForPartyDialogue("YOSHIMO")
~ THEN EXTERN ~PPDESH~ 14
  IF ~  IfValidForPartyDialogue("YOSHIMO")
~ THEN EXTERN ~YOSHJ~ 127
END

IF ~~ THEN BEGIN 89 // from:
  SAY #44077 /* ~Bubú se hará pronto una idea de vos. Parecéis más amigable de lo que se esperaría del señor de los piratas. ¿Y dónde está vuestro palo?~ */
  IF ~~ THEN EXTERN ~PPDESH~ 15
END

IF ~~ THEN BEGIN 90 // from:
  SAY #44079 /* ~Vuestro palo. Un pirata como los dioses mandan tiene algo de palo: una pierna, un brazo o... eh... cualquier otra extremidad prescindible. Y un loro.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 16
END

IF ~~ THEN BEGIN 91 // from:
  SAY #44081 /* ~¡De verdad! Como yo tengo a Bubú, vos debéis tener un loro. A Bubú le gustan los loros. Ellos podrían hacer buenas migas.~ */
  IF ~~ THEN EXTERN ~PPDESH~ 17
END

IF ~~ THEN BEGIN 92 // from:
  SAY #44176 /* ~Pequeña Imoen, este es Minsc. Veis, aquí está Bubú... Bubú, parad ya. Es Imoen. Parece un poco... agitada, pero sigue siendo ella.~ */
  IF ~~ THEN GOTO 93
END

IF ~~ THEN BEGIN 93 // from: 92.0
  SAY #44177 /* ~No sé qué va mal. Bubú está muy nervioso. Algo es diferente en Imoen.~ */
  IF ~~ THEN EXTERN ~PPIMOEN~ 1
END

IF ~~ THEN BEGIN 94 // from:
  SAY #47088 /* ~¡Oooh! ¡Esta es la mejor de las noticias! ¿Verdad, Bubú?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 95 // from:
  SAY #48504 /* ~¿Qué? ¿No les da vergüenza comerciar con las vidas de los demás? ¡Mal, os presento a mi fiel espada! ¡Espada, OS PRESENTO AL MAL!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 96 // from:
  SAY #48525 /* ~¡Vaya! ¡Blandir las espadas contra monstruos de gran maldad! ¡Ya puedo sentir a Bubú correteando sin parar por la emoción!~ */
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 97
  IF ~  !IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 41
  IF ~  !IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Yoshimo")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 356
END

IF ~~ THEN BEGIN 97 // from:
  SAY #48526 /* ~¡Claro que es Bubú! ¡Bubú siempre se alegra cuando surgen las oportunidades de realizar hazañas! ¡Machacaremos a esos ogros, haremos felices a los exploradores y a los hámsteres!~ */
  IF ~  !IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 42
  IF ~  !IfValidForPartyDialogue("Yoshimo")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 356
END

IF ~~ THEN BEGIN 98 // from:
  SAY #48559 /* ~Yo... atacaría en el nombre del bien, <CHARNAME>... pero este dragón es tan... tan... ¡No sería de cobardes volver otro día con espadas más grandes!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 99 // from:
  SAY #48585 /* ~¡<CHARNAME>, debemos encontrar al demonio que roba niños y disfraza caballeros de monstruos y patearle el trasero en el nombre del bien! ¡Todos deben ser vengados!~ */
  IF ~  !IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Jan")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 46
  IF ~  !IfValidForPartyDialogue("Edwin")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 41
  IF ~  !IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 57
  IF ~  !IfValidForPartyDialogue("Edwin")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 98
END

IF ~~ THEN BEGIN 100 // from:
  SAY #48615 /* ~¡Esto lo cambia todo! ¡Otro explorador en peligro por culpa de los magos malignos! ¡Hasta Bubú se muere de vergüenza por la tarea que se nos ha encomendado! ¡<CHARNAME>, esto no puede ser!~ */
  IF ~~ THEN EXTERN ~VALYGAR~ 9
END

IF ~~ THEN BEGIN 101 // from:
  SAY #48618 /* ~¡Un hermano de los bosques! ¿Es este el hombre que los magos han mandado que matemos? ¡<CHARNAME>, decidme que eso no es así!~ */
  IF ~~ THEN EXTERN ~VALYGAR~ 2
END

IF ~~ THEN BEGIN 102 // from:
  SAY #48623 /* ~¡No... no nos llevaréis a Bubú y a mí por el mal camino! Nosotros hacemos el bien; ¡somos héroes! ¡Este hombre miente y lucharé con <CHARNAME>!~ */
  IF ~  !IfValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 61
END

IF ~~ THEN BEGIN 103 // from:
  SAY #48624 /* ~¡No! ¡No permitiré que matéis a un hermano del bosque! ¡Os habéis vuelto malvado y he permitido que ocurriera! ¡Pero no seguiré manteniéndome al margen!~ ~¡No! ¡No permitiré que matéis a un hermano del bosque! ¡Os habéis vuelto malvada y he permitido que ocurriera! ¡Pero no seguiré manteniéndome al margen!~ */
  IF ~  !IfValidForPartyDialogue("Aerie")
~ THEN DO ~LeaveParty()
Enemy()
~ EXIT
  IF ~  IfValidForPartyDialogue("Aerie")
ReactionGT(Player1,10)
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~AERIEJ~ 61
  IF ~  IfValidForPartyDialogue("Aerie")
ReactionLT(Player1,11)
~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~AERIEJ~ 60
END

IF ~~ THEN BEGIN 104 // from:
  SAY #48631 /* ~¡Bienvenido, hermano del bosque! Juntos, vos, Bubú y yo marcharemos siempre hacia delante, acabando con el mal a nuestro paso! ¡Pobre del mal!~ */
  IF ~  !IfValidForPartyDialogue("Cernd")
OR(2)
!Global("HiredByCowled","GLOBAL",1)
!IfValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 93
  IF ~  !IfValidForPartyDialogue("Cernd")
Global("HiredByCowled","GLOBAL",1)
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 221
END

IF ~~ THEN BEGIN 105 // from:
  SAY #48713 /* ~¿Yo? No, Bubú nunca permitiría algo así. ¡Mi espada solo puede atravesar firmemente el corazón del mal!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 106 // from:
  SAY #48783 /* ~¿DÓNDE? ¿Dónde hay una rata? Oh, habéis asustado a Bubú con vuestros gritos. ¡Calmaos, Bubú! ¿Veis? Dejamos a la mujer de voz atronadora.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 107 // from:
  SAY #48852 /* ~Snif... ¡Aah! Hasta Bubú titubea ante semejante hedor. Seguramente de este instrumento nunca saldrá música bonita.~ */
  IF ~  !IfValidForPartyDialogue("Aerie")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 70
END

IF ~~ THEN BEGIN 108 // from:
  SAY #48902 /* ~¿Ellos... atacan a este hombre tan divertido? ¿Por qué? ¡Se debe frenar al mal con dosis generosas del canto de mi espada! ¡Vamos, Bubú, a los ojos!~ */
  IF ~  !IfValidForPartyDialogue("Valygar")
~ THEN DO ~Attack("Dennis")
~ EXIT
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN DO ~Attack("Dennis")
~ EXTERN ~VALYGARJ~ 55
END

IF ~~ THEN BEGIN 109 // from:
  SAY #48946 /* ~¡Los héroes del bien no necesitan advertencias! ¡Allá donde pisamos, el mal tiembla a nuestro paso!~ */
  IF ~~ THEN EXTERN ~INSPECT~ 5
END

IF ~~ THEN BEGIN 110 // from:
  SAY #48959 /* ~Hubiese preferido que me hubiese dado una espada. ¡Dad a un hombre un pescado y se lo come en un día, pero enseñad a un hombre a pelear y podréis hacer picadillo al mal!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 111 // from:
  SAY #48968 /* ~¿Quééé? ¿Este es el hombre malvado que roba las pieles? ¡Debe ser detenido! ¡Debe ser detenido o todos los que tengan piel dormirán aterrorizados!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 112 // from:
  SAY #48969 /* ~¡Contestaremos a vuestro ataque, aunque Bubú no le vea sentido!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 113 // from:
  SAY #49023 /* ~¡No entiendo nada de esto, pero si el asesino de Dynaheir ha ido demasiado lejos, Bubú y Minsc acabarán el trabajo con vos!~ */
  IF ~~ THEN EXTERN ~ISHADMT1~ 7
END

IF ~~ THEN BEGIN 114 // from:
  SAY #49269 /* ~¡No necesitamos dinero para encontrar a Imoen! ¡Machacaremos hechicero tras hechicero hasta encontrarla! Mmm, debemos empezar pronto si queremos terminar para la cena...~ */
  IF ~~ THEN EXTERN ~GAELAN~ 75
END

IF ~~ THEN BEGIN 115 // from:
  SAY #49320 /* ~¡Vos! ¡Me acuerdo de vos! ¡Y Bubú también! ¡Un mago cobarde que viaja con su perverso mediano!~ */
  IF ~~ THEN EXTERN ~LYROS~ 29
END

IF ~~ THEN BEGIN 116 // from:
  SAY #49415 /* ~Bueno, yo nunca ofendo a nadie... excepto por accidente, quizá. ¡Si Bubú quisiera que ofendiera a alguien de verdad, sería mi espada la que se ocuparía de ello!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 117 // from:
  SAY #49474 /* ~¡Os diré lo que sois! ¡Sois un enemigo de la bella Dynaheir, que en paz descanse y, por lo tanto, también sois enemigo mío! ¡Seréis destruido por el bien de todos!~ */
  IF ~~ THEN EXTERN ~EDWIN~ 53
END

IF ~~ THEN BEGIN 118 // from:
  SAY #49479 /* ~¡No os permitiré que habléis de la dulce Dynaheir de ese modo! ¡La terrible justicia de los hámsteres caerá sobre vos! ¡A LOS OJOS, BUBÚ, A...!~ */
  IF ~~ THEN EXTERN ~EDWIN~ 54
END

IF ~~ THEN BEGIN 119 // from:
  SAY #49481 /* ~Yo... no. No, nuestra causa no puede interrumpirse. La furia de la justicia esperará por ahora, ¡pero algún día el mago pagará con sangre por sus palabras! ¡Lo jura Minsc!~ */
  IF ~~ THEN EXTERN ~EDWIN~ 55
END

IF ~~ THEN BEGIN 120 // from:
  SAY #49506 /* ~¡Apenas puedo contener mi ira! ¡Habladnos como si fuéramos cualquier cosa menos héroes, mago, y recibiréis la paliza que os merecéis!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 121 // from:
  SAY #49510 /* ~¿El enemigo de Dynaheir viene con nosotros? ¡Por favor, <CHARNAME>, decidme que no es verdad! ¡Y si es verdad, que sea breve! ¡Bubú se estremece de ira, y no lo culpo!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 122 // from:
  SAY #49554 /* ~¿Ahora hacemos las ofertas de los ladrones? Eh... se me remueve el estómago como un hámster corriendo dentro de una rueda. Esto no puede ser una buena señal, <CHARNAME>.~ */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 148
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 73
END

IF ~~ THEN BEGIN 123 // from:
  SAY #49556 /* ~Rashemen es mi hogar, pero no lo he visto desde hace muchas lunas. Estoy en mi dajemma. Le... fallé a mi última bruja... ¡pero a Aerie no le ocurrirá nada! ¡Nada!~ */
  IF ~~ THEN EXTERN ~QUAYLE~ 30
END

IF ~~ THEN BEGIN 124 // from:
  SAY #49557 /* ~¡No, no lo será! <CHARNAME>, dejad que Minsc y Bubú se arriesguen aquí. No abandonéis a Imoen en este lugar.~ */
  IF ~~ THEN EXTERN ~IMOEN2~ 23
END

IF ~~ THEN BEGIN 125 // from:
  SAY #49579 /* ~¡Envenenado y moribundo! ¡La tragedia retumba en mi cabeza! ¡Debemos apresurarnos y atender a este hombre en un lugar seguro, <CHARNAME>!~ */
  IF ~  !IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 219
  IF ~  !IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 94
END

IF ~~ THEN BEGIN 126 // from:
  SAY #49784 /* ~Un ofrecimiento así de esta mujer me hace sentir escalofríos por toda la columna, como si fueran comadrejas furiosas... pero <CHARNAME> sabrá qué hacer. Hasta Bubú confía en ello.~ */
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~BODHI~ 130
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 59
  IF ~  !IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 88
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 222
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 98
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Anomen")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 76
END

IF ~~ THEN BEGIN 127 // from:
  SAY #49821 /* ~¡Es una opción que no puede ni cuestionarse! ¡<CHARNAME> es un héroe, igual que todos nosotros! ¡Siempre debemos elegir la opción justa!~ ~¡Es una opción que no puede ni cuestionarse! ¡<CHARNAME> es una heroína, igual que todos nosotros! ¡Siempre debemos elegir la opción justa!~ */
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~BODHI~ 131
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 60
  IF ~  !IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 91
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 60
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 100
END

IF ~~ THEN BEGIN 128 // from:
  SAY #49833 /* ~¡No! ¡Decidme que no es así! ¡Ningún héroe comete tales actos! <CHARNAME>, ¡nunca podría volver a mirar a Bubú a los ojos si tomase parte en algo semejante!~ */
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~BODHI~ 132
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 61
  IF ~  !IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 92
END

IF ~~ THEN BEGIN 129 // from:
  SAY #49840 /* ~¡El corazón de mi hámster está destrozado por lo bajo que habéis caído, <CHARNAME>! ¿Cómo es posible? ¡Es culpa mía, toda mía, por haber dejado que ocurra!~ */
  IF ~~ THEN GOTO 130
END

IF ~~ THEN BEGIN 130 // from: 129.0
  SAY #49843 /* ~Debo... debo marcharme para ahogar mis penas. Si os reponéis, estaré en la Corona de Cobre. Parecía un buen lugar para buscar aventuras, ya lo creo.~ */
  IF ~  !IfValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
EscapeAreaMove("AR0406",658,1462,S)
~ EXIT
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
SetGlobal("KickedOut","LOCALS",1)
EscapeAreaMove("AR0406",658,1462,S)
~ EXTERN ~VALYGARJ~ 62
END

IF ~~ THEN BEGIN 131 // from:
  SAY #49847 /* ~¡Eso está mejor! ¡Vayamos a por los secuestradores! ¡Se echarán a temblar con el paso de nuestra furia de justicia! ¡Eso es, Bubú, enseñadles cómo temblarán!~ */
  IF ~  !IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~BODHI~ 57
  IF ~  IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 93
END

IF ~~ THEN BEGIN 132 // from:
  SAY #49856 /* ~¡Atacaremos la guarida de los ladrones y los atravesaremos como si fueran mantequilla! ¡Toda la gloria será nuestra! Y luego desayunaremos.~ */
  IF ~  !IfValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 78
END

IF ~~ THEN BEGIN 133 // from:
  SAY #49871 /* ~¡Los que entierran a los vivos deben ser enterrados por nuestra furia de justicia! ¡Pobres de aquellos que desobedezcan a la justicia! Lo dice Minsc, aunque lo de "pobres de" es cosa de Bubú.~ */
  IF ~  !IfValidForPartyDialogue("Anomen")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 224
END

IF ~~ THEN BEGIN 134 // from:
  SAY #49909 /* ~¿Seríais capaz de hacer prisionera a esta mujer? Bubú no está seguro de que esté bien. Yo estoy de acuerdo con él: huele a un acto de maldad. ¡Sois malo, <CHARNAME>! ¡Malo!~ ~¿Seríais capaz de hacer prisionera a esta mujer? Bubú no está seguro de que esté bien. Yo estoy de acuerdo con él: huele a un acto de maldad. ¡Sois mala, <CHARNAME>! ¡Mala!~ */
  IF ~  !IfValidForPartyDialogue("Edwin")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~EDWINJ~ 81
END

IF ~~ THEN BEGIN 135 // from:
  SAY #49911 /* ~Entonces, ¿la mujer queda libre? ¿Qué necesidad hay de pedir una recompensa al hombre? ¿Acaso no somos héroes, tanto vos como Bubú y yo? Esto es muy confuso.~ */
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 64
  IF ~  !IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 411
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 61
END

IF ~~ THEN BEGIN 136 // from:
  SAY #49968 /* ~Es más peligroso llamar alimaña a Bubú, no sea que os salte encima y os demuestre su verdadero espíritu guerrero. ¡Nada puede contener la furia de un hámster enfadado!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 137 // from:
  SAY #50041 /* ~¡Un ataque a la más repugnante y maligna de las criaturas! ¡Una victoria así nos hará héroes y nos compondrán canciones por todo el mundo! ¡La gloria será nuestra, ya lo creo!~ */
  IF ~~ THEN EXTERN ~BHARVAL~ 27
END

IF ~~ THEN BEGIN 138 // from:
  SAY #50093 /* ~¡El sacerdote se vuelve contra nosotros! ¡Qué vergüenza! ¡Bubú mordisqueará las órbitas de sus ojos por esta farsa!~ */
  IF ~~ THEN DO ~Attack("Gaal")
~ EXIT
END

IF ~~ THEN BEGIN 139 // from:
  SAY #50106 /* ~¿Nos detenemos ahora? ¿Por qué? ¡Somos héroes, y los héroes deben enfrentarse al enemigo final e imponerse a todo!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 140 // from:
  SAY #50122 /* ~¡Bubú no olvida! ¡Puerta de Baldur! ¡Muerte al asesino de niños! ¡Morid, enano, morid! ¡¡AAARRRGGGHHHH!!~ */
  IF ~~ THEN DO ~Attack("Neb")
~ EXIT
END

IF ~~ THEN BEGIN 141 // from:
  SAY #50130 /* ~¿El pequeño ha conocido a algún dios antes de esto?~ */
  IF ~~ THEN EXTERN ~JANJ~ 132
END

IF ~~ THEN BEGIN 142 // from:
  SAY #50301 /* ~Bubú es mi incondicional compañero, y dice que si tenéis que llevar las pieles de un animal muerto alrededor del cuello, la maligna comadreja de dientes afilados es una buena elección.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 143 // from:
  SAY #50343 /* ~Minsc y Bubú luchan con espadas y dientes en defensa del bien, no de ningún país. Somos héroes, no soldados, buen hombre.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 144 // from:
  SAY #50416 /* ~¿Él ataca? ¡Una equivocación así llena incluso a Bubú de indignación! ¡Por mi hámster, debo dar un buen golpe en el nombre del bien!~ */
  IF ~~ THEN DO ~Attack("gphil03")
~ EXIT
END

IF ~~ THEN BEGIN 145 // from:
  SAY #50537 /* ~¿No... no irán a quemar a la hermosa elfa? ¡No pueden quemarla si no ha cometido ningún delito! ¡No es justo! ¡<CHARNAME>, vamos a detener esta farsa!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 146 // from:
  SAY #50557 /* ~¿No la rescatamos? ¿Qué mal ha hecho? Tal vez los elfos oscuros no sean todos buenos, pero está claro que no todos son totalmente malvados. Estoy... confundido. ¿Qué piensa Bubú?~ */
  IF ~  !IfValidForPartyDialogue("Aerie")
!IfValidForPartyDialogue("Keldorn")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 113
  IF ~  !IfValidForPartyDialogue("Aerie")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 179
END

IF ~~ THEN BEGIN 147 // from:
  SAY #50578 /* ~La hemos salvado y está bajo nuestra responsabilidad. ¿Qué pasaría si la capturaran de nuevo? Ni Bubú ni yo podríamos vivir con los remordimientos. No, debe venir.~ */
  IF ~~ THEN EXTERN ~VICONI~ 24
END

IF ~~ THEN BEGIN 148 // from:
  SAY #50670 /* ~A Bubú le preocupa que estos enfermos se hagan daño a sí mismos, <CHARNAME>. Debemos asegurarnos de que están a salvo y de que cada uno tiene un hámster propio.~ */
  IF ~~ THEN GOTO 149
END

IF ~~ THEN BEGIN 149 // from: 148.0
  SAY #50671 /* ~La última parte es idea mía.~ */
  IF ~~ THEN DO ~SetGlobal("playerTalk","AR1515",2)
SetGlobal("AsylumPlot","GLOBAL",54)
StartCutSceneMode()
StartCutScene("Cut41m")
~ EXIT
END

IF ~~ THEN BEGIN 150 // from:
  SAY #52288 /* ~Los verdaderos héroes no piden recompensas, <CHARNAME>, y Bubú sabe que sois un verdadero héroe. ¡Tan solo tenemos que saber a qué enemigos nos vamos a enfrentar antes de empezar la lucha!~ ~Los verdaderos héroes no piden recompensas, <CHARNAME>, y Bubú sabe que sois una verdadera heroína. ¡Tan solo tenemos que saber a qué enemigos nos vamos a enfrentar antes de empezar la lucha!~ */
  IF ~~ THEN EXTERN ~NALIAJ~ 149
END

IF ~~ THEN BEGIN 151 // from:
  SAY #52295 /* ~¡No! ¡No podéis haber dicho eso! ¡<CHARNAME>, debemos rescatar al niño de ese hombre tan agradable y marcharnos! A menos que... ¿a menos que tengáis un plan? Minsc está confuso.~ */
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
!IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~FIRKRA02~ 36
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 74
  IF ~  !IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 186
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 163
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 128
END

IF ~~ THEN BEGIN 152 // from:
  SAY #52306 /* ~¡No! ¿De verdad ha caído <CHARNAME> tan bajo? ¡Un rescate glorioso se ha convertido en una pesadilla de proporciones épicas! ¡Minsc y Bubú os detendrán!~ */
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~FIRKRA02~ 37
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~VALYGARJ~ 75
  IF ~  !IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Keldorn")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~KELDORJ~ 187
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Mazzy")
~ THEN DO ~LeaveParty()
ReallyForceSpellRES("OHSMODE3",Myself)
Enemy()
Attack(Player1)
~ EXTERN ~MAZZYJ~ 164
END

IF ~~ THEN BEGIN 153 // from:
  SAY #52607 /* ~¡Bubú lo sabe! ¡No guardéis tronos en casas de paja!~ */
  IF ~~ THEN EXTERN ~UDDROW07~ 11
END

IF ~~ THEN BEGIN 154 // from:
  SAY #55186 /* ~¡El malvado mago está muerto! ¡Una vez más, Bubú, Minsc y <CHARNAME> emergen como héroes victoriosos! ¡Habrá que comenzar pronto con las celebraciones!~ */
  IF ~~ THEN EXTERN ~PLAYER1~ 17
END

IF ~~ THEN BEGIN 155 // from:
  SAY #55208 /* ~Oh, ¡qué muerte en combate más gloriosa para Minsc y Bubú! Ya estábamos en camino hacia los grandes campos y salones de Rashemen, pero sentimos que nos necesitabais, y aquí estamos.~ [MINSC87] */
  IF ~  !IfValidForPartyDialogue("Valygar")
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
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~VALYGARJ~ 77
  IF ~  !IfValidForPartyDialogue("Valygar")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 115
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 147
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 117
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 90
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 450
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Cernd")
~ THEN EXTERN ~CERNDJ~ 100
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 166
  IF ~  !IfValidForPartyDialogue("Valygar")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Viconia")
!IfValidForPartyDialogue("Yoshimo")
!IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Cernd")
!IfValidForPartyDialogue("Mazzy")
IfValidForPartyDialogue("Anomen")
~ THEN EXTERN ~ANOMENJ~ 258
  IF ~  !IfValidForPartyDialogue("Valygar")
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
  IF ~  !IfValidForPartyDialogue("Valygar")
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
  IF ~  !IfValidForPartyDialogue("Valygar")
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
  IF ~  !IfValidForPartyDialogue("Valygar")
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

IF ~~ THEN BEGIN 156 // from:
  SAY #55668 /* ~¿Este joven trovador ha perdido su ingenio y sus canciones? Las mentes con talento son bastante comunes, pero las melodías de mérito son pocas y solo surgen de cuando en cuando.~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 18
END

IF ~~ THEN BEGIN 157 // from:
  SAY #55680 /* ~¡Sí! ¡Qué pasión y convicción! Es una lástima que no haya enemigos reales que merezcan los gritos, pero buena actuación, de todos modos. ¡Bubú está aplaudiendo!~ */
  IF ~~ THEN EXTERN ~PPIRENI1~ 25
END

IF ~~ THEN BEGIN 158 // from:
  SAY #55684 /* ~Ya podéis salir, Bubú, la mujer pálida ya se ha ido. También podéis dejar de temblar. Sois un hámster guerrero, ¡así que sed valiente! ¡Valiente!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 159 // from:
  SAY #55689 /* ~¡Todas las buenas gentes bajan la cabeza apenadas! ¡Nos han traicionado! El marinero nos vuelve a traer a los vampiros... ¡Llegará la hora del juicio!~ */
  IF ~~ THEN DO ~Attack("ppsaem")
Wait(5)
ApplySpell(Myself,MINSC_BERSERK)
~ EXIT
END

IF ~~ THEN BEGIN 160 // from:
  SAY #55694 /* ~No creo que a Bubú le haga mucha gracia que le cojáis prestado su rostro. Solo tiene uno. No les hacéis daño a los que reflejáis, ¿no?~ */
  IF ~~ THEN EXTERN ~PPDILI~ 4
END

IF ~~ THEN BEGIN 161 // from:
  SAY #55763 /* ~Ay, la cabeza me da vueltas. Tantas palabras rápidas llegando desde sitios tan pequeños. Cantad vos, Bubú. Relajad mis agotados nervios.~ */
  IF ~~ THEN GOTO 162
END

IF ~~ THEN BEGIN 162 // from: 161.0
  SAY #55767 /* ~¿Qué está mirando todo el mundo? El canturreo de Bubú me relaja. ¿Lo veis?~ */
  IF ~~ THEN EXTERN ~PPTIAX~ 13
END

IF ~~ THEN BEGIN 163 // from:
  SAY #55776 /* ~¡Sí! ¡Venganza! ¡Venganza por mi querida Dynaheir! ¡Temblad, mago, porque el poderoso Bubú se comerá vuestros ojos! ¡AAARRRGGGHHH!~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
!IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~PPIRENI2~ 60
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 460
  IF ~  !IfValidForPartyDialogue("Jaheira")
IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 19
END

IF ~~ THEN BEGIN 164 // from:
  SAY #55784 /* ~Esa es una exclamación mucho más corta de las que Bubú está acostumbrado a oír, Jan. ¿Estáis enfermo?~ */
  IF ~  !IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~JANJ~ 158
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN EXTERN ~EDWINJ~ 109
END

IF ~~ THEN BEGIN 165 // from:
  SAY #55819 /* ~¡No! ¡No en el cuello! ¡No seré esclavizado por apestosos hombres pez! ¡Mi espíritu de guerrero no permitirá tal cosa!~ */
  IF ~~ THEN EXTERN ~SAHPR1~ 6
END

IF ~~ THEN BEGIN 166 // from:
  SAY #55825 /* ~Bubú también tiene dientes pequeños comparados con los de los hombres pez. Pero hacen el mismo daño cuando se clavan en los ojos. ¡Ya lo creo!~ */
  IF ~~ THEN EXTERN ~SAHBAR03~ 0
END

IF ~~ THEN BEGIN 167 // from:
  SAY #55861 /* ~Puede que mi piel no tenga escamas, pero ha visto salir y ponerse muchos soles. Bubú cree que también vos podríais usar un poco el sol para no oler tanto a ropa húmeda.~ */
  IF ~~ THEN EXTERN ~SAHPR2~ 8
END

IF ~~ THEN BEGIN 168 // from:
  SAY #55882 /* ~Tranquila, Aerie. Estoy aquí para proteger a mi bruja. Bubú también, aunque creo que él daría un brinco para proteger a cualquiera que esté en peligro. Ya sabéis, es su naturaleza heroica.~ */
  IF ~~ THEN EXTERN ~AERIEJ~ 148
END

IF ~~ THEN BEGIN 169 // from:
  SAY #55892 /* ~Bubú se eriza con sus palabras. Desconozco el idioma, ¡pero seguro que nos está insultando!~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 1
END

IF ~~ THEN BEGIN 170 // from:
  SAY #55915 /* ~¡No puedo dar crédito a mis oídos! ¡Os enfrentaríais a todo lo que sea bueno y justo! ¡Sufriréis una terrible venganza por esto!~ */
  IF ~~ THEN DO ~LeaveParty()
Enemy()
~ EXTERN ~UDDEMON~ 22
END

IF ~~ THEN BEGIN 171 // from:
  SAY #55922 /* ~¡Sí! ¡Hola! ¡Minsc es un drow! ¡Y Bubú es un hámster sombrío!~ */
  IF ~~ THEN EXTERN ~UDDUER01~ 24
END

IF ~~ THEN BEGIN 172 // from:
  SAY #55968 /* ~¡Otro drow que habla con palabras extrañas! ¡Hasta Bubú se eriza con sus obvias mentiras! ¡Si <CHARNAME> lucha, Minsc también! ¡Preparaos para mi generoso pateo de traseros!~ */
  IF ~  !IfValidForPartyDialogue("Viconia")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 146
END

IF ~~ THEN BEGIN 173 // from:
  SAY #56017 /* ~¡Oh no, otro drow! ¡Empiezo a verlos por todas partes desde que estuve en la Infraoscuridad! Son tan malvados, que hasta Bubú se encoge por el miedo. ¿Qué haremos, <CHARNAME>?~ */
  IF ~~ THEN EXTERN ~C6BRUEN1~ 8
END

IF ~~ THEN BEGIN 174 // from:
  SAY #56018 /* ~¡Yo no causo problemas! ¡Yo solo los busco y les aplico la bota de la justicia! ¡Preguntadle a Bubú!~ */
  IF ~~ THEN EXTERN ~UDDUER03~ 12
END

IF ~~ THEN BEGIN 175 // from:
  SAY #56067 /* ~Bubú está impresionado, Korgan. Sabéis muy bien cómo actuar como un drow.~ */
  IF ~~ THEN EXTERN ~KORGANJ~ 147
END

IF ~~ THEN BEGIN 176 // from:
  SAY #56086 /* ~¡Por Dynaheir y todos los compañeros caídos, por lo que está bien y es justo, por todas esas cosas, Minsc y Bubú caerán hoy sobre vos! ¡Y saborearemos la victoria, hombre malvado!~ */
  IF ~  !IfValidForPartyDialogue("Imoen2")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 30
END

IF ~~ THEN BEGIN 177 // from:
  SAY #56092 /* ~Nosotros tampoco, ¿verdad, Bubú?~ */
  IF ~~ THEN GOTO 178
END

IF ~~ THEN BEGIN 178 // from: 177.0
  SAY #56093 /* ~¿Qué es tan divertido?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 179 // from:
  SAY #56112 /* ~Me empiezo a cansar de lanzar gritos de batalla cuando lucho con este mago. Bubú terminará por cerrarle los ojos de una vez y para siempre para que no se alce de nuevo. ¡Maligno, reuníos con mi espada! ¡Espada, reuníos con el maligno!~ [MINSC86] */
  IF ~  !IfValidForPartyDialogue("Imoen2")
~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("cut85c")
~ EXIT
  IF ~  IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 31
END

IF ~~ THEN BEGIN 180 // from:
  SAY #56124 /* ~¡No os preocupéis, Viconia! ¡Minsc y Bubú están preparados para protegeros! ¿Verdad, Bubú?~ */
  IF ~~ THEN EXTERN ~VICONIJ~ 96
END

IF ~~ THEN BEGIN 181 // from:
  SAY #56127 /* ~¡No! ¡No atacaréis a los pequeños oscuros! ¡Minsc y Bubú no lo permitirán! ¡Y espero que nadie más!~ */
  IF ~~ THEN REPLY #56128 /* ~Haced lo que debáis. ¡La decisión la debo tomar yo!~ */ DO ~SetGlobal("SvirHostile","GLOBAL",1)
LeaveParty()
Enemy()
ActionOverride("Keldorn",LeaveParty())
ActionOverride("Keldorn",Enemy())
ActionOverride("Jaheira",LeaveParty())
ActionOverride("Jaheira",Enemy())
ActionOverride("Mazzy",LeaveParty())
ActionOverride("Mazzy",Enemy())
ActionOverride("Valygar",LeaveParty())
ActionOverride("Valygar",Enemy())
ActionOverride("Aerie",LeaveParty())
ActionOverride("Aerie",Enemy())
~ SOLVED_JOURNAL #57768 /* ~Asuntos del poblado svirfneblin.

He hablado con Oroander Roquemada, señor del poblado svirfneblin. Su pomposo título ha revelado la superflua naturaleza de sus necesidades. Me ha hablado de un método para entrar en la ciudad drow: solicitando la ayuda de Ádalon, una poderosa criatura que se encuentra la base de la gran escalera. Oroander quería que primero realizara un servicio para su poblado derrotando a alguna criatura que habían desenterrado. Como recompensa me había garantizado que podría llegar hasta Ádalon, dándome una piedra luminosa o algo parecido, para así poder atravesar la oscuridad que protege su guarida. He acabado con ese medio hombre y con todos los que se han interpuesto en mi camino.~ */ EXIT
  IF ~~ THEN REPLY #56129 /* ~¡Vale, está bien! ¡Ayudaré a este memo!~ */ EXTERN ~UDSVIR03~ 26
END

IF ~~ THEN BEGIN 182 // from:
  SAY #56152 /* ~¡Y entonces Minsc los interrumpirá con su bota! ¡Eso es, hablad más de esta colaboración contra el mal!~ */
  IF ~~ THEN EXTERN ~UDSIMYAZ~ 17
END

IF ~~ THEN BEGIN 183 // from:
  SAY #56170 /* ~¡Bubú se agita con incredulidad! ¡Un crimen semejante no puede salir impune!~ */
  IF ~~ THEN EXTERN ~UDSILVER~ 19
END

IF ~~ THEN BEGIN 184 // from:
  SAY #56198 /* ~¡Bubú la habría encontrado donde hubiera puesto su maligno pie! ¡Eso es lo que hacemos!~ */
  IF ~  !IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~C6BODHI~ 14
  IF ~  IfValidForPartyDialogue("Imoen2")
~ THEN EXTERN ~IMOEN2J~ 36
END

IF ~~ THEN BEGIN 185 // from:
  SAY #56409 /* ~¡Irenicus es el mayor de los villanos si pretende destruir una ciudad entera! ¡No puedo creerlo y me he creído cosas realmente increíbles, dejadme que os las cuente!~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 29
END

IF ~~ THEN BEGIN 186 // from:
  SAY #56420 /* ~Las arboledas son maravillosas... No seríais capaz de envenenar una, ¿verdad? Bubú me sugiere que tal vez estéis engañando a este hombrecillo maligno. Es inteligente, estoy de acuerdo.~ */
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("HaerDalis")
~ THEN EXIT
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~KELDORJ~ 220
  IF ~  !IfValidForPartyDialogue("Keldorn")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 162
  IF ~  !IfValidForPartyDialogue("Keldorn")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~HAERDAJ~ 130
END

IF ~~ THEN BEGIN 187 // from:
  SAY #56429 /* ~¡Este es el malvado asesino que se lleva pieles que no le pertenecen! ¡Lo hemos descubierto, <CHARNAME>! ¡Debemos ponerle la bota donde ya sabéis!~ */
  IF ~~ THEN EXTERN ~TRSKIN02~ 17
END

IF ~~ THEN BEGIN 188 // from:
  SAY #56458 /* ~¡Decidir entre la justicia y el honor! Es una encrucijada que haría un lío incluso a Bubú. No os envidio. Mis decisiones suelen ser más sencillas que esta.~ */
  IF ~  !IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~ANOMENJ~ 52
  IF ~  IfValidForPartyDialogue("Viconia")
~ THEN EXTERN ~VICONIJ~ 165
END

IF ~~ THEN BEGIN 189 // from:
  SAY #56471 /* ~¡No! ¡Minsc no ha venido aquí para matar a jovencitas! ¡No podéis decir que la joven es cualquier cosa menos inocente! ¡No está bien!~ */
  IF ~~ THEN EXTERN ~ANOMENJ~ 281
END

IF ~~ THEN BEGIN 190 // from:
  SAY #56482 /* ~¡No servimos a ningún hechicero maligno, no señor! Pero Bubú os mira con recelo, amigo. ¿Cómo es que estáis aquí? ¡Nunca había visto los bigotes de Bubú agitarse tanto!~ */
  IF ~~ THEN EXTERN ~YOSHIMO~ 47
END

IF ~~ THEN BEGIN 191 // from:
  SAY #56484 /* ~Entonces, ¡vos también sabéis lo duro que es estar encerrado en un laberinto como un hámster indefenso! ¡Somos compañeros de peligros! Bubú me pregunta qué proponéis que hagamos ahora, amigo.~ */
  IF ~~ THEN EXTERN ~YOSHIMO~ 4
END

IF ~~ THEN BEGIN 192 // from:
  SAY #56492 /* ~¿Qué es esto? Minsc y Bubú estaban metiéndose en esta magnífica historia cuando ha sido interrumpida lamentablemente. ¡Es una obra maestra!~ */
  IF ~~ THEN EXTERN ~RAELIS~ 34
END

IF ~~ THEN BEGIN 193 // from:
  SAY #56499 /* ~¿Alguien ha puesto nerviosa a la pequeña? Mmmm, sé cómo se siente. Si lo ha hecho a propósito, se merece una buena patada en el trasero, como mínimo.~ */
  IF ~  !IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~JANJ~ 37
  IF ~  IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 166
  IF ~  !IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Aerie")
~ THEN EXTERN ~AERIEJ~ 177
END

IF ~~ THEN BEGIN 194 // from:
  SAY #56514 /* ~¡Ayudar a los demás está bien! Sois una niñita muy simpática. ¿Os gustaría ver a mi Bubú? Creo que a él también le gustáis.~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~NALIA~ 66
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 502
END

IF ~~ THEN BEGIN 195 // from:
  SAY #56515 /* ~¡Ayudar a los demás está bien! Sois una niñita muy simpática. ¿Os gustaría ver a mi Bubú? Creo que a él también le gustáis.~ */
  IF ~  !IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~NALIA~ 53
  IF ~  IfValidForPartyDialogue("Jaheira")
~ THEN EXTERN ~JAHEIRAJ~ 503
END

IF ~~ THEN BEGIN 196 // from:
  SAY #56675 /* ~No quiero alarmaros, pero Bubú está totalmente inquieto por vuestro estado. ¿Os ocurre algo? El miedo en Bubú es poco común, y normalmente se lo provoca alguna comadreja.~ */
  IF ~~ THEN REPLY #56676 /* ~Me pondré bien. Solo estoy un poco mareado, eso es todo.~ ~Me pondré bien. Solo estoy un poco mareada, eso es todo.~ */ GOTO 197
  IF ~~ THEN REPLY #56677 /* ~No hay por qué preocuparse. Controlo la situación.~ */ GOTO 198
  IF ~~ THEN REPLY #56678 /* ~Estoy bien, Minsc. Ocupaos de vuestros asuntos.~ */ GOTO 199
END

IF ~~ THEN BEGIN 197 // from: 196.0
  SAY #56679 /* ~Podemos descansar si queréis. No entiendo lo que hizo Irenicus, pero Bubú me ha dicho que fue traumático, y yo vigilaré si tenemos que quedarnos aquí algún tiempo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 198 // from: 196.1
  SAY #56680 /* ~Eso está bien. Yo vigilaré si necesitáis descansar. Es lo menos que puedo hacer, ya que no pude detener a Irenicus.~ */
  IF ~~ THEN GOTO 233
END

IF ~~ THEN BEGIN 199 // from: 196.2
  SAY #56682 /* ~Entonces, Minsc y Bubú centrarán sus atenciones en cosas más importantes, como seguir vivos. Debemos ponernos en marcha si se os ha pasado el dolor de cabeza.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 200 // from:
  SAY #56881 /* ~Bubú no lo cree así, a pesar de vuestras amables palabras. Oléis a traición. ¡Demostradme lo contrario o enfrentaos a mi bota!~ */
  IF ~~ THEN EXTERN ~ARAN~ 50
END

IF ~~ THEN BEGIN 201 // from:
  SAY #56886 /* ~¡Habríais comprado vuestro billete para el cementerio si os hubierais gastado el dinero que necesitamos para rescatar a Imoen! ¡Minsc y Bubú se encargarían de ello!~ */
  IF ~~ THEN EXTERN ~EDWINJ~ 141
END

IF ~~ THEN BEGIN 202 // from:
  SAY #57740 /* ~Cuando todos los demás se quedan paralizados, les toca a Minsc y Bubú hacer los comentarios. <CHARNAME>...~ */
  IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203 // from: 202.0
  SAY #57741 /* ~<CHARNAME>, Bubú ha manchado mi mochila.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 204 // from:
  SAY #57901 /* ~¡Bubú no es partidario de las apuestas, pero no tengo ninguna duda de que lo lograremos!~ */
  IF ~~ THEN EXTERN ~C6ELHAN2~ 46
END

IF ~~ THEN BEGIN 205 // from:
  SAY #57905 /* ~¡Bubú habría detectado cualquier traición hace mucho! ¡Ella lucha bien a nuestro lado!~ */
  IF ~  !IfValidForPartyDialogue("CERND")
~ THEN EXTERN ~VICONIJ~ 120
  IF ~  IfValidForPartyDialogue("CERND")
~ THEN EXTERN ~CERNDJ~ 133
END

IF ~~ THEN BEGIN 206 // from:
  SAY #58137 /* ~¡Bubú está de acuerdo! ¡Debemos apresurarnos y dejar de errar para poder combatir males peores que sean más merecedores de la huella de mi bota!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 207 // from:
  SAY #58138 /* ~¡Minsc y Bubú protegerán vuestra calle, Aerie! ¡La cruzaréis por placer, no por miedo!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 208 // from:
  SAY #58179 /* ~¡Entonces, en marcha! ¡Bubú y yo tenemos varias habilidades que desataremos sobre él!~ */
  IF ~~ THEN EXTERN ~ARAN~ 41
END

IF ~~ THEN BEGIN 209 // from:
  SAY #58199 /* ~¡Minsc tiene una deuda con el asesino de Dynaheir! ¡Me quedaré con vos! ¡No iré a ninguna parte hasta que la bota de la justicia haya sido aplicada de una vez por todas sobre el maligno trasero del mago! ¡A ninguna parte!~ */
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
  IF ~  IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~PLAYER1~ 42
  IF ~  IfValidForPartyDialogue("Keldorn")
~ THEN EXTERN ~PLAYER1~ 41
  IF ~  IfValidForPartyDialogue("HaerDalis")
~ THEN EXTERN ~PLAYER1~ 40
  IF ~  IfValidForPartyDialogue("Edwin")
~ THEN EXTERN ~PLAYER1~ 39
  IF ~  IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~PLAYER1~ 38
  IF ~  IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~PLAYER1~ 37
  IF ~  IfValidForPartyDialogue("Valygar")
~ THEN EXTERN ~PLAYER1~ 36
END

IF ~~ THEN BEGIN 210 // from:
  SAY #58519 /* ~¡No! ¡Nosotros no abandonamos a nuestros compañeros! ¡No podría volver a mirar a la cara a Bubú después de una cosa así! ¡Lo que haremos será patear el trasero del maligno mago!~ */
  IF ~~ THEN EXTERN ~TOLGER~ 81
END

IF ~~ THEN BEGIN 211 // from:
  SAY #58756 /* ~¡Una bofetada a nuestra confianza! ¡Una espada en el corazón de nuestra fe! ¡Una patada a las raíces de nuestra amistad! Tal vez esté yendo demasiado lejos, ¡pero Bubú está totalmente indignado!~ */
  IF ~~ THEN EXTERN ~YOSHJ~ 114
END

IF ~~ THEN BEGIN 212 // from:
  SAY #59069 /* ~¡Minsc y Bubú son los más grandes guerreros, pequeño! ¡Aplastaré a vuestros enemigos y los reduciré a pedacitos! ¿Quién osa meterse con vos? ¡Vos apuntad!~ */
  IF ~~ THEN EXTERN ~DELON~ 43
END

IF ~~ THEN BEGIN 213 // from:
  SAY #59071 /* ~¿Ya no quedan enemigos? Eso me alivia; solo confío en quienes abusan de los niños hasta cierto punto... el punto hasta el que pueda lanzarlos por los aires, ¡y vaya si los lanzaré!~ */
  IF ~~ THEN GOTO 222
END

IF ~~ THEN BEGIN 214 // from:
  SAY #59072 /* ~¿Cómo? ¡Bubú está indignado! ¡Fijaos en su furia! Es pequeño, así que acercaos. Confiad en mí. ¿Qué problemas hay en vuestra aldea, pequeño? ¿Cómo podemos ayudar nosotros, los héroes?~ */
  IF ~~ THEN EXTERN ~DELON~ 19
END

IF ~~ THEN BEGIN 215 // from:
  SAY #59073 /* ~Minsc ha estado enojado antes, y eso nunca ha sido bueno. A veces asusta incluso a Bubú.~ */
  IF ~~ THEN EXTERN ~DELON~ 44
END

IF ~~ THEN BEGIN 216 // from:
  SAY #59075 /* ~¡Oh!, Minsc nunca ha estado enfurecido, no señor. ¡Con estar enojado ha sido suficiente! ¿Algo más, jovencito?~ */
  IF ~~ THEN EXTERN ~DELON~ 8
END

IF ~~ THEN BEGIN 217 // from:
  SAY #59076 /* ~¡Por supuesto que hacen falta los héroes! ¡Los héroes como Minsc, Bubú y <CHARNAME>! ¿Dónde está vuestra aldea, pequeño? ¡Juntos desharemos el entuerto!~ */
  IF ~~ THEN EXTERN ~DELON~ 10
END

IF ~~ THEN BEGIN 218 // from:
  SAY #59078 /* ~¡No hay nada mejor para quitar el miedo que una buena espada y una rápida patada al mal! Iremos a vuestra aldea y haremos lo que hacen los héroes, ¿verdad, <CHARNAME>?~ */
  IF ~~ THEN REPLY #59080 /* ~¡Minsc, tenéis razón!~ */ DO ~SetGlobalTimer("MinscRemindsImnesvale","GLOBAL",TWO_DAYS)
~ EXTERN ~DELON~ 15
  IF ~~ THEN REPLY #59081 /* ~Bueno, siempre que haya una buena recompensa, podríamos echar un vistazo.~ */ DO ~SetGlobalTimer("MinscRemindsImnesvale","GLOBAL",TWO_DAYS)
~ EXTERN ~DELON~ 15
  IF ~~ THEN REPLY #59082 /* ~No sé si tenemos tiempo, Minsc. Ya veremos.~ */ GOTO 219
  IF ~~ THEN REPLY #59083 /* ~Olvidadlo, Minsc. No vamos a lanzarnos de cabeza a una misión de locos.~ */ GOTO 220
END

IF ~~ THEN BEGIN 219 // from: 218.2
  SAY #59088 /* ~¡Siempre hay tiempo para deshacer entuertos! Tranquilo, pequeño, iremos a vuestra aldea en cuanto haga entrar en razón a <CHARNAME>. De eso me ocupo yo.~ */
  IF ~~ THEN DO ~SetGlobalTimer("MinscRemindsImnesvale","GLOBAL",TWO_DAYS)
~ EXTERN ~DELON~ 15
END

IF ~~ THEN BEGIN 220 // from: 218.3
  SAY #59089 /* ~¡Patear el trasero del mal nunca es una misión de locos! Mmm, <CHARNAME> no está hoy en su papel de héroe habitual. ¿Una mala influencia? ¿O quizá tiene sus pensamientos en otra parte?~ ~¡Patear el trasero del mal nunca es una misión de locos! Mmm, <CHARNAME> no está hoy en su papel de heroína habitual. ¿Una mala influencia? ¿O quizá tiene sus pensamientos en otra parte?~ */
  IF ~~ THEN GOTO 221
END

IF ~~ THEN BEGIN 221 // from: 220.0
  SAY #59090 /* ~Ya que <CHARNAME> no está en sus cabales, debo reaccionar como lo haría un héroe. Iremos a vuestra aldea en cuanto <CHARNAME> se encuentre mejor. Lo juran Minsc y Bubú.~ */
  IF ~~ THEN DO ~SetGlobalTimer("MinscRemindsImnesvale","GLOBAL",TWO_DAYS)
~ EXTERN ~DELON~ 15
END

IF ~~ THEN BEGIN 222 // from: 213.0
  SAY #59091 /* ~Eeh... Bubú se pregunta para qué necesitáis un guerrero si no tenéis enemigos.~ */
  IF ~~ THEN EXTERN ~DELON~ 4
END

IF ~  GlobalTimerExpired("MinscRemindsImnesvale","GLOBAL")
Global("TalkedToLloyd","GLOBAL",0)
Global("VillageSaved","GLOBAL",0)
AreaType(OUTDOOR)
!AreaCheck("AR1100")
!AreaCheck("AR1400")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("MinscReminder","LOCALS",0)
~ THEN BEGIN 223 // from:
  SAY #59093 /* ~Bubú tiene curiosidad y sigue preguntando cuándo viajaremos a la aldea del Valle de Imnes, ¡y estoy totalmente de acuerdo con él! ¡Somos héroes y necesitan héroes! ¡Hasta Minsc se da cuenta de que somos su solución!~ */
  IF ~~ THEN DO ~SetGlobal("MinscReminder","LOCALS",1)
~ GOTO 224
END

IF ~~ THEN BEGIN 224 // from: 223.0
  SAY #59094 /* ~Debemos ir allá donde el mal esté más necesitado de una paliza, así que Minsc os dejará a vos la decisión, <CHARNAME>. Aun así... no debemos decepcionar al pequeño.~ */
  IF ~~ THEN DO ~SetGlobalTimer("MinscRemindsImnesvale","GLOBAL",TWO_DAYS)
~ EXIT
END

IF ~  GlobalTimerExpired("MinscRemindsImnesvale","GLOBAL")
Global("TalkedToLloyd","GLOBAL",0)
Global("VillageSaved","GLOBAL",0)
AreaType(OUTDOOR)
!AreaCheck("AR1100")
!AreaCheck("AR1400")
See(Player1)
!StateCheck(Player1,STATE_SLEEPING)
Global("MinscReminder","LOCALS",1)
~ THEN BEGIN 225 // from:
  SAY #59095 /* ~¿Se ha perdido algo Minsc? ¿Hemos ido ya a salvar la aldea del Valle de Imnes? Bubú insiste en que no, pero yo no puedo recordarlo. ¡No puede ser que hayamos eludido nuestra tarea de héroes tanto tiempo! ¡No puede ser!~ */
  IF ~~ THEN DO ~SetGlobal("MinscReminder","LOCALS",2)
~ EXIT
END

IF ~~ THEN BEGIN 226 // from:
  SAY #59421 /* ~Venimos porque el pequeño, Delon, nos dijo que aquí estaba el mal y hacía falta patearle el trasero. ¡Y afortunadamente tenemos puestas nuestras botas, sí señor!~ */
  IF ~~ THEN EXTERN ~UHMAY01~ 6
END

IF ~~ THEN BEGIN 227 // from:
  SAY #59423 /* ~¡No, no podemos marcharnos sin haber destruido todo el mal! ¡Decidle a Bubú que no es verdad, <CHARNAME>! ¡No destruyáis la inocencia de un hámster joven!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 228 // from:
  SAY #59424 /* ~¿Lobos? ¿Ogros? ¿Brujas? ¡Caramba! ¡Demasiado para que lo comprenda la pobre cabeza de Minsc! ¿Cuáles son malvados? ¡El filo de mi espada hallará la verdad!~ */
  IF ~~ THEN EXTERN ~UHMAY01~ 19
END

IF ~~ THEN BEGIN 229 // from:
  SAY #59425 /* ~¡Qué gran día! ¡Hemos dado un paso más para convertirnos en verdaderos héroes, ya lo creo! ¡Hasta la piel de Bubú está erizada de la emoción!~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 230 // from:
  SAY #59542 /* ~¡Minsc está de acuerdo! ¡Esta debería ser la esencia de la frialdad y el heroísmo! ¡Allá donde fuéramos, deberíamos dejar un rastro de dragones muertos!~ */
  IF ~~ THEN EXTERN ~SW2H14~ 16
END

IF ~~ THEN BEGIN 231 // from: 10.0
  SAY #60851 /* ~Bah, los presagios son para los que prestan atención a su alrededor, no para nosotros, ¿eh, Bubú?~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 232 // from: 46.0
  SAY #60868 /* ~En fin, salid de la ciudad por ahí... seguid por el camino, girad a la derecha en la iglesia grande y estaréis fuera.~ */
  IF ~~ THEN EXTERN ~RADEEL~ 9
END

IF ~~ THEN BEGIN 233 // from: 198.0
  SAY #60876 /* ~Bubú me dice que no me lo reproche, pero Bubú es un hámster y no le preocupa el honor.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 234 // from: 24.0
  SAY #60880 /* ~En realidad, esto cambia muy poco. Minsc está feliz.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 235 // from: 26.0
  SAY #60881 /* ~Y quizás Bubú también...~ */
  IF ~~ THEN GOTO 236
END

IF ~~ THEN BEGIN 236 // from: 235.0
  SAY #60882 /* ~Y una buena espada...~ */
  IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 237 // from: 236.0
  SAY #60883 /* ~¡Ah! Y un pulido de vez en cuando. Para la armadura, claro.~ */
  IF ~~ THEN EXIT
END

IF ~  Global("PostCutSpeak","AR0700",1)
~ THEN BEGIN 238 // from:
  SAY #61013 /* ~¡No, no puede ser! ¡El asesino de Dynaheir no puede salir impune sin venganza! ¡Y también se lleva a Imoen con él!~ */
  IF ~~ THEN DO ~SetGlobal("PostCutSpeak","AR0700",2)
~ GOTO 239
END

IF ~~ THEN BEGIN 239 // from: 238.0
  SAY #61014 /* ~¡<CHARNAME>, hay que hacer algo! ¡Debemos encontrar a ese mago malvado! ¡Todo lo que es justo grita por ello! Hasta el pequeño Bubú no puede gritar más alto.~ */
  IF ~  OR(3)
!InParty("Jaheira")
Dead("Jaheira")
StateCheck("Jaheira",STATE_SLEEPING)
OR(3)
!InParty("Yoshimo")
Dead("Yoshimo")
StateCheck("Yoshimo",STATE_SLEEPING)
~ THEN EXIT
  IF ~  InParty("Jaheira")
!Dead("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
~ THEN EXTERN ~JAHEIRAJ~ 528
  IF ~  OR(3)
!InParty("Jaheira")
Dead("Jaheira")
StateCheck("Jaheira",STATE_SLEEPING)
InParty("Yoshimo")
!Dead("Yoshimo")
!StateCheck("Yoshimo",STATE_SLEEPING)
~ THEN EXTERN ~YOSHJ~ 150
END

IF ~~ THEN BEGIN 240 // from:
  SAY #61017 /* ~¡No! ¡Debemos ir rápidamente y salvar a nuestra amiga Imoen! ¡El mago puede lanzarse sobre ella en cualquier momento!~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 530
END

IF ~~ THEN BEGIN 241 // from:
  SAY #70550 /* ~¿Quiere echar una partida? A Minsc y a Bubú les gusta todo tipo de juegos, aunque Bubú es mucho mejor en los que requieren estrategia. Por desgracia, yo soy mucho mejor en los enfrentamientos directos.~ */
  IF ~~ THEN EXTERN ~GORCAMB~ 18
END

IF ~~ THEN BEGIN 242 // from:
  SAY #70530 /* ~¡Después de todo nos han traicionado! Incluso Bubú es incapaz de creérselo, mirad cómo mueve su cabeza en señal de incredulidad. O quizás tiene frío. No... es incredulidad, sin duda.~ */
  IF ~~ THEN EXTERN ~GORODR1~ 36
END

IF ~~ THEN BEGIN 243 // from:
  SAY #70431 /* ~¡Demasiada charla, poca pelea!~ */
  IF ~~ THEN EXTERN ~JANJ~ 188
END

IF ~~ THEN BEGIN 244 // from:
  SAY #77677 /* ~¡Hablad por vos, <CHARNAME>! ¡Bubú es el cálido centro del universo y yo giro a su alrededor cada noche durante mi sueño!~ */
  IF ~~ THEN EXTERN ~RASAAD~ 18
END

IF ~~ THEN BEGIN 245 // from:
  SAY #78870 /* ~¿Garras duales? ¿Como las espadas duales?~ */
  IF ~  IfValidForPartyDialogue("EDWIN")
~ THEN REPLY #78871 /* ~No, no. Como la Fundación Dual, la Verdad Dual... ¿Sabéis qué? Mejor olvidadlo.~ */ EXTERN ~EDWINJ~ 191
  IF ~  !IfValidForPartyDialogue("EDWIN")
~ THEN REPLY #78871 /* ~No, no. Como la Fundación Dual, la Verdad Dual... ¿Sabéis qué? Mejor olvidadlo.~ */ EXTERN ~OHRHERAT~ 2
END

IF ~~ THEN BEGIN 246 // from:
  SAY #79469 /* ~A Bubú no le gusta este lugar. Estas personas están atrapadas en una rueda que gira y gira, pero nunca avanza.~ */
  IF ~~ THEN EXTERN ~RASAADJ~ 514
END

IF ~~ THEN BEGIN 247 // from:
  SAY #79523 /* ~A Bubú no le gusta este lugar. Estas personas están atrapadas en una rueda que gira y gira, pero nunca avanza.~ */
  IF ~~ THEN EXTERN ~OHRCOLLU~ 10
END

IF ~~ THEN BEGIN 248 // from:
  SAY #74513 /* ~No es tan feo. Bubú ha visto semiorcos mucho más feos. ¿Verdad, Bubú?~ */
  IF ~~ THEN REPLY #74514 /* ~Siento escalofríos al imaginar qué cosas habrá visto ese hámster a lo largo de su vida.~ */ EXTERN ~DORN~ 1
END

IF ~~ THEN BEGIN 249 // from:
  SAY #74615 /* ~¿Estáis llamando estúpido a Bubú?~ */
  IF ~~ THEN EXTERN ~DORN~ 30
  IF ~  IfValidForPartyDialogue("Mazzy")
~ THEN EXTERN ~MAZZYJ~ 207
END

IF ~~ THEN BEGIN 250 // from:
  SAY #74692 /* ~Por el hámster.~ */
  IF ~~ THEN REPLY #74689 /* ~La novia.~ */ EXTERN ~OHDDOOR1~ 2
  IF ~~ THEN REPLY #74690 /* ~El novio.~ */ EXTERN ~OHDDOOR1~ 3
  IF ~~ THEN REPLY #74691 /* ~¡En realidad, he venido por este guardia negro sediento de sangre!~ */ DO ~SetGlobal("OHD_WEDDING_HOSTILE","OH5000",3)
OpenDoor("DOOR07")
~ EXIT
END

IF ~~ THEN BEGIN 251 // from:
  SAY #74818 /* ~Bubú dice que es de mala educación eclipsar a la novia el día de su boda.~ */
  IF ~~ THEN DO ~LeaveParty()
SetLeavePartyDialogueFile()
ChangeAIScript("",DEFAULT)
ActionOverride("MINSC",Enemy())
~ EXIT
END

IF ~  Global("OHD_GORGE_NTRJEX","OH5100",1)
~ THEN BEGIN 252 // from:
  SAY #75728 /* ~¿Qué os parece, Bubú? ¿A que es un árbol bonito?~ */
  IF ~~ THEN GOTO 253
END

IF ~~ THEN BEGIN 253 // from: 252.0
  SAY #75729 /* ~Bubú piensa que este no es un árbol bonito.~ */
  IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254 // from: 253.0
  SAY #75730 /* ~Creo que Bubú tiene razón.~ */
  IF ~~ THEN DO ~SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
SetGlobal("OHD_GORGE_NTRJEX","OH5100",2)
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
END

IF ~~ THEN BEGIN 255 // from:
  SAY #80995 /* ~No pasa nada, Bubú. Están muertos, pero estoy seguro de que no son malvados en el...~ */
  IF ~~ THEN DO ~SetGlobal("OHH_minsccomment","OH7000",1)
SetGlobal("OHH_mazestart","OH7000",2)
ActionOverride("OHHGHST1",Enemy())
ActionOverride("OHHGHST2",Enemy())
~ EXIT
END

IF ~  Global("OHH_minsccomment","OH7000",1)
~ THEN BEGIN 256 // from:
  SAY #80996 /* ~Teníais razón, Bubú. Eran muy malvados.~ */
  IF ~~ THEN DO ~SetGlobal("OHH_minsccomment","OH7000",2)
~ EXIT
END

IF ~  Global("OHH_FALSE_DAWN","OH7000",2)
~ THEN BEGIN 257 // from:
  SAY #81824 /* ~Bubú dice que fumar no es sano.~ */
  IF ~  !IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXAT~ 125
  IF ~  IfValidForPartyDialogue("hexxat")
~ THEN EXTERN ~HEXXATJ~ 320
END

IF ~~ THEN BEGIN 258 // from:
  SAY #90282 /* ~¡Bubú dice que debemos encontrar la diadema! ¡Bubú dice que los niños son nuestro futuro!~ */
  IF ~~ THEN DO ~AddJournalEntry(94465,QUEST)
~ EXIT
  IF ~  IfValidForPartyDialogue("ANOMEN")
~ THEN EXTERN ~ANOMENJ~ 351
  IF ~  IfValidForPartyDialogue("VICONIA")
~ THEN EXTERN ~VICONIJ~ 429
END

IF ~~ THEN BEGIN 259 // from:
  SAY #88082 /* ~¡Minsc no sabe qué pensar! Lo justo es que <CHARNAME> también pueda recibir consejos de un animalito, pero Minsc teme por Bubú... Deding podría ser malo con los hámsteres.~ */
  IF ~~ THEN EXTERN ~OHNBARAD~ 25
  IF ~  IfValidForPartyDialogue("jan")
~ THEN EXTERN ~JANJ~ 201
  IF ~  IfValidForPartyDialogue("korgan")
~ THEN EXTERN ~KORGANJ~ 246
END

IF ~~ THEN BEGIN 260 // from:
  SAY #93536 /* ~¡Necesitaréis un consejero, heredero al trono! Minsc opina que los hámsteres son los mejores consejeros.~ ~¡Necesitaréis un consejero, heredera al trono! Minsc opina que los hámsteres son los mejores consejeros.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN P_1 // from:
  SAY @3029/* ~¡Vaya, <CHARNAME>! Has hecho despanzar de la risa a Bubú.~ */
  IF ~!IsValidForPartyDialog("Aerie")~
THEN DO ~~ EXTERN ~P_MICHEL~ 8
IF ~IsValidForPartyDialog("Aerie")
  ~ THEN EXTERN ~AERIEJ~ P_1
END