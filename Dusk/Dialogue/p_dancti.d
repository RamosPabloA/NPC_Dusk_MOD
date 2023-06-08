BEGIN p_dancti

// 1st Appearance
IF ~Global("P_DanctianAppear","GLOBAL",3)~ THEN BEGIN 0 // from:
  SAY @0 /* ~Libre... al fin...~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",4)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~Ardusk Aldant y <CHARNAME>. Os debo mi lealtad...~ */
    IF ~~ THEN REPLY @2 /* ~��Un demonio sombr�o?! Dusk, �en guardia! Debemos acabar con �l.~ */  GOTO 2
	IF ~~ THEN REPLY @3 /* ~�Por Candelero! �Qui�n rayos eres t�?~ */  GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY @4 /* ~No debes temer por m�, hijo de Bhaal. No creo ser la primer criatura no hostil que conozcas. Al igual que Ardusk, mi lealtad estar� contigo siempre y cuando �l te acompa�e.~ ~No debes temer por m�, hija de Bhaal. No creo ser la primer criatura no hostil que conozcas. Al igual que Ardusk, mi lealtad estar� contigo siempre y cuando �l te acompa�e.~ */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 3 // from:
  SAY @10 /* ~No hay necesidad de emplear la violencia aqu� y ahora, hijo de Bhaal. No pretendo atacaros.~ ~No hay necesidad de emplear la violencia aqu� y ahora, hija de Bhaal. No pretendo atacaros.~ */
  IF ~~ THEN GOTO 7
END

IF ~~ THEN BEGIN 4 // from:
  SAY @5 /* ~Mi nombre es Danctian Shadow. Puede que mi apellido sea redundante, pero as� es, seg�n recuerdo, como me llamo.~ */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from:
  SAY @6 /* ~Durante un breve tiempo fui utilizado como canalizador entre el Pandemonium y este plano. La Orden de Hechiceros que persigue a Dusk est� interesada tambi�n en hacer contacto directo con el Plano de Energ�a Negativa.~ */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @7 /* ~Presiento que est� relacionado con la nigromancia, debido a la escuela de especializaci�n de su l�der.~ */
  IF ~~ THEN REPLY @8 /* ~No comprendo por qu� nos cuentas esto. �Acaso pretendes que confiemos en ti?~ */  GOTO 7
  IF ~~ THEN REPLY @9 /* ~Apareces de la nada y tu energ�a demon�aca es demasiado evidente. Dame una buena raz�n por la que no deba destruirte aqu� y ahora.~ */  GOTO 3
END

IF ~~ THEN BEGIN 7 // from:
  SAY @11 /* ~Si conf�as en Ardusk, entonces podr�s confiar en m�. Estoy atado a su voluntad, puesto a que... he tomado parte de su energ�a vital para poder materializarme en este plano.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @12 /* ~Pero basta de explicaciones... Veo que tienes una pregunta en particular, mortal, �no es as�?~ */
  IF ~PartyHasItem("p_restos")~ THEN REPLY @13 /* ~�Qu� utilidad tendr�s para nosotros? Al menos el leprechaun serv�a para forjarnos cosas.~ */ GOTO 9
  IF ~!PartyHasItem("p_restos")~ THEN REPLY @13 /* ~�Qu� utilidad tendr�s para nosotros? Al menos el leprechaun serv�a para forjarnos cosas.~ */ GOTO 10
END

IF ~~ THEN BEGIN 9 // from:
  SAY @15 /* ~He absorbido el poder de la criatura m�gica. Puedo manipular su poder de creaci�n con una considerable mejora. �A�n tienen su libro de recetas? Puedo forjar esos artefactos sin necesidad de oro, aunque el resto de los ingredientes siguen siendo necesarios.~ */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 10 // from:
  SAY @15 /* ~He absorbido el poder de la criatura m�gica. Puedo manipular su poder de creaci�n con una considerable mejora. �A�n tienen su libro de recetas? Puedo forjar esos artefactos sin necesidad de oro, aunque el resto de los ingredientes siguen siendo necesarios.~ */
  IF ~~ THEN GOTO 81 // SEGUIR MAS ADELANTE
END

IF ~~ THEN BEGIN 11 // from:
  SAY @17 /* ~De hecho, veo que has obtenido un cargamento cormyreano de tu reciente... expedici�n en su batalla contra Alabarza. Nos ser� muy �til, ya ver�s.~ */
  IF ~~ THEN DO ~TakePartyItem("P_RESTOS") DestroyItem ("P_RESTOS")~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from:
  SAY @18 /* ~Puedo forjar artefactos especiales para ustedes. Incluso algo m�s... personalizado para tus compa�eros, hijo de Bhaal.~ ~Puedo forjar artefactos especiales para ustedes. Incluso algo m�s... personalizado para tus compa�eros, hija de Bhaal.~ */
  IF ~~ THEN GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @84 /* ~En cuanto a ti, hijo de Bhaal, podemos hacer una de varias cosas: Puedo recompensarte con una buena cantidad de oro y algunos tomos especiales que he sido capaz de recopilar. Cien mil piezas de oro y seis tomos m�gicos para mejorar aptitudes. Esa ser�a una opci�n.~ ~En cuanto a ti, hija de Bhaal, podemos hacer una de varias cosas: Puedo recompensarte con una buena cantidad de oro y algunos tomos especiales que he sido capaz de recopilar. Cien mil piezas de oro y seis tomos m�gicos para mejorar aptitudes. Esa ser�a una opci�n.~ */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 14 // from:
  SAY @85 /* ~Tambi�n puedes optar por varios objetos m�gicos que puedo llegar a recuperar del cargamento. Entre ellos contar�as con una katana, dos ninja-to, una armadura y una gema m�gica. Todos esos objetos m�gicos pueden ser tuyos.~ */
  IF ~~ THEN GOTO 15
END

IF ~~ THEN BEGIN 15 // from:
  SAY @86 /* ~Y como �ltima opci�n, una poderosa espada legendaria. Se llama Mugenjin, y es el arma perfecta para alguien destinado al Asesinato. Como a�n no la he forjado, puedo hacer que elijas qu� tipo de arma ser�: una espada larga, una katana, una cimitarra o un mandoble. Eso s�, debes tener en cuenta que el arma no podr� ser blandida por aquellos que se rijan en lo legal.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @87 /* ~Muy bien, �entonces, hijo de Bhaal! �Qu� ser�?~ ~Muy bien, �entonces, hija de Bhaal! �Qu� ser�?~ */
  IF ~~ THEN REPLY @88 /* ~A devir verdad, Danctian, cien mil piezas de oro y esos tomos no suenan mal. Elijo esa opci�n.~ */ GOTO 17
  IF ~~ THEN REPLY @89 /* ~Nada le gana a un buen pu�ado de objetos m�gicos, demonio. Prefiero eso antes que cualquier cosa.~ */ GOTO 18
  IF ~~ THEN REPLY @90 /* ~La espada legendaria, Danctian.~ */ GOTO 19
END

// CHEQUEAR LOS ENTRIES
IF ~~ THEN BEGIN 17 // from:
  SAY @91 /* ~Excelente elecci�n, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aqu� y os agradezco por mi liberaci�n. Os aseguro que no se arrepentir�n de ello. Estar� aqu� por si necesitan forjar alg�n artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscar�... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  GiveGoldForce(100000) AddexperienceParty(100000)
  CreateItem ("BOOK03",1,2,1)  GiveItem("BOOK03", LastTalkedToBy)
  CreateItem ("BOOK04",1,2,1)  GiveItem("BOOK04", LastTalkedToBy)
  CreateItem ("BOOK05",1,2,1)  GiveItem("BOOK05", LastTalkedToBy)
  CreateItem ("BOOK06",1,2,1)  GiveItem("BOOK06", LastTalkedToBy)
  CreateItem ("BOOK07",1,2,1)  GiveItem("BOOK07", LastTalkedToBy)
  CreateItem ("BOOK08",1,2,1)  GiveItem("BOOK08", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~~ THEN BEGIN 18 // from:
  SAY @91 /* ~Excelente elecci�n, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aqu� y os agradezco por mi liberaci�n. Os aseguro que no se arrepentir�n de ello. Estar� aqu� por si necesitan forjar alg�n artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscar�... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_CHAN99",1,2,1)  GiveItem("P_CHAN99", LastTalkedToBy)
  CreateItem ("p_sw1h01",1,2,1)  GiveItem("p_sw1h01", LastTalkedToBy)
  CreateItem ("P_SW1H02",1,2,1)  GiveItem("P_SW1H02", LastTalkedToBy)
  CreateItem ("P_SW1H05",1,2,1)  GiveItem("P_SW1H05", LastTalkedToBy)
  CreateItem ("P_NBK01",1,2,1)  GiveItem("P_NBK01", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~~ THEN BEGIN 19 // from:
  SAY @92 /* ~�Qu� tipo de arma quieres obtener?~ */
  IF ~~ THEN REPLY @93 /* ~Una espada larga.~ */ GOTO 20
  IF ~~ THEN REPLY @94 /* ~Una katana.~ */ GOTO 21
  IF ~~ THEN REPLY @95 /* ~Una cimitarra.~ */ GOTO 22
  IF ~~ THEN REPLY @96 /* ~Un mandoble.~ */ GOTO 23
  IF ~~ THEN REPLY @97 /* ~Hm... he cambiado de opini�n. Prefiero elegir otra cosa.~ */ GOTO 16
END

