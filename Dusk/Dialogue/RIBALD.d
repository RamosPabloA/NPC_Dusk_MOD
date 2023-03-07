// creator  : weidu (version 24700)
// argument : RIBALD.DLG
// game     : .
// source   : ./DATA/DIALOG.BIF
// dialog   : .\lang\es_es\dialog.tlk
// dialogF  : .\lang\es_es\dialogf.tlk

BEGIN ~RIBALD~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #2 /* Triggers after states #: 20 24 even though they appear after this state */
~  True()
~ THEN BEGIN 0 // from: 26.0
  SAY #16976 /* ~Ribald el Truequista a vuestro servicio. El Mercado del Aventurero es la mejor tienda del ramo en toda Faerûn. La mejor selección, los precios asequibles y no son cantos de sirena. Tan solo buenas mercancías, simple y llanamente.~ */
  IF ~~ THEN REPLY #16978 /* ~No, gracias, solo estaba mirando.~ */ GOTO 1
  IF ~  GlobalLT("Chapter","GLOBAL",6)
~ THEN REPLY #16979 /* ~Sí, hay algunos artículos en los que podría estar interesado.~ ~Sí, hay algunos artículos en los que podría estar interesada.~ */ GOTO 2
  IF ~  GlobalGT("Chapter","GLOBAL",5)
~ THEN REPLY #58864 /* ~Sí, me gustaría ver qué tenéis disponible.~ */ GOTO 47
  IF ~~ THEN REPLY #16980 /* ~Puede que más tarde. Este lugar es demasiado grande para tomar una decisión inmediata.~ */ GOTO 3
  IF ~~ THEN REPLY #16981 /* ~Vaya basura. Tendríais que pagarme para que me llevara algo de aquí.~ */ GOTO 4
  IF ~  !Dead("obssol01")
!Dead("obssol02")
!Dead("obssol03")
OR(2)
Global("SolamnicKnights","GLOBAL",1)
Global("SolamnicKnights","GLOBAL",4)
~ THEN REPLY #42005 /* ~Necesito enviar un grupo de caballeros de Solamnia de vuelta a su plano. ¿Podéis ayudarme?~ */ GOTO 27
  IF ~  !Dead("obssol01")
!Dead("obssol02")
!Dead("obssol03")
OR(2)
Global("SolamnicKnights","GLOBAL",2)
Global("SolamnicKnights","GLOBAL",4)
~ THEN REPLY #42024 /* ~He vuelto por el asunto de los caballeros de Solamnia y vuestro precio vergonzoso.~ */ GOTO 32
  IF ~  InPartySlot(LastTalkedToBy,0)
