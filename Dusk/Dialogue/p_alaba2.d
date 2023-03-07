BEGIN p_alaba2

// DUSK MUERE
IF ~OR (2)
Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",1)
Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0 /* ~*tos* Lo hemos logrado... el dragón ha muerto...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2) 
  SetGlobal("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)
  SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~Has vencido, hijo de Bhaal... *tos* Lástima... que no haya podido matarte a ti también...~ */
    IF ~~ THEN REPLY @2 /* ~Sabes que reviviremos a Dusk, ¿no? Tu riña con él ha sido en vano... pues, el soldado vivirá, a fin de cuentas.~ */  GOTO 2
	IF ~~ THEN REPLY @3 /* ~Supongo que tienes razón... no creo que pueda revivir a Dusk con el daño que ha recibido... pero al menos te hemos matado.~ */  GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY @4 /* ~*quejido* No... no importa, <PRO_RACE>. Incluso si el soldado es traído de vuelta... tendrá que vivir con el hecho de que ha caído en batalla... p-por la mano de Alabarza... el M-mutilad--~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @5 /* ~(Sin llegar a terminar de decir sus últimas palabras, Alabarza parece ahogarse en su propia sangre para, finalmente, morir)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8) Kill(Myself)~ UNSOLVED_JOURNAL @210025 EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @6 /* ~*quejido* C-consuelo de tontos, hijo de Bhaal... Eres poderoso... y te respeto por eso... Y-yo... Alabarza el M-mutilador... te salud--~ ~*quejido* C-consuelo de tontos, hija de Bhaal... Eres poderosa... y te respeto por eso... Y-yo... Alabarza el M-mutilador... te salud--~ */
  IF ~~ THEN GOTO 3
END

// DUSK VIVE EVIL
IF ~Global("P_DuskM3EVIL_DUSK_ALIVE","GLOBAL",1)~ THEN BEGIN 5 // from:
  SAY @7 /* ~*tos* Acaso... ¿acaso eres inmortal, soldado?~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3EVIL_DUSK_ALIVE","GLOBAL",2) SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @8 /* ~(Alabarza, mientras se desangra por la herida, esboza una extraña sonrisa. Finalmente, exhala su último aliento)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8) Kill(Myself)~ UNSOLVED_JOURNAL @210025 EXIT
END

// DUSK VIVE GOOD
IF ~Global("P_DuskM3GOOD_DUSK_ALIVE","GLOBAL",1)~ THEN BEGIN 7 // from:
  SAY @7 /* ~*tos* Acaso... ¿acaso eres inmortal, soldado?~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3GOOD_DUSK_ALIVE","GLOBAL",2) SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 6
END



// DUSK VIVE GOOD
I_C_T P_ALABA2 7 P_Dusk_WinAlabarGOOD1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @16 /* ~*jadeo* Se acabó, Alabarza...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @17 /* ~Podría dejarte morir... o podríamos curar tus heridas y llevarte a la justicia.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @18 /* ~¿Q-qué? *tos* ¿Serías c-capaz de perdonarme... la vida?~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @19 /* ~Sé lo que te espera en el más allá, Alabarza. Gruumsh no olvidará que complotaste con un elfo para combatir a tus enemigos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20 /* ~...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @21 /* ~No le temo al dolor, soldado...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @22 /* ~Pero toda una eternidad... eso debe ser aterrador, ¿no lo crees?~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @23 /* ~Incluso los más feroces sienten el miedo... eso es normal.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @24 /* ~Por eso ofrezco liberarte de eso. Quizás... quizás puedas encontrar redención... Creo que hasta tú eres capaz de ello.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @25 /* ~Soldado...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @26 /* ~No... no me cures...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @27 /* ~En cambio... T-te diré algo...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @28 /* ~No atacamos a tu destacamento por simple azar...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @29 /* ~*quejido* N-no... La verdad es... que una Orden de hechiceros nos indicó de tu llegada... de tu desembarco.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @30 /* ~¿Q-qué...?~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @31 /* ~Túnicas negras... un humano llamado Sornhil, otro llamado Valatar... y el elfo. *escupe sangre*~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @32 /* ~Su líder... un nigromante...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @33 /* ~¿N-nigromante?~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @34 /* ~Querían tu muerte... desconozco los motivos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @35 /* ~P-pero tú... soldado... sobreviviste...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @36 /* ~Los magos hicieron lo posible por reforzar a mi clan... éramos p-poderosos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @37 /* ~Pero... nos has matado...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @38 /* ~Alabarza...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @39 /* ~El cargamento... c-contiene lo que pudimos tomar de tus compañeros caídos... Lo has recuperado...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @40 /* ~C-creo que mi destino a partir de aquí es funesto... pero al menos... mi último gran momento ha sido combatir contra ti...~ */ DO ~ CreateItem ("p_restos",1,1,0)  GiveItem("p_restos", "P_Dusk") ~
END

// DUSK VIVE EVIL
I_C_T P_ALABA2 5 P_Dusk_WinAlabarEVIL1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9 /* ~No te queda mucho tiempo de vida, escoria. Finalmente... has pagado.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10 /* ~Q-quisiera decir... que esto aún no ha terminado... Que... que te perseguiré en la otra vida... p-pero...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11 /* ~Pero tu deidad, Gruumsh, dudo que te perdone, ¿verdad? Después de todo... has recibido ayuda de un elfo... y no hay nada que Gruumsh odie más que los elfos...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @12 /* ~*ríe con malevolencia* Pasarás la eternidad sufriendo, de la mano de tu dios. Un destino más que merecido, diría yo...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @13 /* ~Grr... *con dificultad, el semiorco estira su mano en un intento desesperado por alcanzar el cuello de Dusk*~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @14 /* ~*Pero Dusk, sin piedad, la cercena con su espada, inundando el Túmulo con los gritos ahogados de Alabarza*~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @15 /* ~No tendrás últimas palabras ni deseos, escoria. Aunque quizás esto te reconforte: el elfo que te ha ayudado, el tal Kalanda, tendrá el mismo destino que tú...~ */ DO ~ CreateItem ("p_mano",1,1,0)  GiveItem("p_mano", "P_Dusk")  CreateItem ("p_restos",1,1,0)  GiveItem("p_restos", "P_Dusk") ~
END