IF ~~ THEN BEGIN 20 // from:
  SAY @91 /* ~Excelente elecci�n, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aqu� y os agradezco por mi liberaci�n. Os aseguro que no se arrepentir�n de ello. Estar� aqu� por si necesitan forjar alg�n artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscar�... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H13",1,2,1)  GiveItem("P_SW1H13", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~~ THEN BEGIN 21 // from:
  SAY @91 /* ~Excelente elecci�n, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aqu� y os agradezco por mi liberaci�n. Os aseguro que no se arrepentir�n de ello. Estar� aqu� por si necesitan forjar alg�n artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscar�... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H03",1,2,1)  GiveItem("P_SW1H03", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~~ THEN BEGIN 22 // from:
  SAY @91 /* ~Excelente elecci�n, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aqu� y os agradezco por mi liberaci�n. Os aseguro que no se arrepentir�n de ello. Estar� aqu� por si necesitan forjar alg�n artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscar�... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H33",1,2,1)  GiveItem("P_SW1H33", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~~ THEN BEGIN 23 // from:
  SAY @91 /* ~Excelente elecci�n, mi <LADYLORD>. De nuevo, os felicito por lo que han logrado aqu� y os agradezco por mi liberaci�n. Os aseguro que no se arrepentir�n de ello. Estar� aqu� por si necesitan forjar alg�n artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscar�... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H23",1,2,1)  GiveItem("P_SW1H23", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

//// FORJAR ITEMS

IF ~Global("P_DuskDanctialMISSION","GLOBAL",0) Global("P_Danctian_Forge","GLOBAL",0)Global ("P_Dusk_Dancti_Enc_MF","GLOBAL",0)~ THEN BEGIN 24 // from:
  SAY @98 /* ~Os saludo, mortal. �Has venido a forjar alg�n artefacto? Me asegurar� de obtener un resultado eficiente, en especial para aquellos que son allegados a Ardusk. Y recuerden... el uso de mis poderes no requiere de oro.~ */
  IF ~~ THEN REPLY @99 /* ~A�n no hemos logrado reunir lo necesario, Danctian.~ */ GOTO 25 //52
  
  //Espada de Disrupci�n
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_swr1") PartyHasItem("SCRL09") PartyHasItem("MISC40") PartyHasItem("MISC19") PartyHasItem("MISC44") PartyHasItem("BOOK89")~ THEN REPLY @101 /* ~Danctian, hemos conseguido lo necesario para mejorar la espada de Dusk.~ */ GOTO 26 // 53
  
  // Defensa de Cormyr
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_dchan1") PartyHasItem("p_brkshl") PartyHasItem("MISC35") PartyHasItem("MISC38")~ THEN REPLY @113 /* ~Danctian, hemos conseguido lo necesario para mejorar la armadura de Dusk.~ */ GOTO 34
  
  // Brazales de Defensa P�trea	
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 0) PartyHasItem("brac01") PartyHasItem("SCRL15") PartyHasItem("misc23") ~ THEN REPLY @116 /* ~Danctian, hemos conseguido lo necesario para crear los Brazales de Defensa P�trea.~ */ GOTO 40
  
  
  // Crimson Thunder
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 0) PartyHasItem("HAMM03") PartyHasItem("STAF13") PartyHasItem("SCRL1K") PartyHasItem("WAND04") PartyHasItem("AMUL13") PartyHasItem("RING19") ~ THEN REPLY @119 /* ~Danctian, hemos conseguido lo necesario para crear el martillo: Trueno Escarlata.~ */ GOTO 45
   
  
  // Fuego Salvaje
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 0) PartyHasItem("LEAT09") PartyHasItem("MISC16") PartyHasItem("SCRL06") PartyHasItem("AMUL24")  ~ THEN REPLY @121 /* ~Danctian, hemos conseguido lo necesario para crear la armadura Fuego Salvaje.~ */ GOTO 50
  
  
  // Venom Strike
  IF ~Global ("p_venom_strike", "GLOBAL", 0) PartyHasItem("BLUN17") PartyHasItem("SCRL08") PartyHasItem("SCRL1Q") PartyHasItem("POTN42") PartyHasItem("MISC31") PartyHasItem("MISC37")  ~ THEN REPLY @123 /* ~Danctian, hemos conseguido lo necesario para crear el mayal Golpe de Veneno.~ */ GOTO 55
  
  
  
  // Colmillo de Larloch
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 0)  PartyHasItem("POTN22") PartyHasItem("MISC26") PartyHasItem("SCRL84") PartyHasItem("HELM06") 
  OR (2)
  PartyHasItem("AX1H02")
  PartyHasItem("KORAX01")~ THEN REPLY @125 /* ~Danctian, hemos conseguido lo necesario para forjar el Colmillo de Larloch.~ */ GOTO 60
   
  
  // Ventisca del Averno
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 0) PartyGoldGT(12499) PartyHasItem("SW1H42") PartyHasItem("SCRL04") PartyHasItem("MISC17") PartyHasItem("MISC33") PartyHasItem("MISC42") ~ THEN REPLY @127 /* ~Danctian, hemos conseguido lo necesario para forjar la Ventisca del Averno.~ */ GOTO 65
  
  
  
  
  
  // Vengadora Real
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("P_WSSTP_vengadora_real", "GLOBAL", 0) PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2") ~ THEN REPLY @129 /* ~Danctian, hemos conseguido los artefactos del Duque Benork.~ */ GOTO 70




  // Gema del Drag�n P�rpura
  IF ~PartyHasItem("p_gemdr1")~ THEN REPLY @134 /* ~Danctian, queremos forjar algo con la Amatista del Drag�n P�rpura.~ */ GOTO 74
END


IF ~~ THEN BEGIN 25 // from:
  SAY @100 /* ~Ya veo. Estar� aqu� por si me necesitan. Los estar� esperando... en las sombras...~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 26 // from:
  SAY @102 /* ~Es una gran noticia, mortal. Entonces, �procedo?~ */
  IF ~~ THEN REPLY @103 /* ~Por supuesto.~ */ GOTO 27
  IF ~~ THEN REPLY @104 /* ~A�n no, Danctian. Quiz�s m�s adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 27 // from:
  SAY @105 /* ~De acuerdo, mortal. Ver�s que mi obra no tiene nada que envidiar a aquella criatura m�gica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_sw1hdr_disrupcion", "GLOBAL", 1)~ GOTO 28
END

IF ~~ THEN BEGIN 28 // from:
  SAY @106 /* ~Ardusk, entr�game tu espada. Usar� mis poderes para mejorarla en sobremanera.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 305
END

IF ~~ THEN BEGIN 29 // from:
  SAY @107 /* ~Os lo aseguro, Ardusk... estar�s complacido con los resultados. Ahora... �A un lado!~ */
  IF ~~ THEN DO ~TakePartyItem("p_swr1") 
  TakePartyItem("SCRL09")
  TakePartyItem("MISC40")
  TakePartyItem("MISC19")
  TakePartyItem("MISC44")
  TakePartyItem("BOOK89")
  DestroyItem("p_swr1")
  DestroyItem("SCRL09")
  DestroyItem("MISC40")
  DestroyItem("MISC19")
  DestroyItem("MISC44")
  DestroyItem("BOOK89")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~Global("P_Danctian_Forge","GLOBAL",2)~ THEN BEGIN 30 // from:
  SAY @108 /* ~(Al parecer, el ritual ha terminado y el demonio parece estar impasible ante tal evento)~ */
 IF ~~ THEN DO ~SetGlobal("P_Danctian_Forge","GLOBAL",0)
 ~ GOTO 31
END

// Entrega de ITEMS

IF ~~ THEN BEGIN 31 // from:
  SAY @109 /* ~El ritual ha finalizado, mortal.~ */
  
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 1)~ THEN REPLY @110 /* ~�C�mo ha salido todo, Danctian?~ */ GOTO 32
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 1)~ THEN REPLY @110 /* ~�C�mo ha salido todo, Danctian?~ */ GOTO 38
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 1)~ THEN REPLY @110 /* ~�C�mo ha salido todo, Danctian?~ */ GOTO 43
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 1)~ THEN REPLY @110 /* ~�C�mo ha salido todo, Danctian?~ */ GOTO 48
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 1)~ THEN REPLY @110 /* ~�C�mo ha salido todo, Danctian?~ */ GOTO 53
  IF ~Global ("p_venom_strike", "GLOBAL", 1)~ THEN REPLY @110 /* ~�C�mo ha salido todo, Danctian?~ */ GOTO 58
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 1)~ THEN REPLY @110 /* ~�C�mo ha salido todo, Danctian?~ */ GOTO 63
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 1)~ THEN REPLY @110 /* ~�C�mo ha salido todo, Danctian?~ */ GOTO 68
  IF ~Global ("p_platd1_salus", "GLOBAL", 1)~ THEN REPLY @110 /* ~�C�mo ha salido todo, Danctian?~ */ GOTO 76
  IF ~Global ("p_sw2hdr_rex", "GLOBAL", 1)~ THEN REPLY @110 /* ~�C�mo ha salido todo, Danctian?~ */ GOTO 79

END

IF ~~ THEN BEGIN 32 // from:
  SAY @111 /* ~La Espada de Disrupci�n cormyreana ha sido forjada. Es una mejora notable, Ardusk. Estoy seguro de que sabr�s apreciarla.~ */
  IF ~~ THEN DO ~CreateItem ("p_sw1hdr",1,1,0)  GiveItem("p_sw1hdr", "P_Dusk")~ EXTERN ~P_DUSKJ~ 306
END

IF ~~ THEN BEGIN 33 // from:
  SAY @112 /* ~He hecho lo que solicitaron. Saben d�nde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw1hdr_disrupcion", "GLOBAL", 2)~ EXIT
END

IF ~~ THEN BEGIN 34 // from:
  SAY @102 /* ~Es una gran noticia, mortal. Entonces, �procedo?~ */
  IF ~~ THEN REPLY @103 /* ~Por supuesto.~ */ GOTO 35
  IF ~~ THEN REPLY @104 /* ~A�n no, Danctian. Quiz�s m�s adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 35 // from:
  SAY @105 /* ~De acuerdo, mortal. Ver�s que mi obra no tiene nada que envidiar a aquella criatura m�gica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_dplat1_defensa", "GLOBAL", 1)~ GOTO 36
END

IF ~~ THEN BEGIN 36 // from:
  SAY @114 /* ~Ardusk, entr�game tu armadura. Usar� mis poderes para mejorarla en sobremanera.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 307
END

IF ~~ THEN BEGIN 37 // from:
  SAY @107 /* ~Os lo aseguro, Ardusk... estar�s complacido con los resultados. Ahora... �A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("p_dchan1") 
  TakePartyItem("p_brkshl")
  TakePartyItem("MISC35")
  TakePartyItem("MISC38")
  DestroyItem("p_dchan1") 
  DestroyItem("p_brkshl")
  DestroyItem("MISC35")
  DestroyItem("MISC38")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 38 // from:
  SAY @115 /* ~La Defensa de Cormyr ha sido forjada. Es una mejora notable, Ardusk. Estoy seguro de que sabr�s apreciarla.~ */
  IF ~~ THEN DO ~CreateItem ("p_dplat1",1,1,0)  GiveItem("p_dplat1", "P_Dusk")~ EXTERN ~P_DUSKJ~ 308
END

