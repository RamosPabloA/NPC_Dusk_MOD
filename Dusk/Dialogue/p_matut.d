BEGIN P_MATUT

// Fijarse en el # de los 2 primeros bloques

//En este bloque = Dusk no se encuentra en el grupo
//Por lo que tendr� una conversaci�n b�sica con 
// CHARNAME
IF WEIGHT #1~
Global("P_Dusk_Mathyus_Enc","LOCALS",0)~ THEN BEGIN 0 // from:
  SAY @0 /* ~~ */
  IF ~~ THEN DO ~~ EXIT
END


// Este bloque = Primer encuentro de Dusk y CHARNAME
// Con Mathyus Davis. Math nos da la misi�n de
// Encontrar a Michelson
// NOTA: "P_DuskMatMission1","GLOBAL",1 viene de P_DuskJ
IF WEIGHT #0~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_Dusk_Mathyus_Enc","LOCALS",0)~ THEN BEGIN 1 // from:
  SAY @1 /* ~�Saludos! Vaya, vaya, pero si el soldado pr�digo ha regresado. �C�mo est�, mi buen capit�n Aldant?~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_Mathyus_Enc","LOCALS",1)
  ~ GOTO 4
END

IF ~~ THEN BEGIN 4 // from:
  SAY @4 /* ~Veo que has tra�do a un grupo interesante de... personajes.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 1
END

IF ~~ THEN BEGIN 5 // from:
  SAY @5 /* ~Saludos, <CHARNAME>. Es un placer conocerte. Todo amigo del se�or Aldant es amigo m�o.~ ~Saludos, <CHARNAME>. Es un placer conocerte. Toda amiga del se�or Aldant es amiga m�a.~*/
  IF ~~ THEN REPLY @6 /* ~Es un placer, Mathyus.~ */ GOTO 8
  IF ~~ THEN REPLY @7/* ~Es un poco pronto para llamarnos amigos, �no lo crees?~ */ GOTO 6
  IF ~~ THEN REPLY @8 /* ~Lo lamento, elfo. No puedo parar de ver tu brillante cabello verde.~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from:
  SAY @2 /* ~Si el capit�n te ha considerado su amigo es porque algo especial ve en ti. No deber�as subestimar su capacidad de emitir juicio, <LADYLORD> <CHARNAME>.~ ~Si el capit�n te ha considerado su amiga es porque algo especial ve en ti. No deber�as subestimar su capacidad de emitir juicio, <LADYLORD> <CHARNAME>.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 7 // from:
  SAY @45 /* ~�Vaya! *carraspeo* Un t�pico un tanto inc�modo de tratar... Preferir�a hablar de eso m�s adelante.~ */
  IF ~~ THEN GOTO 8
END

IF ~~ THEN BEGIN 8 // from:
  SAY @46 /* ~Capit�n Aldant...~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 2
END

IF ~~ THEN BEGIN 9 // from:
  SAY @47 /* ~�Oh, bueno, ya sabes lo que dicen! Los viejos h�bitos por la boca del pez mueren.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 3
END

IF ~~ THEN BEGIN 10 // from:
  SAY @9 /* ~�Ah, la hermosa armadura Shilmista! Pues... no he podido... ver�s...~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 4
END

IF ~~ THEN BEGIN 11 // from:
  SAY @10 /* ~A eso iba... Michelson ha desaparecido.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 5
END

IF ~~ THEN BEGIN 12 // from:
  SAY @11 /* ~Es un leprechaun. Ya sabes. Peque�o. Pelirrojo. M�gico. Le gusta el dinero y las cosas brillantes. Creo que hasta podr�a jurar que est� obsesionado con la cerveza.~ */
  IF ~~ THEN REPLY @12 /* ~Esto es una broma, �verdad? Esas cosas no existen.~ */ GOTO 13
  IF ~~ THEN REPLY @13 /* ~�Leprechaun? No sab�a que tal cosa existiera.~ */ GOTO 13
END

IF ~~ THEN BEGIN 13 // from:
  SAY @14 /* ~Oh, son reales, <CHARNAME>. Pero no le digas 'cosa' a Michelson. Es muy sensible. Una vez casi alguien le dijo "�Pero qu� cosa m�s tierna eres!" Y Michelson lo convirti� en--~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 7
END

IF ~~ THEN BEGIN 14 // from:
  SAY @15 /* ~No debe andar muy lejos. Lo m�s probable es que est� explorando las afueras de aqu�. Seguro podr�s encontrarlo en el puerto.~ */
  IF ~~ THEN REPLY @16 /* ~�Puedes darnos algo m�s de informaci�n, Mathyus?~ */ GOTO 19
  IF ~~ THEN REPLY @17 /* ~�Por qu� no vas a buscarlo t�? Eres un elfo, a fin de cuentas. Puedes usar tus sentidos para encontrarlo.~ */ GOTO 15
  IF ~~ THEN REPLY @18 /* ~�Qu� nos dar�s si lo encontramos? Somos gente ocupada y nuestro tiempo vale mucho.~ */ GOTO 17
END

IF ~~ THEN BEGIN 15 // from:
  SAY @19 /* ~Hmmm... c�mo decirlo... No puedo salir al exterior, ver�s... mi cabello verde es muy delicado.~ */
  IF ~~ THEN REPLY @20 /* ~*suspiro* Preguntar�a, pero creo que me arrepentir�a de ello.~ */ GOTO 16
  IF ~~ THEN REPLY @21 /* ~S�, ser�a una pena que le sucediera algo a tu hermoso cabello.~ */ GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @22 /* ~Mi cabello est� relacionado con Michelson. Pero te lo contar� una vez que lo encuentres y lo traigas a salvo, �te parece?~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 17 // from:
  SAY @23 /* ~Podr�a ofrecerte dinero... pero lo cierto es que Michelson lo adora. Las pocas monedas que tengo son para calmarlo en caso de alguna emergencia.~ */
  IF ~~ THEN GOTO 18
END

IF ~~ THEN BEGIN 18 // from:
  SAY @24 /* ~Pero, en cambio, puedo ofrecerte algo muy �til. Digamos que lo ver�s cuando cumplas con la misi�n.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @25 /* ~Bueno... creo que cuando lo veas te dar�s cuenta: persona peque�a, pelirroja y con vestimentas color verde (s�... verde como mi cabello).~ */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from:
  SAY @26 /* ~Otra cosa. Dusk, debes estar presente cuando lo encuentre. Michelson te conoce, as� que no creo que huya cuando te acerques con un grupo de extra�os.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 8
END

IF ~~ THEN BEGIN 21 // from:
  SAY @27 /* ~Pues... espero que tu amigo tenga un buen sentido del humor, Dusk.~ ~Pues... espero que tu amiga tenga un buen sentido del humor, Dusk.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 9
END

IF ~~ THEN BEGIN 22 // from:
  SAY @28 /* ~Ver�s, <CHARNAME>... Estimo que Michelson te har� caso si, de alguna manera, logras sobornarlo.~ */
  IF ~~ THEN REPLY @29 /* ~Nunca antes soborn� a un leprechaun. �Con qu� se supone que deba sobornarlo?~ */ GOTO 23
  IF ~~ THEN REPLY @30 /* ~Espero que no tenga que sobornarlo con oro, Mathyus. Ya es demasiado con tener que buscar a un peque�uelo m�gico, perdido en el Puerto de los Ladrones.~ */ GOTO 23
  IF ~~ THEN REPLY @31 /* ~*suspiro* Claramente no tengo sentido del humor para este tipo de cosas, se�ores. Pero de acuerdo, lo har�.~ */ GOTO 23
END

IF ~~ THEN BEGIN 23 // from:
  SAY @32 /* ~No necesariamente debas gastar oro, <CHARNAME>. Aunque eso claramente funcionar�a.~ */
  IF ~~ THEN GOTO 24
END

IF ~~ THEN BEGIN 24 // from:
  SAY @33 /* ~Tambi�n puedes darle cerveza. O, en caso de que no quieras emplear ning�n gasto f�sico, puedes simplemente contarle un chiste.~ */
  IF ~~ THEN REPLY @34 /* ~�Un chiste? �Est�s bromeando?~ */ EXTERN ~P_DUSKJ~ 10
END

IF ~~ THEN BEGIN 25 // from:
  SAY @35 /* ~�Qu� puedo decir? Soy un elfo encantador.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 11
END

IF ~~ THEN BEGIN 26 // from:
  SAY @36 /* ~*susurro* Dusk, eso no te correspond�a a ti contarlo.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 12
END

IF ~~ THEN BEGIN 27 // from:
  SAY @37 /* ~Ya, ya. Ambos sabemos que Michelson es capaz de cuidarse a s� mismo. Y bien, <CHARNAME>, �podr�s con la tarea?~ */
  IF ~~ THEN REPLY @38 /* ~Quiz�s m�s tarde, Mathyus. Ahora estamos trabajando en asuntos m�s importantes.~ */ GOTO 28
  IF ~~ THEN REPLY @39 /* ~Pierde el cuidado, elfo. Ten lista la recompensa, pues traeremos a ese peque�o travieso de nuevo contigo.~ */ GOTO 29
  IF ~~ THEN REPLY @40 /* ~De acuerdo, de acuerdo. Dusk, en camino.~ */ GOTO 29
END

IF ~~ THEN BEGIN 28 // from:
  SAY @41 /* ~Hmmm... es una l�stima... si bien no temo por �l, espero que retomes esta tarea cuanto antes, <CHARNAME>.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 13
END

IF ~~ THEN BEGIN 29 // from:
  SAY @42 /* ~Gracias, <CHARNAME>. Espero con ansias tu regreso.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 14
END





// Este bloque = Dusk y CHARNAME YA conocieron a Mathyus
IF WEIGHT #2~
//InParty("P_Dusk")
//See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_Dusk_Mathyus_Enc","LOCALS",1)
Global("P_DuskMatMission1","GLOBAL",2)~ THEN BEGIN 2 // from:
  SAY @43 /* ~�C�mo va la b�squeda, amigos? Espero que haya avances. No es que extra�e a ese pelirrojo descarado, pero me sentir�a m�s tranquilo si estuviera por aqu�.~ */
  IF ~~ THEN DO ~~ EXIT
END


// Misi�n cumplida 1: Michelson
// Sigue en el BEGIN 30 y tra@ 48
// MISSION FAILED
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_Dusk_Mathyus_Enc","LOCALS",1)
Global("P_DuskMatMission1","GLOBAL",4)
Global("P_DuskMatMission1Failed","GLOBAL",1)~ THEN BEGIN 30 // from:
  SAY @48 /* ~�<CHARNAME>, Dusk! Como ver�n, Michelson ya est� con nosotros.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1","GLOBAL",5)~ EXTERN ~P_DUSKJ~ 28
END

IF ~!See("P_Dusk")
Global("P_Dusk_Mathyus_Enc","LOCALS",1)
Global("P_DuskMatMission1","GLOBAL",4)~ THEN BEGIN 63 // from:
  SAY @88 /* ~Saludos, <CHARNAME>. Michelson ya se encuentra con nosotros. Si quieres la recompensa, debes traer a Dusk contigo.~ */
  IF ~~ THEN DO ~~ EXIT
END


// Misi�n cumplida 1: Michelson
// MISSION OK
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_Dusk_Mathyus_Enc","LOCALS",1)
Global("P_DuskMatMission1","GLOBAL",4)
Global("P_DuskMatMission1Failed","GLOBAL",0)~ THEN BEGIN 50 // from:
  SAY @48 /* ~�<CHARNAME>, Dusk! Como ver�n, Michelson ya est� con nosotros.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1","GLOBAL",5)~ EXTERN ~P_DUSKJ~ 34
END

IF ~~ THEN BEGIN 31 // from:
  SAY @49 /* ~Cr�anme, los entiendo perfectamente.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 14
END

IF ~~ THEN BEGIN 32 // from:
  SAY @50 /* ~En fin, mientras ustedes se encaminaban hacia aqu�, lo primero que hizo Michelson fue terminar los encantamientos de reparaci�n sobre tu armadura, Dusk.~ */
  IF ~~ THEN DO ~ CreateItem ("p_dchan1",1,1,1) GiveItem("p_dchan1", "P_Dusk") ~ EXTERN ~P_DUSKJ~ 29
  // Dar la armadura en este punto
END

IF ~~ THEN BEGIN 33 // from:
  SAY @51 /* ~�Ah, mi buen <CHARNAME>! No debes preocuparte por nada. Y tampoco creas que me he olvidado de tu recompensa por tus esfuerzos.~ ~�Ah, mi buena <CHARNAME>! No debes preocuparte por nada. Y tampoco creas que me he olvidado de tu recompensa por tus esfuerzos.~*/
  IF ~~ THEN GOTO 34
END

IF ~~ THEN BEGIN 34 // from:
  SAY @52 /* ~Ver�s... Puede que Michelson no tenga un aspecto imponente, pero te aseguro que es un poderoso ser m�gico.~*/
  IF ~~ THEN GOTO 35
END

IF ~~ THEN BEGIN 35 // from:
  SAY @53 /* ~Nuestro amigo no tiene nada que envidiar a maestros elfos o herreros enanos. Aunque... la �nica desventaja es que �l requiere de ciertos elementos para poder cumplir con sus encantamientos.~*/
  IF ~~ THEN EXTERN ~P_MICHEL~ 15
END

IF ~~ THEN BEGIN 36 // from:
  SAY @54 /* ~Como confi� en que tendr�an �xito en la misi�n, fui preparando un libro con los diferentes ingredientes que pueden ser combinados para el encantamiento de un artefacto, ya sea arma, armadura o hasta anillos.~ */
  IF ~~ THEN GOTO 37
END

IF ~~ THEN BEGIN 37 // from:
  SAY @55 /* ~Te lo entrego. Por favor, cu�dalo, ya que es la �nica copia. Como ver�s, todos los ingredientes requieren ciertas gemas, algunas comunes, otras m�s raras. No s� si es para el encantamiento o por afici�n de Michelson.~ */
  IF ~~ THEN DO ~
  CreateItem ("p_bookm",1,1,0)  
  GiveItem("p_bookm", LastTalkedToBy)~ EXTERN ~P_MICHEL~ 16
END

IF ~~ THEN BEGIN 38 // from:
  SAY @56 /* ~Ah, ya veo. Seg�n Michelson, usa las gemas como ingredientes del encantamiento.~ */
  IF ~~ THEN REPLY @57 /* ~Un momento... Mathyus, �puedes entender lo que dice el leprechaun?~ */ EXTERN  ~P_DUSKJ~ 30
END

IF ~~ THEN BEGIN 39 // from:
  SAY @58 /* ~As� es... por alguna raz�n, comenc� a entenderle cuando �l convirt� mi cabello de color.~ */
  IF ~~ THEN GOTO 40
END

IF ~~ THEN BEGIN 40 // from:
  SAY @59 /* ~Ocurri� cuando me lo cruc�, accidentalmente, en Shilmista. Nunca antes hab�a visto a uno, as� que le persegu�.~ */
  IF ~~ THEN GOTO 41
END

IF ~~ THEN BEGIN 41 // from:
  SAY @60 /* ~Pero el bastardo es muy r�pido... as� que le perd�. Fue s�lo cuando dije algo como: "�Ya ver�s, duende! Te atrapar�, porque el que r�e �ltimo, r�e dos veces."~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 17
END

IF ~~ THEN BEGIN 42 // from:
  SAY @61 /* ~En resumen: la risa de Michelson le termin� delatando el escondite. As� que lo encontr� y finalmente pude atraparlo.~ */
  IF ~~ THEN GOTO 43
END

IF ~~ THEN BEGIN 43 // from:
  SAY @62 /* ~El problema fue que en ese instante, el leprechaun lanz� un hechizo contra m�... y pues... mi cabello se convirti� de este color.~ */
  IF ~~ THEN GOTO 44
END

IF ~~ THEN BEGIN 44 // from:
  SAY @63 /* ~Como consecuencia, puedo entender lo que dice Michelson... y me advirti� que si mi cabello era tocado por los rayos del sol o de la luna, me quedar�a calvo para siempre.~ */
  IF ~~ THEN GOTO 45
END

IF ~~ THEN BEGIN 45 // from:
  SAY @64 /* ~Adem�s, mencion� algo sobre tener los poderes de un dios y algo sobre combatir a Cyric.~ */
  IF ~~ THEN GOTO 46
END

IF ~~ THEN BEGIN 46 // from:
  SAY @65 /* ~A d�a de hoy no comprendo mucho lo que quiso decir, pero ciertamente no decid� ignorarlo. Con el tiempo comprob� que su poder no es broma.~ */
  IF ~~ THEN GOTO 47
END

IF ~~ THEN BEGIN 47 // from:
  SAY @66 /* ~En fin, mi punto es que Michelson y yo seremos aliados de ustedes, forjando poderosos artefactos (siempre y cuando puedan conseguir dichos ingredientes).~ */
  IF ~~ THEN REPLY @67 /* ~Muy bien, Mathyus. Echar� un ojo a tu libro de recetas y si conseguimos lo necesario, volveremos.~ */ GOTO 48
  IF ~~ THEN REPLY @68 /* ~Espero que valga la pena, elfo. No me gusta perder el tiempo con nimiedades.~ */ GOTO 48
END

IF ~~ THEN BEGIN 48 // from:
  SAY @69 /* ~De acuerdo, de acuerdo. En cuanto a ti, mi buen capit�n Aldant, si tengo novedades sobre lo que buscas, te lo har� saber.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 32
END

IF ~~ THEN BEGIN 49 // from:
  SAY @70 /* ~Excelente, camaradas. Cuando quieran forjar algo especial, Michelson y yo los estaremos esperando, �verdad, amiguito?~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 18
END

// Pero en este momento, Dusk no est� en el grupo
IF ~ !InParty("P_Dusk")
Global("P_DuskMatMission2","GLOBAL",0)
Global("P_DuskMatMission3","GLOBAL",0)
Global("P_DuskMatMission4","GLOBAL",0)
Global("P_Dusk_Mathyus_Enc","LOCALS",1)~ THEN BEGIN 3 // from:
  SAY @44 /* ~Saludos, <CHARNAME>. Espero que todo ande bien.~ */
  IF ~~ THEN DO ~~ EXIT
END

///////////////////////
// SEGUIR AGREGANDO ITEMS
///////////////////////

IF ~Global("P_DuskMatMission1","GLOBAL",5)
Global("P_DuskMatMission2","GLOBAL",0)
Global("P_DuskMatMission3","GLOBAL",0)
Global("P_DuskMatMission4","GLOBAL",0)
Global("P_DuskDemoleMISSION","GLOBAL",0)
Global("P_Michel_Forge","GLOBAL",0)~ THEN BEGIN 51 // from:
  SAY @71 /* ~�Ah! Pero si es mi grupo favorito de aventureros. �C�mo est�n? �Han venido a forjar alg�n artefacto con Michelson?~ */
  IF ~~ THEN REPLY @72 /* ~A�n no hemos logrado reunir lo necesario, Mathyus.~ */ GOTO 52
  
  //Espada de Disrupci�n
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyGoldGT(7499) PartyHasItem("p_swr1") PartyHasItem("SCRL09") PartyHasItem("MISC40") PartyHasItem("MISC19") PartyHasItem("MISC44") PartyHasItem("BOOK89")~ THEN REPLY @73 /* ~Mathyus, hemos conseguido lo necesario para mejorar la espada de Dusk.~ */ GOTO 53
  // Armadura de Placas de Dusk
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyGoldGT(7499) PartyHasItem("p_dchan1") PartyHasItem("p_brkshl") PartyHasItem("MISC35") PartyHasItem("MISC38")~ THEN REPLY @89 /* ~Mathyus, hemos conseguido lo necesario para mejorar la armadura de Dusk.~ */ GOTO 69
  // Brazales de Defensa P�trea	
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 0) PartyGoldGT(2999) PartyHasItem("brac01") PartyHasItem("SCRL15") PartyHasItem("misc23") ~ THEN REPLY @92 /* ~Mathyus, hemos conseguido lo necesario para crear los Brazales de Defensa P�trea.~ */ GOTO 70
  // Crimson Thunder
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 0) PartyGoldGT(24999) PartyHasItem("HAMM03") PartyHasItem("STAF13") PartyHasItem("SCRL1K") PartyHasItem("WAND04") PartyHasItem("AMUL13") PartyHasItem("RING19") ~ THEN REPLY @93 /* ~Mathyus, hemos conseguido lo necesario para crear el martillo: Trueno Escarlata.~ */ GOTO 75
  // Fuego Salvaje
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 0) PartyGoldGT(6999) PartyHasItem("LEAT09") PartyHasItem("MISC16") PartyHasItem("SCRL06") PartyHasItem("AMUL24")  ~ THEN REPLY @95 /* ~Mathyus, hemos conseguido lo necesario para crear la armadura Fuego Salvaje.~ */ GOTO 80
  // Venom Strike
  IF ~Global ("p_venom_strike", "GLOBAL", 0) PartyGoldGT(24999) PartyHasItem("BLUN17") PartyHasItem("SCRL08") PartyHasItem("SCRL1Q") PartyHasItem("POTN42") PartyHasItem("MISC31") PartyHasItem("MISC37")  ~ THEN REPLY @96 /* ~Mathyus, hemos conseguido lo necesario para crear el mayal Golpe de Veneno.~ */ GOTO 85
  // Colmillo de Larloch
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 0) PartyGoldGT(12499)  PartyHasItem("POTN22") PartyHasItem("MISC26") PartyHasItem("SCRL84") PartyHasItem("HELM06") 
  OR(2) 
  PartyHasItem("AX1H02")
  PartyHasItem("KORAX01")~ THEN REPLY @97 /* ~Mathyus, hemos conseguido lo necesario para forjar el Colmillo de Larloch.~ */ GOTO 90
  // Ventisca del Averno
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 0) PartyGoldGT(12499) PartyHasItem("SW1H42") PartyHasItem("SCRL04") PartyHasItem("MISC17") PartyHasItem("MISC33") PartyHasItem("MISC42") ~ THEN REPLY @98 /* ~Mathyus, hemos conseguido lo necesario para forjar la Ventisca del Averno.~ */ GOTO 95
  // Vengadora Real
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("P_WSSTP_vengadora_real", "GLOBAL", 0) Global ("p_staff_lost", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2") ~ THEN REPLY @111 /* ~Mathyus, hemos conseguido los artefactos del Duque Benork.~ */ GOTO 100
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("p_staff_lost", "GLOBAL", 1) PartyHasItem("p_stf1") InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2")~ THEN REPLY @112 /* ~�Mathyus! Hemos encontrado el bast�n de Dusk.~ */ EXTERN ~P_DUSKJ~ 41
END

// Mensaje por defecto
IF ~~ THEN BEGIN 52 // from:
  SAY @74 /* ~Ya veo, ya veo. Pues, estaremos aqu� cuando lo consigan. Tengo plena confianza en que son capaces de conseguir lo necesario para nuestro amigo m�gico, �no es as�?~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 53 // from:
  SAY @85 /* ~Excelente noticia, amigo m�o. Entonces,�procedemos?~  ~Excelente noticia, amiga m�a. Entonces,�procedemos?~ */
  IF ~~ THEN REPLY @75 /* ~Por supuesto.~ */ GOTO 55
  IF ~~ THEN REPLY @76 /* ~A�n no, Mathyus. Quiz�s m�s adelante.~ */ GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @77 /* ~Ya veo, ya veo. Pues, estaremos aqu� por si cambias de opini�n.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~~ THEN BEGIN 55 // from:
  SAY @78 /* ~�Escuchaste eso, Michelson? Parece que tenemos trabajo por hacer.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_sw1hdr_disrupcion", "GLOBAL", 1)~ EXTERN ~P_MICHEL~ 20
END


IF ~~ THEN BEGIN 56 // from:
  SAY @79 /* ~�De acuerdo! Capit�n, �ser�a tan amable de brindarme su espada?~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 35
END

IF ~~ THEN BEGIN 57 // from:
  SAY @80 /* ~Gracias por tu voto de confianza, amigo m�o. Bueno, bueno, Michelson. Parece que tenemos trabajo por hacer. �Manos a la obra!~ */
  IF ~~ THEN DO ~TakePartyGold(7500) TakePartyItem("p_swr1") 
  TakePartyItem("SCRL09")
  TakePartyItem("MISC40")
  TakePartyItem("MISC19")
  TakePartyItem("MISC44")
  TakePartyItem("BOOK89")
  DestroyGold(7500)
  DestroyItem("p_swr1")
  DestroyItem("SCRL09")
  DestroyItem("MISC40")
  DestroyItem("MISC19")
  DestroyItem("MISC44")
  DestroyItem("BOOK89")
  ~ EXTERN ~P_MICHEL~ 22
END

////////////////////
// Aca comienza el camino para la entrega de �tems
////////////////////
IF ~~ THEN BEGIN 58 // from:
  SAY @81 /* ~Vaya, nunca me termino de acostumbrar el verlo agotado.~ */
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 1)~ THEN REPLY @82 /* ~�Se pondr� bien?~ */ GOTO 59
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 1)~ THEN REPLY @82 /* ~�Se pondr� bien?~ */ GOTO 67
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 1)~ THEN REPLY @82 /* ~�Se pondr� bien?~ */ GOTO 73
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 1)~ THEN REPLY @82 /* ~�Se pondr� bien?~ */ GOTO 78
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 1)~ THEN REPLY @82 /* ~�Se pondr� bien?~ */ GOTO 83
  IF ~Global ("p_venom_strike", "GLOBAL", 1)~ THEN REPLY @82 /* ~�Se pondr� bien?~ */ GOTO 88
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 1)~ THEN REPLY @82 /* ~�Se pondr� bien?~ */ GOTO 93
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 1)~ THEN REPLY @82 /* ~�Se pondr� bien?~ */ GOTO 98
  
  // Objeto legendario DUSK GOOD
  IF ~Global ("p_platd1_salus", "GLOBAL", 1)~ THEN REPLY @82 /* ~�Se pondr� bien?~ */ GOTO 239
  IF ~Global ("p_sw2hdr_rex", "GLOBAL", 1)~ THEN REPLY @82 /* ~�Se pondr� bien?~ */ GOTO 243
  
