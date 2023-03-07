BEGIN p_alaba2

// DUSK MUERE
IF ~OR (2)
Global("P_DuskM3GOOD_DUSK_DIED","GLOBAL",1)
Global("P_DuskM3EVIL_DUSK_DIED","GLOBAL",1)~ THEN BEGIN 0 // from:
  SAY @0 /* ~*tos* Lo hemos logrado... el drag�n ha muerto...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3EVIL_DUSK_DIED","GLOBAL",2) 
  SetGlobal("P_DuskM3GOOD_DUSK_DIED","GLOBAL",2)
  SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from:
  SAY @1 /* ~Has vencido, hijo de Bhaal... *tos* L�stima... que no haya podido matarte a ti tambi�n...~ */
    IF ~~ THEN REPLY @2 /* ~Sabes que reviviremos a Dusk, �no? Tu ri�a con �l ha sido en vano... pues, el soldado vivir�, a fin de cuentas.~ */  GOTO 2
	IF ~~ THEN REPLY @3 /* ~Supongo que tienes raz�n... no creo que pueda revivir a Dusk con el da�o que ha recibido... pero al menos te hemos matado.~ */  GOTO 4
END

IF ~~ THEN BEGIN 2 // from:
  SAY @4 /* ~*quejido* No... no importa, <PRO_RACE>. Incluso si el soldado es tra�do de vuelta... tendr� que vivir con el hecho de que ha ca�do en batalla... p-por la mano de Alabarza... el M-mutilad--~ */
  IF ~~ THEN GOTO 3
END

IF ~~ THEN BEGIN 3 // from:
  SAY @5 /* ~(Sin llegar a terminar de decir sus �ltimas palabras, Alabarza parece ahogarse en su propia sangre para, finalmente, morir)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8) Kill(Myself)~ UNSOLVED_JOURNAL @210025 EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @6 /* ~*quejido* C-consuelo de tontos, hijo de Bhaal... Eres poderoso... y te respeto por eso... Y-yo... Alabarza el M-mutilador... te salud--~ ~*quejido* C-consuelo de tontos, hija de Bhaal... Eres poderosa... y te respeto por eso... Y-yo... Alabarza el M-mutilador... te salud--~ */
  IF ~~ THEN GOTO 3
END

// DUSK VIVE EVIL
IF ~Global("P_DuskM3EVIL_DUSK_ALIVE","GLOBAL",1)~ THEN BEGIN 5 // from:
  SAY @7 /* ~*tos* Acaso... �acaso eres inmortal, soldado?~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3EVIL_DUSK_ALIVE","GLOBAL",2) SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @8 /* ~(Alabarza, mientras se desangra por la herida, esboza una extra�a sonrisa. Finalmente, exhala su �ltimo aliento)~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8) Kill(Myself)~ UNSOLVED_JOURNAL @210025 EXIT
END

// DUSK VIVE GOOD
IF ~Global("P_DuskM3GOOD_DUSK_ALIVE","GLOBAL",1)~ THEN BEGIN 7 // from:
  SAY @7 /* ~*tos* Acaso... �acaso eres inmortal, soldado?~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3GOOD_DUSK_ALIVE","GLOBAL",2) SetGlobal("P_DuskMatMission3","GLOBAL",9) SetGlobal("P_DuskMatMission2","GLOBAL",8)~ GOTO 6
END



// DUSK VIVE GOOD
I_C_T P_ALABA2 7 P_Dusk_WinAlabarGOOD1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @16 /* ~*jadeo* Se acab�, Alabarza...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @17 /* ~Podr�a dejarte morir... o podr�amos curar tus heridas y llevarte a la justicia.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @18 /* ~�Q-qu�? *tos* �Ser�as c-capaz de perdonarme... la vida?~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @19 /* ~S� lo que te espera en el m�s all�, Alabarza. Gruumsh no olvidar� que complotaste con un elfo para combatir a tus enemigos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20 /* ~...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @21 /* ~No le temo al dolor, soldado...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @22 /* ~Pero toda una eternidad... eso debe ser aterrador, �no lo crees?~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @23 /* ~Incluso los m�s feroces sienten el miedo... eso es normal.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @24 /* ~Por eso ofrezco liberarte de eso. Quiz�s... quiz�s puedas encontrar redenci�n... Creo que hasta t� eres capaz de ello.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @25 /* ~Soldado...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @26 /* ~No... no me cures...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @27 /* ~En cambio... T-te dir� algo...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @28 /* ~No atacamos a tu destacamento por simple azar...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @29 /* ~*quejido* N-no... La verdad es... que una Orden de hechiceros nos indic� de tu llegada... de tu desembarco.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @30 /* ~�Q-qu�...?~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @31 /* ~T�nicas negras... un humano llamado Sornhil, otro llamado Valatar... y el elfo. *escupe sangre*~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @32 /* ~Su l�der... un nigromante...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @33 /* ~�N-nigromante?~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @34 /* ~Quer�an tu muerte... desconozco los motivos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @35 /* ~P-pero t�... soldado... sobreviviste...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @36 /* ~Los magos hicieron lo posible por reforzar a mi clan... �ramos p-poderosos...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @37 /* ~Pero... nos has matado...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @38 /* ~Alabarza...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @39 /* ~El cargamento... c-contiene lo que pudimos tomar de tus compa�eros ca�dos... Lo has recuperado...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @40 /* ~C-creo que mi destino a partir de aqu� es funesto... pero al menos... mi �ltimo gran momento ha sido combatir contra ti...~ */ DO ~ CreateItem ("p_restos",1,1,0)  GiveItem("p_restos", "P_Dusk") ~
END

// DUSK VIVE EVIL
I_C_T P_ALABA2 5 P_Dusk_WinAlabarEVIL1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @9 /* ~No te queda mucho tiempo de vida, escoria. Finalmente... has pagado.~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @10 /* ~Q-quisiera decir... que esto a�n no ha terminado... Que... que te perseguir� en la otra vida... p-pero...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @11 /* ~Pero tu deidad, Gruumsh, dudo que te perdone, �verdad? Despu�s de todo... has recibido ayuda de un elfo... y no hay nada que Gruumsh odie m�s que los elfos...~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @12 /* ~*r�e con malevolencia* Pasar�s la eternidad sufriendo, de la mano de tu dios. Un destino m�s que merecido, dir�a yo...~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @13 /* ~Grr... *con dificultad, el semiorco estira su mano en un intento desesperado por alcanzar el cuello de Dusk*~ */
== P_ALABA2 IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @14 /* ~*Pero Dusk, sin piedad, la cercena con su espada, inundando el T�mulo con los gritos ahogados de Alabarza*~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @15 /* ~No tendr�s �ltimas palabras ni deseos, escoria. Aunque quiz�s esto te reconforte: el elfo que te ha ayudado, el tal Kalanda, tendr� el mismo destino que t�...~ */ DO ~ CreateItem ("p_mano",1,1,0)  GiveItem("p_mano", "P_Dusk")  CreateItem ("p_restos",1,1,0)  GiveItem("p_restos", "P_Dusk") ~
END