IF ~~ THEN BEGIN 39 // from:
  SAY @112 /* ~He hecho lo que solicitaron. Saben d�nde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_dplat1_defensa", "GLOBAL", 2)~ EXIT
END

IF ~~ THEN BEGIN 40 // from:
  SAY @102 /* ~Es una gran noticia, mortal. Entonces, �procedo?~ */
  IF ~~ THEN REPLY @103 /* ~Por supuesto.~ */ GOTO 41
  IF ~~ THEN REPLY @104 /* ~A�n no, Danctian. Quiz�s m�s adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 41 // from:
  SAY @105 /* ~De acuerdo, mortal. Ver�s que mi obra no tiene nada que envidiar a aquella criatura m�gica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("P_BRAC99_brazal_petreo", "GLOBAL", 1)~ GOTO 42
END

IF ~~ THEN BEGIN 42 // from:
  SAY @117 /* ~Os lo aseguro, mortal... estar�s complacido con los resultados. Ahora... �A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("brac01") 
  TakePartyItem("SCRL15")
  TakePartyItem("misc23")
  DestroyItem("brac01") 
  DestroyItem("SCRL15")
  DestroyItem("misc23")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 43 // from:
  SAY @118 /* ~Los Brazales de Defensa P�trea han sido forjados. Estoy seguro de que sabr�s apreciarla, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("P_BRAC99",1,1,0)  GiveItem("P_BRAC99", LastTalkedToBy)~ GOTO 44
END

IF ~~ THEN BEGIN 44 // from:
  SAY @112 /* ~He hecho lo que solicitaron. Saben d�nde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("P_BRAC99_brazal_petreo", "GLOBAL", 2)~ EXIT
END

// CRIMSON THUNDER

IF ~~ THEN BEGIN 45 // from:
  SAY @102 /* ~Es una gran noticia, mortal. Entonces, �procedo?~ */
  IF ~~ THEN REPLY @103 /* ~Por supuesto.~ */ GOTO 46
  IF ~~ THEN REPLY @104 /* ~A�n no, Danctian. Quiz�s m�s adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 46 // from:
  SAY @105 /* ~De acuerdo, mortal. Ver�s que mi obra no tiene nada que envidiar a aquella criatura m�gica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_hamm1_crimson_thunder", "GLOBAL", 1)~ GOTO 47
END

IF ~~ THEN BEGIN 47 // from:
  SAY @117 /* ~Os lo aseguro, mortal... estar�s complacido con los resultados. Ahora... �A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("HAMM03") 
  TakePartyItem("STAF13")
  TakePartyItem("SCRL1K")
  TakePartyItem("WAND04") 
  TakePartyItem("AMUL13")
  TakePartyItem("RING19")
  DestroyItem("HAMM03") 
  DestroyItem("STAF13")
  DestroyItem("SCRL1K")
  DestroyItem("WAND04") 
  DestroyItem("AMUL13")
  DestroyItem("RING19")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 48 // from:
  SAY @120 /* ~El poderoso Trueno Escarlata ha sido forjado. Estoy seguro de que sabr�s apreciarlo, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("p_hamm1",1,1,0)  GiveItem("p_hamm1", LastTalkedToBy)~ GOTO 49
END

IF ~~ THEN BEGIN 49 // from:
  SAY @112 /* ~He hecho lo que solicitaron. Saben d�nde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_hamm1_crimson_thunder", "GLOBAL", 2)~ EXIT
END

// FUEGO SALVAJE

IF ~~ THEN BEGIN 50 // from:
  SAY @102 /* ~Es una gran noticia, mortal. Entonces, �procedo?~ */
  IF ~~ THEN REPLY @103 /* ~Por supuesto.~ */ GOTO 51
  IF ~~ THEN REPLY @104 /* ~A�n no, Danctian. Quiz�s m�s adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 51 // from:
  SAY @105 /* ~De acuerdo, mortal. Ver�s que mi obra no tiene nada que envidiar a aquella criatura m�gica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_leat01_fuego_salvaje", "GLOBAL", 1)~ GOTO 52
END

IF ~~ THEN BEGIN 52 // from:
  SAY @117 /* ~Os lo aseguro, mortal... estar�s complacido con los resultados. Ahora... �A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("LEAT09") 
  TakePartyItem("MISC16")
  TakePartyItem("SCRL06")
  TakePartyItem("AMUL24") 
  DestroyItem("LEAT09") 
  DestroyItem("MISC16")
  DestroyItem("SCRL06")
  DestroyItem("AMUL24") 
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY @122 /* ~Fuego Salvaje ha sido forjado. Estoy seguro de que sabr�s apreciarla, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("p_leat01",1,1,0)  GiveItem("p_leat01", LastTalkedToBy)~ GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @112 /* ~He hecho lo que solicitaron. Saben d�nde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_leat01_fuego_salvaje", "GLOBAL", 2)~ EXIT
END

// VENOM STRIKE

IF ~~ THEN BEGIN 55 // from:
  SAY @102 /* ~Es una gran noticia, mortal. Entonces, �procedo?~ */
  IF ~~ THEN REPLY @103 /* ~Por supuesto.~ */ GOTO 56
  IF ~~ THEN REPLY @104 /* ~A�n no, Danctian. Quiz�s m�s adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 56 // from:
  SAY @105 /* ~De acuerdo, mortal. Ver�s que mi obra no tiene nada que envidiar a aquella criatura m�gica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_venom_strike", "GLOBAL", 1)~ GOTO 57
END

IF ~~ THEN BEGIN 57 // from:
  SAY @117 /* ~Os lo aseguro, mortal... estar�s complacido con los resultados. Ahora... �A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("BLUN17") 
  TakePartyItem("SCRL08")
  TakePartyItem("SCRL1Q")
  TakePartyItem("POTN42") 
  TakePartyItem("MISC31")
  TakePartyItem("MISC37") 
  DestroyItem("BLUN17") 
  DestroyItem("SCRL08")
  DestroyItem("SCRL1Q")
  DestroyItem("POTN42") 
  DestroyItem("MISC31")
  DestroyItem("MISC37") 
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 58 // from:
  SAY @124 /* ~El mayal Golpe de Veneno ha sido forjado. Estoy seguro de que sabr�s apreciarlo, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("p_venom",1,1,0)  GiveItem("p_venom", LastTalkedToBy)~ GOTO 59
END

IF ~~ THEN BEGIN 59 // from:
  SAY @112 /* ~He hecho lo que solicitaron. Saben d�nde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_venom_strike", "GLOBAL", 2)~ EXIT
END

// Colmillo de LARLOCH

IF ~~ THEN BEGIN 60 // from:
  SAY @102 /* ~Es una gran noticia, mortal. Entonces, �procedo?~ */
  IF ~~ THEN REPLY @103 /* ~Por supuesto.~ */ GOTO 61
  IF ~~ THEN REPLY @104 /* ~A�n no, Danctian. Quiz�s m�s adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 61 // from:
  SAY @105 /* ~De acuerdo, mortal. Ver�s que mi obra no tiene nada que envidiar a aquella criatura m�gica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_sw1h00_colmillo_larloch", "GLOBAL", 1)~ GOTO 62
END

IF ~~ THEN BEGIN 62 // from:
  SAY @117 /* ~Os lo aseguro, mortal... estar�s complacido con los resultados. Ahora... �A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("AX1H02")
  TakePartyItem("KORAX01")
  TakePartyItem("POTN22")
  TakePartyItem("MISC26")
  TakePartyItem("SCRL84") 
  TakePartyItem("HELM06")
  DestroyItem("AX1H02") 
  DestroyItem("KORAX01") 
  DestroyItem("POTN22")
  DestroyItem("MISC26")
  DestroyItem("SCRL84") 
  DestroyItem("HELM06")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 63 // from:
  SAY @126 /* ~El Colmillo de Larloch ha sido forjado. Estoy seguro de que sabr�s apreciarlo, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("p_sw1h00",1,1,0)  GiveItem("p_sw1h00", LastTalkedToBy)~ GOTO 64
END

IF ~~ THEN BEGIN 64 // from:
  SAY @112 /* ~He hecho lo que solicitaron. Saben d�nde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw1h00_colmillo_larloch", "GLOBAL", 2)~ EXIT
END

// Ventisca del Averno

IF ~~ THEN BEGIN 65 // from:
  SAY @102 /* ~Es una gran noticia, mortal. Entonces, �procedo?~ */
  IF ~~ THEN REPLY @103 /* ~Por supuesto.~ */ GOTO 66
  IF ~~ THEN REPLY @104 /* ~A�n no, Danctian. Quiz�s m�s adelante.~ */ GOTO 25
END

IF ~~ THEN BEGIN 66 // from:
  SAY @105 /* ~De acuerdo, mortal. Ver�s que mi obra no tiene nada que envidiar a aquella criatura m�gica de Shilmista.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_sw1h06_ventisca_averno", "GLOBAL", 1)~ GOTO 67
END

IF ~~ THEN BEGIN 67 // from:
  SAY @117 /* ~Os lo aseguro, mortal... estar�s complacido con los resultados. Ahora... �A un lado!~ */
  IF ~~ THEN DO ~
  TakePartyItem("SW1H42") 
  TakePartyItem("SCRL04")
  TakePartyItem("MISC17")
  TakePartyItem("MISC33") 
  TakePartyItem("MISC42")
  DestroyItem("SW1H42") 
  DestroyItem("SCRL04")
  DestroyItem("MISC17")
  DestroyItem("MISC33") 
  DestroyItem("MISC42")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 68 // from:
  SAY @128 /* ~La Ventisca del Averno ha sido forjada. Estoy seguro de que sabr�s apreciarla, mortal.~ */
  IF ~~ THEN DO ~CreateItem ("p_sw1h06",1,1,0)  GiveItem("p_sw1h06", LastTalkedToBy)~ GOTO 69
END

IF ~~ THEN BEGIN 69 // from:
  SAY @112 /* ~He hecho lo que solicitaron. Saben d�nde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw1h06_ventisca_averno", "GLOBAL", 2)~ EXIT
END

// VENGADORA REAL

IF ~~ THEN BEGIN 70 // from:
  SAY @130 /* ~Hmm... interesante. La criatura m�gica de Shilmista ten�a el �ltimo artefacto del fallecido Benork. Ahora, la Vengadora Real est� en mi poder.~ */
  IF ~~ THEN DO ~SetGlobal ("P_WSSTP_vengadora_real", "GLOBAL", 1)~ 
        REPLY @131 /* ~No ha sido f�cil conseguir todos los artefactos, Danctian. �Nos dar�s la �ltima pieza del Conjunto del Asesino de Magos?~ */ GOTO 72
END

IF ~~ THEN BEGIN 72 // from:
  SAY @132 /* ~Nada me dar�a m�s placer que ver el Conjuto del Asesino de Magos completo en tu poder, mi <LADYLORD>. Despu�s de todo, t� y Ardusk han colaborado en mi liberaci�n del Pandemonium.~ */
  IF ~~ THEN DO ~CreateItem ("P_WSSTP",1,1,0)  GiveItem("P_WSSTP", LastTalkedToBy)~ GOTO 73
END

IF ~~ THEN BEGIN 73 // from:
  SAY @133 /* ~Han logrado lo impensado, mortales. Hoy, han dado un paso m�s cerca en su justa b�squeda por acumular poder. Como el velo de la noche cae inexorable sobre la luz, as� lo har� el acero que blanden sus manos sobre el coraz�n del enemigo...~ */
  IF ~~ DO ~SetGlobal ("P_VENGADORA_FIN", "GLOBAL", 1)~ EXIT