END

IF ~~ THEN BEGIN 59 // from:
  SAY @83 /* ~�Por supuesto! M�ralo, ya est� bailando de nuevo.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 24
END

IF ~~ THEN BEGIN 60 // from:
  SAY @84 /* ~No hay necesidad de agradecimiento, compa�eros. Espero que den un buen uso al trabajo que hemos realizado aqu� el d�a de hoy.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw1hdr_disrupcion", "GLOBAL", 2)~ EXTERN ~P_MICHEL~ 25
END

// Sigue en etiqueta de tra @86


IF ~Global("P_Michel_Forge","GLOBAL",2)~ THEN BEGIN 61 // from:
  SAY @86 /* ~Ser� mejor que hables con Michelson, <CHARNAME>.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~Global("P_Michel_Forge","GLOBAL",1)~ THEN BEGIN 62 // from:
  SAY @87 /* ~Ya va a comenzar, <CHARNAME>. Habla con Michelson para que puedas presenciar el proceso de construcci�n.~ */
  IF ~~ THEN DO ~~ EXIT
END



//////////////////////////

IF ~~ THEN BEGIN 64 // from:
  SAY @78 /* ~�Escuchaste eso, Michelson? Parece que tenemos trabajo por hacer.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_dplat1_defensa", "GLOBAL", 1)~ EXTERN ~P_MICHEL~ 30
END

IF ~~ THEN BEGIN 65 // from:
  SAY @90 /* ~�De acuerdo! Dusk, �ser�as tan amable de prestarnos tu armadura?~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 37
END

IF ~~ THEN BEGIN 66 // from:
  SAY @80 /* ~Gracias por tu voto de confianza, amigo m�o. Bueno, bueno, Michelson. Parece que tenemos trabajo por hacer. �Manos a la obra!~ */
  IF ~~ THEN DO ~TakePartyGold(7500) 
  TakePartyItem("p_dchan1") 
  TakePartyItem("p_brkshl")
  TakePartyItem("MISC35")
  TakePartyItem("MISC38")
  DestroyGold(7500)
  DestroyItem("p_dchan1") 
  DestroyItem("p_brkshl")
  DestroyItem("MISC35")
  DestroyItem("MISC38")
  ~ EXTERN ~P_MICHEL~ 22
END


IF ~~ THEN BEGIN 67 // from:
  SAY @83 /* ~�Por supuesto! M�ralo, ya est� bailando de nuevo.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 31
END

IF ~~ THEN BEGIN 68 // from:
  SAY @84 /* ~No hay necesidad de agradecimiento, compa�eros. Espero que den un buen uso al trabajo que hemos realizado aqu� el d�a de hoy.~ */
  IF ~~ THEN DO ~SetGlobal ("p_dplat1_defensa", "GLOBAL", 2)~ EXTERN ~P_MICHEL~ 25
END

IF ~~ THEN BEGIN 69 // from:
  SAY @85 /* ~Excelente noticia, amigo m�o. Entonces,�procedemos?~  ~Excelente noticia, amiga m�a. Entonces,�procedemos?~ */
  IF ~~ THEN REPLY @75 /* ~Por supuesto.~ */ GOTO 64
  IF ~~ THEN REPLY @76 /* ~A�n no, Mathyus. Quiz�s m�s adelante.~ */ GOTO 54
END

// sigue en label @90

//////////////////////////////

IF ~~ THEN BEGIN 70 // from:
  SAY @85 /* ~Excelente noticia, amigo m�o. Entonces,�procedemos?~  ~Excelente noticia, amiga m�a. Entonces,�procedemos?~ */
  IF ~~ THEN REPLY @75 /* ~Por supuesto.~ */ GOTO 71
  IF ~~ THEN REPLY @76 /* ~A�n no, Mathyus. Quiz�s m�s adelante.~ */ GOTO 54
END

IF ~~ THEN BEGIN 71 // from:
  SAY @78 /* ~�Escuchaste eso, Michelson? Parece que tenemos trabajo por hacer.~ */
  IF ~~ THEN DO ~ SetGlobal ("P_BRAC99_brazal_petreo", "GLOBAL", 1)~ EXTERN ~P_MICHEL~ 32
END

IF ~~ THEN BEGIN 72 // from:
  SAY @91 /* ~Excelente, <CHARNAME>. Tomar� los ingredientes y Michelson har� el resto.~ */
  IF ~~ THEN DO ~TakePartyGold(3000) 
  TakePartyItem("brac01") 
  TakePartyItem("SCRL15")
  TakePartyItem("misc23")
  DestroyGold(3000)
  DestroyItem("brac01") 
  DestroyItem("SCRL15")
  DestroyItem("misc23")
  ~ EXTERN ~P_MICHEL~ 22
END

IF ~~ THEN BEGIN 73
  SAY @83 /* ~�Por supuesto! M�ralo, ya est� bailando de nuevo.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 33
END

IF ~~ THEN BEGIN 74 // from:
  SAY @84 /* ~No hay necesidad de agradecimiento, compa�eros. Espero que den un buen uso al trabajo que hemos realizado aqu� el d�a de hoy.~ */
  IF ~~ THEN DO ~SetGlobal ("P_BRAC99_brazal_petreo", "GLOBAL", 2)~ EXTERN ~P_MICHEL~ 25
END

///////////////////// CRIMSON THUNDER

IF ~~ THEN BEGIN 75 // from:
  SAY @85 /* ~Excelente noticia, amigo m�o. Entonces,�procedemos?~  ~Excelente noticia, amiga m�a. Entonces,�procedemos?~ */
  IF ~~ THEN REPLY @75 /* ~Por supuesto.~ */ GOTO 76
  IF ~~ THEN REPLY @76 /* ~A�n no, Mathyus. Quiz�s m�s adelante.~ */ GOTO 54
END

IF ~~ THEN BEGIN 76 // from:
  SAY @78 /* ~�Escuchaste eso, Michelson? Parece que tenemos trabajo por hacer.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_hamm1_crimson_thunder", "GLOBAL", 1)~ EXTERN ~P_MICHEL~ 34
END

IF ~~ THEN BEGIN 77 // from:
  SAY @91 /* ~Excelente, <CHARNAME>. Tomar� los ingredientes y Michelson har� el resto.~ */
  IF ~~ THEN DO ~TakePartyGold(25000) 
  TakePartyItem("HAMM03") 
  TakePartyItem("STAF13")
  TakePartyItem("SCRL1K")
  TakePartyItem("WAND04") 
  TakePartyItem("AMUL13")
  TakePartyItem("RING19")

  DestroyGold(25000)
  DestroyItem("HAMM03") 
  DestroyItem("STAF13")
  DestroyItem("SCRL1K")
  DestroyItem("WAND04") 
  DestroyItem("AMUL13")
  DestroyItem("RING19")

  ~ EXTERN ~P_MICHEL~ 22
END

IF ~~ THEN BEGIN 78
  SAY @83 /* ~�Por supuesto! M�ralo, ya est� bailando de nuevo.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 35
END

IF ~~ THEN BEGIN 79 // from:
  SAY @94 /* ~<CHARNAME>, espero que des un uso responsable a ese artefacto. Lo que llevas all� no es una simple baratija. De todas formas, confiamos en ti.~ */
  IF ~~ THEN DO ~SetGlobal ("p_hamm1_crimson_thunder", "GLOBAL", 2)~ EXTERN ~P_MICHEL~ 25
END

/////////////////// FUEGO SALVAJE


IF ~~ THEN BEGIN 80 // from:
  SAY @85 /* ~Excelente noticia, amigo m�o. Entonces,�procedemos?~  ~Excelente noticia, amiga m�a. Entonces,�procedemos?~ */
  IF ~~ THEN REPLY @75 /* ~Por supuesto.~ */ GOTO 81
  IF ~~ THEN REPLY @76 /* ~A�n no, Mathyus. Quiz�s m�s adelante.~ */ GOTO 54
END

IF ~~ THEN BEGIN 81 // from:
  SAY @78 /* ~�Escuchaste eso, Michelson? Parece que tenemos trabajo por hacer.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_leat01_fuego_salvaje", "GLOBAL", 1)~ EXTERN ~P_MICHEL~ 36
END

IF ~~ THEN BEGIN 82 // from:
  SAY @91 /* ~Excelente, <CHARNAME>. Tomar� los ingredientes y Michelson har� el resto.~ */
  IF ~~ THEN DO ~TakePartyGold(7000) 
  TakePartyItem("LEAT09") 
  TakePartyItem("MISC16")
  TakePartyItem("SCRL06")
  TakePartyItem("AMUL24") 
  DestroyGold(7000)
  DestroyItem("LEAT09") 
  DestroyItem("MISC16")
  DestroyItem("SCRL06")
  DestroyItem("AMUL24") 
  ~ EXTERN ~P_MICHEL~ 22
END

IF ~~ THEN BEGIN 83
  SAY @83 /* ~�Por supuesto! M�ralo, ya est� bailando de nuevo.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 37
END

IF ~~ THEN BEGIN 84 // from:
  SAY @84 /* ~No hay necesidad de agradecimiento, compa�eros. Espero que den un buen uso al trabajo que hemos realizado aqu� el d�a de hoy.~ */
  IF ~~ THEN DO ~SetGlobal ("p_leat01_fuego_salvaje", "GLOBAL", 2)~ EXTERN ~P_MICHEL~ 25
END

/////////////////// VENOM STRIKE


IF ~~ THEN BEGIN 85 // from:
  SAY @85 /* ~Excelente noticia, amigo m�o. Entonces,�procedemos?~  ~Excelente noticia, amiga m�a. Entonces,�procedemos?~ */
  IF ~~ THEN REPLY @75 /* ~Por supuesto.~ */ GOTO 86
  IF ~~ THEN REPLY @76 /* ~A�n no, Mathyus. Quiz�s m�s adelante.~ */ GOTO 54
END

IF ~~ THEN BEGIN 86 // from:
  SAY @78 /* ~�Escuchaste eso, Michelson? Parece que tenemos trabajo por hacer.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_venom_strike", "GLOBAL", 1)~ EXTERN ~P_MICHEL~ 38
END

IF ~~ THEN BEGIN 87 // from:
  SAY @91 /* ~Excelente, <CHARNAME>. Tomar� los ingredientes y Michelson har� el resto.~ */
  IF ~~ THEN DO ~TakePartyGold(25000) 
  TakePartyItem("BLUN17") 
  TakePartyItem("SCRL08")
  TakePartyItem("SCRL1Q")
  TakePartyItem("POTN42") 
  TakePartyItem("MISC31")
  TakePartyItem("MISC37") 
  DestroyGold(25000)
  DestroyItem("BLUN17") 
  DestroyItem("SCRL08")
  DestroyItem("SCRL1Q")
  DestroyItem("POTN42") 
  DestroyItem("MISC31")
  DestroyItem("MISC37") 
  ~ EXTERN ~P_MICHEL~ 22
END

IF ~~ THEN BEGIN 88
  SAY @83 /* ~�Por supuesto! M�ralo, ya est� bailando de nuevo.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 39
END

IF ~~ THEN BEGIN 89 // from:
  SAY @94 /* ~<CHARNAME>, espero que des un uso responsable a ese artefacto. Lo que llevas all� no es una simple baratija. De todas formas, confiamos en ti.~ */
  IF ~~ THEN DO ~SetGlobal ("p_venom_strike", "GLOBAL", 2)~ EXTERN ~P_MICHEL~ 25
END

/////////////////// COLMILLO DE LARLOCH

IF ~~ THEN BEGIN 90 // from:
  SAY @85 /* ~Excelente noticia, amigo m�o. Entonces,�procedemos?~  ~Excelente noticia, amiga m�a. Entonces,�procedemos?~ */
  IF ~~ THEN REPLY @75 /* ~Por supuesto.~ */ GOTO 91
  IF ~~ THEN REPLY @76 /* ~A�n no, Mathyus. Quiz�s m�s adelante.~ */ GOTO 54
END

IF ~~ THEN BEGIN 91 // from:
  SAY @78 /* ~�Escuchaste eso, Michelson? Parece que tenemos trabajo por hacer.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_sw1h00_colmillo_larloch", "GLOBAL", 1)~ EXTERN ~P_MICHEL~ 40
END

IF ~~ THEN BEGIN 92 // from:
  SAY @91 /* ~Excelente, <CHARNAME>. Tomar� los ingredientes y Michelson har� el resto.~ */
  IF ~~ THEN DO ~TakePartyGold(12500) 
  TakePartyItem("AX1H02")
  TakePartyItem("KORAX01") 
  TakePartyItem("POTN22")
  TakePartyItem("MISC26")
  TakePartyItem("SCRL84") 
  TakePartyItem("HELM06")
  DestroyGold(12500)
  DestroyItem("KORAX01") 
  DestroyItem("AX1H02") 
  DestroyItem("POTN22")
  DestroyItem("MISC26")
  DestroyItem("SCRL84") 
  DestroyItem("HELM06")
  ~ EXTERN ~P_MICHEL~ 22
END

IF ~~ THEN BEGIN 93
  SAY @83 /* ~�Por supuesto! M�ralo, ya est� bailando de nuevo.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 41
END

IF ~~ THEN BEGIN 94 // from:
  SAY @84 /* ~No hay necesidad de agradecimiento, compa�eros. Espero que den un buen uso al trabajo que hemos realizado aqu� el d�a de hoy.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw1h00_colmillo_larloch", "GLOBAL", 2)~ EXTERN ~P_MICHEL~ 25
END

/////////////////// VENTISCA DEL AVERNO

IF ~~ THEN BEGIN 95 // from:
  SAY @85 /* ~Excelente noticia, amigo m�o. Entonces,�procedemos?~  ~Excelente noticia, amiga m�a. Entonces,�procedemos?~ */
  IF ~~ THEN REPLY @75 /* ~Por supuesto.~ */ GOTO 96
  IF ~~ THEN REPLY @76 /* ~A�n no, Mathyus. Quiz�s m�s adelante.~ */ GOTO 54
END

IF ~~ THEN BEGIN 96 // from:
  SAY @78 /* ~�Escuchaste eso, Michelson? Parece que tenemos trabajo por hacer.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_sw1h06_ventisca_averno", "GLOBAL", 1)~ EXTERN ~P_MICHEL~ 42
END

IF ~~ THEN BEGIN 97 // from:
  SAY @91 /* ~Excelente, <CHARNAME>. Tomar� los ingredientes y Michelson har� el resto.~ */
  IF ~~ THEN DO ~TakePartyGold(12500) 
  TakePartyItem("SW1H42") 
  TakePartyItem("SCRL04")
  TakePartyItem("MISC17")
  TakePartyItem("MISC33") 
  TakePartyItem("MISC42")
  DestroyGold(12500)
  DestroyItem("SW1H42") 
  DestroyItem("SCRL04")
  DestroyItem("MISC17")
  DestroyItem("MISC33") 
  DestroyItem("MISC42")
  ~ EXTERN ~P_MICHEL~ 22
END

IF ~~ THEN BEGIN 98
  SAY @83 /* ~�Por supuesto! M�ralo, ya est� bailando de nuevo.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 43
END

IF ~~ THEN BEGIN 99 // from:
  SAY @84 /* ~No hay necesidad de agradecimiento, compa�eros. Espero que den un buen uso al trabajo que hemos realizado aqu� el d�a de hoy.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw1h06_ventisca_averno", "GLOBAL", 2)~ EXTERN ~P_MICHEL~ 25
END

/////////////////// VENGADORA REAL

IF ~~ THEN BEGIN 100 // from:
  SAY @99 /* ~Vaya... realmente lo han logrado...~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 44
END

IF ~~ THEN BEGIN 101 // from:
  SAY @100 /* ~Si hab�a gente capaz de hacerlo, sab�a que ustedes, <CHARNAME>, Dusk, ser�an dignos de tal haza�a.~ */
  IF ~~ THEN DO ~~ 
        REPLY @101 /* ~Como dijo Dusk, no ha sido nada f�cil... seg�n lo que has anotado en tu diario, Mathyus... creo que nos debes algo...~ */ GOTO 102
END

IF ~~ THEN BEGIN 102 // from:
  SAY @102 /* ~Erhm... S�, es verdad... pero todo se reduce a Michelson... (lamento haber revelado tu secreto, peque�o, pero ellos tienen el equipamiento completo del Duque... bueno, casi completo)~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 45
END

IF ~~ THEN BEGIN 103 // from:
  SAY @113 /* ~*suspira* Vaya, es un alivio. Michelson dice que les entregar� la legendaria Vengadora Real. El arma definitiva del Duque Benork.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 39
END

IF ~~ THEN BEGIN 104 // from:
  SAY @103 /* ~Siempre y cuando, Dusk entregue en su lugar su Bast�n reforzado de Shilmista. El peque�o, aparentemente, no quiere quedarse sin bast�n.~ */
  IF ~~ THEN GOTO 105
END

IF ~~ THEN BEGIN 105 // from:
  SAY @104 /* ~�Y bien? El bast�n reforzado de shilmista por la Vengadora Real. Me parece un cambio m�s que justo, �no lo creen?~ */
  IF ~!PartyHasItem("p_stf1") Global ("p_staff_lost", "GLOBAL", 0)~ THEN REPLY @105 /* ~*Ejem* Ver�s... no contamos con ese bast�n con nosotros.~ */ EXTERN ~P_DUSKJ~ 40
  IF ~PartyHasItem("p_stf1") Global ("p_staff_lost", "GLOBAL", 0)~ THEN REPLY @106 /* ~Por m� est� bien, pero la decisi�n final la tiene Dusk.~ */ EXTERN ~P_DUSKJ~ 42
  IF ~!PartyHasItem("p_stf1") Global ("p_staff_lost", "GLOBAL", 1)~ THEN REPLY @105 /* ~*Ejem* Ver�s... no contamos con ese bast�n con nosotros.~ */ EXTERN ~P_DUSKJ~ 40
  IF ~PartyHasItem("p_stf1") Global ("p_staff_lost", "GLOBAL", 1)~ THEN REPLY @106 /* ~Por m� est� bien, pero la decisi�n final la tiene Dusk.~ */ EXTERN ~P_DUSKJ~ 45
  IF ~~ THEN REPLY @109 /* ~Suena tentador, pero me gustar�a pensarlo antes de decidir, Mathyus.~ */ GOTO 54
END