~ THEN REPLY #45506 /* ~Me preguntaba si podría haceros un par de preguntas.~ */ GOTO 37
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #16982 /* ~Bien, estaré detrás del mostrador jugando con mis pulgares, si algo os agrada, os atrae, os emociona u os disgusta, ya sabéis dónde estaré para ayudaros a empaquetarlo.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #16983 /* ~¡Música para mis oídos! Cada minuto nace un nuevo cliente y poco después un palurdo. ¿Qué es lo que queréis?~ */
  IF ~~ THEN DO ~StartStore("ribald",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 3 // from: 0.3
  SAY #16984 /* ~Sí, tenemos catálogos y un ejército de amanuenses para mantener la demanda. Treinta y tres años en el mismo sitio. El viejo Ribald conoce a la mitad de sus clientes por su nombre. Siempre a su servicio.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from: 0.4
  SAY #16985 /* ~Lo que no mata engorda, ¿eh? A cada uno lo suyo. Si cambiáis de idea, estaré por aquí.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 5 // from:
  SAY #25046 /* ~Nunca os vi en el Valle de Sombra. Os emborrachasteis aquí hace cuatro meses y todavía no se os ha pasado.~ */
  IF ~~ THEN EXTERN ~BRELM~ 2
END

IF ~~ THEN BEGIN 6 // from:
  SAY #25049 /* ~Brelm, vos no os habéis subido a un barco de verdad en toda vuestra vida.~ */
  IF ~~ THEN EXTERN ~BRELM~ 4
END

IF ~~ THEN BEGIN 7 // from:
  SAY #25053 /* ~Queréis decir que os robaron tres veces la semana pasada.~ */
  IF ~~ THEN EXTERN ~BRELM~ 7
END

IF ~~ THEN BEGIN 8 // from:
  SAY #25114 /* ~Nunca he visto a un Mago Encapuchado...~ */
  IF ~~ THEN EXTERN ~BRELM~ 9
END

IF ~~ THEN BEGIN 9 // from:
  SAY #25116 /* ~Me jugaría lo que fuera a que la única cosa que lamentaron de conoceros fue tener que soportar vuestro olor.~ */
  IF ~~ THEN EXTERN ~BRELM~ 10
END

IF ~~ THEN BEGIN 10 // from:
  SAY #25120 /* ~¿Incluso fuisteis a comprobarlo?~ */
  IF ~~ THEN EXTERN ~BRELM~ 13
END

IF ~~ THEN BEGIN 11 // from:
  SAY #25122 /* ~Estuvisteis borracho toda la semana pasada.~ */
  IF ~~ THEN EXTERN ~BRELM~ 14
END

IF ~~ THEN BEGIN 12 // from:
  SAY #25124 /* ~Eso no es lo que dijisteis después de nueve jarras de aquel whisky de Túrmish que bebisteis aquella vez...~ */
  IF ~~ THEN EXTERN ~BRELM~ 15
END

IF ~~ THEN BEGIN 13 // from:
  SAY #25128 /* ~¿Qué días de aventura?~ */
  IF ~~ THEN EXTERN ~BRELM~ 18
END

IF ~~ THEN BEGIN 14 // from:
  SAY #25130 /* ~Creía que erais zapatero.~ */
  IF ~~ THEN EXTERN ~BRELM~ 19
END

IF ~~ THEN BEGIN 15 // from:
  SAY #25132 /* ~¿Oh? ¿Y dónde habéis estado, oh poderoso y experimentado aventurero?~ */
  IF ~~ THEN EXTERN ~BRELM~ 20
END

IF ~~ THEN BEGIN 16 // from:
  SAY #25134 /* ~Entonces debéis haber conocido a lord Francis. O a Denal Seisdedos. Ambos vivían la última vez que estuve allí.~ */
  IF ~~ THEN EXTERN ~BRELM~ 21
END

IF ~~ THEN BEGIN 17 // from:
  SAY #25140 /* ~Lucía no le haría daño a una mosca, Brelm.~ */
  IF ~~ THEN EXTERN ~BRELM~ 23
END

IF ~~ THEN BEGIN 18 // from:
  SAY #38849 /* ~Pero por favor, no dudéis en echar un vistazo, amigo mío.~ ~Pero por favor, no dudéis en echar un vistazo, amiga mía.~ */
  IF ~~ THEN DO ~StartStore("ribald",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY #38850 /* ~Como deseéis, amigo.~ ~Como deseéis, amiga.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~  InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",STATE_SLEEPING)
Global("RibaldMazzy","LOCALS",0)
~ THEN BEGIN 20 // from:
  SAY #38851 /* ~Ribald el Truequista a vuestro servicio. Yo...~ */
  IF ~~ THEN DO ~SetGlobal("RibaldMazzy","LOCALS",1)
~ EXTERN ~MAZZYJ~ 95
END

IF ~~ THEN BEGIN 21 // from:
  SAY #38852 /* ~Vaya, pero si es mi mediana favorita. ¿Cómo os va, muchacha?~ */
  IF ~~ THEN EXTERN ~MAZZYJ~ 96
END

IF ~~ THEN BEGIN 22 // from:
  SAY #38853 /* ~Bien, entonces debo agradecer a vuestro amigo el que mantenga a una bella muchacha como vos entre nosotros. ¿He de suponer que os va bien?~ ~Bien, entonces debo agradecer a vuestra amiga el que mantenga a una bella muchacha como vos entre nosotros. ¿He de suponer que os va bien?~ */
  IF ~~ THEN EXTERN ~MAZZYJ~ 97
END

IF ~~ THEN BEGIN 23 // from:
  SAY #38855 /* ~Ah, qué dulce oíros decir eso. Aunque si os digo la verdad no lo echo mucho de menos. Echad un vistazo a mi nueva empresa muchacha y que no pase tanto tiempo sin que me visitéis.~ */
  IF ~~ THEN EXTERN ~MAZZYJ~ 98
END

IF WEIGHT #2 ~  InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",STATE_SLEEPING)
Global("RibaldJaheira","LOCALS",0)
~ THEN BEGIN 24 // from:
  SAY #38861 /* ~Ribald el Truequista a vuestro servicio. Yo...~ */
  IF ~~ THEN DO ~SetGlobal("RibaldJaheira","LOCALS",1)
~ EXTERN ~JAHEIRAJ~ 313
END

IF ~~ THEN BEGIN 25 // from:
  SAY #38863 /* ~Es... más que suficiente, señorita Jaheira. No traeréis los problemas de los arpistas a mi puerta, buena dama. ¿Es necesario recordaros que mis días junto a los de vuestra calaña terminaron hace tiempo?~ */
  IF ~~ THEN EXTERN ~JAHEIRAJ~ 314
END

IF ~~ THEN BEGIN 26 // from:
  SAY #38865 /* ~Con vosotros siempre hay por lo que preocuparse... Pero debería cuidar mis modales. Por favor, disculpadme.~ */
  IF ~~ THEN GOTO 0
END

IF ~~ THEN BEGIN 27 // from: 0.5
  SAY #42006 /* ~Bien, eso es algo que no me piden todos los días. ¿A otro plano, decís?~ */
  IF ~~ THEN REPLY #42008 /* ~Por favor, si podéis ayudar, os lo agradecería.~ */ GOTO 28
  IF ~~ THEN REPLY #42009 /* ~¿Tenéis o no los medios para ayudarles?~ */ GOTO 28
END

IF ~~ THEN BEGIN 28 // from: 27.1 27.0
  SAY #42010 /* ~Mmm... Puede que tenga algo que os vaya a la perfección. Sí, creo que lo haré.~ */
  IF ~~ THEN GOTO 29
END

IF ~~ THEN BEGIN 29 // from: 28.0
  SAY #42011 /* ~Conozco a una hechicera, una buena hechicera. Se sabe que hace favores de vez en cuando. Sí, cuanto más pienso en ello, más seguro estoy de que hará lo que pedís.~ */
  IF ~~ THEN REPLY #42012 /* ~¡Eso es excelente! ¿A qué estamos esperando, entonces?~ */ GOTO 30
  IF ~~ THEN REPLY #42013 /* ~Dejemos de darle vueltas y olvidémonos de ella de ahora en adelante.~ */ GOTO 30
END

IF ~~ THEN BEGIN 30 // from: 29.1 29.0
  SAY #42014 /* ~Sí, ella puede hacer exactamente lo que habéis pedido... por un precio. Recuerdo que desterró a una criatura de los planos... Fue bastante caro.~ */
  IF ~~ THEN GOTO 31
END

IF ~~ THEN BEGIN 31 // from: 30.0
  SAY #42015 /* ~Tan solo fue una criatura, ¿y vos decís que tenéis a varias? Creo que la empresa os costará... oh... nueve mil monedas de oro.~ */
  IF ~~ THEN REPLY #42016 /* ~¡Nueve mil monedas de oro! ¡Eso es abusivo!~ */ GOTO 32
  IF ~  PartyGoldGT(8999)
~ THEN REPLY #42017 /* ~Entonces, de acuerdo. ¡Aquí tenéis vuestro maldito oro!~ */ DO ~TakePartyGold(9000)
~ GOTO 34
  IF ~~ THEN REPLY #42018 /* ~No puedo permitírmelo.~ */ DO ~SetGlobal("SolamnicKnights","GLOBAL",2)
~ GOTO 33
END

IF ~~ THEN BEGIN 32 // from: 31.0 0.6
  SAY #42019 /* ~Eso depende de a quién preguntéis. Esos caballeros vuestros podrían pensar que es bastante razonable. Tomadlo o dejadlo.~ */
  IF ~  PartyGoldGT(8999)
~ THEN REPLY #42020 /* ~De acuerdo, acepto.~ */ DO ~TakePartyGold(9000)
~ GOTO 34
  IF ~~ THEN REPLY #42021 /* ~No puedo permitírmelo.~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from: 32.1 31.2
  SAY #42022 /* ~Entonces, volved cuando os lo podáis permitir. No puedo hacer rebajas por los servicios de otra persona.~ */
  IF ~~ THEN UNSOLVED_JOURNAL #55640 /* ~Obligaciones de la fortaleza del mago: Ribald puede liberar a los caballeros.

Ribald, del Mercado del Aventurero, tiene los medios para enviar a los caballeros a su hogar, pero necesita nueve mil monedas de oro.~ */ EXIT
END

IF ~~ THEN BEGIN 34 // from: 32.0 31.1
  SAY #42025 /* ~Un placer hacer negocios con vos. Estáis en esa esfera maravillosamente extraña, ¿verdad? Haré que mi amiga llegue allí mañana.~ */
  IF ~~ THEN REPLY #42026 /* ~¿Cómo sabíais dónde necesitaba que fuese vuestra hechicera?~ */ UNSOLVED_JOURNAL #55641 /* ~Obligaciones de la fortaleza del mago: he pagado para enviar a los Caballeros a su hogar.

Ribald ha cogido las nueve mil monedas de oro y ha prometido enviar a un mago a la esfera para teletransportar a los caballeros a su hogar. A ese precio, será mejor que se presente.~ */ GOTO 35
  IF ~~ THEN REPLY #42027 /* ~¡Será mejor que no se retrase!~ */ UNSOLVED_JOURNAL #55641 /* ~Obligaciones de la fortaleza del mago: he pagado para enviar a los Caballeros a su hogar.

Ribald ha cogido las nueve mil monedas de oro y ha prometido enviar a un mago a la esfera para teletransportar a los caballeros a su hogar. A ese precio, será mejor que se presente.~ */ GOTO 36
END

IF ~~ THEN BEGIN 35 // from: 34.0
  SAY #42028 /* ~Tengo oídos por toda la ciudad. Además, ¿dónde podrían estar unas criaturas de los planos? Apostaría a que en el lugar más raro de la ciudad. Idos, ella estará allí mañana.~ */
  IF ~~ THEN DO ~SetGlobal("SolamnicKnights","GLOBAL",3)
SetGlobalTimer("SpawnPaacTimer","GLOBAL",ONE_DAY)
SetGlobal("SpawnPaac","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 36 // from: 34.1
  SAY #42029 /* ~No lo hará, no con esos precios.~ */
  IF ~~ THEN DO ~SetGlobal("SolamnicKnights","GLOBAL",3)
SetGlobalTimer("SpawnPaacTimer","GLOBAL",ONE_DAY)
SetGlobal("SpawnPaac","GLOBAL",1)
~ EXIT
END

IF ~~ THEN BEGIN 37 // from: 0.7
  SAY #45507 /* ~Seguro que podéis. ¿Qué estáis pensando?~ */
  IF ~  GlobalLT("chapter","GLOBAL",4)
~ THEN REPLY #45508 /* ~Una amiga mía ha sido hecha prisionera por los Magos Encapuchados. ¿Sabéis dónde pueden tenerla?~ */ GOTO 38
  IF ~  Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #45509 /* ~¿Alguna idea sobre cómo reunir un buen montón de monedas? Las necesito para liberar a una amiga en poder de los Magos Encapuchados.~ */ GOTO 42
  IF ~  GlobalLT("chapter","GLOBAL",4)
~ THEN REPLY #45510 /* ~¿Qué podéis decirme sobre los Ladrones de las Sombras?~ */ GOTO 45
  IF ~~ THEN REPLY #45511 /* ~Nada. No importa.~ */ GOTO 46
END

IF ~~ THEN BEGIN 38 // from: 45.0 44.0 37.0
  SAY #45512 /* ~Aaah, qué mala pata. Un amigo mío vino desde Riatavín hace un año o así, un hechicero llamado Terce. Su mula se había quedado coja y él había convocado un disco flotante para llevar su equipo.~ */
  IF ~~ THEN GOTO 39
END

IF ~~ THEN BEGIN 39 // from: 38.0
  SAY #45513 /* ~Le capturaron, claro. Terce debería haberlo sabido... Estoy seguro que pensó que un disco era totalmente inofensivo, pero esos magos son estrictos con sus autorizaciones.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from: 39.0
  SAY #45514 /* ~Intenté buscarlo, pero los Magos Encapuchados no son fáciles de encontrar... Aquí nadie sabe dónde están. Y nunca revelan dónde está su prisión mágica.~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from: 40.0
  SAY #45515 /* ~Es una locura que el Consejo les dé tanto poder. Solo Mystra sabe lo que hacen con sus prisioneros. Ojalá pudiera seros de más ayuda, pero nunca más volví a saber de Terce.~ */
  IF ~  Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #45516 /* ~¿Alguna idea sobre cómo reunir un buen montón de monedas? Las necesito para liberar a una amiga en poder de los Magos Encapuchados.~ */ GOTO 42
  IF ~  GlobalLT("chapter","GLOBAL",4)
~ THEN REPLY #45517 /* ~¿Qué sabéis sobre los Ladrones de las Sombras?~ */ GOTO 45
  IF ~  Global("BribedCowled","GLOBAL",0)
~ THEN REPLY #61118 /* ~¿Habéis mencionado algo sobre una autorización?~ */ GOTO 50
  IF ~~ THEN REPLY #45518 /* ~Ya veo. Seguiré mi camino.~ */ GOTO 46
END

IF ~~ THEN BEGIN 42 // from: 52.0 45.1 41.0 37.1
  SAY #45519 /* ~Mmm. ¿Ahorrando para un soborno? Podría funcionar, nunca se sabe... ni siquiera esos malditos Magos Encapuchados son perfectos.~ */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from: 42.0
  SAY #45521 /* ~Y en cuanto a ideas, estoy seguro de que para un intrépido aventurero como vos, hay muchas formas de conseguir dinero. En mi opinión, aquí podéis conseguir muchas recompensas.~ ~Y en cuanto a ideas, estoy seguro de que para una intrépida aventurera como vos, hay muchas formas de conseguir dinero. En mi opinión, aquí podéis conseguir muchas recompensas.~ */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from: 43.0
  SAY #45522 /* ~Si todavía no habéis mirado en la Corona de Cobre, en los barrios bajos, yo lo intentaría en uno de los templos. O incluso con los Ladrones de las Sombras en los puertos, si estáis dispuesto a trabajar con esos tipos.~ ~Si todavía no habéis mirado en la Corona de Cobre, en los barrios bajos, yo lo intentaría en uno de los templos. O incluso con los Ladrones de las Sombras en los puertos, si estáis dispuesta a trabajar con esos tipos.~ */
  IF ~  GlobalLT("chapter","GLOBAL",4)
~ THEN REPLY #45523 /* ~Una amiga mía fue capturada por los Magos Encapuchados. ¿Tenéis alguna idea de dónde pueden retenerla?~ */ GOTO 38
  IF ~  GlobalLT("chapter","GLOBAL",4)
~ THEN REPLY #45524 /* ~¿Qué sabéis sobre los Ladrones de las Sombras?~ */ GOTO 45
  IF ~~ THEN REPLY #45525 /* ~Ya veo. Seguiré mi camino.~ */ GOTO 46
END

IF ~~ THEN BEGIN 45 // from: 52.1 44.1 41.1 37.2
  SAY #45526 /* ~Ellos dirigen el puerto, y no es una zona que conozca... El hombre con el que debéis hablar se llama Cabellorrojo. Dicen que ahora están en medio de una especie de disputa, pero ¿quién sabe?~ */
  IF ~  GlobalLT("chapter","GLOBAL",4)
~ THEN REPLY #45527 /* ~Una amiga mía ha sido hecha prisionera por los Magos Encapuchados. ¿Sabéis dónde pueden retenerla?~ */ GOTO 38
  IF ~  Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #45528 /* ~Necesito reunir un buen montón de dinero para salvar a una amiga de los Magos Encapuchados. ¿Alguna idea?~ */ GOTO 42
  IF ~~ THEN REPLY #45529 /* ~Ya veo. Entonces me marcharé.~ */ GOTO 46
END

IF ~~ THEN BEGIN 46 // from: 52.2 45.2 44.2 41.3 37.3
  SAY #45530 /* ~De acuerdo. La tienda estará aquí cuando volváis, seguro.~ */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 47 // from: 0.2
  SAY #57311 /* ~Entonces, de acuerdo. Sois un buen cliente y un aventurero de éxito. ¿Os gustaría ver mi surtido secreto de artículos? Por solo cincuenta monedas de oro os mostraré las mercancías.~ ~Entonces, de acuerdo. Sois una buena clienta y una aventurera de éxito. ¿Os gustaría ver mi surtido secreto de artículos? Por solo cincuenta monedas de oro os mostraré las mercancías.~ */
  IF ~  PartyGoldGT(49)
~ THEN REPLY #57316 /* ~Claro, mostradme vuestras mercancías "especiales".~ */ DO ~TakePartyGold(50)
~ GOTO 48
  IF ~~ THEN REPLY #57317 /* ~Lo siento, ahora solo estoy interesado en vuestros artículos normales.~ ~Lo siento, ahora solo estoy interesada en vuestros artículos normales.~ */ GOTO 49
END

IF ~~ THEN BEGIN 48 // from: 47.0
  SAY #57318 /* ~Echad un vistazo a algunos de estos artículos. No os defraudarán.~ */
  IF ~~ THEN DO ~StartStore("ribald3",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 49 // from: 47.1
  SAY #57319 /* ~De acuerdo, pero si cambiáis de opinión, ya sabéis dónde venir.~ */
  IF ~~ THEN DO ~StartStore("ribald",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 50 // from: 41.2
  SAY #61119 /* ~Seguro. La prohibición del uso de la magia solo se aplica a la gente con "mala reputación". Y en Amn solo hay un barómetro para medir lo que está bien: el dinero.~ */
  IF ~~ THEN GOTO 51
END

IF ~~ THEN BEGIN 51 // from: 50.0
  SAY #61120 /* ~Si tenéis suficiente dinero, los Magos Encapuchados estarán dispuestos a daros el beneficio de la duda. ¿Y por qué no? Se hacen ricos y, si causáis algún problema, os arrestan de todos modos.~ */
  IF ~~ THEN GOTO 52
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY #61121 /* ~No es un mal negocio, aunque... una vez les hayáis pagado, pueden ignoraros. Si os interesa, intentadlo con el mago Corneil, en la sede del Consejo en el distrito gubernamental.~ */
  IF ~  Global("chapter","GLOBAL",2)
Global("ShadowWork","GLOBAL",1)
~ THEN REPLY #61122 /* ~Entonces, ¿tenéis alguna idea sobre cómo reunir un buen montón de dinero?~ */ GOTO 42
  IF ~  GlobalLT("chapter","GLOBAL",4)
~ THEN REPLY #61123 /* ~¿Qué sabéis sobre los Ladrones de las Sombras?~ */ GOTO 45
  IF ~~ THEN REPLY #61124 /* ~Ya veo. Seguiré mi camino.~ */ GOTO 46
END


IF WEIGHT #0 ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_RibaldDusk","LOCALS",0)
~ THEN BEGIN P_DUSK1 // from:
  SAY @30000 /* ~Ribald el Truequista a vuestro servicio. El Mercado del Aventurero es la mejor tienda del ramo en toda Faerûn. La mejor selección, los precios asequibles y no son cantos de sirena. Tan solo buenas mercancías, simple y llanamente... Hmmm... ¿Por qué anotas a medida que voy hablando, muchacho?~ */
  IF ~~ THEN DO ~SetGlobal("P_RibaldDusk","LOCALS",1)
~ EXTERN ~P_DUSKJ~ 309
END

IF ~~ THEN BEGIN P_DUSK2 // from:
  SAY @30001 /* ~Ah, ya veo. Un futuro competidor, ¿eh? Ah, no hay necesidad de esa cara, mi estimado humano. Puedes aprender todo lo que quieras. Y, de paso, harías bien en comprarme una o dos baratijas, ¿no lo crees? Ahora, déjame comenzar de nuevo:~ */
  IF ~~ THEN GOTO 0 
END