END

// AMATISTA DEL DRAGON PURPURA

IF ~~ THEN BEGIN 74 // from:
  SAY @135 /* ~Ah, ya veo... pues bien, mortal. �Qu� es lo que forjaremos con ella?~ */
  IF ~PartyHasItem("p_dplat1")~ THEN REPLY @136 /* ~Vamos a mejorar la armadura, Danctian: Defensa de Cormyr.~ */ GOTO 75
  IF ~PartyHasItem("p_sw1hdr")~ THEN REPLY @137 /* ~Vamos a mejorar el arma, Danctian: la Espada de Disrupci�n.~ */ GOTO 78
  IF ~~ THEN REPLY @104 /* ~A�n no, Danctian. Quiz�s m�s adelante.~ */ GOTO 25
END

// SALUS

IF ~~ THEN BEGIN 75 // from:
  SAY @138 /* ~De acuerdo, mortal. Obtendr�s una armadura legendaria al combinarla con el poder de la Amatista. Ahora, hazte a un lado y s� testigo de ello...~ */
  IF ~~ THEN DO ~SetGlobal ("p_platd1_salus", "GLOBAL", 1)
  TakePartyItem("p_gemdr1") 
  TakePartyItem("p_dplat1")
  DestroyItem("p_gemdr1") 
  DestroyItem("p_dplat1")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 76 // from:
  SAY @139 /* ~Salus ha sido forjada. Es el ep�tome defensivo para un Asesino de Magos, mi <LADYLORD>. S�lo Ardusk puede usarla.~ */
  IF ~~ THEN DO ~CreateItem ("p_platd1",1,2,1)  GiveItem("p_platd1", LastTalkedToBy)SetGlobal ("p_platd1_salus", "GLOBAL", 2) ~ GOTO 77
END

IF ~~ THEN BEGIN 77 // from:
  SAY @112 /* ~He hecho lo que solicitaron. Saben d�nde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_platd1_salus", "GLOBAL", 2)~ EXIT
END

// REX

IF ~~ THEN BEGIN 78 // from:
  SAY @141 /* ~De acuerdo, mortal. Obtendr�s una espada legendaria al combinarla con el poder de la Amatista. Ahora, hazte a un lado y s� testigo de ello...~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw2hdr_rex", "GLOBAL", 1)
  TakePartyItem("p_gemdr1") 
  TakePartyItem("p_sw1hdr")
  DestroyItem("p_gemdr1") 
  DestroyItem("p_sw1hdr")
  SetGlobal("P_Danctian_Forge","GLOBAL",2)
  ~ EXIT
END

IF ~~ THEN BEGIN 79 // from:
  SAY @142 /* ~Rex ha sido forjada. Es el ep�tome ofensivo para un Asesino de Magos, mi <LADYLORD>. S�lo Ardusk puede blandirla.~ */
  IF ~~ THEN DO ~CreateItem ("p_sw2hdr",1,2,1)  GiveItem("p_sw2hdr", LastTalkedToBy)SetGlobal ("p_sw2hdr_rex", "GLOBAL", 2) ~ GOTO 80
END

IF ~~ THEN BEGIN 80 // from:
  SAY @112 /* ~He hecho lo que solicitaron. Saben d�nde encontrarme si necesitan que forje otro artefacto, mortales. Hasta pronto.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw2hdr_rex", "GLOBAL", 2)~ EXIT
END

// MISSION 3 FINAL SIN p_restos

IF ~~ THEN BEGIN 81 // from:
  SAY @144 /* ~De nuevo, os felicito por lo que han logrado aqu� y os agradezco por mi liberaci�n. Os aseguro que no se arrepentir�n de ello. Estar� aqu� por si necesitan forjar alg�n artefacto. Y Dusk... si tengo novedades sobre la Orden que te persigue, yo mismo te buscar�... en las sombras...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028) EraseJournalEntry (@210033)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H23",1,2,1)  GiveItem("P_SW1H23", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210034 EXIT
END

IF ~Global("P_DuskDanctialMISSION","GLOBAL",0) Global ("P_Dusk_Dancti_Enc_MF","GLOBAL",1)~ THEN BEGIN 82 // from:
  SAY @145 /* ~Ardusk... <CHARNAME>...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskDanctialMISSION","GLOBAL",1) SetGlobal("P_Dusk_Dancti_Enc_MF","GLOBAL",0)~ GOTO 83
END

IF ~~ THEN BEGIN 83 // from:
  SAY @146 /* ~Debemos hablar... un asunto de suma importancia os ata�e... a ambos...~ */
  IF ~~ THEN GOTO 84
END

IF ~~ THEN BEGIN 84 // from:
  SAY @151 /* ~�Y bien, <CHARNAME>? Puede que esto resulte beneficioso para todos nosotros...~ */
    IF ~~ THEN REPLY @152 /* ~Beneficio como de... �tesoros? Soy todo o�dos, Danctian.~ ~Beneficio como de... �tesoros? Soy toda o�dos, Danctian.~ */  GOTO 87
	IF ~~ THEN REPLY @153 /* ~No me das buena espina, demonio. Pero te oir�, por ahora...~ */  GOTO 85
	IF ~~ THEN REPLY @154 /* ~No me interesa lo que sea que vendas, criatura. Vuelve a las sombras de las que saliste.~ */  GOTO 86 
	IF ~~ THEN REPLY @155 /* ~Te escuchar�, Danctian. Habla con libertad.~ */  GOTO 87
END

IF ~~ THEN BEGIN 85 // from:
  SAY @156 /* ~Te lo aseguro, no oculto intenciones perversas para con ustedes.~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 86 // from:
  SAY @157 /* ~Al menos deber�as reconsiderarlo... puesto a que est� relacionado directamente con la Cripta Olvidada.~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 87 // from:
  SAY @158 /* ~Este no es el mejor lugar para hablar... Vengan a la guarida que supo ser de los shilmistas en el Distrito del Puerto de Athkatla. All� hablaremos... acerca de la Cripta Olvidada...~ */
  IF ~~ THEN GOTO 88
END

IF ~~ THEN BEGIN 88 // from:
  SAY @160 /* ~Os dir� todo cuando nos volvamos a reunir... Recuerden: Distrito del puerto, Athkatla en la casa abandonada al noroeste.~ */
  IF ~~ THEN DO ~ForceSpell(Myself,POOF_GONE)~ UNSOLVED_JOURNAL @210039 EXIT
END

// FORJA DE ITEMS 2.0
IF ~~ THEN BEGIN 89 // from:
  SAY @165 /* ~Ya veo... entonces, �qu� he de forjar para ti?~ */
  IF ~~ THEN REPLY @99 /* ~A�n no hemos logrado reunir lo necesario, Danctian.~ */ GOTO 25 //52
  
  //Espada de Disrupci�n
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_swr1") PartyHasItem("SCRL09") PartyHasItem("MISC40") PartyHasItem("MISC19") PartyHasItem("MISC44") PartyHasItem("BOOK89")~ THEN REPLY @101 /* ~Danctian, hemos conseguido lo necesario para mejorar la espada de Dusk.~ */ GOTO 26 // 53
  
  // Defensa de Cormyr
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_dchan1") PartyHasItem("p_brkshl") PartyHasItem("MISC35") PartyHasItem("MISC38")~ THEN REPLY @113 /* ~Danctian, hemos conseguido lo necesario para mejorar la armadura de Dusk.~ */ GOTO 34
  
  // Brazales de Defensa P�trea	
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 0) PartyHasItem("brac01") PartyHasItem("SCRL15") PartyHasItem("misc23") ~ THEN REPLY @116 /* ~Danctian, hemos conseguido lo necesario para crear los Brazales de Defensa P�trea.~ */ GOTO 40
  
  
  // Crimson Thunder
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 0) PartyHasItem("HAMM03") PartyHasItem("STAF13") PartyHasItem("SCRL1K") PartyHasItem("WAND04") PartyHasItem("AMUL13") PartyHasItem("RING19") ~ THEN REPLY @119 /* ~Danctian, hemos conseguido lo necesario para crear el martillo: Trueno Escarlata.~ */ GOTO 45
   
  
  // Fuego Salvaje
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 0) PartyHasItem("LEAT09") PartyHasItem("MISC16") PartyHasItem("SCRL06") PartyHasItem("AMUL24")  ~ THEN REPLY @121 /* ~Danctian, hemos conseguido lo necesario para crear la armadura Fuego Salvaje.~ */ GOTO 50
  
  
  // Venom Strike
  IF ~Global ("p_venom_strike", "GLOBAL", 0) PartyHasItem("BLUN17") PartyHasItem("SCRL08") PartyHasItem("SCRL1Q") PartyHasItem("POTN42") PartyHasItem("MISC31") PartyHasItem("MISC37")  ~ THEN REPLY @123 /* ~Danctian, hemos conseguido lo necesario para crear el mayal Golpe de Veneno.~ */ GOTO 55
  
  
  
  // Colmillo de Larloch
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 0)  PartyHasItem("POTN22") PartyHasItem("MISC26") PartyHasItem("SCRL84") PartyHasItem("HELM06") 
  OR (2)
  PartyHasItem("AX1H02")
  PartyHasItem("KORAX01")~ THEN REPLY @125 /* ~Danctian, hemos conseguido lo necesario para forjar el Colmillo de Larloch.~ */ GOTO 60   
  
  // Ventisca del Averno
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 0) PartyGoldGT(12499) PartyHasItem("SW1H42") PartyHasItem("SCRL04") PartyHasItem("MISC17") PartyHasItem("MISC33") PartyHasItem("MISC42") ~ THEN REPLY @127 /* ~Danctian, hemos conseguido lo necesario para forjar la Ventisca del Averno.~ */ GOTO 65
  
  // Vengadora Real
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("P_WSSTP_vengadora_real", "GLOBAL", 0) PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2") ~ THEN REPLY @129 /* ~Danctian, hemos conseguido los artefactos del Duque Benork.~ */ GOTO 70



  // Gema del Drag�n P�rpura
  IF ~PartyHasItem("p_gemdr1")~ THEN REPLY @134 /* ~Danctian, queremos forjar algo con la Amatista del Drag�n P�rpura.~ */ GOTO 74
END