IF ~~ THEN BEGIN 106 // from:
  SAY @108 /* ~Una sabia decisi�n, amigo m�o. Michelson, puedes hacer el intercambio cuando quieras.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 47
END

IF ~~ THEN BEGIN 107 // from:
  SAY @110 /* ~�Ah, mis buenos aventureros! Lo que han logrado hoy es algo incre�ble. Conf�o en que usar�n el arma para impartir justicia. As� lo habr�a querido el buen conde Benork.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 49
END

////// MISION 2

IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskMatMission2","GLOBAL",2)
Global("P_DemoleSpawn2","GLOBAL",1)~ THEN BEGIN 108 // from:
  SAY @114 /* ~�Dusk! Me alegra que hayas recibido el mensaje de mi compa�ero. �Buen trabajo, Demoledor!~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission2","GLOBAL",3)~ EXTERN ~P_DEMOLE~ 6
END

IF ~~ THEN BEGIN 109 // from:
  SAY @115 /* ~As� es, Capit�n. Demoledor, con su gran olfato, ha obtenido la ubicaci�n del grupo que buscas.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 57
END

IF ~~ THEN BEGIN 110 // from:
  SAY @116 /* ~Cuando el Capit�n Aldant nos cont� de sus visiones, consult� a Michelson al respecto. �l me dijo que es posible que dichas visiones sean reales y que se tratasen de los verdaderos atacantes del destacamento de Cormyr.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 50
END

IF ~~ THEN BEGIN 111 // from:
  SAY @117 /* ~Por alguna raz�n, Michelson hace �nfasis en la palabra "posible".~ */
    IF ~~ THEN REPLY @118 /* ~Eso quiere decir que es posible que no sean los atacantes del destacamento de Dusk, �no es as�?~ */  EXTERN ~P_DuskJ~ 67
    IF ~~ THEN REPLY @119 /* ~Si son orcos y trolls los que est�n en las visiones, lo m�s probable es que sean los responsables de los ataques.~ */  EXTERN ~P_DuskJ~ 68
END

IF ~~ THEN BEGIN 112 // from:
  SAY @120 /* ~Capit�n... Dusk, �est�s seguro? Michelson ha analizado tus palabras... y �l mismo infiere en que hay una posibilidad de que est�s equivocado.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 71
END

IF ~~ THEN BEGIN 113 // from:
  SAY @121 /* ~Yo... ehm... *suspiro* Est� bien, Dusk. Te marcar� aqu� en tu mapa, <CHARNAME>.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("AR1200")~ GOTO 114
END

IF ~~ THEN BEGIN 114 // from:
  SAY @122 /* ~El lugar es conocido como las Colinas Ventolanza. Podr�s encontrarlos al sureste de la regi�n, cerca de un gran lago.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 73
END

IF ~~ THEN BEGIN 115 // from:
  SAY @123 /* ~No hay problema... pero, Dusk... no hagas nada precipitado.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 74
END

IF ~~ THEN BEGIN 116 // from:
  SAY @124 /* ~De acuerdo, Capit�n... una vez que cumplas con tu objetivo, por favor, vuelve con nosotros.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 75
END


IF ~InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskMatMission2","GLOBAL",2)
Global("P_DemoleSpawn2","GLOBAL",1)~ THEN BEGIN 117 // from:
  SAY @125 /* ~�<CHARNAME>! Me alegra verte. Necesito hablar urgente con Dusk. Cuando puedas, ven con �l.~ */
    IF ~~ THEN REPLY @127 /* ~De acuerdo, Mathyus. Volver� con Dusk.~ */  GOTO 120
    IF ~~ THEN REPLY @128 /* ~Est� bien, Mathyus. Aunque primero me gustar�a ver si podemos forjar algo antes con el leprechaun.~ */  GOTO 119
END

IF ~!InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskMatMission2","GLOBAL",2)
Global("P_DemoleSpawn2","GLOBAL",1)~ THEN BEGIN 118 // from:
  SAY @125 /* ~�<CHARNAME>! Me alegra verte. Necesito hablar urgente con Dusk. Cuando puedas, ven con �l.~ */
    IF ~~ THEN REPLY @127 /* ~De acuerdo, Mathyus. Volver� con Dusk.~ */  GOTO 120
    IF ~~ THEN REPLY @128 /* ~Est� bien, Mathyus. Aunque primero me gustar�a ver si podemos forjar algo antes con el leprechaun.~ */  GOTO 119
END