// EVIL -> FINAL MISSION
// CON DUSK
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",1)~ THEN BEGIN 90 // from:
  SAY @166 /* ~Han acudido a mi llamada. Bien, bien...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskDanctialMISSION","GLOBAL",2)~ GOTO 94
END

// SIN DUSK
IF ~!InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",1)~ THEN BEGIN 91
  SAY @167 /* ~<CHARNAME>, no veo a Ardusk contigo. Ser� mejor que vuelvas con �l para que hablemos sobre la Cripta Olvidada.~ */
    IF ~~ THEN REPLY @168 /* ~De acuerdo, Danctian. Volver� con Dusk.~ */  GOTO 93
    IF ~~ THEN REPLY @169 /* ~Est� bien, Danctian. Aunque primero me gustar�a ver si podemos forjar algo antes.~ */  GOTO 89
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",1)~ THEN BEGIN 92
  SAY @167 /* ~<CHARNAME>, no veo a Ardusk contigo. Ser� mejor que vuelvas con �l para que hablemos sobre la Cripta Olvidada.~ */
    IF ~~ THEN REPLY @168 /* ~De acuerdo, Danctian. Volver� con Dusk.~ */  GOTO 93
    IF ~~ THEN REPLY @169 /* ~Est� bien, Danctian. Aunque primero me gustar�a ver si podemos forjar algo antes.~ */  GOTO 89
END

IF ~~ THEN BEGIN 93 // from:
  SAY @170 /* ~De acuerdo, <CHARNAME>. Os estar� esperando... en las sombras.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 94 // from:
  SAY @171 /* ~Ardusk, el nigromante llamado Anthagar ha contactado conmigo.~ */
  IF ~~ THEN GOTO 95
END

IF ~~ THEN BEGIN 95 // from:
  SAY @172 /* ~Y esta consiste, simplemente, en acudir a su llamado.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 318
END

IF ~~ THEN BEGIN 96 // from:
  SAY @173 /* ~Proceder� a resumir lo que sucede, hijo de Bhaal.~ ~Proceder� a resumir lo que sucede, hija de Bhaal.~ */
  IF ~~ THEN GOTO 97
END

IF ~~ THEN BEGIN 97
  SAY @174 /* ~Ardusk tiene... raz�n. Ya sea que desees formar parte de dicha Orden o pretendas destruirla, �l debe dar el consentimiento a la hora de viajar a trav�s del orbe aciago.~ */
    // NO TIENE ESPADA CARMES�
	IF ~!PartyHasItem("p_swevi2")~ THEN REPLY @175 /* ~Muy bien, Danctian. Obtener un gran poder a trav�s de la Orden de los Magos no suena nada mal.~ */  GOTO 98
    IF ~!PartyHasItem("p_swevi2")~ THEN REPLY @176 /* ~Lo que la Cripta Olvidada planea es vil y obsceno. Debemos detenerles cuanto antes.~ */  GOTO 98
	IF ~!PartyHasItem("p_swevi2")~ THEN REPLY @177 /* ~Debo pensar qu� hacer al respecto. A�n no me decido qu� hacer.~ */  GOTO 98
    IF ~!PartyHasItem("p_swevi2")~ THEN REPLY @178 /* ~Actuar� conforme vaya avanzando en la misi�n. Cuando podamos hablar con ellos, all� decidir�.~ */  GOTO 98
    // TIENE ESPADA CARMES�	
	IF ~PartyHasItem("p_swevi2")~ THEN REPLY @175 /* ~Muy bien, Danctian. Obtener un gran poder a trav�s de la Orden de los Magos no suena nada mal.~ */  GOTO 103
    IF ~PartyHasItem("p_swevi2")~ THEN REPLY @176 /* ~Lo que la Cripta Olvidada planea es vil y obsceno. Debemos detenerles cuanto antes.~ */  GOTO 103
	IF ~PartyHasItem("p_swevi2")~ THEN REPLY @177 /* ~Debo pensar qu� hacer al respecto. A�n no me decido qu� hacer.~ */  GOTO 103
    IF ~PartyHasItem("p_swevi2")~ THEN REPLY @178 /* ~Actuar� conforme vaya avanzando en la misi�n. Cuando podamos hablar con ellos, all� decidir�.~ */  GOTO 103
END

IF ~~ THEN BEGIN 98 // from:
  SAY @179 /* ~Ser� como t� desees, <CHARNAME>. Cuando est�n listos, s�lo deben pedirme que active el orbe y habr� de llevarlos a ese lugar. Hasta entonces, os estar� esperando...~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",2)
  ~ UNSOLVED_JOURNAL @210043 EXIT
END

// MISSION FINAL GLOBAL 2
// SIN DUSK
IF ~!InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",2)~ THEN BEGIN 99
  SAY @194 /* ~<CHARNAME>, no veo a Ardusk contigo. Ser� mejor que vuelvas con �l si quieren que use el orbe aciago del Nigromante.~ */
    IF ~~ THEN REPLY @168 /* ~De acuerdo, Danctian. Volver� con Dusk.~ */  GOTO 93
    IF ~~ THEN REPLY @169 /* ~Est� bien, Danctian. Aunque primero me gustar�a ver si podemos forjar algo antes.~ */  GOTO 89
END

// SIN DUSK
IF ~InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",2)~ THEN BEGIN 100
  SAY @194 /* ~<CHARNAME>, no veo a Ardusk contigo. Ser� mejor que vuelvas con �l si quieren que use el orbe aciago del Nigromante.~ */
    IF ~~ THEN REPLY @168 /* ~De acuerdo, Danctian. Volver� con Dusk.~ */  GOTO 93
    IF ~~ THEN REPLY @169 /* ~Est� bien, Danctian. Aunque primero me gustar�a ver si podemos forjar algo antes.~ */  GOTO 89
END


// CON DUSK
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDanctialMISSION","GLOBAL",2)~ THEN BEGIN 101
  SAY @195 /* ~Bien... �est�n listos para partir? Os recomiendo estar bien preparados antes del encuentro.~ */
    IF ~~ THEN REPLY @196 /* ~Estamos listos, Danctian. �Activa el orbe!~ */  GOTO 102
    IF ~~ THEN REPLY @169 /* ~Est� bien, Danctian. Aunque primero me gustar�a ver si podemos forjar algo antes.~ */  GOTO 89
END

IF ~~ THEN BEGIN 102 // from:
  SAY @197 /* ~Muy bien... el Orbe aciago ser� activado. �Que la fuerza del Pandemonium os bendiga!~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",3)
  ~ UNSOLVED_JOURNAL @210044 EXIT
END

// FORJA DE LA ESPADA IRA

IF ~~ THEN BEGIN 103 // from:
  SAY @198 /* ~Ser� como t� desees, <CHARNAME>. Cuando est�n listos, s�lo deben pedirme que active el orbe y habr� de llevarlos a ese lugar. Por cierto... Ardusk...~ */
  IF ~~ THEN GOTO 104
END

IF ~~ THEN BEGIN 104 // from:
  SAY @199 /* ~Veo que a�n llevas la Espada carmes�. El coraz�n del demonio abisal la ha hecho m�s fuerte, s�.~ */
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105 // from:
  SAY @200 /* ~Ahora s�... os libero para que se preparen para el viaje a trav�s del Orbe Aciago. Hablen conmigo de nuevo cuando est�n listos...~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",2)
  ~ UNSOLVED_JOURNAL @210043 EXIT
END

IF ~Global("P_DuskDanctialMISSION","GLOBAL",4)~ THEN BEGIN 106 // from:
  SAY @213 /* ~<CHARNAME>, estamos de regreso a tu plano.~ */  
	// DUSK DEAD
	IF ~Dead("P_Dusk")
	~ THEN REPLY @214 /* ~Ha sido... un viaje interesante, Danctian.~ */  GOTO 107
	// DUSK ALIVE
	IF ~ !Dead("P_Dusk")
	~ THEN REPLY @214 /* ~Ha sido... un viaje interesante, Danctian.~ */  GOTO 109
END

//DUSK DEAD
IF ~~ THEN BEGIN 107
  SAY @215 /* ~Ardusk Aldant ha ca�do en combate. Su venganza ha sido cumplida y su alma, si no regresa a este plano, ser� encontrada por m�, pues est� atada a mi esencia y es as� mi voluntad.~ */
  IF ~~ THEN GOTO 108
END

// ACTUALIZAR JOURNAL!!!!!!
IF ~~ THEN BEGIN 108 // from:
  SAY @219 /* ~Mi trabajo aqu� ha terminado... me reagrupar� en mi plano... Os dejo esta cuantiosa cantidad de oro, <CHARNAME>. Estoy seguro de que os ser� �til en vuestra lucha contra Irenicus. Os deseo fortuna a los tuyos... y terror a tus enemigos. �Adi�s, hijo de Bhaal!~ ~Mi trabajo aqu� ha terminado... me reagrupar� en mi plano... Os dejo esta cuantiosa cantidad de oro, <CHARNAME>. Estoy seguro de que os ser� �til en vuestra lucha contra Irenicus. Os deseo fortuna a los tuyos... y terror a tus enemigos. �Adi�s, hija de Bhaal!~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",0)
  SetGlobal("P_DuskDanctialMISSIONCOMPLETE","GLOBAL",1)
  EraseJournalEntry (@210035) EraseJournalEntry (@210036) EraseJournalEntry (@210037) EraseJournalEntry (@210038) EraseJournalEntry (@210039) EraseJournalEntry (@210040) EraseJournalEntry (@210041) EraseJournalEntry (@210043) EraseJournalEntry (@210044)EraseJournalEntry (@210045)
  AddexperienceParty(100000)
  GiveGoldForce(50000)
  ~ SOLVED_JOURNAL @210048 EXIT
END

// DUSK ALIVE
IF ~~ THEN BEGIN 109
  SAY @220 /* ~Tu venganza est� completa, Ardusk Aldant. La Cripta Olvidada ha sido destruida.~ */
  IF ~~ THEN GOTO 110
END

IF ~~ THEN BEGIN 110 // from:
  SAY @221 /* ~As� es, Ardusk. Prep�rense, porque os llevar� a un plano distante...~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",5)
  ~ EXIT
END

//MISSION 4 - FINAL-> REWARDS (REGRESO DEL BOSQUE)
IF ~Global("P_CelineSpawn","GLOBAL",5)~ THEN BEGIN 111 // from:
  SAY @226 /* ~Hemos retornado a Athkatla.~ */  
  IF ~~ THEN DO ~ SetGlobal("P_CelineSpawn","GLOBAL",6)
  ~ GOTO 112
END

IF ~~ THEN BEGIN 112 // from:
  SAY @240 /* ~Ahora, ha llegado la hora de la recompensa, <CHARNAME>. Espero que el oro sea de tu agrado.~ */  
	// Tiene a IRA
	IF ~PartyHasItem("p_swevi3")~ THEN REPLY @241 /* ~El oro es siempre bienvenido, Danctian.~ */  GOTO 113
	// NO tiene a IRA
	IF ~!PartyHasItem("p_swevi3")~ THEN REPLY @241 /* ~El oro es siempre bienvenido, Danctian.~ */  GOTO 114
	// Tiene a IRA
	IF ~PartyHasItem("p_swevi3")~ THEN REPLY @242 /* ~No es necesario, Danctian. Hemos obtenido una buena tajada destruyendo a esa Cripta Olvidada.~ */  GOTO 113
	// NO tiene a IRA
	IF ~!PartyHasItem("p_swevi3")~ THEN REPLY @242 /* ~No es necesario, Danctian. Hemos obtenido una buena tajada destruyendo a esa Cripta Olvidada.~ */  GOTO 114
END

IF ~~ THEN BEGIN 113
  SAY @243 /* ~Naturalmente, estas piezas met�licas amarillentas no tienen valor para m�. Son todas tuyas, <CHARNAME>.~ */
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 114
  SAY @243 /* ~Naturalmente, estas piezas met�licas amarillentas no tienen valor para m�. Son todas tuyas, <CHARNAME>.~ */
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115 // from:
  SAY @258 /* ~El Pandemonium as� lo desea y su fuerza estar� con ustedes en su viaje hacia Suldanessellar. Recuerden, tambi�n, que estar� aqu� si necesitan que se forje un artefacto...~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDanctialMISSION","GLOBAL",0)
  SetGlobal("P_DuskDanctialMISSIONCOMPLETE","GLOBAL",1)
  EraseJournalEntry (@210035) EraseJournalEntry (@210036) EraseJournalEntry (@210037) EraseJournalEntry (@210038) EraseJournalEntry (@210039) EraseJournalEntry (@210040) EraseJournalEntry (@210041) EraseJournalEntry (@210043) EraseJournalEntry (@210044)EraseJournalEntry (@210045)
  AddexperienceParty(200000)
  GiveGoldForce(75000)
  ~ SOLVED_JOURNAL @210046 EXIT
END

I_C_T P_DANCTI 114 P_Dusk_FINALM9_DONT_HAVE_IRA
== P_DANCTI IF ~~ THEN @244 /* 75.000 piezas de oro. Espero que sea una cantidad apropiada. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @245 /* ~Es una buena cantidad, Danctian. Si no hay nada m�s...~ */
== P_DANCTI IF ~~ THEN @259 /* No hay nada m�s, excepto Irenicus. */
== P_DANCTI IF ~~ THEN @260 /* Si quieren detenerle, deben acudir a tierra �lfica, pues all� llevar� a cabo sus planes finales. */
== P_DANCTI IF ~~ THEN @261 /* Si valoran este plano, deber�n usar todas sus fuerzas para detenerle. */
END

I_C_T P_DANCTI 113 P_Dusk_FINALM9_HAVE_IRA
== P_DANCTI IF ~~ THEN @244 /* 75.000 piezas de oro. Espero que sea una cantidad apropiada. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @245 /* ~Es una buena cantidad, Danctian. Si no hay nada m�s...~ */ DO ~TakePartyItem("p_swevi3")~
== P_DANCTI IF ~~ THEN @246 /* Hay algo m�s, Ardusk. Tomar� a Ira con tu permiso.*/ DO ~TakePartyItem("p_swevi3") DestroyItem ("p_swevi3")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @247 /* ~Pero, �qu� diantes-?~ */ 
== P_DANCTI IF ~~ THEN @248 /* �Recuerdas el S�mbolo de Mellifleur de Anthagar? Aqu� est�. */ 
== P_DANCTI IF ~~ THEN @249 /* *El s�mbolo toma un color rojizo al mismo tiempo en que los orbes escarlata de Danctian brillan de manera incesante.* */ 
== P_DANCTI IF ~~ THEN @250 /* *Al cabo de unos segundos, Ira, la espada de Dusk, se eleva y parece fusionarse con el s�mbolo de Mellifleur.* */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @251 /* ~Danctian, �qu� has hecho?~ */ 
== P_DANCTI IF ~~ THEN @252 /* Ten a Ira de nuevo, Ardusk. He despertado la totalidad de su poder con los vestigios de tus enemigos. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @253 /* ~Entiendo...~ */ DO ~CreateItem ("p_swevi4",1,2,1)  GiveItem("p_swevi4", "P_Dusk")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @254 /* ~Ira Tenax. El verdadero poder del orbe escarlata.~ */
== P_DANCTI IF ~~ THEN @255 /* Est�s en lo correcto. */
== P_DANCTI IF ~~ THEN @256 /* Ira Tenax es la obra c�lmine de tus viajes por Amn. No lo habr�as logrado sin <CHARNAME>. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @257 /* ~Eso lo s�, Danctian. Por eso es que la blandir�... y ayudar� a <CHARNAME> a destruir a Irenicus. En el nombre de la venganza.~ */ DO ~CreateItem ("p_orbef",1,2,1)  GiveItem("p_orbef", "P_Dusk") UseItem ("p_orbef", Myself) DestroyItem ("p_orbef")~
END


I_C_T P_DANCTI 111 P_Dusk_Danc_DUSK_RETURN1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @227 /* ~Asumo que lo que hemos visto ha sido... real...~ */ 
== P_DANCTI IF ~~ THEN @228 /* Est�s en lo correcto. No creo que le haya hecho mucha gracia a Mielikki que hayamos tomado... "prestada" una de sus almas durante un breve per�odo. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @229 /* ~�Por qu� lo has hecho, Danctian?~ */
== P_DANCTI IF ~~ THEN @230 /* Creo que t� lo sabes tan bien como yo, Ardusk. */ 
== P_DANCTI IF ~~ THEN @231 /* Despu�s de todo, nuestras almas est�n enlazadas. */
== P_DANCTI IF ~~ THEN @232 /* En cierto sentido, el camino que tomaste fue para llegar a este momento. */  
== P_DANCTI IF ~~ THEN @233 /* Ver a Celine... aunque sea una �ltima vez. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @234 /* ~...~ */
== P_DANCTI IF ~~ THEN @235 /* Sea como fuere... Ella te ha dejado mucho en qu� pensar. */
== P_DANCTI IF ~~ THEN @236 /* A�n ahora percibo sus palabras resonando en el interior de tu mente, como aquellas campanadas que te llamaban al templo de Tymora cuando eras s�lo un ni�o. */
== P_DANCTI IF ~~ THEN @237 /* Percibo que seguir�n resonando a�n si logras culminar tu viaje con <CHARNAME>. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @238 /* ~Hmpf... �Siempre has sido tan hablador, Danctian? No me hab�a dado cuenta de cu�n molesto eres.~ */
== P_DANCTI IF ~~ THEN @239 /* Entiendo. Mis disculpas, Ardusk. */
END

I_C_T P_DANCTI 109 P_Dusk_Danc_DUSK_LIVE1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @222 /* ~As�... es...~ */ 
== P_DANCTI IF ~~ THEN @223 /* Anthagar dispon�a de un talism�n de Mellifleur, un objeto imbu�do por los mismos dioses en la Era de los Trastornos. */ 
== P_DANCTI IF ~~ THEN @224 /* Puedo canalizar parte de su poder y traerla durante unos instantes. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @225 /* ~�Qu� has dicho? ... �Traerla? Te refieres...~ */ 
END

I_C_T P_DANCTI 107 P_Dusk_Danc_DUSK_DEAD1
== P_DANCTI IF ~~ THEN @216 /* El Pandemonium se convertir� en su nuevo hogar y vivir� en las sombras durante un buen tiempo. */ 
== P_DANCTI IF ~~ THEN @217 /* No debes preocuparte por su... bienestar, <CHARNAME>. A�n si fueses capaz de revivirlo, os puedo asegurar que al final de su camino se hallar�a en la oscuridad de mis tierras. */ 
== P_DANCTI IF ~~ THEN @218 /* Porque el cormyreano ha atado su sangre con la m�a y estamos destinados a compartir el mismo hado. */
END


I_C_T P_DANCTI 104 P_Dusk_Danc_IRA1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @201 /* ~As� es, Danctian. �Por qu� lo preguntas? Tus orbes brillan m�s de lo usual.~ */ 
== P_DANCTI IF ~~ THEN @202 /* Ya es hora... Si me entregas la espada carmes�, podr� despertar un gran poder en ella. Ser� muy �til al lugar al que nos dirigimos... */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @203 /* ~Ya veo... pues, aqu� tienes entonces.~ */ 
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @204 /* ~Me sorprende la fe ciega que tienes en ese demonio, abbil. Bien podr�a incrustarte esa espada por la espalda...~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @205 /* ~�Hmpf! �Entregas tu arma con tanta facilidad? Yo jam�s har�a tal cosa con mi hacha. Korgan Hachasangrienta tiene a su hacha como destino en sus manos y en las de nadie m�s. Y su filo... en el cr�neo de sus enemigos.~ */
== P_DANCTI IF ~~ THEN @206 /* Tu fe ser� recompensada, Ardusk Aldant... */ DO ~TakePartyItem("p_swevi2")~
== P_DANCTI IF ~~ THEN @207 /* Porque de la furia carmes� de los r�os sangrientos del Pandemonium nacer� el instrumento de venganza del Asesino de Magos. */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @208 /* ~Por Cormyr... el filo es a�n m�s resplandeciente... �Qu� significa esto?~ */ DO ~CreateItem ("p_swevi3",1,2,1)  GiveItem("p_swevi3", "P_Dusk")~
== P_DANCTI IF ~~ THEN @209 /* Ira... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @210 /* ~�Ira?~ */ 
== P_DANCTI IF ~~ THEN @211 /* Es el nombre verdadero del arma, Ardusk. Y destinada a estar en tus manos. */
== P_DANCTI IF ~~ THEN @212 /* Que vuestros enemigos tiemblen... y mata en nombre de las sombras. */
END

I_C_T P_DANCTI 96 P_Dusk_Danc_MF5
== p_dancti IF ~~ THEN @180 /* ~La Orden de Magos que ha estado poni�ndolos a prueba planea una masacre inminente en las naciones de Tethyr y Amn.~ */
== p_dancti IF ~~ THEN @181 /* ~La Cripta Olvidada rinde pleites�a a Velshar�n, el Se�or de la Muerte Viviente.~ */
== p_dancti IF ~~ THEN @182 /* ~El humano llamado Anthagar planea, posiblemente, obtener la inmortalidad mediante alg�n ritual de gran poder.~ */
== p_dancti IF ~~ THEN @183 /* ~All� es donde entran en juego el emisario de Cormyr y el engendro del Asesinato.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @184 /* ~No s� si te da igual lo que planee hacer nuestro "amigo" Anthagar, <CHARNAME>.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @185 /* ~Lo cierto es que no creo que pueda realizar el ritual (al menos de momento) sin nuestro consentimiento.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @186 /* ~Si quieres aliarte con ellos o no, a m� me da igual. Pero ir all� requerir� mi presencia. Eso no es negociable.~ */
== p_dancti IF ~~ THEN @187 /* ~(La mirada sin vida de Danctian parece perderse unos instantes en el rostro de Dusk)~ */
== p_dancti IF ~~ THEN @188 /* ~(Al cabo de unos segundos, sus orbes escarlatas se centran en ti)~ */
END