IF ~~ THEN BEGIN 119 // from:
  SAY @126 /* ~De acuerdo, querido. �Has logrado reunir los 'condimentos' necesarios para nuestro amigo Michelson?~ ~De acuerdo, querida. �Has logrado reunir los 'condimentos' necesarios para nuestro amigo Michelson?~*/
  IF ~~ THEN REPLY @72 /* ~A�n no hemos logrado reunir lo necesario, Mathyus.~ */ GOTO 52
  
  //Espada de Disrupci�n
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyGoldGT(7499) PartyHasItem("p_swr1") PartyHasItem("SCRL09") PartyHasItem("MISC40") PartyHasItem("MISC19") PartyHasItem("MISC44") PartyHasItem("BOOK89")~ THEN REPLY @73 /* ~Mathyus, hemos conseguido lo necesario para mejorar la espada de Dusk.~ */ GOTO 53
  // Armadura de Placas de Dusk
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyGoldGT(7499) PartyHasItem("p_dchan1") PartyHasItem("p_brkshl") PartyHasItem("MISC35") PartyHasItem("MISC38")~ THEN REPLY @89 /* ~Mathyus, hemos conseguido lo necesario para mejorar la armadura de Dusk.~ */ GOTO 69
  // Brazales de Defensa P�trea	
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 0) PartyGoldGT(2999) PartyHasItem("brac01") PartyHasItem("SCRL15") PartyHasItem("misc23") ~ THEN REPLY @92 /* ~Mathyus, hemos conseguido lo necesario para crear los Brazales de Defensa P�trea.~ */ GOTO 70
  // Crimson Thunder
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 0) PartyGoldGT(24999) PartyHasItem("HAMM03") PartyHasItem("STAF13") PartyHasItem("SCRL1K") PartyHasItem("WAND04") PartyHasItem("AMUL13") PartyHasItem("RING19") ~ THEN REPLY @93 /* ~Mathyus, hemos conseguido lo necesario para crear el martillo: Trueno Escarlata.~ */ GOTO 75
  // Fuego Salvaje
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 0) PartyGoldGT(6999) PartyHasItem("LEAT09") PartyHasItem("MISC16") PartyHasItem("SCRL06") PartyHasItem("AMUL24")  ~ THEN REPLY @95 /* ~Mathyus, hemos conseguido lo necesario para crear la armadura Fuego Salvaje.~ */ GOTO 80
  // Venom Strike
  IF ~Global ("p_venom_strike", "GLOBAL", 0) PartyGoldGT(24999) PartyHasItem("BLUN17") PartyHasItem("SCRL08") PartyHasItem("SCRL1Q") PartyHasItem("POTN42") PartyHasItem("MISC31") PartyHasItem("MISC37")  ~ THEN REPLY @96 /* ~Mathyus, hemos conseguido lo necesario para crear el mayal Golpe de Veneno.~ */ GOTO 85
  // Colmillo de Larloch
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 0) PartyGoldGT(12499)  PartyHasItem("POTN22") PartyHasItem("MISC26") PartyHasItem("SCRL84") PartyHasItem("HELM06") 
  OR(2)
  PartyHasItem("AX1H02")
  PartyHasItem("KORAX01")
  ~ THEN REPLY @97 /* ~Mathyus, hemos conseguido lo necesario para forjar el Colmillo de Larloch.~ */ GOTO 90
  // Ventisca del Averno
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 0) PartyGoldGT(12499) PartyHasItem("SW1H42") PartyHasItem("SCRL04") PartyHasItem("MISC17") PartyHasItem("MISC33") PartyHasItem("MISC42") ~ THEN REPLY @98 /* ~Mathyus, hemos conseguido lo necesario para forjar la Ventisca del Averno.~ */ GOTO 95
  // Vengadora Real
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("P_WSSTP_vengadora_real", "GLOBAL", 0) Global ("p_staff_lost", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2") ~ THEN REPLY @111 /* ~Mathyus, hemos conseguido los artefactos del Duque Benork.~ */ GOTO 100
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("p_staff_lost", "GLOBAL", 1) PartyHasItem("p_stf1") InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2")~ THEN REPLY @112 /* ~�Mathyus! Hemos encontrado el bast�n de Dusk.~ */ EXTERN ~P_DUSKJ~ 41
END


IF ~~ THEN BEGIN 120 // from:
  SAY @129 /* ~Gracias, <CHARNAME>. Vuelve pronto.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
OR (5)
Global("P_DuskMatMission2","GLOBAL",3)
Global("P_DuskMatMission2","GLOBAL",4)
Global("P_DuskMatMission2","GLOBAL",5)
Global("P_DuskMatMission2","GLOBAL",6)
Global("P_DuskMatMission3","GLOBAL",3)~ THEN BEGIN 121 // from:
  SAY @130 /* ~Me alegro veros de nuevo. �Tienen alguna novedad?~ */
    IF ~~ THEN REPLY @131 /* ~A�n no, Mathyus. Pero en cuanto sepamos algo, volveremos.~ */  GOTO 120
    IF ~~ THEN REPLY @132 /* ~A�n no, Mathyus. Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
OR (5)
Global("P_DuskMatMission2","GLOBAL",3)
Global("P_DuskMatMission2","GLOBAL",4)
Global("P_DuskMatMission2","GLOBAL",5)
Global("P_DuskMatMission2","GLOBAL",6)
Global("P_DuskMatMission3","GLOBAL",3)~ THEN BEGIN 122 // from:
  SAY @130 /* ~Me alegro veros de nuevo. �Tienen alguna novedad?~ */
    IF ~~ THEN REPLY @131 /* ~A�n no, Mathyus. Pero en cuanto sepamos algo, volveremos.~ */  GOTO 120
    IF ~~ THEN REPLY @132 /* ~A�n no, Mathyus. Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
END

IF ~!InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
OR (5)
Global("P_DuskMatMission2","GLOBAL",3)
Global("P_DuskMatMission2","GLOBAL",4)
Global("P_DuskMatMission2","GLOBAL",5)
Global("P_DuskMatMission2","GLOBAL",6)
Global("P_DuskMatMission3","GLOBAL",3)~ THEN BEGIN 123 // from:
  SAY @130 /* ~Me alegro veros de nuevo. �Tienen alguna novedad?~ */
    IF ~~ THEN REPLY @131 /* ~A�n no, Mathyus. Pero en cuanto sepamos algo, volveremos.~ */  GOTO 120
    IF ~~ THEN REPLY @132 /* ~A�n no, Mathyus. Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
END

/////////////

//MISSION 2 FINAL - GLOBAL 7
// SIN DUSK
IF ~InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskMatMission2","GLOBAL",7)
Global("P_DuskMatMission3","GLOBAL",0)~ THEN BEGIN 124 // from:
  SAY @130 /* ~Me alegro veros de nuevo. �Tienen alguna novedad?~ */
    IF ~~ THEN REPLY @133 /* ~As� es, Mathyus. Pero ser� mejor que Dusk te lo diga.~ */  GOTO 125
    IF ~~ THEN REPLY @134 /* ~Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
END

IF ~~ THEN BEGIN 125 // from:
  SAY @129 /* ~Gracias, <CHARNAME>. Vuelve pronto.~ */
  IF ~~ THEN DO ~~ EXIT
END

IF ~!InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskMatMission2","GLOBAL",7)
Global("P_DuskMatMission3","GLOBAL",0)~ THEN BEGIN 126 // from:
  SAY @130 /* ~Me alegro veros de nuevo. �Tienen alguna novedad?~ */
    IF ~~ THEN REPLY @133 /* ~As� es, Mathyus. Pero ser� mejor que Dusk te lo diga.~ */  GOTO 125
    IF ~~ THEN REPLY @134 /* ~Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
END

// CON DUSK
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskMatMission2","GLOBAL",7)
Global("P_DuskMatMission3","GLOBAL",0)~ THEN BEGIN 127 // from:
  SAY @130 /* ~Me alegro veros de nuevo. �Tienen alguna novedad?~ */
    IF ~Global ("P_DuskEvil","GLOBAL",5) PartyHasItem("p_orbe1")~ THEN REPLY @135 /* ~As� es, Mathyus. Dusk, te cedo la palabra.~ */  GOTO 128
	IF ~Global ("P_DuskGood","GLOBAL",5) PartyHasItem("p_orbe1")~ THEN REPLY @135 /* ~As� es, Mathyus. Dusk, te cedo la palabra.~ */  GOTO 152
	IF ~OR (2) 
	Global ("P_DuskEvil","GLOBAL",5)
	Global ("P_DuskGood","GLOBAL",5)~ THEN REPLY @162 /* ~A�n no, Mathyus. Deb�amos traerte un orbe, pero creo que lo hemos olvidamos... Lo buscaremos y volveremos contigo, �s�?~ */  GOTO 120
    IF ~~ THEN REPLY @134 /* ~Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
END

// EVIL PATH

IF ~~ THEN BEGIN 128 // from:
  SAY @136 /* ~Ah, novedades al fin. Vamos, Dusk. �C�mo les ha ido?~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DuskJ~ 159 
END

IF ~~ THEN BEGIN 129 // from:
  SAY @137 /* ~Entiendo... La intuici�n de Michelson estaba acertada, despu�s de todo.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MICHEL~ 51
END

IF ~~ THEN BEGIN 130 // from:
  SAY @138 /* ~De acuerdo, de acuerdo, Michelson. Ten�as raz�n. �Est�s contento?~ */
  IF ~~ THEN GOTO 131
END

IF ~~ THEN BEGIN 131 // from:
  SAY @139 /* ~Bueno, Dusk. �C�mo has llegado a esa conclusi�n? Imagino que has podido interactuar con ellos, �no es as�?~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 161
END

IF ~~ THEN BEGIN 132 // from:
  SAY @140 /* ~�Q-qu�...?~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 52
END

IF ~~ THEN BEGIN 133 // from:
  SAY @141 /* ~Dusk... �no acabas de decir... que ellos no hab�an sido los responsables? Debieron atacarte, �no es as�? T� no los matar�as sin tener alguna raz�n que lo justifique, �verdad?~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 162
END

IF ~~ THEN BEGIN 134 // from:
  SAY @142 /* ~P-pues... �no! �Desertores? La misma palabra indica que ya no formaban parte del ej�rcito del ogro, Dusk.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 164
END

IF ~~ THEN BEGIN 135 // from:
  SAY @143 /* ~�Que no le d� vueltas? No lo comprendo, Dusk... No te reconozco... P-pero... Hay algo extra�o... Percibo un aura extra�a en ti...~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 165
END

IF ~~ THEN BEGIN 136 // from:
  SAY @144 /* ~�Qu� sucede, Michelson? �Reconoces el artefacto?~ */
  IF ~~ THEN DO ~TakePartyItem("p_orbe1")~ EXTERN ~P_MICHEL~ 54
END

IF ~~ THEN BEGIN 137 // from:
  SAY @145 /* ~Ya veo... Dusk, Michelson dice que el orbe es sumamente poderoso. Aunque, tambi�n, peligroso.~ */
  IF ~~ THEN GOTO 138
END

IF ~~ THEN BEGIN 138 // from:
  SAY @146 /* ~De su interior se puede extraer un gran poder. Algo que puede ser plasmado en tu cuerpo y en un arma.~ */
  IF ~~ THEN GOTO 139
END

IF ~~ THEN BEGIN 139 // from:
  SAY @147 /* ~Aparentemente, es algo que s�lo t� puedes activar. Sea quien sea ese mago, Dusk... claramente est� enlazado a ti de alguna manera.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 169
END

IF ~~ THEN BEGIN 140 // from:
  SAY @148 /* ~Ese es el problema, Dusk... Michelson dice que el artefacto es maligno. Si lo usas, es muy probable que su efecto sea irreversible.~ */
  IF ~~ THEN GOTO 141
END

IF ~~ THEN BEGIN 141 // from:
  SAY @149 /* ~Michelson recomienda que nos lo entregues para que podamos estudiarlo mejor. El peque�o cree que es posible extirpar esa maldad y, a�n as�, darle una utilidad al mismo.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 170
END

IF ~~ THEN BEGIN 142 // from:
  SAY @150 /* ~Pues... s�. Pero al menos ser�a m�s seguro el poder utilizarlo.~ */
  IF ~~ THEN GOTO 143
END

IF ~~ THEN BEGIN 143 // from:
  SAY @151 /* ~Creo que ese tal Sornhil entreg� este artefacto para tentarte, Dusk.~ */
  IF ~~ THEN GOTO 144
END

IF ~~ THEN BEGIN 144 // from:
  SAY @152 /* ~Si fuera t�, yo no lo usar�a. Puede que hasta mueras en el proceso... es muy peligroso.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 171
END

IF ~~ THEN BEGIN 145 // from:
  SAY @153 /* ~Oh, Dusk... no me digas que...~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 173
END

IF ~~ THEN BEGIN 146 // from:
  SAY @154 /* ~Dusk, no lo hagas... No sabemos qu� es lo que puede pasar... Puede que mueras en el proceso. Yo...~ */
    IF ~~ THEN REPLY @155 /* ~Hazlo, Dusk. Tengo plena confianza en ti. S� que eres capaz de manejar cualquier contingencia que ocurra.~ */  EXTERN ~P_DuskJ~ 174
    IF ~~ THEN REPLY @156 /* ~Escucha a Mathyus, Dusk. Esto es peligroso. Quiz�s debas meditarlo al menos un momento.~ */  EXTERN ~P_DuskJ~ 174
END

IF ~~ THEN BEGIN 147 // from:
  SAY @157 /* ~*suspiro* Est� bien, Dusk... Michelson dijo que s�lo debes ver el orbe... �qu� es lo que ver�s? Nadie lo sabe... pero debes pedirle lo que deseas.~ */
  IF ~~ THEN DO ~GiveItem("p_orbe1", "P_Dusk")~ EXTERN ~P_DuskJ~ 175
END

IF ~~ THEN BEGIN 148 // from:
  SAY @158 /* ~<CHARNAME>, Dusk est� adentrado en el poder del orbe. No s� qu� es lo que est� viendo, pero por su cara no debe ser algo bueno.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 177
END

IF ~~ THEN BEGIN 149 // from:
  SAY @159 /* ~Err... D-dusk... �qu� ha pasado? El orbe ha desaparecido.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 55
END

IF ~~ THEN BEGIN 150 // from:
  SAY @160 /* ~P-pero, Dusk, yo-~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 182
END

IF ~~ THEN BEGIN 151 // from:
  SAY @161 /* ~*traga saliva* E-entiendo... Enviar�... enviar� a Demoledor cuando tenga novedades.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 183
END

// GOOD PATH

IF ~~ THEN BEGIN 152 // from:
  SAY @136 /* ~Ah, novedades al fin. Vamos, Dusk. �C�mo les ha ido?~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DuskJ~ 187 
END

IF ~~ THEN BEGIN 153 // from:
  SAY @137 /* ~Entiendo... La intuici�n de Michelson estaba acertada, despu�s de todo.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MICHEL~ 58
END

IF ~~ THEN BEGIN 154 // from:
  SAY @138 /* ~De acuerdo, de acuerdo, Michelson. Ten�as raz�n. �Est�s contento?~ */
  IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155 // from:
  SAY @139 /* ~Bueno, Dusk. �C�mo has llegado a esa conclusi�n? Imagino que has podido interactuar con ellos, �no es as�?~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 189
END

IF ~~ THEN BEGIN 156 // from:
  SAY @185 /* ~�Por el coraz�n de Shilmista, Dusk! Me alegra en sobremanera la decisi�n que tomaron. <CHARNAME>, gracias por estar ah� para Dusk.~ */
    IF ~~ THEN REPLY @163 /* ~Pierde el cuidado, Mathyus. Me pareci� la opci�n m�s sensata. No todo debe terminar en guerra.~ */  GOTO 157
    IF ~~ THEN REPLY @164 /* ~No lo menciones. Ya, deja de mirarme como si estuvieras embobado por m�, �vale?~ */  GOTO 157
END

IF ~~ THEN BEGIN 157 // from:
  SAY @165 /* ~*carraspeo* Bueno, bueno. Lo cierto es que estoy feliz por ustedes, �no es as�, Michelson?~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 59
END

IF ~~ THEN BEGIN 158 // from:
  SAY @166 /* ~�Qu�? Michelson dice que el camino que han tomado ha cambiado el destino de Dusk.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 192
END

IF ~~ THEN BEGIN 159 // from:
  SAY @167 /* ~Pues, yo tampoco lo entiendo. Est� tan contento que quiere darle un presente a <CHARNAME>.~ */
    IF ~~ THEN REPLY @168 /* ~�De verdad? Siempre sent� aprecio por ti, Michelson, �lo sab�as?~ */  EXTERN ~P_MICHEL~ 60
    IF ~~ THEN REPLY @169 /* ~No act�o en base a una promesa de recompensa, amigos m�os.~ */  EXTERN ~P_MICHEL~ 60
	IF ~~ THEN REPLY @170 /* ~Espero que no se trate de una travesura tuya, renacuajo.~ */  EXTERN ~P_MICHEL~ 60
END

IF ~~ THEN BEGIN 160 // from:
  SAY @171 /* ~Vaya... Michelson, �le dar�s tu anillo favorito a <CHARNAME>?~ */
  IF ~~ THEN EXTERN  ~P_MICHEL~ 61
END

IF ~~ THEN BEGIN 161 // from:
  SAY @172 /* ~<CHARNAME>, lo que tienes all� es un artefacto muy poderoso. Ten en cuenta lo siguiente: s�lo puede ser utilizado por aquellos que sean afines a la naturaleza, como druidas o exploradores.~ */
  IF ~~ THEN EXTERN  ~P_MICHEL~ 62
END

IF ~~ THEN BEGIN 162 // from:
  SAY @173 /* ~Ah, ya veo. Michelson dice que el anillo contiene el alma de una ninfa del bosque de Mir, llamada Bellfame. Dice que viene de un tiempo que a�n no ha sucedido. Vaya, no comprendo eso que quieres decir, mi peque�o amigo.~ */
  IF ~~ THEN EXTERN  ~P_DEMOLE~ 11
END


IF ~~ THEN BEGIN 163 // from:
  SAY @174 /* ~�Qu�? Demole, �hasta t� comprendes lo que Michelson est� explicando?, �dices que los eventos narrados por el anillo suceder�n de aqu� a un a�o?~ */
  IF ~~ THEN GOTO 164
END

IF ~~ THEN BEGIN 164 // from:
  SAY @175 /* ~Hmpf... no importa. Supongo que si identificas el anillo, podr�s entender mejor de qu� se trata.~ */
  IF ~~ THEN GOTO 165
END

IF ~~ THEN BEGIN 165 // from:
  SAY @176 /* ~Suficiente sobre el anillo, �s�? Oye, Dusk. �Sucede algo? Te veo un poco deca�do...~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 193
END

IF ~~ THEN BEGIN 166 // from:
  SAY @177 /* ~�A qu� te refieres? Eh... �qu� est� pasando, Dusk? Percibo un aura extra�a en ti.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 194
END

IF ~~ THEN BEGIN 167 // from:
  SAY @144 /* ~�Qu� sucede, Michelson? �Reconoces el artefacto?~ */
  IF ~~ THEN DO ~TakePartyItem("p_orbe1")~ EXTERN ~P_MICHEL~ 64
END

IF ~~ THEN BEGIN 168 // from:
  SAY @145 /* ~Ya veo... Dusk, Michelson dice que el orbe es sumamente poderoso. Aunque, tambi�n, peligroso.~ */
  IF ~~ THEN GOTO 169
END

IF ~~ THEN BEGIN 169 // from:
  SAY @146 /* ~De su interior se puede extraer un gran poder. Algo que puede ser plasmado en tu cuerpo y en un arma.~ */
  IF ~~ THEN GOTO 170
END

IF ~~ THEN BEGIN 170 // from:
  SAY @147 /* ~Aparentemente, es algo que s�lo t� puedes activar. Sea quien sea ese mago, Dusk... claramente est� enlazado a ti de alguna manera.~ */
  IF ~~ THEN EXTERN ~P_DUSKJ~ 197
END

IF ~~ THEN BEGIN 171 // from:
  SAY @148 /* ~Ese es el problema, Dusk... Michelson dice que el artefacto es maligno. Si lo usas, es muy probable que su efecto sea irreversible.~ */
  IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172 // from:
  SAY @178 /* ~Michelson recomienda que dejes purificarlo. El peque�o cree que es posible extirpar esa maldad y, a�n as�, darle una utilidad al mismo.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 198
END

IF ~~ THEN BEGIN 173 // from:
  SAY @150 /* ~Pues... s�. Pero al menos ser�a m�s seguro el poder utilizarlo.~ */
  IF ~~ THEN GOTO 174
END

IF ~~ THEN BEGIN 174 // from:
  SAY @151 /* ~Creo que ese tal Sornhil entreg� este artefacto para tentarte, Dusk.~ */
  IF ~~ THEN GOTO 175
END

IF ~~ THEN BEGIN 175 // from:
  SAY @152 /* ~Si fuera t�, yo no lo usar�a. Puede que hasta mueras en el proceso... es muy peligroso.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 199
END

IF ~~ THEN BEGIN 176 // from:
  SAY @153 /* ~Oh, Dusk... no me digas que...~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 201
END

IF ~~ THEN BEGIN 177 // from:
  SAY @154 /* ~Dusk, no lo hagas... No sabemos qu� es lo que puede pasar... Puede que mueras en el proceso. Yo...~ */
    IF ~~ THEN REPLY @155 /* ~Hazlo, Dusk. Tengo plena confianza en ti. S� que eres capaz de manejar cualquier contingencia que ocurra.~ */  EXTERN ~P_DuskJ~ 202
    IF ~~ THEN REPLY @179 /* ~Escucha a Mathyus, Dusk. Esto es peligroso. Quiz�s debas meditarlo al menos un momento. Puede que la purificaci�n sea una buena idea.~ */  EXTERN ~P_DuskJ~ 203
END

IF ~~ THEN BEGIN 178 // from:
  SAY @180 /* ~�As� es! Aunque... no s� si ello supondr�a un peligro para �l.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 65
END

IF ~~ THEN BEGIN 179 // from:
  SAY @181 /* ~Cielos... siento como si hubiese estado conteniendo el aliento, mi buen Dusk. Est� bien...~ */
  IF ~~ THEN GOTO 180
END

IF ~~ THEN BEGIN 180 // from:
  SAY @182 /* ~Michelson dijo que s�lo debes ver el orbe... �qu� es lo que ver�s? Nadie lo sabe... pero debes pedirle lo que deseas.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 206
END

IF ~~ THEN BEGIN 181 // from:
  SAY @183 /* ~<CHARNAME>, Dusk est� adentrado en el poder del orbe. No s� qu� es lo que est� viendo, pero veo que est� sonriendo, mientras l�grimas corren por su mejilla...~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 208
END

IF ~~ THEN BEGIN 182 // from:
  SAY @159 /* ~Err... D-dusk... �qu� ha pasado? El orbe ha desaparecido.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 70
END

IF ~~ THEN BEGIN 183 // from:
  SAY @184 /* ~Me alegra que todo haya salido bien, Dusk. Si tengo novedades, te lo har� saber. Michelson, Demoledor y yo estaremos atentos ante cualquier eventualidad.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 213
END

// MISSION 2 TERMINADA

IF ~Global("P_DuskMatMission1","GLOBAL",5)
Global("P_DuskMatMission2","GLOBAL",8)
Global("P_DuskMatMission3","GLOBAL",0)
Global("P_DuskMatMission4","GLOBAL",0)
Global("P_DuskDemoleMISSION","GLOBAL",0)
Global("P_Michel_Forge","GLOBAL",0)~ THEN BEGIN 184 // from:
  SAY @71 /* ~�Ah! Pero si es mi grupo favorito de aventureros. �C�mo est�n? �Han venido a forjar alg�n artefacto con Michelson?~ */
  IF ~~ THEN REPLY @72 /* ~A�n no hemos logrado reunir lo necesario, Mathyus.~ */ GOTO 52  
  //Espada de Disrupci�n
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyGoldGT(7499) PartyHasItem("p_swr1") PartyHasItem("SCRL09") PartyHasItem("MISC40") PartyHasItem("MISC19") PartyHasItem("MISC44") PartyHasItem("BOOK89")~ THEN REPLY @73 /* ~Mathyus, hemos conseguido lo necesario para mejorar la espada de Dusk.~ */ GOTO 53
  // Armadura de Placas de Dusk
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyGoldGT(7499) PartyHasItem("p_dchan1") PartyHasItem("p_brkshl") PartyHasItem("MISC35") PartyHasItem("MISC38")~ THEN REPLY @89 /* ~Mathyus, hemos conseguido lo necesario para mejorar la armadura de Dusk.~ */ GOTO 69
  // Brazales de Defensa P�trea	
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 0) PartyGoldGT(2999) PartyHasItem("brac01") PartyHasItem("SCRL15") PartyHasItem("misc23") ~ THEN REPLY @92 /* ~Mathyus, hemos conseguido lo necesario para crear los Brazales de Defensa P�trea.~ */ GOTO 70
  // Crimson Thunder
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 0) PartyGoldGT(24999) PartyHasItem("HAMM03") PartyHasItem("STAF13") PartyHasItem("SCRL1K") PartyHasItem("WAND04") PartyHasItem("AMUL13") PartyHasItem("RING19") ~ THEN REPLY @93 /* ~Mathyus, hemos conseguido lo necesario para crear el martillo: Trueno Escarlata.~ */ GOTO 75
  // Fuego Salvaje
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 0) PartyGoldGT(6999) PartyHasItem("LEAT09") PartyHasItem("MISC16") PartyHasItem("SCRL06") PartyHasItem("AMUL24")  ~ THEN REPLY @95 /* ~Mathyus, hemos conseguido lo necesario para crear la armadura Fuego Salvaje.~ */ GOTO 80
  // Venom Strike
  IF ~Global ("p_venom_strike", "GLOBAL", 0) PartyGoldGT(24999) PartyHasItem("BLUN17") PartyHasItem("SCRL08") PartyHasItem("SCRL1Q") PartyHasItem("POTN42") PartyHasItem("MISC31") PartyHasItem("MISC37")  ~ THEN REPLY @96 /* ~Mathyus, hemos conseguido lo necesario para crear el mayal Golpe de Veneno.~ */ GOTO 85
  // Colmillo de Larloch
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 0) PartyGoldGT(12499)  PartyHasItem("POTN22") PartyHasItem("MISC26") PartyHasItem("SCRL84") PartyHasItem("HELM06") 
  OR (2)
  PartyHasItem("AX1H02")
  PartyHasItem("KORAX01")~ THEN REPLY @97 /* ~Mathyus, hemos conseguido lo necesario para forjar el Colmillo de Larloch.~ */ GOTO 90
  // Ventisca del Averno
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 0) PartyGoldGT(12499) PartyHasItem("SW1H42") PartyHasItem("SCRL04") PartyHasItem("MISC17") PartyHasItem("MISC33") PartyHasItem("MISC42") ~ THEN REPLY @98 /* ~Mathyus, hemos conseguido lo necesario para forjar la Ventisca del Averno.~ */ GOTO 95
  // Vengadora Real
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("P_WSSTP_vengadora_real", "GLOBAL", 0) Global ("p_staff_lost", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2") ~ THEN REPLY @111 /* ~Mathyus, hemos conseguido los artefactos del Duque Benork.~ */ GOTO 100
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("p_staff_lost", "GLOBAL", 1) PartyHasItem("p_stf1") InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2")~ THEN REPLY @112 /* ~�Mathyus! Hemos encontrado el bast�n de Dusk.~ */ EXTERN ~P_DUSKJ~ 41
END

IF ~Global("P_DuskMatMission1","GLOBAL",5)
Global("P_DuskMatMission2","GLOBAL",8)
Global("P_DuskMatMission3","GLOBAL",1)
Global("P_DuskMatMission4","GLOBAL",0)
Global("P_DuskDemoleMISSION","GLOBAL",0)
Global("P_Michel_Forge","GLOBAL",0)~ THEN BEGIN 209 // from:
  SAY @71 /* ~�Ah! Pero si es mi grupo favorito de aventureros. �C�mo est�n? �Han venido a forjar alg�n artefacto con Michelson?~ */
  IF ~~ THEN REPLY @72 /* ~A�n no hemos logrado reunir lo necesario, Mathyus.~ */ GOTO 52  
  //Espada de Disrupci�n
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyGoldGT(7499) PartyHasItem("p_swr1") PartyHasItem("SCRL09") PartyHasItem("MISC40") PartyHasItem("MISC19") PartyHasItem("MISC44") PartyHasItem("BOOK89")~ THEN REPLY @73 /* ~Mathyus, hemos conseguido lo necesario para mejorar la espada de Dusk.~ */ GOTO 53
  // Armadura de Placas de Dusk
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyGoldGT(7499) PartyHasItem("p_dchan1") PartyHasItem("p_brkshl") PartyHasItem("MISC35") PartyHasItem("MISC38")~ THEN REPLY @89 /* ~Mathyus, hemos conseguido lo necesario para mejorar la armadura de Dusk.~ */ GOTO 69
  // Brazales de Defensa P�trea	
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 0) PartyGoldGT(2999) PartyHasItem("brac01") PartyHasItem("SCRL15") PartyHasItem("misc23") ~ THEN REPLY @92 /* ~Mathyus, hemos conseguido lo necesario para crear los Brazales de Defensa P�trea.~ */ GOTO 70
  // Crimson Thunder
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 0) PartyGoldGT(24999) PartyHasItem("HAMM03") PartyHasItem("STAF13") PartyHasItem("SCRL1K") PartyHasItem("WAND04") PartyHasItem("AMUL13") PartyHasItem("RING19") ~ THEN REPLY @93 /* ~Mathyus, hemos conseguido lo necesario para crear el martillo: Trueno Escarlata.~ */ GOTO 75
  // Fuego Salvaje
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 0) PartyGoldGT(6999) PartyHasItem("LEAT09") PartyHasItem("MISC16") PartyHasItem("SCRL06") PartyHasItem("AMUL24")  ~ THEN REPLY @95 /* ~Mathyus, hemos conseguido lo necesario para crear la armadura Fuego Salvaje.~ */ GOTO 80
  // Venom Strike
  IF ~Global ("p_venom_strike", "GLOBAL", 0) PartyGoldGT(24999) PartyHasItem("BLUN17") PartyHasItem("SCRL08") PartyHasItem("SCRL1Q") PartyHasItem("POTN42") PartyHasItem("MISC31") PartyHasItem("MISC37")  ~ THEN REPLY @96 /* ~Mathyus, hemos conseguido lo necesario para crear el mayal Golpe de Veneno.~ */ GOTO 85
  // Colmillo de Larloch
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 0) PartyGoldGT(12499)  PartyHasItem("POTN22") PartyHasItem("MISC26") PartyHasItem("SCRL84") PartyHasItem("HELM06")
OR (2)
PartyHasItem("AX1H02")
PartyHasItem("KORAX01")  ~ THEN REPLY @97 /* ~Mathyus, hemos conseguido lo necesario para forjar el Colmillo de Larloch.~ */ GOTO 90
  // Ventisca del Averno
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 0) PartyGoldGT(12499) PartyHasItem("SW1H42") PartyHasItem("SCRL04") PartyHasItem("MISC17") PartyHasItem("MISC33") PartyHasItem("MISC42") ~ THEN REPLY @98 /* ~Mathyus, hemos conseguido lo necesario para forjar la Ventisca del Averno.~ */ GOTO 95
  // Vengadora Real
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("P_WSSTP_vengadora_real", "GLOBAL", 0) Global ("p_staff_lost", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2") ~ THEN REPLY @111 /* ~Mathyus, hemos conseguido los artefactos del Duque Benork.~ */ GOTO 100
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("p_staff_lost", "GLOBAL", 1) PartyHasItem("p_stf1") InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2")~ THEN REPLY @112 /* ~�Mathyus! Hemos encontrado el bast�n de Dusk.~ */ EXTERN ~P_DUSKJ~ 41
END


// MISSION 3

IF ~InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskMatMission3","GLOBAL",2)~ THEN BEGIN 186 // from:
  SAY @125 /* ~�<CHARNAME>! Me alegra verte. Necesito hablar urgente con Dusk. Cuando puedas, ven con �l.~ */
    IF ~~ THEN REPLY @127 /* ~De acuerdo, Mathyus. Volver� con Dusk.~ */  GOTO 120
    IF ~~ THEN REPLY @128 /* ~Est� bien, Mathyus. Aunque primero me gustar�a ver si podemos forjar algo antes con el leprechaun.~ */  GOTO 119
END

// Corregido a GLOBAL 2
IF ~!InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskMatMission3","GLOBAL",2)~ THEN BEGIN 187
  SAY @125 /* ~�<CHARNAME>! Me alegra verte. Necesito hablar urgente con Dusk. Cuando puedas, ven con �l.~ */
    IF ~~ THEN REPLY @127 /* ~De acuerdo, Mathyus. Volver� con Dusk.~ */  GOTO 120
    IF ~~ THEN REPLY @128 /* ~Est� bien, Mathyus. Aunque primero me gustar�a ver si podemos forjar algo antes con el leprechaun.~ */  GOTO 119
END

// EVIL
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_DUSK_IS_GOOD","GLOBAL",0)
Global("P_DuskMatMission3","GLOBAL",2)~ THEN BEGIN 188 // from:
  SAY @186 /* ~�D-Dusk! Me... alegra que hayas acudido a mi llamado. Demoledor, buen trabajo, como siempre.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",3)~ EXTERN ~P_DEMOLE~ 17
END

IF ~~ THEN BEGIN 189 // from:
  SAY @187 /* ~*suspiro* As� es, Dusk... Encontramos el rastro de un grupo de humanoides liderados por un orco tuerto. Consigo, llevan el estandarte de los Dragones P�rpuras de Cormyr.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 240
END

IF ~~ THEN BEGIN 190 // from:
  SAY @188 /* ~Su clan es conocido como...~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 71
END

IF ~~ THEN BEGIN 191 // from:
  SAY @189 /* ~Tal vez tengas raz�n, Michelson...~ */
    IF ~~ THEN REPLY @205 /* ~�Qu� sucede, Mathyus? �Qu� le pasa a Michelson?~ */  GOTO 192
    IF ~~ THEN REPLY @206 /* ~�Ja! �Qu� hormiga le pic� al renacuajo? Parece que est� por tener un ataque al coraz�n.~ */  GOTO 192
END

IF ~~ THEN BEGIN 192 // from:
  SAY @190 /* ~Cree que Dusk enloquecer� si yo-~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 241
END

IF ~~ THEN BEGIN 193 // from:
  SAY @191 /* ~D-de acuerdo... Su clan es conocido como... Los Asesinos de Dragones.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 242
END

IF ~~ THEN BEGIN 194 // from:
  SAY @192 /* ~*susurro* �Era lo que t� tem�as, Michelson?~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 72
END

IF ~~ THEN BEGIN 195 // from:
  SAY @193 /* ~Dusk... debes saber... que el tal Alabarza cuenta con un grupo cuantioso y peligroso de humanoides.~ */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from:
  SAY @194 /* ~Trolls, Moles sombr�as, criaturas reptilianas. Un grupo considerable de orcos. Tambi�n cuenta con un temible ettin. Es algo... intimidante.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 246
END

IF ~~ THEN BEGIN 197 // from:
  SAY @195 /* ~E-est� bien, Dusk. Te marcar� en tu mapa la ubicaci�n. Es cercana a la arboleda dru�dica. El lugar es conocido como una guarida de trolls. Un lugar enorme e intimidante al oesta de la regi�n. Creo que podr�s encontrarlo con relativa facilidad.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("AR1900")~ EXTERN ~P_DuskJ~ 250
END

// GOOD
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global ("P_DUSK_IS_GOOD","GLOBAL",1)
Global("P_DuskMatMission3","GLOBAL",2)~ THEN BEGIN 198 // from:
  SAY @196 /* ~�Dusk! Me alegra que hayas acudido a mi llamado. Demoledor, buen trabajo, como siempre.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",3)~ EXTERN ~P_DEMOLE~ 18
END

IF ~~ THEN BEGIN 199 // from:
  SAY @197 /* ~As� es, Dusk... Encontramos el rastro de un grupo de humanoides liderados por un orco tuerto. Consigo, llevan el estandarte de los Dragones P�rpuras de Cormyr.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 252
END

IF ~~ THEN BEGIN 200 // from:
  SAY @188 /* ~Su clan es conocido como...~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 73
END

IF ~~ THEN BEGIN 201 // from:
  SAY @198 /* ~Tienes raz�n, Michelson. Dusk es un hombre centrado...~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 253
END

IF ~~ THEN BEGIN 202 // from:
  SAY @199 /* ~De acuerdo, Dusk... Su clan es conocido como... Los Asesinos de Dragones.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 254
END

IF ~~ THEN BEGIN 203 // from:
  SAY @200 /* ~*susurro* Ten�as raz�n, despu�s de todo, Michelson.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 74
END

IF ~~ THEN BEGIN 204 // from:
  SAY @193 /* ~Dusk... debes saber... que el tal Alabarza cuenta con un grupo cuantioso y peligroso de humanoides.~ */
  IF ~~ THEN GOTO 205
END

IF ~~ THEN BEGIN 205 // from:
  SAY @194 /* ~Trolls, Moles sombr�as, criaturas reptilianas. Un grupo considerable de orcos. Tambi�n cuenta con un temible ettin. Es algo... intimidante.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 259
END

IF ~~ THEN BEGIN 206 // from:
  SAY @201 /* ~�Qu� dices? Dusk, Michelson me dice que es posible que puedas obtener ayuda por parte de la Noble Orden del Muy Radiante Coraz�n. De hecho, tambi�n menciona a Falon y su tribu.~ */
  IF ~~ THEN EXTERN ~P_DuskJ~ 260
END

IF ~~ THEN BEGIN 207 // from:
  SAY @202 /* ~De acuerdo, amigos. No habremos de molestar a la Orden por esta situaci�n.~ */
  IF ~~ THEN GOTO 208
END

IF ~~ THEN BEGIN 208 // from:
  SAY @203 /* ~Dusk, te marcar� en tu mapa la ubicaci�n. Es cercana a la arboleda dru�dica. El lugar es conocido como una guarida de trolls. Un lugar enorme e intimidante al oeste de la regi�n. Creo que podr�s encontrarlo con relativa facilidad.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("AR1900")~ EXTERN ~P_DuskJ~ 261
END

IF ~~ THEN BEGIN 210 // from:
  SAY @204 /* ~<CHARNAME>, no deben preocuparse por ir al Distrito del Templo. Michelson tiene la capacidad de traerlos aqu� para consultarles.~ */
  IF ~~ THEN GOTO 211
END

IF ~~ THEN BEGIN 211 // from:
  SAY @207 /* ~En cuanto a la ubicaci�n de Alabarza, te lo marcar� en el mapa. Es cercana a la arboleda dru�dica. El lugar es conocido como T�mulo troll. Un lugar enorme e intimidante al oeste de la regi�n. Creo que podr�s encontrarlo con relativa facilidad.~ */
  IF ~~ THEN DO ~RevealAreaOnMap("AR1900")~ EXTERN ~P_DuskJ~ 262
END

// M3 NOVEDADES (MISION NO RESUELTA) buscar tra@132

// M3 FINAL
// EVIL DUSK DEAD 



//MISSION 3 FINAL - GLOBAL 9
// SIN DUSK
IF ~InParty("P_Dusk")
!See("P_Dusk")
Global("P_DuskMatMission3","GLOBAL",9)~ THEN BEGIN 212 // from:
  SAY @130 /* ~Me alegro veros de nuevo. �Tienen alguna novedad?~ */
    IF ~~ THEN REPLY @133 /* ~As� es, Mathyus. Pero ser� mejor que Dusk te lo diga.~ */  GOTO 125
    IF ~~ THEN REPLY @134 /* ~Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
	IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @208 /* ~Mathyus... hemos vencido al ej�rcito de Alabarza... pero lamento informar que Dusk ha ca�do en batalla.~ */  GOTO 217
	IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2) Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN REPLY @208 /* ~Mathyus... hemos vencido al ej�rcito de Alabarza... pero lamento informar que Dusk ha ca�do en batalla.~ */  GOTO 215
END

IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global("P_DuskMatMission3","GLOBAL",9)~ THEN BEGIN 213 // from:
  SAY @130 /* ~Me alegro veros de nuevo. �Tienen alguna novedad?~ */
    IF ~~ THEN REPLY @133 /* ~As� es, Mathyus. Pero ser� mejor que Dusk te lo diga.~ */  GOTO 125
    IF ~~ THEN REPLY @134 /* ~Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
	IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2) Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @208 /* ~Mathyus... hemos vencido al ej�rcito de Alabarza... pero lamento informar que Dusk ha ca�do en batalla.~ */  GOTO 217
	IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2) Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN REPLY @208 /* ~Mathyus... hemos vencido al ej�rcito de Alabarza... pero lamento informar que Dusk ha ca�do en batalla.~ */  GOTO 215
END

// CON DUSK
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskMatMission3","GLOBAL",9)~ THEN BEGIN 214 // from:
  SAY @130 /* ~Me alegro veros de nuevo. �Tienen alguna novedad?~ */
    IF ~Global ("P_DUSK_IS_GOOD","GLOBAL",1) !PartyHasItem("p_restos")~ THEN REPLY @135 /* ~As� es, Mathyus. Dusk, te cedo la palabra.~ */  GOTO 219
	IF ~Global ("P_DUSK_IS_GOOD","GLOBAL",1) PartyHasItem("p_restos")~ THEN REPLY @135 /* ~As� es, Mathyus. Dusk, te cedo la palabra.~ */  GOTO 222
	IF ~Global ("P_DUSK_IS_EVIL","GLOBAL",1) !PartyHasItem("p_restos")~ THEN REPLY @135 /* ~As� es, Mathyus. Dusk, te cedo la palabra.~ */  GOTO 247 
	IF ~Global ("P_DUSK_IS_EVIL","GLOBAL",1) PartyHasItem("p_restos")~ THEN REPLY @135 /* ~As� es, Mathyus. Dusk, te cedo la palabra.~ */  GOTO 249
    IF ~~ THEN REPLY @134 /* ~Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
END

// P_DuskM3GOOD_DUSK_DIED -> GOOD

IF ~~ THEN BEGIN 215 // from:
  SAY @209 /* ~Y-ya veo... que no has podido resucitarle...~ */
  IF ~~ THEN GOTO 216