I_C_T P_DANCTI 94 P_Dusk_Danc_MF4
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @189 /* ~Interesante... finalmente ha hecho contacto contigo. Cu�ntamelo.~ */
== p_dancti IF ~~ THEN @190 /* ~Lo que esper�bamos. Pretende que <CHARNAME> y t� se le unan en su plan de conquista y destrucci�n.~ */
== p_dancti IF ~~ THEN @191 /* ~Ha logrado entregarme un orbe aciago que cumple la funci�n de teletransporte.~ */
== p_dancti IF ~~ THEN @192 /* ~Su Orden se encontrar� en una especie de... terreno neutral.~ */
== p_dancti IF ~~ THEN @193 /* ~El mago no carece de perspicacia y sus dudas le hacen ponerte a prueba una �ltima vez.~ */
END

I_C_T P_DANCTI 87 P_Dusk_Danc_MF3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @159 /* ~�Q-qu�? Danctian, �de qu� est�s hablando?~ */
END

I_C_T P_DANCTI 86 P_Dusk_Danc_MF2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @159 /* ~�Q-qu�? Danctian, �de qu� est�s hablando?~ */
END

I_C_T P_DANCTI 83 P_Dusk_Danc_MF1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @147 /* ~�Danctian! �De d�nde has salido? Rayos, �c�mo nos has encontrado?~ */
== p_dancti IF ~~ THEN @148 /* ~Como ya te lo he mencionado antes, t� y yo tenemos una conexi�n debido al... sacrificio que has hecho por liberarme.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @149 /* ~*se estremece* Eso suena tan... tenebroso...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @150 /* ~Entiendo... bueno, por m� no hay problema en que hablemos. Veremos qu� tiene <CHARNAME> para decir.~ */
END



I_C_T P_DANCTI 79 P_Dusk_EVIL_REX
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @143 /* ~�Finalmente! Observa, <CHARNAME>. Utilizar� a Rex para matar en tu nombre. Ser� mi instrumento de venganza... Ya ver�s, mi buen amigo... nuestros enemigos temblar�n al vernos llegar... pero nada podr�n hacer... Ni siquiera... huir...~ */
END

I_C_T P_DANCTI 76 P_Dusk_EVIL_SALUS
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @140 /* ~Por Cormyr, Danctian. Has hecho un trabajo incre�ble. La armadura parece m�s ligera, pero no por ello menos fr�gil que su anterior versi�n... Salus es una armadura exquisita...~ */
END

I_C_T P_DANCTI 72 P_Dusk_EVIL3_BENORK
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @19 /* ~Buen trabajo, Danctian. Si <CHARNAME> me lo permite, har� uso del Conjunto de Benork para obtener, al fin, mi tal preciada venganza.~ */
END

I_C_T P_DANCTI 12 P_Dusk_EVIL2
== p_dancti IF ~~ THEN @262 /* ~*Danctian escudri�a el grupo durante unos momentos*~ */
== p_dancti IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @30 /* ~Para ti, hombre del Norte... he preparado esta p�cima especial. Aumentar� tus capacidades mentales en sobremanera. Incluso puede que seas capaz de ser un canal divino para la deidad a la que sirvas.~ */  DO ~ CreateItem ("p_POTN99",1,1,0)  GiveItem("p_POTN99", "Minsc") ~ 
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @31 /* ~Hmm... Bub� tiene sus dudas respecto a ti, criatura. Pero si <CHARNAME> y Dusk conf�an en ti, entonces Minsc tambi�n lo har�.~ */
== p_dancti IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @32 /* ~No temas, ni�a. Ardusk te tiene en gran estima, por lo que he hecho esto especialmente para ti.~ */  DO ~ CreateItem ("p_nbk02",1,1,0)  GiveItem("p_nbk02", "Aerie") ~ 
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @33 /* ~�E-es un emblema de Baervan? Hmm... g-gracias, supongo... (Dusk, �est�s seguro de esto?)~ */
== p_dancti IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @34 /* ~Veo que no me tienes en gran confianza, palad�n. Puedo ver tu deseo de atravesarme con tu espada tan claro como el mal innato que existe en la humanidad.~ */ 
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @35 /* ~Est�s en lo cierto, monstruo. La �nica raz�n por la que no te ataco es porque, por extra�o que parezca, no percibo que busques hacernos da�o.~ */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @36 /* ~Pero ten por seguro que te extirpar� de esta tierra, en nombre de Torm, si tus intenciones son malvadas.~ */
== p_dancti IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @37 /* ~El mal es relativo, sir Keldorn Levafuego. Podr�a buscar venganza contra toda tu raza por lo que me han hecho... y sin embargo, mi poder se contiene por respeto a Ardusk y <CHARNAME>.~ */
== p_dancti IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @38 /* ~Pero basta de charla... tus compa�eros te tienen en gran estima... Por lo que he preparado esto para ti. Estoy seguro de que podr�s encontrarle una utilidad, incluso para tus fines personales.~ */ DO ~ CreateItem ("p_keld1",1,1,0)  GiveItem("p_keld1", "Keldorn") ~ 
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @39 /* ~De acuerdo, criatura. Joven Dusk, espero que tomes responsabilidad por �l... o ella... o sea lo que sea esta sombra demon�aca.~ */
== p_dancti IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @40 /* ~Tus asuntos me importan bien poco, mortal. Puedes tener la seguridad de que no me interpondr� en tu camino. De hecho, pretendo que llegues a destino... lo m�s r�pido posible. Esta katana servir� bien a tus prop�sitos oscuros...~ */ DO ~ CreateItem ("p_yoshit",1,1,0)  GiveItem("p_yoshit", "Yoshimo") ~ 
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @41 /* ~Hm... Yoshimo no suele quedarse sin palabras... pero parece que este tal Danctian lo ha logrado. Sin embargo, gracias por la katana...~ */
== p_dancti IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @42 /* ~No debes preocuparte por mi, valiente mediana. Os aseguro que no tengo mala intenci�n contigo. S� que has tenido una experiencia... desafortunada con los de mi clase.~ */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @43 /* ~Desafortunada es una palabra que se queda corta, demonio. Si fuera por m�, erradicar�a a todos los de tu clase de esta tierra.~ */
== p_dancti IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @44 /* ~Un noble ideal, lady Fentan. Creo que esto puede ayudarte en tu empresa. Quiz�s, alg�n d�a, tu camino te lleve a... intentar... erradicarme. Espero que cambies de idea para ese entonces...~ */ DO ~ CreateItem ("p_nbk04",1,1,0)  GiveItem("p_nbk04", "Mazzy") ~ 
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @45 /* ~Lo veo dif�cil... Sin embargo, gracias por el objeto (ten por seguro que habr� de averiguar de qu� se trata antes de usarlo...).~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @46 /* ~�Por Helm! Ni se te ocurra acercarte a m�, criatura...~ */  
== p_dancti IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @47 /* ~�Por qu� lo dices, heredero de Delryn? No es por miedo que no quieres que me acerque... �o s�?~ */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @48 /* ~�Inmundo demonio! No te temo... pero tampoco voy a destruirte. Por simple respeto a <CHARNAME> y a Dusk.~ */  
== p_dancti IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @49 /* ~Lo s�, monje... por eso es que he tra�do esta espada para ti...~ */ DO ~ CreateItem ("p_swanom",1,1,0)  GiveItem("p_swanom", "Anomen") ~ 
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @50 /* ~�Una qu�...? Por los dioses... tiene el emblema de mi familia... �C�mo--?~ */  
== p_dancti IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @51 /* ~Ya os he dicho... mi poder trasciende este plano... e incluso el tiempo. Esa espada s�lo puede ser blandida por alguien de sangre Delryn. Conf�o en que le dar�s un buen uso, mortal.~ */ 
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @52 /* ~Hmpf... no necesito una espada para demostrar mi val�a... Sin embargo, aceptar� tu presente, demonio.~ */  
== p_dancti IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @53 /* ~Tu familia ha tenido un destino funesto, mortal. Sin embargo, conf�o en que esta prenda pueda servir a la �ltima heredera de De'Arnise.~ */ DO ~ CreateItem ("p_nalit",1,1,0)  GiveItem("p_nalit", "Nalia") ~ 
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @54 /* ~�Q-qu�? �De d�nde has sacado esto, criatura? Tiene... tiene el emblema de mi familia... adem�s... me resulta tan familiar... *carraspeo* G-gracias, supongo...~ */
== p_dancti IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @55 /* ~No sueles hablar mucho de ella, pero s� que muchas noches mencionas su nombre en silencio, semielfa. Este es mi recompensa para ti, por ayudar a Dusk en su empresa.~ */ DO ~ CreateItem ("p_nbk09",1,1,0)  GiveItem("p_nbk09", "Jaheira") ~ 
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @56 /* ~�El s�mbolo de Mystra? Preguntar�a c�mo lo supiste... pero asumo que la respuesta ser�a algo... confusa. De todas formas, gracias.~ */
== p_dancti IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @57 /* ~Ah, s�... este Orbe es sumamente poderoso. Los conocimientos que he... adquirido recientemente, me han permitido el poder forjarlo. Mortal, t� deber�as tenerlo.~ */  DO ~ CreateItem ("p_nbk11",1,1,0)  GiveItem("p_nbk11", "Cernd") ~ 
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @58 /* ~Percibo una calma tempestad en este orbe, como si en �l se contuviera el sue�o de una mariposa. Si bien tu origen antinatural me inquieta, has tenido la suficiente sabidur�a para crear tan perfecta y peque�a obra. Eres extra�o, Danctian. Seguir� de cerca tu desempe�o en este plano y ver� c�mo afecta al Gran Equilibrio.~ */
== p_dancti IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @59 /* ~De acuerdo, druida. Ten por seguro... no es mi intenci�n inmiscuirme en los asuntos preestablecidos de esta tierra.~ */ 
== p_dancti IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @60 /* ~�Qu� tenemos aqu�? Un mortal que reniega de su familia. Es algo extra�o en alguien de descendencia noble.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @61 /* ~�Y qu� sabes t� sobre la descendencia noble de los hombres de este plano?~ */
== p_dancti IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @62 /* ~Te sorprender�a lo que se puede aprender pudiendo observar desde la desesperaci�n de un pozo. Si bien mis recuerdos pasados no son del todo claros, las vivencias de este plano material no son extra�as para m�.~ */
== p_dancti IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @63 /* ~Has tenido una mala experiencia con las criaturas del Plano Negativo, a causa de la malversaci�n arcana de tus antepasados. Te lo aseguro, el Pandemonium est� muy relacionado con ello.~ */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @64 /* ~No me interesan tus historias, Danctian. Sabes que no te destruyo por respeto a Dusk.~ */
== p_dancti IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @65 /* ~Lo s�, mortal, lo s�. Puede que esto aplaque las aguas entre nosotros. Y, de paso, te brinde mayor claridad sobre tu familia.~ */ DO ~ CreateItem ("p_nbk05",1,1,0)  GiveItem("p_nbk05", "Valygar") ~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @66 /* ~Estos pergaminos... tienen el sello de mi familia. *se queda un instante dubitativo y luego carraspea* Meditar� al respecto, en si deba usarlos o no, Danctian.~ */
== p_dancti IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @67 /* ~S� que lo har�s, joven mortal...~ */
== p_dancti IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @68 /* ~Vaya, vaya... una ac�lita de Shar. Por extra�o que parezca, no me sorprende tu presencia aqu�, drow. Como has ayudado a Dusk en su empresa, he preparado algo especial para ti.~ */ DO ~ CreateItem ("p_nbk03",1,1,0)  GiveItem("p_nbk03", "Viconia") ~
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @69 /* ~�Un s�mbolo de Shar? Percibo un extra�o poder en �l. S�... esto servir�...~ */
== p_dancti IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @70 /* ~Creo que sabes que este tomo es para ti, mortal. �No lo crees?~ */ DO ~ CreateItem ("p_nbk12",1,1,0)  GiveItem("p_nbk12", "Edwin") ~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @71 /* ~S�, criatura. Edwin Odesseiron merece el poder de este tomo por brindar sus grandes poderes en pos de este pat�tico hombre del palito. (S�, m�s que merecido dir�a yo...)~ */
== p_dancti IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @72 /* ~Oh, s�... veo el brillo en tus ojos, guerrero. Sabes que esto es para ti. S� que segar�s muchas vidas con ella...~ */ DO ~ CreateItem ("P_AX1H99",1,1,0)  GiveItem("P_AX1H99", "Korgan") ~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @73 /* ~�Ja! T� s� que sabes escoger los colores en un hacha, demonio. Y est�s en lo cierto... Cercenar� la mayor cantidad de cabezas posible con esto, �me entiendes?~ */
== p_dancti IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @74 /* ~Estoy seguro de que tienes una historia para esto, �no es as�, peque�o mortal? Esta p�cima es para ti.~ */ DO ~ CreateItem ("p_nbk07",1,1,0)  GiveItem("p_nbk07", "Jan") ~
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @75 /* ~�Oh, una poci�n gn�mica! Esto me recuerda a la vez en que mi t�a Gertrudis fue capturada por la guardia de Amn por contrabando de bebidas energ�ticas. Uno pensar�: "�Qu� tienen de malo las bebidas energ�ticas?" Pues yo digo que nada. Aunque puede que hayan aprisionado a la t�a por los efectos secundarios de sus bebidas. Creo que provocaban que a uno le salgan pelos en los dientes. En fin, esta p�cima se ve muy bien. No puedo esperar a probarla.~ */
== p_dancti IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @76 /* ~Si hay alguien que comprende los viajes interplanares, ese eres t�, �no es as�, tiefling? Conf�o en que dar�s un buen uso a esto.~ */ DO ~ CreateItem ("p_nbk07",1,1,0)  GiveItem("p_nbk07", "HaerDalis") ~
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @77 /* ~Vaya, estas runas me resultan familiares... �No sabr�a c�mo agradec�rtelo, incorp�reo cuervo! �Hay m�sica en tu plano? Puede que componga una o dos canciones por ti.~ */
== p_dancti IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @161 /* ~Ah... la engendra de Bhaal, hermana de <CHARNAME>. Es un gran honor poder servirte a ti tambi�n.~ */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @162 /* ~Hm... no s� si pueda decir que eso me hace sentir segura, se�or sombra.~ */
== p_dancti IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @163 /* ~Descuida, no albergo malas intenciones contigo. De hecho, este tomo divino es para ti.~ */ DO ~ CreateItem ("p_nbk08",1,1,0)  GiveItem("p_nbk08", "Imoen2") ~
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @164 /* ~�Un tomo divino? Pues... gracias, supongo.~ */