END

IF ~~ THEN BEGIN 216 // from:
  SAY @231 /* ~Adi�s, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) ForceSpell(Myself,POOF_GONE) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028)~ SOLVED_JOURNAL @210030 EXIT
END

// P_DuskM3EVIL_DUSK_DIED -> EVIL

IF ~~ THEN BEGIN 217 // from:
  SAY @209 /* ~Y-ya veo... que no has podido resucitarle...~ */
  IF ~~ THEN GOTO 218
END

IF ~~ THEN BEGIN 218 // from:
  SAY @231 /* ~Adi�s, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) ForceSpell(Myself,POOF_GONE) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028)~ SOLVED_JOURNAL @210029 EXIT
END

//------DUSK NO TIENE ITEM (PORQUE MURIO Y NO PUDO CONVERSAR CON ALABARZA ANTES DE QUE �STE MURIESE DEFINITIVAMENTE)

IF ~~ THEN BEGIN 219 // from:
  SAY @232 /* ~�Dusk! Has sobrevivido... La derrota de Alabarza significar� un problema menos para Amn y Tethyr, �no lo crees? <CHARNAME> y t� han hecho bien en erradicar su mal de esta tierra.~ */
  IF ~~ THEN GOTO 220
END

IF ~~ THEN BEGIN 220
  SAY @248 /* ~Espero que les sea de utilidad en la b�squeda que actualmente est�n emprendiendo, <CHARNAME>.~ */
    IF ~~ THEN REPLY @249 /* ~Vaya, es muy amable de su parte, Mathyus y Michelson.~ */  GOTO 221
    IF ~~ THEN REPLY @250 /* ~Hmm... �50 mil piezas de oro? Supongo que bastar�...~ */  GOTO 221
END

IF ~~ THEN BEGIN 221 // from:
  SAY @251 /* ~Dusk, <CHARNAME>, ante cualquier eventualidad, saben a d�nde encontrarnos. Espero que volvamos a vernos pronto.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028)~ SOLVED_JOURNAL @210031 EXIT
END


//------DUSK GOOD TIENE P_RESTOS

IF ~~ THEN BEGIN 222 // from:
  SAY @232 /* ~�Dusk! Has sobrevivido... La derrota de Alabarza significar� un problema menos para Amn y Tethyr, �no lo crees? T� y <CHARNAME> han hecho bien en erradicar su mal de esta tierra.~ */
  IF ~~ THEN GOTO 223
END


IF ~~ THEN BEGIN 223 // from:
  SAY @264 /* ~As� es, Dusk. Incluso puede que Michelson pueda obtener algo de utilidad para el resto de tu grupo, <CHARNAME>.~ */
  IF ~~ THEN GOTO 224
END

IF ~~ THEN BEGIN 224 // from:
  SAY @297 /* ~En cuanto a ti, <CHARNAME>, podemos hacer una de varias cosas: Podemos recompensarte con una buena cantidad de oro y algunos tomos que Michelson ha sido capaz de recopilar. Cien mil piezas de oro y seis tomos m�gicos para mejorar aptitudes. Esa ser�a una opci�n.~ */
  IF ~~ THEN GOTO 225
END

IF ~~ THEN BEGIN 225 // from:
  SAY @298 /* ~Tambi�n puedes optar por varios objetos m�gicos que nuestro buen leprechaun puede recuperar del cargamento. Me ha comentado que puede ser una katana, dos ninja-to, una armadura y una gema m�gica. Todos esos objetos m�gicos pueden ser tuyos.~ */
  IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 226 // from:
  SAY @299 /* ~Y como �ltima opci�n, una poderosa espada legendaria. Michelson dice que es una r�plica de un arma legendaria que pudo apreciar en alg�n plano lejano. Como a�n no la ha forjado, dice que de elegir esta opci�n, podr�as optar por crear una espada larga, una katana, cimitarra o hasta un mandoble. Me ha comentado que tengas en cuenta que esta arma no puede ser blandida por personas de malvado coraz�n.~ */
  IF ~~ THEN GOTO 227
END


IF ~~ THEN BEGIN 227 // from:
  SAY @300 /* ~Muy bien, �entonces, <CHARNAME>! �Qu� ser�?~ */
  IF ~~ THEN REPLY @301 /* ~La verdad, Mathyus, que cien mil piezas de oro y esos tomos no suenan mal. Elijo esa opci�n.~ */ GOTO 228
  IF ~~ THEN REPLY @302 /* ~Nada le gana a un buen pu�ado de objetos m�gicos, elfo. Prefiero eso antes que cualquier cosa.~ */ GOTO 229
  IF ~~ THEN REPLY @303 /* ~La espada legendaria, Mathyus.~ */ GOTO 230
END

IF ~~ THEN BEGIN 228 // from:
  SAY @304 /* ~Excelente elecci�n, <CHARNAME>. De nuevo, felicitaciones por el trabajo bien hecho. Y recuerden, pueden encontrarnos aqu� en caso de que quieran forjar algo m�gico, �eh?. Mientras tanto, les deseamos un buen viaje.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028)
  GiveGoldForce(100000) AddexperienceParty(100000)
  CreateItem ("BOOK03",1,2,1)  GiveItem("BOOK03", LastTalkedToBy)
  CreateItem ("BOOK04",1,2,1)  GiveItem("BOOK04", LastTalkedToBy)
  CreateItem ("BOOK05",1,2,1)  GiveItem("BOOK05", LastTalkedToBy)
  CreateItem ("BOOK06",1,2,1)  GiveItem("BOOK06", LastTalkedToBy)
  CreateItem ("BOOK07",1,2,1)  GiveItem("BOOK07", LastTalkedToBy)
  CreateItem ("BOOK08",1,2,1)  GiveItem("BOOK08", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210032 EXIT
END

IF ~~ THEN BEGIN 229 // from:
  SAY @304 /* ~Excelente elecci�n, <CHARNAME>. De nuevo, felicitaciones por el trabajo bien hecho. Y recuerden, pueden encontrarnos aqu� en caso de que quieran forjar algo m�gico, �eh?. Mientras tanto, les deseamos un buen viaje.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028)
  AddexperienceParty(100000)
  CreateItem ("P_CHAN99",1,2,1)  GiveItem("P_CHAN99", LastTalkedToBy)
  CreateItem ("p_sw1h01",1,2,1)  GiveItem("p_sw1h01", LastTalkedToBy)
  CreateItem ("P_SW1H02",1,2,1)  GiveItem("P_SW1H02", LastTalkedToBy)
  CreateItem ("P_SW1H05",1,2,1)  GiveItem("P_SW1H05", LastTalkedToBy)
  CreateItem ("P_NBK01",1,2,1)  GiveItem("P_NBK01", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210032 EXIT
END

IF ~~ THEN BEGIN 230 // from:
  SAY @305 /* ~�Qu� tipo de arma quieres obtener?~ */
  IF ~~ THEN REPLY @306 /* ~Una espada larga.~ */ GOTO 231
  IF ~~ THEN REPLY @307 /* ~Una katana.~ */ GOTO 232
  IF ~~ THEN REPLY @308 /* ~Una cimitarra.~ */ GOTO 233
  IF ~~ THEN REPLY @309 /* ~Un mandoble.~ */ GOTO 234
  IF ~~ THEN REPLY @310 /* ~Hm... he cambiado de opini�n. Prefiero elegir otra cosa.~ */ GOTO 227
END