== p_dancti IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @484 /* ~Ah, Guardia Negro. Tu camino de violencia y venganza es bienvenido a los principios del Pandemonium. Estimo que las Botas de la Cuchilla Nocturna te ser�n de utilidad.~ */ DO ~ CreateItem ("p_dornbr",1,1,0)  GiveItem("p_dornbr", "Dorn") ~
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @485 /* ~Tenlo por seguro, demonio.~ */

== p_dancti IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @486 /* ~El monje del Alma Solar... S�lo puedo imaginar el desagrado en tu mente al hacerte la idea de recibir ayuda de las Sombras. Pero Shar no es mi se�or... No, s�lo el Caos. Toma esta poci�n de luz. Ser� un placer deshacerme de ella.~ */ DO ~ CreateItem ("p_rasptn",1,1,0)  GiveItem("p_rasptn", "Rasaad") ~
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @487 /* ~No conf�o en ti, demonio. Pero si <CHARNAME> y Dusk lo hacen... Entonces aceptar�. Ya veremos despu�s si decido usarla o no...~ */


== p_dancti IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @488 /* ~�Qu� maravilla es observar tus conjuros salvajes, semielfa! Esta poci�n te servir� a tus prop�sitos. Sigue el camino del Caos.~ */ DO ~ CreateItem ("p_neeptn",1,1,0)  GiveItem("p_neeptn", "Neera") ~
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @489 /* ~�Que siga qu�? Ehm... bueno, gracias supongo. Tiene un aroma muy... particular.~ */


== p_dancti IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @490 /* ~Alguien como t� no requiere de mucha ayuda, �verdad, vampiresa? Sin embargo, puede que esto pueda ser apreciado por alguien como t�. Seguir� tu camino desde las Sombras.~ */ DO ~ CreateItem ("p_hexx",1,1,0)  GiveItem("p_hexx", "Hexxat") ~
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @491 /* ~Haz lo que quieras, Danctian. Tomar� lo que me ofreces, ya que percibo un dulce aroma y promesa de poder en ello.~ */


== p_dancti IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @492 /* ~Wilson, criatura de la naturaleza salvaje. Tengo algo para ti que puede ser de tu agrado. Alim�ntate y s� m�s poderoso que nunca.~ */ DO ~ CreateItem ("p_wils",1,1,0)  GiveItem("p_wils", "Wilson") ~
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @493 /* ~(Gru�ido)~ */
== p_dancti IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @494 /* ~�Que si tengo m�s? Esas... son todas las que tengo, pero te aseguro que saciar�n tu hambre.~ */
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @263 /* ~(Lamento)~ */



== p_dancti IF ~~ THEN @78 /* ~Ardusk, para ti tengo �sto: la gema del Drag�n P�rpura. Con ella podemos mejorar la Espada de Disrupci�n o la Armadura de Cormyr, depende de lo que elijas. Est� claro que debes tener alguno de los dos artefactos, �s�?~ */ DO ~ CreateItem ("p_gemdr1",1,1,0)  GiveItem("p_gemdr1", "P_Dusk") ~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @79 /* ~Bien, Danctian. Llegado el momento, de seguro que <CHARNAME> me ayudar� a elegir la opci�n correcta.~ */
== p_dancti IF ~PartyHasItem("p_mano")~ THEN @80 /* ~Ah, ya veo, Ardusk... has tra�do la mano de Alabarza contigo... Has hecho como te he indicado. Bien, bien...~ */
== P_DuskJ IF ~PartyHasItem("p_mano") InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @81 /* ~As� es. �Qu� vas a hacer con ella?~ */
== p_dancti IF ~PartyHasItem("p_mano")~ THEN @82 /* ~En cierto sentido no es m�s que un trofeo de tu victoria. Puedo forjar unas peque�as gemas poderosas que pueden serte �til en tu viaje. Posiblemente te hayas encontrado con alguna de ellas.~ */  
== p_dancti IF ~PartyHasItem("p_mano")~ THEN @83 /* ~Te dar�n una habilidad llamada Guerrero de Acero. Es muy similar a un conjuro dru�dico llamado Piel F�rrea, pero mejor, ya que no necesitas conjurarlo. Es, en s� misma, una habilidad que ganar�s. Cualquiera que sea de naturaleza guerrera puede hacer uso de ellas.~ */  DO~ TakePartyItem("p_mano") DestroyItem ("p_mano") CreateItem ("P_NBK01",1,1,0)  GiveItem("P_NBK01", "P_Dusk") CreateItem ("P_NBK01",1,1,0)  GiveItem("P_NBK01", "P_Dusk") CreateItem ("P_NBK01",1,1,0)  GiveItem("P_NBK01", "P_Dusk") ~
END


I_C_T P_DANCTI 7 P_Dusk_EVIL1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @19 /* ~Es verdad, <CHARNAME>. El demonio sombr�o es, por ahora, una extensi�n de m�. Sin embargo, permanecer� aqu�, en Athkatla.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20 /* ~Lo cierto es que... Danctian, se supone que deb�a poseerme para cumplir con la voluntad de los Magos con los que nos hemos encontrado.~ */
== P_DANCTI IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @21 /* ~No fue hasta que uno de los Magos cometi� un error.~ */
== P_DANCTI IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @22 /* ~Valatar convoc� a un demonio abisal, tambi�n, de mi plano.~ */
== P_DANCTI IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @23 /* ~Al enfrentarse a ustedes, el contacto de la esencia del orbe escarlata en Dusk hizo que pudiese comunicarme claramente con �l.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @24 /* ~A medida que avanz�bamos hacia la guarida de Alabarza, segu� mi conversaci�n con Danctian. En mi mente.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @25 /* ~Me dijo que deb�a vencer a Alabarza y volver aqu�, a la guarida de Mathyus y Michelson.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @26 /* ~La propuesta era ser el conducto de su poder, para que as� pudiese absorber la energ�a vital de los shilmistas.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @27 /* ~A cambio, habr�a de brindarme un poder m�s all� de lo imaginable.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @28 /* ~Estaba consciente de una posible traici�n, <CHARNAME>. Pero supuse que era algo que, llegado al caso, podr�amos manejar sin problemas.~ */
== P_DANCTI IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @29 /* ~Hijo de Bhaal, como ver�s, Ardusk tiene en ti una fe inconmensurable. Est� dispuesto a morir por ti, incluso. S�lo pide, a cambio, que le acompa�es en su traves�a hacia la venganza.~ ~Hija de Bhaal, como ver�s, Ardusk tiene en ti una fe inconmensurable. Est� dispuesto a morir por ti, incluso. S�lo pide, a cambio, que le acompa�es en su traves�a hacia la venganza.~ */
END