IF ~~ THEN BEGIN 231 // from:
  SAY @304 /* ~Excelente elecci�n, <CHARNAME>. De nuevo, felicitaciones por el trabajo bien hecho. Y recuerden, pueden encontrarnos aqu� en caso de que quieran forjar algo m�gico, �eh?. Mientras tanto, les deseamos un buen viaje.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H14",1,2,1)  GiveItem("P_SW1H14", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210032 EXIT
END

IF ~~ THEN BEGIN 232 // from:
  SAY @304 /* ~Excelente elecci�n, <CHARNAME>. De nuevo, felicitaciones por el trabajo bien hecho. Y recuerden, pueden encontrarnos aqu� en caso de que quieran forjar algo m�gico, �eh?. Mientras tanto, les deseamos un buen viaje.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H04",1,2,1)  GiveItem("P_SW1H04", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210032 EXIT
END

IF ~~ THEN BEGIN 233 // from:
  SAY @304 /* ~Excelente elecci�n, <CHARNAME>. De nuevo, felicitaciones por el trabajo bien hecho. Y recuerden, pueden encontrarnos aqu� en caso de que quieran forjar algo m�gico, �eh?. Mientras tanto, les deseamos un buen viaje.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H34",1,2,1)  GiveItem("P_SW1H34", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210032 EXIT
END

IF ~~ THEN BEGIN 234 // from:
  SAY @304 /* ~Excelente elecci�n, <CHARNAME>. De nuevo, felicitaciones por el trabajo bien hecho. Y recuerden, pueden encontrarnos aqu� en caso de que quieran forjar algo m�gico, �eh?. Mientras tanto, les deseamos un buen viaje.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",10) EraseJournalEntry (@210017) EraseJournalEntry (@210019) EraseJournalEntry (@210020) EraseJournalEntry (@210021) EraseJournalEntry (@210022) EraseJournalEntry (@210023) EraseJournalEntry (@210024) EraseJournalEntry (@210025) EraseJournalEntry (@210026) EraseJournalEntry (@210027)EraseJournalEntry (@210028)
  AddexperienceParty(100000)
  CreateItem ("P_SW1H24",1,2,1)  GiveItem("P_SW1H24", LastTalkedToBy)
  ~ SOLVED_JOURNAL @210032 EXIT
END

// ICT DUSK_GOOD SIII TIENE ITEM P_RESTOS PARTE 2 -> SOLO PARA NPCS de BG2 Original

IF ~Global("P_DuskMatMission1","GLOBAL",5)
Global("P_DuskMatMission2","GLOBAL",8)
Global("P_DuskMatMission3","GLOBAL",10)
Global("P_DuskMatMission4","GLOBAL",0)
Global("P_DuskDemoleMISSION","GLOBAL",0)
Global("P_Michel_Forge","GLOBAL",0)~ THEN BEGIN 235 // from:
  SAY @71 /* ~�Ah! Pero si es mi grupo favorito de aventureros. �C�mo est�n? �Han venido a forjar alg�n artefacto con Michelson?~ */
  IF ~~ THEN REPLY @72 /* ~A�n no hemos logrado reunir lo necesario, Mathyus.~ */ GOTO 52  
  //Espada de Disrupci�n
  IF ~Global ("p_sw1hdr_disrupcion", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyGoldGT(7499) PartyHasItem("p_swr1") PartyHasItem("SCRL09") PartyHasItem("MISC40") PartyHasItem("MISC19") PartyHasItem("MISC44") PartyHasItem("BOOK89")~ THEN REPLY @73 /* ~Mathyus, hemos conseguido lo necesario para mejorar la espada de Dusk.~ */ GOTO 53
  // Armadura de Placas de Dusk
  IF ~Global ("p_dplat1_defensa", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyGoldGT(7499) PartyHasItem("p_dchan1") PartyHasItem("p_brkshl") PartyHasItem("MISC35") PartyHasItem("MISC38")~ THEN REPLY @89 /* ~Mathyus, hemos conseguido lo necesario para mejorar la armadura de Dusk.~ */ GOTO 69
  // Brazales de Defensa P�trea	
  IF ~Global ("P_BRAC99_brazal_petreo", "GLOBAL", 0) PartyGoldGT(2999) PartyHasItem("brac01") PartyHasItem("SCRL15") PartyHasItem("misc23") ~ THEN REPLY @92 /* ~Mathyus, hemos conseguido lo necesario para crear los Brazales de Defensa P�trea.~ */ GOTO 70
  // Crimson Thunder
  IF ~Global ("p_hamm1_crimson_thunder", "GLOBAL", 0) PartyGoldGT(24999) PartyHasItem("HAMM03") PartyHasItem("STAF13") PartyHasItem("SCRL1K") PartyHasItem("WAND04") PartyHasItem("AMUL13") PartyHasItem("RING19") ~ THEN REPLY @93 /* ~Mathyus, hemos conseguido lo necesario para crear el martillo: Trueno Escarlata.~ */ GOTO 75
  // Fuego Salvaje
  IF ~Global ("p_leat01_fuego_salvaje", "GLOBAL", 0) PartyGoldGT(6999) PartyHasItem("LEAT09") PartyHasItem("MISC16") PartyHasItem("SCRL06") PartyHasItem("AMUL24")  ~ THEN REPLY @95 /* ~Mathyus, hemos conseguido lo necesario para crear la armadura Fuego Salvaje.~ */ GOTO 80
  // Venom Strike
  IF ~Global ("p_venom_strike", "GLOBAL", 0) PartyGoldGT(24999) PartyHasItem("BLUN17") PartyHasItem("SCRL08") PartyHasItem("SCRL1Q") PartyHasItem("POTN42") PartyHasItem("MISC31") PartyHasItem("MISC37")  ~ THEN REPLY @96 /* ~Mathyus, hemos conseguido lo necesario para crear el mayal Golpe de Veneno.~ */ GOTO 85
  // Colmillo de Larloch
  IF ~Global ("p_sw1h00_colmillo_larloch", "GLOBAL", 0) PartyGoldGT(12499)  PartyHasItem("POTN22") PartyHasItem("MISC26") PartyHasItem("SCRL84") PartyHasItem("HELM06") 
  OR (2)
  PartyHasItem("AX1H02")
  PartyHasItem("KORAX01")~ THEN REPLY @97 /* ~Mathyus, hemos conseguido lo necesario para forjar el Colmillo de Larloch.~ */ GOTO 90
  // Ventisca del Averno
  IF ~Global ("p_sw1h06_ventisca_averno", "GLOBAL", 0) PartyGoldGT(12499) PartyHasItem("SW1H42") PartyHasItem("SCRL04") PartyHasItem("MISC17") PartyHasItem("MISC33") PartyHasItem("MISC42") ~ THEN REPLY @98 /* ~Mathyus, hemos conseguido lo necesario para forjar la Ventisca del Averno.~ */ GOTO 95
  // Vengadora Real
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("P_WSSTP_vengadora_real", "GLOBAL", 0) Global ("p_staff_lost", "GLOBAL", 0) InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2") ~ THEN REPLY @111 /* ~Mathyus, hemos conseguido los artefactos del Duque Benork.~ */ GOTO 100
  IF ~Global ("P_VENGADORA_FIN", "GLOBAL", 0) Global ("p_staff_lost", "GLOBAL", 1) PartyHasItem("p_stf1") InParty("P_Dusk") See("P_Dusk") PartyHasItem("p_wsam") PartyHasItem("p_wsbrac") PartyHasItem("p_wsboot") PartyHasItem("p_wsclk") PartyHasItem("p_wsash") PartyHasItem("p_wshelm")PartyHasItem("p_wsrng1")PartyHasItem("p_wsrng2")~ THEN REPLY @112 /* ~�Mathyus! Hemos encontrado el bast�n de Dusk.~ */ EXTERN ~P_DUSKJ~ 41
  // Gema del Drag�n P�rpura
  IF ~PartyHasItem("p_gemdr1")~ THEN REPLY @311 /* ~Mathyus, queremos forjar algo con la Amatista del Drag�n P�rpura.~ */ GOTO 236
END

IF ~~ THEN BEGIN 236 // from:
  SAY @312 /* ~Excelente noticia, amigo m�o. Entonces, �qu� ser�?~  ~Excelente noticia, amiga m�a. Entonces, �qu� ser�?~ */
  IF ~PartyHasItem("p_dplat1")~ THEN REPLY @313 /* ~Vamos a mejorar la armadura, Mathyus: Defensa de Cormyr.~ */ GOTO 237
  IF ~PartyHasItem("p_sw1hdr")~ THEN REPLY @314 /* ~Vamos a mejorar el arma, Mathyus: la Espada de Disrupci�n.~ */ GOTO 238
  IF ~~ THEN REPLY @315 /* ~A�n no, Mathyus. Quiz�s m�s adelante.~ */ GOTO 54
END

IF ~~ THEN BEGIN 237 // from:
  SAY @78 /* ~�Escuchaste eso, Michelson? Parece que tenemos trabajo por hacer.~ */
  IF ~~ THEN DO ~SetGlobal ("p_platd1_salus", "GLOBAL", 1)~ EXTERN ~P_MICHEL~ 88
END


IF ~~ THEN BEGIN 238 // from:
  SAY @78 /* ~�Escuchaste eso, Michelson? Parece que tenemos trabajo por hacer.~ */
  IF ~~ THEN DO ~ SetGlobal ("p_sw2hdr_rex", "GLOBAL", 1)~ EXTERN ~P_MICHEL~ 90
END

// SALUS

IF ~~ THEN BEGIN 246 // from:
  SAY @316 /* ~Excelente, <CHARNAME>. Tomar� la amatista y la armadura.~ */
  IF ~~ THEN DO ~
  TakePartyItem("p_gemdr1") 
  TakePartyItem("p_dplat1")
  DestroyItem("p_gemdr1") 
  DestroyItem("p_dplat1")
  ~ EXTERN ~P_MICHEL~ 22
END

IF ~~ THEN BEGIN 239
  SAY @83 /* ~�Por supuesto! M�ralo, ya est� bailando de nuevo.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 89
END

IF ~~ THEN BEGIN 240 // from:
  SAY @317 /* ~Yo dir�a que es de su talle.~ */
  IF ~~ THEN DO ~SetGlobal ("p_platd1_salus", "GLOBAL", 2)~ GOTO 241
END

IF ~~ THEN BEGIN 241 // from:
  SAY @84 /* ~No hay necesidad de agradecimiento, compa�eros. Espero que den un buen uso al trabajo que hemos realizado aqu� el d�a de hoy.~ */
  IF ~~ THEN DO ~SetGlobal ("p_platd1_salus", "GLOBAL", 2)~ EXTERN ~P_MICHEL~ 25
END

// REX

IF ~~ THEN BEGIN 242 // from:
  SAY @319 /* ~Excelente, <CHARNAME>. Tomar� la amatista y la espada.~ */
  IF ~~ THEN DO ~
  TakePartyItem("p_gemdr1") 
  TakePartyItem("p_sw1hdr")
  DestroyItem("p_gemdr1") 
  DestroyItem("p_sw1hdr")
  ~ EXTERN ~P_MICHEL~ 22
END

IF ~~ THEN BEGIN 243
  SAY @83 /* ~�Por supuesto! M�ralo, ya est� bailando de nuevo.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 91
END

IF ~~ THEN BEGIN 244 // from:
  SAY @320 /* ~Yo dir�a que podr� blandirla sin problemas.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw2hdr_rex", "GLOBAL", 2)~ GOTO 245
END

IF ~~ THEN BEGIN 245 // from:
  SAY @84 /* ~No hay necesidad de agradecimiento, compa�eros. Espero que den un buen uso al trabajo que hemos realizado aqu� el d�a de hoy.~ */
  IF ~~ THEN DO ~SetGlobal ("p_sw2hdr_rex", "GLOBAL", 2)~ EXTERN ~P_MICHEL~ 25
END

IF ~~ THEN BEGIN 247 // from:
  SAY @322 /* ~Ah... D-dusk... has... veo que est�s... sano y salvo.~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",1)~ GOTO 248
END

IF ~~ THEN BEGIN 248 // from:
  SAY @323 /* ~(Mathyus, con una rapidez sobrenatural, saca una flecha de su carcaj y tensa su arco) ~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",1) Kill(Myself) ReallyForceSpell(Myself,ZOMBIE_SICKNESS)~ EXTERN ~P_DUSKJ~ 294
END

IF ~~ THEN BEGIN 249 // from:
  SAY @322 /* ~Ah... D-dusk... has... veo que est�s... sano y salvo.~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",1)~ GOTO 248
END

// GOOD
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDemoleMISSION","GLOBAL",1)~ THEN BEGIN 250 // from:
  SAY @339 /* ~�Oh, ha pasado un tiempo desde la �ltima vez que nos vimos!~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskDemoleMISSION","GLOBAL",1)~ GOTO 253
END

IF ~!InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDemoleMISSION","GLOBAL",1)~ THEN BEGIN 251
  SAY @340 /* ~�Oh, ha pasado un tiempo desde la �ltima vez que nos vimos! Me alegra veros de nuevo. �Est� Dusk contigo? Necesito hablar urgente con �l.~ */
    IF ~~ THEN REPLY @127 /* ~De acuerdo, Mathyus. Volver� con Dusk.~ */  GOTO 120
    IF ~~ THEN REPLY @128 /* ~Est� bien, Mathyus. Aunque primero me gustar�a ver si podemos forjar algo antes con el leprechaun.~ */  GOTO 119
END

IF ~InParty("P_Dusk")
!See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDemoleMISSION","GLOBAL",1)~ THEN BEGIN 252
  SAY @340 /* ~�Oh, ha pasado un tiempo desde la �ltima vez que nos vimos! Me alegra veros de nuevo. �Est� Dusk contigo? Necesito hablar urgente con �l.~ */
    IF ~~ THEN REPLY @127 /* ~De acuerdo, Mathyus. Volver� con Dusk.~ */  GOTO 120
    IF ~~ THEN REPLY @128 /* ~Est� bien, Mathyus. Aunque primero me gustar�a ver si podemos forjar algo antes con el leprechaun.~ */  GOTO 119
END

IF ~~ THEN BEGIN 253
  SAY @341 /* ~�Dusk! �<CHARNAME>! Es un placer veros juntos, sanos y salvos. Me imagino que fue toda una aventura el viaje en barco y su expedici�n en la peligrosa Infraoscuridad.~ */
  IF ~~ THEN GOTO 254
END

IF ~~ THEN BEGIN 254
  SAY @361 /* ~<CHARNAME>, Dusk tiene raz�n. Esto te ata�e tanto a ti como a �l. Est� claro que la Orden de la Cripta Olvidada te consideran, tambi�n, un peligro para sus planes.~ */
    IF ~PartyHasItem("p_swgoo2")~ THEN REPLY @362 /* ~�Dusk! Sabes que puedes contar conmigo. Estos magos son una amenaza que no podemos ignorar.~ */  GOTO 255
    IF ~!PartyHasItem("p_swgoo2")~ THEN REPLY @362 /* ~�Dusk! Sabes que puedes contar conmigo. Estos magos son una amenaza que no podemos ignorar.~ */  GOTO 257
	IF ~PartyHasItem("p_swgoo2")~ THEN REPLY @363 /* ~Pues, considero que son un peligro. Aunque no veo c�mo esto me ata�e. Prefiero que no me involucren.~ */  GOTO 258
    IF ~!PartyHasItem("p_swgoo2")~ THEN REPLY @363 /* ~Pues, considero que son un peligro. Aunque no veo c�mo esto me ata�e. Prefiero que no me involucren.~ */  GOTO 258
	IF ~PartyHasItem("p_swgoo2")~ THEN REPLY @364 /* ~Est� claro que son un peligro. Por m�, d�mosle ca�a.~ */  GOTO 255
    IF ~!PartyHasItem("p_swgoo2")~ THEN REPLY @364 /* ~Est� claro que son un peligro. Por m�, d�mosle ca�a.~ */  GOTO 257
	IF ~PartyHasItem("p_swgoo2")~ THEN REPLY @365 /* ~*suspiro* Estoy hasta las cejas de estos problemas, Dusk. No creo que estos tipejos sean un problema. Ser� mejor que los ignoremos.~ */  GOTO 258
    IF ~!PartyHasItem("p_swgoo2")~ THEN REPLY @365 /* ~*suspiro* Estoy hasta las cejas de estos problemas, Dusk. No creo que estos tipejos sean un problema. Ser� mejor que los ignoremos.~ */  GOTO 258
END

// TIENE espada esmeralda
IF ~~ THEN BEGIN 255
  SAY @366 /* ~�Vaya! Es un alivio escuchar eso, �no lo creen?~ */
  IF ~~ THEN GOTO 256
END

IF ~~ THEN BEGIN 256 // from:
  SAY @402 /* ~Cuando est�n listos... vuelvan. Shilmista presentar� batalla.~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDemoleMISSION","GLOBAL",2)
  ~ UNSOLVED_JOURNAL @210041 EXIT
END

// NO tiene espada esmeralda

IF ~~ THEN BEGIN 257
  SAY @366 /* ~�Vaya! Es un alivio escuchar eso, �no lo creen?~ */
  IF ~~ THEN GOTO 256
END

// CHARNAME se NIEGA ---> SEGUIR ACA

IF ~~ THEN BEGIN 258
  SAY @403 /* ~�E-est�s seguro de esto, <CHARNAME>?~ ~�E-est�s segura de esto, <CHARNAME>?~ */
  IF ~~ THEN GOTO 256
END

//MISSION 4 - GLOBAL 2
// SIN DUSK
IF ~InParty("P_Dusk")
!See("P_Dusk")
Global("P_DuskDemoleMISSION","GLOBAL",2)~ THEN BEGIN 259 // from:
  SAY @410 /* ~Me alegro veros de nuevo. �Est�n listos?~ */
    IF ~~ THEN REPLY @411 /* ~A�n no, Mathyus. Dusk no se encuentra con nosotros. Volver� con �l cuanto antes.~ */  GOTO 125
    IF ~~ THEN REPLY @134 /* ~Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
END

IF ~!InParty("P_Dusk")
!See("P_Dusk")
Global("P_DuskDemoleMISSION","GLOBAL",2)~ THEN BEGIN 260 // from:
  SAY @410 /* ~Me alegro veros de nuevo. �Est�n listos?~ */
    IF ~~ THEN REPLY @411 /* ~A�n no, Mathyus. Dusk no se encuentra con nosotros. Volver� con �l cuanto antes.~ */  GOTO 125
    IF ~~ THEN REPLY @134 /* ~Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
END

//MISSION 4 - GLOBAL 2
// CON DUSK
IF ~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",STATE_SLEEPING)
Global("P_DuskDemoleMISSION","GLOBAL",2)~ THEN BEGIN 261 // from:
  SAY @410 /* ~Me alegro veros de nuevo. �Est�n listos?~ */
	IF ~~ THEN REPLY @412 /* ~As� es, Mathyus. Estamos listos para la batalla final contra los magos.~ */  GOTO 262
    IF ~~ THEN REPLY @134 /* ~Primero nos gustar�a ver si podemos forjar algo con el leprechaun.~ */  GOTO 119
	IF ~PartyHasItem("p_gemdr1")~ THEN REPLY @311 /* ~Mathyus, queremos forjar algo con la Amatista del Drag�n P�rpura.~ */ GOTO 236
END

IF ~~ THEN BEGIN 262 // from:
  SAY @413 /* ~De acuerdo... Ahora, activaremos el orbe aciago de Anthagar... �Prep�rense!~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDemoleMISSION","GLOBAL",3)
  ~ UNSOLVED_JOURNAL @210045 EXIT
END


//MISSION 4 - FINAL-> REWARDS
// CON DUSK
IF ~Global("P_DuskDemoleMISSION","GLOBAL",4)~ THEN BEGIN 263 // from:
  SAY @416 /* ~�<CHARNAME>! No tienes idea de lo bueno que es verte... �y de lo bello que es poder respirar de nuevo!~ */  
	// DUSK DEAD, DEMOLE DIED
	IF ~ Dead("P_Dusk")
	Global("P_DuskDEMOLEDIEDFinalMission","GLOBAL",1) ~ THEN REPLY @417 /* ~�Mathyus! Veo que Michelson ha podido revivirte, despu�s de todo.~ */  GOTO 264
	// DUSK ALIVE, DEMOLE DIED
	IF ~ !Dead("P_Dusk")
	Global("P_DuskDEMOLEDIEDFinalMission","GLOBAL",1) ~ THEN REPLY @417 /* ~�Mathyus! Veo que Michelson ha podido revivirte, despu�s de todo.~ */  GOTO 266
	// DUSK DEAD, DEMOLE ALIVE
	IF ~ Dead("P_Dusk")
	Global("P_DuskDEMOLEDIEDFinalMission","GLOBAL",0) ~ THEN REPLY @417 /* ~�Mathyus! Veo que Michelson ha podido revivirte, despu�s de todo.~ */  GOTO 268
	// DUSK ALIVE, DEMOLE ALIVE
	IF ~ !Dead("P_Dusk")
	Global("P_DuskDEMOLEDIEDFinalMission","GLOBAL",0) ~ THEN REPLY @417 /* ~�Mathyus! Veo que Michelson ha podido revivirte, despu�s de todo.~ */  GOTO 270
END

IF ~~ THEN BEGIN 264
  SAY @424 /* ~�S�! Incluso ha podido traer de nuevo a Demole, �verdad, amigo?~ */
  IF ~~ THEN GOTO 265
END

// ACTUALIZAR JOURNAL!!!!!!
IF ~~ THEN BEGIN 265 // from:
  SAY @425 /* ~Con Michelson hemos podido reunir esta cantidad de oro... espero que les sea de utilidad. Pueden volver a nosotros a forjar artefactos, tambi�n, cuando quieran. Mientras tanto... �os deseo salud y libertad!~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDemoleMISSION","GLOBAL",0)
  SetGlobal("P_DuskDemoleMISSIONCOMPLETE","GLOBAL",1)
  EraseJournalEntry (@210035) EraseJournalEntry (@210036) EraseJournalEntry (@210037) EraseJournalEntry (@210038) EraseJournalEntry (@210039) EraseJournalEntry (@210040) EraseJournalEntry (@210041)  EraseJournalEntry (@210043) EraseJournalEntry (@210044)EraseJournalEntry (@210045)
  AddexperienceParty(100000)
  GiveGoldForce(50000)
  ~ SOLVED_JOURNAL @210047 EXIT
END


IF ~~ THEN BEGIN 266
  SAY @424 /* ~�S�! Incluso ha podido traer de nuevo a Demole, �verdad, amigo?~ */
  IF ~~ THEN GOTO 267
END

IF ~~ THEN BEGIN 267 // from:
  SAY @450 /* ~�De verdad? Oh, Dusk... Michelson dice que Anthagar pretend�a tenderte una trampa mental. El esp�ritu que convoc� no era m�s que una ilusi�n. Si quieres ver algo m�s real... espera unos segundos...~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDemoleMISSION","GLOBAL",5)
  ~ EXIT
END

IF ~~ THEN BEGIN 268
  SAY @448 /* ~�As� es, <CHARNAME>! Tengo... leves vestigios de lo que fue el combate...~ */
  IF ~~ THEN GOTO 269
END

// ACTUALIZAR JOURNAL!!!!!!
IF ~~ THEN BEGIN 269 // from:
  SAY @425 /* ~Con Michelson hemos podido reunir esta cantidad de oro... espero que les sea de utilidad. Pueden volver a nosotros a forjar artefactos, tambi�n, cuando quieran. Mientras tanto... �os deseo salud y libertad!~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDemoleMISSION","GLOBAL",0)
  SetGlobal("P_DuskDemoleMISSIONCOMPLETE","GLOBAL",1)
  EraseJournalEntry (@210035) EraseJournalEntry (@210036) EraseJournalEntry (@210037) EraseJournalEntry (@210038) EraseJournalEntry (@210039) EraseJournalEntry (@210040) EraseJournalEntry (@210041)  EraseJournalEntry (@210043) EraseJournalEntry (@210044)EraseJournalEntry (@210045)
  AddexperienceParty(100000)
  GiveGoldForce(50000)
  ~ SOLVED_JOURNAL @210047 EXIT
END

IF ~~ THEN BEGIN 270
  SAY @448 /* ~�As� es, <CHARNAME>! Tengo... leves vestigios de lo que fue el combate...~ */
  IF ~~ THEN GOTO 271
END

IF ~~ THEN BEGIN 271 // from:
  SAY @450 /* ~�De verdad? Oh, Dusk... Michelson dice que Anthagar pretend�a tenderte una trampa mental. El esp�ritu que convoc� no era m�s que una ilusi�n. Si quieres ver algo m�s real... espera unos segundos...~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDemoleMISSION","GLOBAL",5)
  ~ EXIT
END


//MISSION 4 - FINAL-> REWARDS (REGRESO DEL BOSQUE)
IF ~Global("P_CelineSpawn","GLOBAL",5)~ THEN BEGIN 272 // from:
  SAY @451 /* ~Bien, �estamos de vuelta en nuestra guarida!~ */  
  IF ~~ THEN DO ~ SetGlobal("P_CelineSpawn","GLOBAL",6)
  ~ GOTO 273
END

IF ~~ THEN BEGIN 273 // from:
  SAY @460 /* ~Algo de oro hemos podido reunir a modo de agradecimiento por lo que han hecho, amigos.~ */  
	// Tiene a LUX
	IF ~PartyHasItem("p_swgoo3")~ THEN REPLY @461 /* ~�Oro? Me gusta c�mo suena eso, Mathyus.~ */  GOTO 274
	// NO tiene a LUX
	IF ~!PartyHasItem("p_swgoo3")~ THEN REPLY @461 /* ~�Oro? Me gusta c�mo suena eso, Mathyus.~ */  GOTO 275
		// Tiene a LUX
	IF ~PartyHasItem("p_swgoo3")~ THEN REPLY @463 /* ~No es necesario, Mathyus. No hemos hecho lo que hemos hecho por una recompensa. Aunque, si el oro no les es �til, ser� bienvenido.~ */  GOTO 274
	// NO tiene a LUX
	IF ~!PartyHasItem("p_swgoo3")~ THEN REPLY @463 /* ~No es necesario, Mathyus. No hemos hecho lo que hemos hecho por una recompensa. Aunque, si el oro no les es �til, ser� bienvenido.~ */  GOTO 275
END

IF ~~ THEN BEGIN 274
  SAY @464 /* ~No usaremos lo que hemos recolectado, as� que espero que os venga bien esta cantidad.~ */
  IF ~~ THEN GOTO 276
END

IF ~~ THEN BEGIN 275
  SAY @464 /* ~No usaremos lo que hemos recolectado, as� que espero que os venga bien esta cantidad.~ */
  IF ~~ THEN GOTO 276
END

// ACTUALIZAR JOURNAL!!!!!!
IF ~~ THEN BEGIN 276 // from:
  SAY @481 /* ~Y recuerden: Pueden volver a nosotros a forjar artefactos, tambi�n, cuando quieran. Mientras tanto... �os deseo salud y libertad!~ */
  IF ~~ THEN DO ~ SetGlobal("P_DuskDemoleMISSION","GLOBAL",0)
  SetGlobal("P_DuskDemoleMISSIONCOMPLETE","GLOBAL",1)
  EraseJournalEntry (@210035) EraseJournalEntry (@210036) EraseJournalEntry (@210037) EraseJournalEntry (@210038) EraseJournalEntry (@210039) EraseJournalEntry (@210040) EraseJournalEntry (@210041) EraseJournalEntry (@210043) EraseJournalEntry (@210044)EraseJournalEntry (@210045) EraseJournalEntry (@210020)
  AddexperienceParty(175000)
  GiveGoldForce(50000)
  ~ SOLVED_JOURNAL @210046 EXIT
END

I_C_T P_MATUT 275 P_Dusk_FINALM9_NO_LUX
== P_MATUT IF ~~ THEN @465 /* 50.000 piezas de oro me parece un pago aceptable, �no lo creen? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @482 /* ~Est� m�s que bien, Mathyus.~ */
== P_MATUT IF ~~ THEN @478 /* S�lo queda la amenaza de Irenicus contra el pueblo de Suldanessellar. */
== P_MATUT IF ~~ THEN @479 /* Dusk, <CHARNAME>. Conf�o en que har�n lo posible para detenerlo. En el nombre de la raza �lfica y de la vida en todo Faer�n. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @480 /* ~Lo haremos, mi buen amigo. Conf�a en nosotros.~ */
END


I_C_T P_MATUT 274 P_Dusk_FINALM9_HAVE_LUX
== P_MATUT IF ~~ THEN @465 /* 50.000 piezas de oro me parece un pago aceptable, �no lo creen? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @466 /* ~Est� m�s que bien, Mathyus. Yo...~ */
== p_demole IF ~~ THEN @467 /* ~(Demoledor comienza a ladrar a su manera al ver que Lux, la espada de Dusk, comienza a brillar de manera inesperada)~ */
== P_MATUT IF ~~ THEN @468 /* Dusk, tu espada... est� brillando de manera incesante. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @469 /* ~Est�... cambiando...~ */ DO ~TakePartyItem("p_swgoo3")~
== p_michel IF ~~ THEN @470 /* (Michelson nota que el s�mbolo de Velshar�n se eleva de sus pertenencias. Al cabo de unos segundos, �ste desaparece, estallando entre luces esmeraldas y glaucas) */ DO ~TakePartyItem("p_swgoo3") DestroyItem ("p_swgoo3")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @471 /* ~Lux ha absorbido el s�mbolo de Velshar�n...~ */ DO ~CreateItem ("p_swgoo4",1,2,1)  GiveItem("p_swgoo4", "P_Dusk")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @472 /* ~Lux Triumphans...~ */
== P_MATUT IF ~~ THEN @473 /* �Qu� has dicho? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @474 /* ~Luz triunfante... es el nombre definitivo de la espada. Es m�s poderosa que nunca, Mathyus...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @475 /* ~Por Mielikki... no cre� que algo as� fuera posible.~ */
== p_michel IF ~~ THEN @476 /* (Michelson aplaude ante las palabras de Dusk) */ 
== P_MATUT IF ~~ THEN @477 /* Ya veo... No es casualidad que esto sucediera, amigos m�os. La luz de Mielikki ha acabado con los �ltimos vestigios de la amenaza de la Cripta Olvidada. */
== P_MATUT IF ~~ THEN @478 /* S�lo queda la amenaza de Irenicus contra el pueblo de Suldanessellar. */
== P_MATUT IF ~~ THEN @479 /* Dusk, <CHARNAME>. Conf�o en que har�n lo posible para detenerlo. En el nombre de la raza �lfica y de la vida en todo Faer�n. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @480 /* ~Lo haremos, mi buen amigo. Conf�a en nosotros.~ */DO ~CreateItem ("p_orbef",1,2,1)  GiveItem("p_orbef", "P_Dusk") UseItem ("p_orbef", Myself) DestroyItem ("p_orbef")~
END



I_C_T P_MATUT 272 P_Dusk_FINALM9_RETURN1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @462 /* ~�Qu� ha pasado, Mathyus? Ha sido... �un sue�o?~ */
== P_MATUT IF ~~ THEN @452 /* No, Dusk... todos hemos estado all�. Michelson nos ha llevado a una especie de plano forestal, un paraje m�s aceptable a los ojos de Nuestra Dama del Bosque. */
== p_michel IF ~~ THEN @453 /* (Michelson asiente mientras muestra su perlina sonrisa) */ 
== P_MATUT IF ~~ THEN @454 /* Espero... espero que haya sido algo bueno para ti, Dusk. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @455 /* ~Lo fue, amigo m�o. Recordar� este gesto por siempre... Ver una vez m�s a Celine... simplemente no tengo palabras de agradecimiento.~ */
== P_MATUT IF ~~ THEN @456 /* <CHARNAME> y t� han hecho m�s de lo que se esperaba por Amn. Han evitado una guerra derrotando a la Cripta Olvidada... */
== P_MATUT IF ~~ THEN @457 /* Son h�roes, a�n si no son reconocidos por ello en Athkatla. */
== P_MATUT IF ~~ THEN @458 /* Creo que es hora de la recompensa, �no lo crees, Michelson? */
== p_michel IF ~~ THEN @459 /* (Michelson aplaude, reafirmando las palabras de su amigo) */ 
END


I_C_T P_MATUT 270 P_Dusk_FINALM9
== p_demole IF ~~ THEN @418 /* ~(Demoledor da vueltas sobre su mismo eje, demostrando una alegr�a inmensa ante las palabras de su amo)~ */
== p_michel IF ~~ THEN @419 /* (Michelson zapatea y baila ante esto) */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @426 /* ~Es un alivio ver que todos est�n bien, Mathyus.~ */
== P_MATUT IF ~~ THEN @427 /* Ah... mi buen capit�n Ardusk Aldant... �Qu� placer para los ojos el verte con vida! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @428 /* ~No estar�a aqu� si no fuera por <CHARNAME>, Mathyus.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @429 /* ~(Hmpf. Como si Edwin Odesseiron se hubiese quedado quieto sin hacer nada. Este hombre del palito merece una o dos lecciones a mi parecer)~ */
== P_DuskJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @430 /* ~*carraspeo* Y bueno, Edwin ha ayudado tambi�n. Ha demostrado ser uno de los mejores hechiceros de todo Faer�n. Ha estado completamente a la altura de la Cripta Olvidada.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @431 /* ~Erhm. *carraspeo* Bueno, pues eso es obvio, Dusk. Edwin ten�a que darle un escarmiento a esos magos primates. (Vaya, despu�s de todo, este humano tiene algo de... decencia)~ */
== P_MATUT IF ~~ THEN @432 /* Entiendo, Dusk... y lamento... lamento haber ca�do tan f�cilmente en las garras de ese Encantador. */
== P_MATUT IF ~~ THEN @433 /* Cuando llegu�, activ� una trampa arcana. Qued� paralizado y a merced de esos malvados hechiceros. */
== P_MATUT IF ~~ THEN @434 /* El resto... es historia conocida... */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @435 /* ~�Te refieres a tu trasero siendo pateado por nosotros? S�, es una historia completamente conocida.~ */
== P_MATUT IF ~~ THEN @436 /* *carraspeo* Bueno, como dec�a. */
== P_MATUT IF ~~ THEN @437 /* Derrotar a la Cripta Olvidada no ha sido tarea f�cil, eso lo s�. */
== P_MATUT IF ~~ THEN @438 /* Sin embargo, su influjo ya no se percibe en este plano. O eso al menos me ha dicho Michelson. */
== p_michel IF ~~ THEN @439 /* (Michelson aplaude y r�e, asintiendo fren�ticamente a las palabras de Mathyus) */ 
== P_MATUT IF ~~ THEN @440 /* Lo has logrado, Dusk... has vengado a Celine. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @441 /* ~S�...~ */
== P_MATUT IF ~~ THEN @442 /* �Qu� sucede? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @443 /* ~La he visto, Mathyus... He visto... su esp�ritu...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @444 /* ~Aunque... no estoy seguro de que haya sido ella. Creo... creo que ha sido una artima�a de Anthagar... para intentar meterse en mi cabeza.~ */
== P_MATUT IF ~~ THEN @445 /* Ya veo... �T� qu� opinas, Michelson? */
== p_michel IF ~~ THEN @446 /* (El leprechaun se queda un instante pensativo) */ 
== p_michel IF ~~ THEN @447 /* (Al cabo de unos segundos, se acerca a Mathyus y le pide que se arrodille un instante. Parece murmurarle algo.) */
END

I_C_T P_MATUT 264 P_Dusk_FINALM8
== p_demole IF ~~ THEN @418 /* ~(Demoledor da vueltas sobre su mismo eje, demostrando una alegr�a inmensa ante las palabras de su amo)~ */
== p_michel IF ~~ THEN @419 /* (Michelson zapatea y baila ante esto) */ 
== P_MATUT IF ~~ THEN @420 /* Han vencido un mal temible, <CHARNAME>. S� que... s� que Dusk habr�a estado feliz de ello... */
== P_MATUT IF ~~ THEN @421 /* Su accionar no fue movido por odio, sino por justicia. */
== P_MATUT IF ~~ THEN @422 /* Ha honrado la memoria de su amada, Celine... la de su amado bosque, Shilmista... y la de su patria, Cormyr. */
== P_MATUT IF ~~ THEN @423 /* Su lucha no ser� olvidada, <CHARNAME>. Y tus logros tampoco. */
END


I_C_T P_MATUT 268 P_Dusk_FINALM7
== p_demole IF ~~ THEN @449 /* ~(Demoledor ladra a su manera, expresando alegr�a por ver que su amo est� con vida)~ */
== p_michel IF ~~ THEN @419 /* (Michelson zapatea y baila ante esto) */ 
== P_MATUT IF ~~ THEN @420 /* Han vencido un mal temible, <CHARNAME>. S� que... s� que Dusk habr�a estado feliz de ello... */
== P_MATUT IF ~~ THEN @421 /* Su accionar no fue movido por odio, sino por justicia. */
== P_MATUT IF ~~ THEN @422 /* Ha honrado la memoria de su amada, Celine... la de su amado bosque, Shilmista... y la de su patria, Cormyr. */
== P_MATUT IF ~~ THEN @423 /* Su lucha no ser� olvidada, <CHARNAME>. Y tus logros tampoco. */
END

I_C_T P_MATUT 266 P_Dusk_FINALM6
== p_demole IF ~~ THEN @418 /* ~(Demoledor da vueltas sobre su mismo eje, demostrando una alegr�a inmensa ante las palabras de su amo)~ */
== p_michel IF ~~ THEN @419 /* (Michelson zapatea y baila ante esto) */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @426 /* ~Es un alivio ver que todos est�n bien, Mathyus.~ */
== P_MATUT IF ~~ THEN @427 /* Ah... mi buen capit�n Ardusk Aldant... �Qu� placer para los ojos el verte con vida! */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @428 /* ~No estar�a aqu� si no fuera por <CHARNAME>, Mathyus.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @429 /* ~(Hmpf. Como si Edwin Odesseiron se hubiese quedado quieto sin hacer nada. Este hombre del palito merece una o dos lecciones a mi parecer)~ */
== P_DuskJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @430 /* ~*carraspeo* Y bueno, Edwin ha ayudado tambi�n. Ha demostrado ser uno de los mejores hechiceros de todo Faer�n. Ha estado completamente a la altura de la Cripta Olvidada.~ */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @431 /* ~Erhm. *carraspeo* Bueno, pues eso es obvio, Dusk. Edwin ten�a que darle un escarmiento a esos magos primates. (Vaya, despu�s de todo, este humano tiene algo de... decencia)~ */
== P_MATUT IF ~~ THEN @432 /* Entiendo, Dusk... y lamento... lamento haber ca�do tan f�cilmente en las garras de ese Encantador. */
== P_MATUT IF ~~ THEN @433 /* Cuando llegu�, activ� una trampa arcana. Qued� paralizado y a merced de esos malvados hechiceros. */
== P_MATUT IF ~~ THEN @434 /* El resto... es historia conocida... */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @435 /* ~�Te refieres a tu trasero siendo pateado por nosotros? S�, es una historia completamente individual.~ */
== P_MATUT IF ~~ THEN @436 /* *carraspeo* Bueno, como dec�a. */
== P_MATUT IF ~~ THEN @437 /* Derrotar a la Cripta Olvidada no ha sido tarea f�cil, eso lo s�. */
== P_MATUT IF ~~ THEN @438 /* Sin embargo, su influjo ya no se percibe en este plano. O eso al menos me ha dicho Michelson. */
== p_michel IF ~~ THEN @439 /* (Michelson aplaude y r�e, asintiendo fren�ticamente a las palabras de Mathyus) */ 
== P_MATUT IF ~~ THEN @440 /* Lo has logrado, Dusk... has vengado a Celine. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @441 /* ~S�...~ */
== P_MATUT IF ~~ THEN @442 /* �Qu� sucede? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @443 /* ~La he visto, Mathyus... He visto... su esp�ritu...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @444 /* ~Aunque... no estoy seguro de que haya sido ella. Creo... creo que ha sido una artima�a de Anthagar... para intentar meterse en mi cabeza.~ */
== P_MATUT IF ~~ THEN @445 /* Ya veo... �T� qu� opinas, Michelson? */
== p_michel IF ~~ THEN @446 /* (El leprechaun se queda un instante pensativo) */ 
== p_michel IF ~~ THEN @447 /* (Al cabo de unos segundos, se acerca a Mathyus y le pide que se arrodille un instante. Parece murmurarle algo.) */
END

I_C_T P_MATUT 264 P_Dusk_FINALM5
== p_demole IF ~~ THEN @418 /* ~(Demoledor da vueltas sobre su mismo eje, demostrando una alegr�a inmensa ante las palabras de su amo)~ */
== p_michel IF ~~ THEN @419 /* (Michelson zapatea y baila ante esto) */ 
== P_MATUT IF ~~ THEN @420 /* Han vencido un mal temible, <CHARNAME>. S� que... s� que Dusk habr�a estado feliz de ello... */
== P_MATUT IF ~~ THEN @421 /* Su accionar no fue movido por odio, sino por justicia. */
== P_MATUT IF ~~ THEN @422 /* Ha honrado la memoria de su amada, Celine... la de su amado bosque, Shilmista... y la de su patria, Cormyr. */
== P_MATUT IF ~~ THEN @423 /* Su lucha no ser� olvidada, <CHARNAME>. Y tus logros tampoco. */
END




I_C_T P_MATUT 258 P_Dusk_FINALM4
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @404 /* ~<CHARNAME>, s� que tenemos asuntos pendientes y urgentes... estoy consciente de ello... Pero te ruego que consideres esto, ya que la Cripta Olvidada puede resultar en un peligro inminente, incluso para Faer�n.~ */
== p_michel IF ~~ THEN @405 /* (Michelson asiente y silba con cierta preocupaci�n ante las palabras de Dusk.) */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @406 /* ~<CHARNAME>, �es en serio? Debemos despachar a esos magos corruptos cuanto antes.~ */
== P_MATUT IF ~~ THEN @407 /* Tiene raz�n. Pero entiendo si debes atender otros asuntos antes (quiero creer que no habr�s de rechazar este deber...). Ten en cuenta, que Demoledor y yo habremos de prestar nuestra ayuda en el enfrentamiento final. */
== P_MATUT IF ~~ THEN @408 /* Si cambias de parecer, recuerda que deben venir preparados, pues no sabemos a qu� tipo de lugar habremos de parar... */
== P_MATUT IF ~~ THEN @409 /* No tengo m�s nada que decir... */
END

I_C_T P_MATUT 257 P_Dusk_FINALM3
== p_michel IF ~~ THEN @367 /* (Michelson aplaude y silba de alegr�a ante la determinaci�n de <CHARNAME>) */ 
== p_demole IF ~~ THEN @368 /* ~(Demoledor mueve la cola y ladra a su manera, expresando agradecimiento al hijo de Bhaal)~ ~(Demoledor mueve la cola y ladra a su manera, expresando agradecimiento a la hija de Bhaal)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @369 /* ~Gracias, <CHARNAME>. Sab�a que pod�a contar contigo.~ */
== P_MATUT IF ~~ THEN @390 /* Por lo pronto, amigos m�os, puedo garantizarles que el Orbe aciago del Nigromante no es m�s que un conductor a un portal. */
== P_MATUT IF ~~ THEN @391 /* Michelson dice que su destino es un lugar... desconocido, aunque est� relacionado a la magia corrupta. */
== P_MATUT IF ~~ THEN @392 /* Necesitar�s volver cuando resultes victorioso, eso s�. Es por eso que Michelson no podr� acompa�arnos en este viaje. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @393 /* ~�Acompa�arnos? No me digas que contaremos con tu ayuda, Mathyus.~ */
== P_MATUT IF ~~ THEN @394 /* �Y con la de Demoledor! */
== p_demole IF ~~ THEN @395 /* ~(Demoledor gru�e por unos segundos y luego ladra a su manera, expresando estar listo para la batalla)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @396 /* ~Es bueno saberlo.~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @397 /* ~�Ese saco de pulgas luchar� a nuestro lado? Espero que no se interponga en mi camino, marica de cabello verde. No quiero tener que despacharlo tambi�n.~ */
== P_MATUT IF ~InParty("Korgan") InMyArea("Korgan")~ THEN @398 /* *carraspeo* No se preocupe, se�or enano. Demoledor es m�s h�bil de lo que... aparenta. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @399 /* ~Ah, al fin veremos en acci�n a este arquero. Ya me estaba cansando de escucharle decir cu�n poderoso es sin que lo demuestre con actos.~ */
== P_MATUT IF ~~ THEN @400 /* Creo que no tengo m�s nada que decir por ahora, Dusk. Cuando est�n listos para partir, hablen de nuevo conmigo. */
== P_MATUT IF ~~ THEN @401 /* Os recomiendo que vayan preparados. Recuerden que pueden forjar artefactos con nuestro amigo verde, �s�? */
END

I_C_T P_MATUT 255 P_Dusk_FINALM2
== p_michel IF ~~ THEN @367 /* (Michelson aplaude y silba de alegr�a ante la determinaci�n de <CHARNAME>) */ 
== p_demole IF ~~ THEN @368 /* ~(Demoledor mueve la cola y ladra a su manera, expresando agradecimiento al hijo de Bhaal)~ ~(Demoledor mueve la cola y ladra a su manera, expresando agradecimiento a la hija de Bhaal)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @369 /* ~Gracias, <CHARNAME>. Sab�a que pod�a contar contigo.~ */
== P_MATUT IF ~~ THEN @370 /* Por cierto, Dusk... veo que a�n llevas contigo la Espada esmeralda. No sab�a que la hab�as mejorado.  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @371 /* ~As� es... cuando nos enfrentamos a Valathar, �ste convoc� a un demonio abisal.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @372 /* ~Cuando le derrotamos... sent� c�mo la espada me indicaba acabar con el coraz�n del demonio para que no pueda volver a este plano.~ */
== P_MATUT IF ~~ THEN @373 /* Entiendo... Michelson me ha comentado que el orbe purificado ha creado un arma purificada. He o�do de algunas espadas que tienen voluntad propia. Parece que es as� en el caso de la Espada esmeralda. */
== p_michel IF ~~ THEN @374 /* (Michelson r�e y tira de las ropas de Mathyus para llamar la atenci�n) */ 
== P_MATUT IF ~~ THEN @375 /* �Qu� dices, Michelson? �Que ya es el momento? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @376 /* ~�Qu� sucede, Mathyus?~ */
== P_MATUT IF ~~ THEN @377 /* Michelson dice que ya es momento de revelar el poder de la espada esmeralda. */
== P_MATUT IF ~~ THEN @378 /* Dice que puede despertar el poder completo de la misma. S�lo debes entreg�rsela un momento. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @379 /* ~Est� bien, amigos. Michelson, aqu� tienes.~ */ 
== p_michel IF ~~ THEN @380 /* (Michelson toma el arma en sus peque�as manos y la admira con sus ojos brillantes) */ DO ~TakePartyItem("p_swgoo2")~
== p_michel IF ~~ THEN @381 /* (De uno de sus bolsillos saca unos polvos, aparentemente m�gicos, y los esparce a trav�s de la espada) */ 
== p_michel IF ~~ THEN @382 /* (La misma comienza a tomar un brillo jade y por un momento enceguece a todos) */ 
== p_michel IF ~~ THEN @383 /* (Al cabo de unos segundos, la espada es entregada a Dusk) */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @384 /* ~Por Cormyr... no cre� que el arma pudiera ser a�n m�s poderosa...~ */ DO ~CreateItem ("p_swgoo3",1,2,1)  GiveItem("p_swgoo3", "P_Dusk")~
== P_MATUT IF ~~ THEN @385 /* Lux... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @386 /* ~�Lux?~ */
== P_MATUT IF ~~ THEN @387 /* Es el nombre verdadero del arma, Dusk. Al menos eso dice Michelson. */
== p_michel IF ~~ THEN @388 /* (Michelson asiente y aplaude mientras admira a Lux en las manos de Dusk) */ 
== P_MATUT IF ~~ THEN @389 /* La necesitar�s en tu lucha contra la Orden de Anthagar, Dusk. */
== P_MATUT IF ~~ THEN @390 /* Por lo pronto, amigos m�os, puedo garantizarles que el Orbe aciago del Nigromante no es m�s que un conductor a un portal. */
== P_MATUT IF ~~ THEN @391 /* Michelson dice que su destino es un lugar... desconocido, aunque est� relacionado a la magia corrupta. */
== P_MATUT IF ~~ THEN @392 /* Necesitar�s volver cuando resultes victorioso, eso s�. Es por eso que Michelson no podr� acompa�arnos en este viaje. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @393 /* ~�Acompa�arnos? No me digas que contaremos con tu ayuda, Mathyus.~ */
== P_MATUT IF ~~ THEN @394 /* �Y con la de Demoledor! */
== p_demole IF ~~ THEN @395 /* ~(Demoledor gru�e por unos segundos y luego ladra a su manera, expresando estar listo para la batalla)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @396 /* ~Es bueno saberlo.~ */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @397 /* ~�Ese saco de pulgas luchar� a nuestro lado? Espero que no se interponga en mi camino, marica de cabello verde. No quiero tener que despacharlo tambi�n.~ */
== P_MATUT IF ~InParty("Korgan") InMyArea("Korgan")~ THEN @398 /* *carraspeo* No se preocupe, se�or enano. Demoledor es m�s h�bil de lo que... aparenta. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @399 /* ~Ah, al fin veremos en acci�n a este arquero. Ya me estaba cansando de escucharle decir cu�n poderoso es sin que lo demuestre con actos.~ */
== P_MATUT IF ~~ THEN @400 /* Creo que no tengo m�s nada que decir por ahora, Dusk. Cuando est�n listos para partir, hablen de nuevo conmigo. */
== P_MATUT IF ~~ THEN @401 /* Os recomiendo que vayan preparados. Recuerden que pueden forjar artefactos con nuestro amigo verde, �s�? */
END



I_C_T P_MATUT 253 P_Dusk_FINALM1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @342 /* ~�Mathyus, Michelson! Es un placer volver a ver sus rostros. A ti tambi�n, Demoledor.~ */
== p_demole IF ~~ THEN @343 /* (Demoledor, con una sopresiva agilidad, gira sobre su propio eje al recibir reconocimiento de su amigo) */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @344 /* ~Aunque... �c�mo has sabido de nuestros viajes? No recuerdo que te hayamos contado lo que har�amos...~ */
== P_MATUT IF ~~ THEN @345 /* Lo s�, lo s�, Dusk. Pero Michelson ha insistido en seguir su rastro. Ha utilizado uno de sus orbes como si de una bola de cristal se tratase... vimos su imagen en medio de la locura de Brynn Ley y a trav�s de las tinieblas de Ust Natha.  */
== P_MATUT IF ~~ THEN @346 /* Sabemos que ha sido un viaje largo, cansado y peligroso. �Verdad, Michelson?  */
== p_michel IF ~~ THEN @347 /* (Michelson asiente con rapidez mientras mueve sus manitos y r�e como un man�aco) */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @348 /* ~Ya veo... entonces... est�n al tanto de la Orden de la Cripta Olvidada.~ */
== p_michel IF ~~ THEN @349 /* (Michelson se torna serio y cruza sus brazos, aunque no por ello deja de zapatear) */ 
== P_MATUT IF ~~ THEN @350 /* As� es... Darvin... o mejor llamado, Anthagar, hizo aparici�n hace algunas noches. Si bien no fue capaz de enga�arnos, nos ha dejado un... artefacto particular...  */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @351 /* ~�Un artefacto? Mathyus, no deben confiar en esa sierpe. La Orden de los Magos ha demostrado ser m�s peligrosa de lo que parecen.~ */
== P_MATUT IF ~~ THEN @352 /* Entiendo... pero Michelson ha podido examinar el artefacto... y no ha encontrado nada maligno en �l. */
== P_MATUT IF ~~ THEN @353 /* Se trata de un orbe teletransportador. */
== P_MATUT IF ~~ THEN @354 /* Quedamos un tanto perplejos ante esta revelaci�n. Sin embargo, Anthagar ha dejado una carta destinada a ti, Dusk. */
== P_MATUT IF ~~ THEN @355 /* Por tu seguridad... la hemos abierto de antemano. No pareciera poseer rastros de trampa alguna... se trata de... Hm... Ser� mejor que t� la leas. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @356 /* ~De acuerdo, Mathyus. Veamos...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @357 /* ~"Capit�n Aldant: Debo reiterar mi decepci�n sobre tu rechazo al regalo que te ofrec�. El orbe escarlata te habr�a hecho alcanzar un poder m�s all� de tu imaginaci�n. Tus intenciones son claras y s� que no puedo fiarme de ti ni de <CHARNAME>."~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @358 /* ~"No puedo esperar que sujetos como ustedes sean capaces de comprender siquiera lo que estamos tratando de alcanzar. Es por eso que os cito a un combate final. Ya sea por venganza o justicia: Ardusk Aldant, os espero del otro lado del umbral que el orbe habr� de ofrecerte."~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @359 /* ~"El artefacto se encuentra con tus "amigos" shilmistas. Estoy seguro de que esa extra�a criatura ya habr� logrado deducir que el mismo no oculta ninguna intenci�n secreta m�s all� de ser un puente hacia nuestro enfrentamiento definitivo. Esperaremos el tiempo que sea necesario... pero recuerda: El destino de Amn y Tethyr est�n en tus manos.
Anthagar."~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @360 /* ~Ya veo... <CHARNAME>, �qu� opinas de todo esto?~ */
END


I_C_T P_MATUT 249 P_Dusk_EVIL_ENDOFMAT2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @324 /* ~Je, no te muestres tan emocionado, 'amigo m�o'. He sobrevivido, muy a pesar de sus deseos.~ */
== P_MATUT IF ~~ THEN @325 /* Oh, Dusk. Espero que no hayamos dado la impresi�n de que vuestra presencia nos incomoda... Todo lo contrario, nosotros- */
== p_michel IF ~~ THEN @326 /* (Michelson demuestra un nerviosismo cada vez m�s evidente. Ya no sonr�e. Ya no baila) */
== p_demole IF ~~ THEN @327 /* (Demoledor, incorporado, demuestra una exaltaci�n t�pica en animales a punto de atacar) */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @328 /* ~Mathyus... creo que debes escuchar a Michelson y Demoledor. Sabes lo que se avecina...~ */
== P_MATUT IF ~~ THEN @329 /* N-no entiendo, Dusk... �a qu� te refieres? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @330 /* ~Durante nuestra incursi�n hacia la guarida de Alabarza, nos encontramos con un Conjurador llamado Valatar.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @331 /* ~El bastardo parec�a formar parte del Culto de Hechiceros que hizo que mat�ramos al grupo de humanoides en las Colinas Ventolanza.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @332 /* ~Al cabo de intercambiar algunas... palabras, el mago convoc� a un demonio abisal para poner a prueba nuestra fuerza.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @333 /* ~Cuando el demonio fue derrotado, en mi interior sent� una voz clara... algo que hab�a percibido antes, cuando tom� el poder del Orbe Escarlata.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @334 /* ~En ese entonces, aquella voz parec�a lejana y casi incomprensible. Casi como si no se tratase de una voz, sino de una imagen. Un cuadro art�stico de sangre y tinieblas.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @335 /* ~S�lo cuando el coraz�n de ese demonio abisal se detuvo en este plano, pude comprender lo que aquella voz me dec�a.~ */
== P_MATUT IF ~~ THEN @336 /* �D-dusk? */
== p_michel IF ~~ THEN @337 /* (Michelson, en un sorpresivo movimiento, intenta conjurar un hechizo contra Dusk) */ DO ~Kill(Myself)~
== p_demole IF ~~ THEN @338 /* (Demoledor, con una sopresiva agilidad, se abalanza contra Dusk) */ DO ~Kill(Myself)~
END

I_C_T P_MATUT 247 P_Dusk_EVIL_ENDOFMAT1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @324 /* ~Je, no te muestres tan emocionado, 'amigo m�o'. He sobrevivido, muy a pesar de sus deseos.~ */
== P_MATUT IF ~~ THEN @325 /* Oh, Dusk. Espero que no hayamos dado la impresi�n de que vuestra presencia nos incomoda... Todo lo contrario, nosotros- */
== p_michel IF ~~ THEN @326 /* (Michelson demuestra un nerviosismo cada vez m�s evidente. Ya no sonr�e. Ya no baila) */
== p_demole IF ~~ THEN @327 /* (Demoledor, incorporado, demuestra una exaltaci�n t�pica en animales a punto de atacar) */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @328 /* ~Mathyus... creo que debes escuchar a Michelson y Demoledor. Sabes lo que se avecina...~ */
== P_MATUT IF ~~ THEN @329 /* N-no entiendo, Dusk... �a qu� te refieres? */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @330 /* ~Durante nuestra incursi�n hacia la guarida de Alabarza, nos encontramos con un Conjurador llamado Valatar.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @331 /* ~El bastardo parec�a formar parte del Culto de Hechiceros que hizo que mat�ramos al grupo de humanoides en las Colinas Ventolanza.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @332 /* ~Al cabo de intercambiar algunas... palabras, el mago convoc� a un demonio abisal para poner a prueba nuestra fuerza.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @333 /* ~Cuando el demonio fue derrotado, en mi interior sent� una voz clara... algo que hab�a percibido antes, cuando tom� el poder del Orbe Escarlata.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @334 /* ~En ese entonces, aquella voz parec�a lejana y casi incomprensible. Casi como si no se tratase de una voz, sino de una imagen. Un cuadro art�stico de sangre y tinieblas.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @335 /* ~S�lo cuando el coraz�n de ese demonio abisal se detuvo en este plano, pude comprender lo que aquella voz me dec�a.~ */
== P_MATUT IF ~~ THEN @336 /* �D-dusk? */
== p_michel IF ~~ THEN @337 /* (Michelson, en un sorpresivo movimiento, intenta conjurar un hechizo contra Dusk) */ DO ~ReallyForceSpell(Myself,ZOMBIE_SICKNESS) Kill(Myself)~
== p_demole IF ~~ THEN @338 /* (Demoledor, con una sopresiva agilidad, se abalanza contra Dusk) */ DO ~ReallyForceSpell(Myself,ZOMBIE_SICKNESS) Kill(Myself)~
END


I_C_T P_MATUT 244 P_Dusk_GOOD_REX
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @321 /* ~�Vaya! Irradia m�s poder que antes... es incre�ble. Gracias, amigos.~ */
END

I_C_T P_MATUT 240 P_Dusk_GOOD_SALUS
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @318 /* ~�Vaya! Es m�s ligera que antes... Gracias, amigos. Espero ser digno de ella.~ */
END 

// Corregir
I_C_T P_MATUT 223 P_Dusk_GOOD_CON_P_RESTOS22
== p_michel IF ~~ THEN @483 /* ~(El leprechaun escudri�a el grupo de <CHARNAME> durante unos momentos)~ */
== p_michel IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @265 /* ~(Michelson agita una peque�a botella azul. Mientras sonr�e, se acerca corriendo y bailando hacia Minsc)~ */  DO ~ CreateItem ("p_POTN99",1,1,0)  GiveItem("p_POTN99", "Minsc") ~ 
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @266 /* ~�Vaya! Gracias, peque�uelo. La botella parece ser m�s pesada de lo que aparenta. �Minsc y Bub� te lo agradecen!~ */
== p_michel IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @267 /* ~(Del caj�n emanan algunas diminutas part�culas brillantes, resultantes del conjuro que Michelson ha lanzado. Al cabo de unos segundos, extrae un extra�o talism�n, el cual entrega, ceremoniosamente, a Aerie)~ */  DO ~ CreateItem ("p_nbk02",1,1,0)  GiveItem("p_nbk02", "Aerie") ~ 
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @268 /* ~�Wow! Gracias, Michelson. Este emblema de Baervan... es muy bonito.~ */
== p_michel IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @269 /* ~(El leprechaun saca del caj�n una poci�n. La misma parece pesada, aunque el leprechaun la levanta sin dificultades. Con respeto, se acerca a Keldorn y se la entrega)~ */ DO ~ CreateItem ("p_keld1",1,1,0)  GiveItem("p_keld1", "Keldorn") ~ 
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @270 /* ~Es muy amable de tu parte, peque�o. Estoy seguro de que esto nos ayudar� en nuestra lucha contra el mal.~ */
== p_michel IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @271 /* ~(El peque�o desenvaina una katana de la nada. La misma parece bastante liviana a la vista. Sin embargo, percibes un gran poder en ella. Correteando, se dirige hacia Yoshimo)~ */ DO ~ CreateItem ("p_yoshit",1,1,0)  GiveItem("p_yoshit", "Yoshimo") ~ 
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @272 /* ~Pues... has dejado a Yoshimo sin palabras, mi peque�o amigo. �Agradezco el obsequio!~ */
== p_michel IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @273 /* ~(Una peque�a explosi�n �urea surge del cargamento, producto de un hechizo de Michelson. A continuaci�n, recoje un peque�o grupo de gemas amarillentas, las cuales entrega, sonrojado, a Mazzy)~ */ DO ~ CreateItem ("p_nbk04",1,1,0)  GiveItem("p_nbk04", "Mazzy") ~ 
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @274 /* ~Muchas gracias, Michelson. Es un bonito obsequio de tu parte. Prometo darles un buen uso.~ */
== p_michel IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @275 /* ~(Michelson echa un buen vistazo a Anomen. Pareciera ser que estuvo analiz�ndolo durante un breve per�odo de tiempo. Al cabo de unos segundos, sus dedos chasquean y silba una melod�a un tanto extra�a. Al terminar, del cargamento saca una espada, la cual entrega a Anomen)~ */ DO ~ CreateItem ("p_swanom",1,1,0)  GiveItem("p_swanom", "Anomen") ~ 
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @276 /* ~Por Helm... esta espada tiene el emblema de mi familia... Michelson... no s� qu� decir... Os agradezco... profundamente.~ */
== p_michel IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @277 /* ~(El leprechaun observa atento a Nalia durante unos segundos. Sonriendo y levantando sus manitos, se dirige al cargamento. De �l, saca un manto amarillo, el cual tiene el emblema de de'Arnise. Corriendo, se dirige a entregarlo a Nalia)~ */ DO ~ CreateItem ("p_nalit",1,1,0)  GiveItem("p_nalit", "Nalia") ~ 
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @278 /* ~�Q-qu�? �De d�nde has sacado esto, Michelson? Tiene... tiene el emblema de mi familia... adem�s... me resulta tan familiar... *carraspeo* G-gracias, Michelson. Lo usar� con orgullo.~ */
== p_michel IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @279 /* ~(Durante unos segundos, Michelson conjura un hechizo desconocido, el cual emite un destello azul dentro del cargamento de Cormyr. Al cabo de unos segundos, extirpa un emblema, el cual entrega a Jaheira)~ */ DO ~ CreateItem ("p_nbk09",1,1,0)  GiveItem("p_nbk09", "Jaheira") ~ 
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @280 /* ~�El s�mbolo de Mystra? Gracias, Michelson. Como arpista de coraz�n, le dar� un buen uso.~ */
== p_michel IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @281 /* ~(De repente comienzas a sentir un nost�lgico aroma a tierra mojada y una leve electricidad en el aire. Michelson aplaude con fuerzas y del cargamento se eleva un brillante orbe. Con facilidad, salta y lo toma entre sus manitos y a continuaci�n, veloz va hacia Cernd para entreg�rselo)~ */  DO ~ CreateItem ("p_nbk11",1,1,0)  GiveItem("p_nbk11", "Cernd") ~ 
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @282 /* ~Percibo una calma tempestad en este orbe, como si en �l se contuviera el sue�o de una mariposa. Gracias, peque�o.~ */
== p_michel IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @283 /* ~(Durante una breve observaci�n a Valygar, el peque�o saca unos extra�os pergaminos. Podr�as haber jurado que en un principio estaban rotos, desgastados por el maltrato dentro del cargamento de Cormyr. Pero ahora parecen nuevos. Con presteza se los entrega a Valygar)~ */ DO ~ CreateItem ("p_nbk05",1,1,0)  GiveItem("p_nbk05", "Valygar") ~
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @284 /* ~�Qu� es esto, Michelson? Estos pergaminos... tienen el sello de mi familia. *se queda un instante dubitativo* Est� bien... les echar� un vistazo. Conf�o en tu buen coraz�n, mi peque�o amigo.~ */
== p_michel IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @285 /* ~(Con un cierto temor, Michelson saca del lugar m�s rec�ndito del caj�n un peque�o objeto negro. Con cuidado, se dirige hacia Viconia)~ */ DO ~ CreateItem ("p_nbk03",1,1,0)  GiveItem("p_nbk03", "Viconia") ~
//wael = tonto
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @286 /* ~�Qu� es esto, wael? Se parece a... Oh, de hecho es el s�mbolo de Shar. Yo... te lo agradezco.~ */
== p_michel IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @287 /* ~(El leprechaun parece sacar un viejo libro del cargamento. Podr�as jurar que estaba todo polvoriento, pero luego de unas sacudidas, puedes ver un color rojo sobre la tapa del mismo. El peque�o corre hacia Edwin para entreg�rselo)~ */ DO ~ CreateItem ("p_nbk12",1,1,0)  GiveItem("p_nbk12", "Edwin") ~
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @288 /* ~�Qu� es esto, duende? Hmm... Interesante... "Tomo de Destreza de Thay" (Puede que me sea �til despu�s de todo...) Gracias, Bichilson. Ahora puedes retirarte.~ */
== p_michel IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @289 /* ~(De repente, un brillo dorado parece emerger del cargamento cormyreano. Michelson, luego de un breve ritual m�gico, extrae lo que parece ser un hacha dorada. Blandi�ndola como un psic�pata, se la entrega a Korgan)~ */ DO ~ CreateItem ("P_AX1H99",1,1,0)  GiveItem("P_AX1H99", "Korgan") ~
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @290 /* ~�Ja! �Es para m�, renacuajo? Gracias. Prometo cercenar la mayor cantidad de cabezas posible con esto, �me entiendes?~ */
== p_michel IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @291 /* ~(De la nada, y como si ya lo tuviese preparado, Michelson saca de sus bolsillos una p�cima colorida. Ciertamente, sus brillantes y variados colores te dan una desconfianza. Correteando y bailando, se acerca a Jan y se la entrega)~ */ DO ~ CreateItem ("p_nbk07",1,1,0)  GiveItem("p_nbk07", "Jan") ~
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @292 /* ~�Oh, una poci�n gn�mica! Esto me recuerda a la vez en que mi t�a Gertrudis fue capturada por la guardia de Amn por contrabando de bebidas energ�ticas. Uno pensar�: "�Qu� tienen de malo las bebidas energ�ticas?" Pues yo digo que nada. Aunque puede que hayan aprisionado a la t�a por los efectos secundarios de sus bebidas. Creo que provocaban que a uno le salgan pelos en los dientes. En fin, esta p�cima se ve muy bien. No puedo esperar a probarla.~ */
== p_michel IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @293 /* ~(Del cargamento, Michelson extrae unos amarillentos pergaminos. A simple vista, parecieran ser papeles normales. Pero conociendo al leprechaun, lo m�s probable es que se trate de algo especial. Veloz corre hacia Haer'Dalis para entreg�rselo)~ */ DO ~ CreateItem ("p_nbk07",1,1,0)  GiveItem("p_nbk07", "HaerDalis") ~
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @294 /* ~�Ah, pero si es el peque�o p�jaro carpintero que viene a traerme un obsequio! Vaya, estas runas me resultan familiares... Creo que mi forma de agradec�rtelo es bailar contigo, lord Michelson.~ */
== p_michel IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @414 /* ~(Michelson parece dubitativo durante unos segundos. Sus ojos se posan en Imoen y como si hubiese tenido una gran idea, chasquea los dedos y del cargamento extrae un viejo tomo polvoriento. Corre y lo deja en manos de Imoen)~ */ DO ~ CreateItem ("p_nbk08",1,1,0)  GiveItem("p_nbk08", "Imoen2") ~
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @415 /* ~�Gracias, Michelson! No s� si tenga muchos �nimos de leer ahora mismo, pero ten por seguro que le echar� una ojeada en cuanto pueda.~ */

== p_michel IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @484 /* ~(El leprechaun se detiene y su faz se torna seria. Observa con cierta timidez a Dorn. Al cabo de unos segundos, extrae del cargamento unas oscuras botas y se las lleva al semiorco)~ */ DO ~ CreateItem ("p_dornbr",1,1,0)  GiveItem("p_dornbr", "Dorn") ~
== DORNJ IF ~InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN @485 /* ~�Hm? �Unas botas? Supongo que servir�n...~ */

== p_michel IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @486 /* ~(Michelson junta sus manos y las sacude, saliendo de ellas unos brillantes polvillos que caen sobre una botella vac�a. Sorprendentemente, la misma parece llenarse de un l�quido tan brillante que debes escudri�ar para no lastimar tus ojos)~ */ DO ~ CreateItem ("p_rasptn",1,1,0)  GiveItem("p_rasptn", "Rasaad") ~
== RASAADJ IF ~InParty("Rasaad") InMyArea("Rasaad") !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN @487 /* ~El brillo es enceguecedor, Michelson. Gracias, estoy seguro de que nos ser� muy �til.~ */


== p_michel IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @488 /* ~(El peque�o observa a Neera. Del cargamento saca una botella gigantesca y pulveriza varias gemas como si de caramelos se tratasen. La poci�n parece llenarse al cabo de unos segundos y se la lleva a la semielfa con gran ceremonia)~ */ DO ~ CreateItem ("p_neeptn",1,1,0)  GiveItem("p_neeptn", "Neera") ~
== NEERAJ IF ~InParty("Neera") InMyArea("Neera") !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN @489 /* ~�Vaya, Michelson! Gracias por... ehrm... esta... poci�n. Espero no terminar con una indigesti�n.~ */
== p_michel IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @495 /* ~(Michelson mira con recelo a Hexxat. Luego a <CHARNAME>. Entiende que su presencia, es requerida por el Engendro de Bhaal, por lo que, de mala gana, saca una poci�n carmes� del cargamento cormyreano)~ ~(Michelson mira con recelo a Hexxat. Luego a <CHARNAME>. Entiende que su presencia, es requerida por la Engendro de Bhaal, por lo que, de mala gana, saca una poci�n carmes� del cargamento cormyreano)~ */ DO ~ CreateItem ("p_hexx",1,1,0)  GiveItem("p_hexx", "Hexxat") ~
== HEXXATJ IF ~InParty("Hexxat") InMyArea("Hexxat") !StateCheck("Hexxat",CD_STATE_NOTVALID)~ THEN @491 /* ~Te ha costado soltar esto, �verdad, peque�o? No te preocupes. Hexxat le dar� buen uso.~ */
== p_michel IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @492 /* ~(Michelson observa durante unos segundos a Wilson y se estremece cuando este �ltimo se relame al verlo. R�pidamente, de su chaleco, extrae una brillante rama con frutos morados en ella. Con rapidez se dirige al oso pardo y le acerca los frutos silvestres)~ */ DO ~ CreateItem ("p_wils",1,1,0)  GiveItem("p_wils", "Wilson") ~
== WILSONJ IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @493 /* ~(Bufido).~ */
== P_MATUT IF ~InParty("Wilson") InMyArea("Wilson") !StateCheck("Wilson",CD_STATE_NOTVALID)~ THEN @494 /* ~Erhm... supongo que es su forma de agradecerte, Michelson.~ */


== P_MATUT IF ~~ THEN @295 /* ~Dusk, para ti tenemos �sto: la gema del Drag�n P�rpura. Con ella podemos mejorar la Espada de Disrupci�n o la Armadura de Cormyr, depende de lo que elijas. Sin cargo alguno. Somos buenos amigos, �eh?~ */ DO ~ CreateItem ("p_gemdr1",1,1,0)  GiveItem("p_gemdr1", "P_Dusk") ~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @296 /* ~Gracias, Mathyus y Michelson. Es muy amable de su parte. Cuando llegue el momento, de seguro que <CHARNAME> me ayudar� a elegir sabiamente.~ */
END



// ICT DUSK_GOOD SIII TIENE ITEM P_RESTOS PARTE 1

I_C_T P_MATUT 222 P_Dusk_GOOD_CON_P_RESTOS
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @233 /* ~Pues... s�, Mathyus...~ */
== p_michel IF ~~ THEN @234 /* (Michelson, quien estaba sonriente y bailando, parece confundirse ante las deca�das palabras de Dusk) */ 
== P_MATUT IF ~~ THEN @235 /* ~�Qu� sucede, Dusk? Te noto dubitativo.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @236 /* ~He vengado a mis camaradas ca�dos, Mathyus. Pero... no es lo que... imaginaba que ser�a...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @252 /* ~Alabarza y su clan fueron utilizados desde un principio.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @253 /* ~�l mencion� a una Orden de Magos, con t�nicas negras. Nombr� a Sornhil y a Valatar (a quien conoc� en nuestro camino hacia el T�mulo).~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @254 /* ~Tambi�n mencion� a un elfo transmutador. Kalanda creo que era su nombre.~ */
== P_MATUT IF ~~ THEN @255 /* ~Vaya... esto es... Pero, �t� le crees, Dusk?~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @256 /* ~Pues... extra�amente, s�. Alabarza no ten�a nada qu� perder al revelar esta informaci�n... fueron... sus �ltimos momentos...~ */
== P_MATUT IF ~~ THEN @257 /* ~Entiendo...~ */
== p_michel IF ~~ THEN @258 /* (Michelson, con una exaltaci�n algo fuera de lo normal, se�ala la caja que trae el grupo consigo) */ 
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @259 /* ~Ah, �esto? Es el cargamento que trajimos de Cormyr, Michelson. Lo recuperamos al derrotar a Alabarza en el T�mulo.~ */ DO ~TakePartyItem("P_RESTOS")~
== p_michel IF ~~ THEN @260 /* (El leprechaun recibe con cierta dificultad la gran caja. A continuaci�n, procede a revisarla con gran entusiasmo) */
== P_MATUT IF ~~ THEN @261 /* ~Esto es interesante, Dusk. A simple vista, nada de lo que hay aqu� parece servir. Pero Michelson dice que puede recuperar gran parte del repertorio, utilizando algunos de sus �tems personales y, claro est�, su poder de leprechaun.~ */
== p_michel IF ~~ THEN @262 /* (Sin pedir permiso a nadie, Michelson comienza a emplear sus hechizos sobre algunos artefactos, utilizando polvos de gemas y objetos brillantes que pareces desconocer) */ DO ~TakePartyItem("P_RESTOS") DestroyItem("P_RESTOS")~
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @263 /* ~Esto es bueno, <CHARNAME>. Puede que podamos recuperar algo de lo que se perdi� hace ya tanto tiempo.~ */ 
END 



// ICT DUSK_GOOD NO TIENE ITEM P_RESTOS

I_C_T P_MATUT 219 P_Dusk_GOOD_SIN_RESTOS
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @233 /* ~Pues... s�, Mathyus...~ */
== p_michel IF ~~ THEN @234 /* (Michelson, quien estaba sonriente y bailando, parece confundirse ante las deca�das palabras de Dusk) */ 
== P_MATUT IF ~~ THEN @235 /* ~�Qu� sucede, Dusk? Te noto dubitativo.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @236 /* ~He vengado a mis camaradas ca�dos, Mathyus. Pero... no es lo que... imaginaba que ser�a...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @237 /* ~Algo me dice que Alabarza fue manipulado para llevar a cabo su ataque... Ver�s, antes de llegar al T�mulo, fuimos interceptados por un mago llamado Valatar.~ */
== P_MATUT IF ~~ THEN @238 /* ~�Valatar? Hmm... �Crees que est� relacionado con el mago que plant� el escudo a la tribu de Falon?~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @239 /* ~As� es. Pertenecen a la misma Orden. De la misma manera, Alabarza mencion� a un elfo hechicero, el cual le brind� un hechizo de transmutaci�n.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @240 /* ~El hecho de que est�n estos... magos involucrados, me dice que hay algo m�s. Algo que a�n no puedo discernir del todo...~ */
== P_DEMOLE IF ~~ THEN @241 /* ~(Demoledor se incorpora y comienza a mover su cola con br�o)~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @242 /* ~*sonr�e* Demoledor, �qu� sucede? �A qu� viene esa fiesta que traes encima?~ */
== P_MATUT IF ~~ THEN @243 /* ~�Ja! Demoledor cree que hallar�s esas respuestas m�s pronto que tarde, Dusk. Y no tiene dudas de que sabr�s qu� hacer al respecto.~ */
== p_michel IF ~~ THEN @244 /* (Michelson zapatea y emite una buena carcajada, asintiendo con su cabeza) */
== P_MATUT IF ~~ THEN @245 /* ~Estoy de acuerdo con nuestros amigos, Dusk. Tengo la seguridad de que este enigma se resolver� pronto. Entretanto, sabes que cuentas con nosotros.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @246 /* ~Gracias, amigos m�os. Gracias a ti tambi�n, <CHARNAME>. */
== P_MATUT IF ~~ THEN @247 /* ~*carraspeo* Bueno, basta de ch�chara. Con Michelson hemos reunido esto como compensaci�n por la dif�cil empresa que han realizado.~ */ DO ~GiveGoldForce(50000) AddexperienceParty(150000)~
END

// ICT_P_DuskM3EVIL_DUSK_DIED -> EVIL

I_C_T P_MATUT 217 P_Dusk_Die_EVIL1
== P_Michel IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @222 /* ~(Michelson baja la cabeza y la sacude lentamente, y por primera vez pareces escuchar un suspiro de sus labios) ~ */
== P_MATUT IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @223 /* ~*suspiro* Puede que me odies por esto, <CHARNAME>... pero no puedo evitar sentir un ligero alivio en mi coraz�n por Dusk.~ */
== P_DEMOLE IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @224 /* ~(Demoledor mira extra�ado a Mathyus)~ */
== P_MATUT IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @225 /* ~Michelson debe sentir lo mismo que yo. Hemos podido percibir un creciente mal en Dusk desde que absorbi� el misterioso orbe escarlata.~ */
== P_MATUT IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @226 /* ~No sab�amos c�mo eso pod�a afectar el futuro de Shilimista... puesto a que la venganza de Dusk podr�a llevar a una guerra sangrienta a los bosques...~ */
== P_MATUT IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @227 /* ~Como eran s�lo supuestos... no �bamos a actuar hasta que Dusk hubiese terminado su cometido para con Alabarza...~ */
== P_MATUT IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @228 /* ~Sin embargo, todo ha terminado en la muerte de Alabarza... y tambi�n de Dusk.~ */
== P_MATUT IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @229 /* ~No me tomes como una persona fr�vola, <CHARNAME>. Dusk fue un buen hombre una vez... pero las p�rdidas que sufri� en su vida lo llevaron a tomar... malas decisiones. Irreversibles.~ */
== P_MATUT IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @230 /* ~Al menos... al menos ahora est� en paz...~ */

== P_MATUT IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @215 /* ~<CHARNAME>, hemos reunido esto con Michelson y Demoledor. Espero que puedan darle un buen uso.~ */ DO ~GiveGoldForce(25000) AddexperienceParty(50000)~
== P_MATUT IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @216 /* ~Michelson, creo que ya no tenemos nada que hacer por aqu�...~ */ 
== P_Michel IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @217 /* ~(Michelson asiente con su cabeza, sin emitir sonrisa o baile alguno. Te sorprende verlo tan triste)~*/
== P_MATUT IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @218 /* ~Volveremos a Shilmista. Dudo que nuestros caminos vuelvan a cruzarse, <CHARNAME>. Sin embargo, te deseo fortuna y salud en tus viajes. Espero que logres encontrar aquello que tanto buscas.~ */ 
== P_DEMOLE IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @219 /* ~(Demoledor, te mira con sus brillantes ojos, como despidi�ndose)~ */ DO ~ForceSpell(Myself,POOF_GONE)~
== P_Michel IF ~Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @220 /* ~(Michelson saluda con poco �nfasis y procede a mover sus manos, conjurando un hechizo de teletransportaci�n)~*/ DO ~ForceSpell(Myself,POOF_GONE)~
END



// ICT_P_DuskM3GOOD_DUSK_DIED -> GOOD

I_C_T P_MATUT 215 P_Dusk_Die_GOOD1
== P_Michel IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @210 /* ~(Michelson baja la cabeza y la sacude levemente, mientras intenta ocultar las l�grimas en sus mejillas) ~ */
== P_DEMOLE IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @211 /* ~(Demoledor, cabizbajo, gime levemente y se echa en el piso ante las palabras de <CHARNAME>)~ */
== P_MATUT IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @212 /* ~<CHARNAME>, gr-gracias por el aviso...~ */
== P_MATUT IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @213 /* ~Dusk pudo vengar a sus compa�eros... al menos... al menos Amn estar� a salvo de Alabarza.~ */
== P_MATUT IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @214 /* ~*suspiro* S� que no es suficiente... desear�a que mi amigo no hubiese muerto...~ */
== P_MATUT IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @215 /* ~<CHARNAME>, hemos reunido esto con Michelson y Demoledor. Espero que puedan darle un buen uso.~ */ DO ~GiveGoldForce(25000) AddexperienceParty(50000)~
== P_MATUT IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @216 /* ~Michelson, creo que ya no tenemos nada que hacer por aqu�...~ */ 
== P_Michel IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @217 /* ~(Michelson asiente con su cabeza, sin emitir sonrisa o baile alguno. Te sorprende verlo tan triste)~*/
== P_MATUT IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @218 /* ~Volveremos a Shilmista. Dudo que nuestros caminos vuelvan a cruzarse, <CHARNAME>. Sin embargo, te deseo fortuna y salud en tus viajes. Espero que logres encontrar aquello que tanto buscas.~ */ 
== P_DEMOLE IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @219 /* ~(Demoledor, te mira con sus brillantes ojos, como despidi�ndose)~ */ DO ~ForceSpell(Myself,POOF_GONE)~
== P_Michel IF ~Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)Global ("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN @220 /* ~(Michelson saluda con poco �nfasis y procede a mover sus manos, conjurando un hechizo de teletransportaci�n)~*/ DO ~ForceSpell(Myself,POOF_GONE)~
END
