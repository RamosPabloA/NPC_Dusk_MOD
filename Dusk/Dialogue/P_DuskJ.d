BEGIN P_DuskJ


// NI�O AFUERA DE LA CARPA
// Si quiero que se sume la charla tal cual estaba antes de Dusk, entonces se debe copiar el c�digo TAL CUAL
// est� de su archivo original, inmediatamente despu�s del di�logo y antes del END. As�, llamar� a sus correspondientes
// archivos externos d.
// El archivo BOY1 nos servir� de ejemplo siguiendo el paradigma de este dialog armado, sin perder el interject id�neo del juego
// Por supuesto, esto implica modificar tambi�n el archivo d origen (ej, en este caso: BOY1)
IF ~~ THEN BEGIN 0 // from:
  SAY @20000 /* ~Rayos, <CHARNAME>. Que tengas tu propia b�squeda no implica que no puedas ayudar a los dem�s, en especial a un ni�o que ha perdido a su madre...~ */
IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Yoshimo")~ THEN EXIT
  IF ~IsValidForPartyDialog("Jaheira") ~ THEN EXTERN ~JAHEIRAJ~ 311
  IF ~!IsValidForPartyDialog("Jaheira")
IsValidForPartyDialog("Yoshimo")~ THEN EXTERN ~YOSHJ~ 22 
END

// Bloques con las misiones de Dusk
// NOTA: BLOQUE Arranca desde el 100
// NOTA: enlace TRA Arranca desde el 3000
IF ~~ THEN BEGIN 1 // from:
  SAY @3000 /* ~Saludos, viejo amigo. Ha pasado un tiempo. Lamento traer visitas sin previo aviso. <CHARNAME>, este es Mathyus Davis. Un elfo explorador del Bosque de las Sombras.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 5
END

IF ~~ THEN BEGIN 2 // from:
  SAY @3001 /* ~Mathyus, ya te lo he dicho. Puedes llamarme Dusk.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 9
END

IF ~~ THEN BEGIN 3 // from:
  SAY @3002 /* ~(Estoy seguro de que el dicho no es as�...) Dime, Mathyus. �Has sido capaz de reparar mi armadura?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 10
END

IF ~~ THEN BEGIN 4 // from:
  SAY @3003 /* ~A todo esto... �d�nde est� Michelson? Claramente, su ausencia se nota.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 11
END

IF ~~ THEN BEGIN 5 // from:
  SAY @3014 /* ~�Qu�? Mathyus, �tienes idea de d�nde pueda estar? Es peligroso ah� afuera para alguien como �l.~ */
  IF ~~ THEN REPLY @3004 /* ~Dusk, �qui�n es ese tal Michelson?~ */ GOTO 6
  IF ~~ THEN REPLY @3005 /* ~Esto es genial... de seguro emplearemos una b�squeda por alguien desaparecido, �no es as�?~ */ GOTO 6
END

IF ~~ THEN BEGIN 6 // from:
  SAY @3006 /* ~<CHARNAME>, lamento involucrarte en esto. Michelson es... ehmm... no s� c�mo decirlo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 12
END

IF ~~ THEN BEGIN 7 // from:
  SAY @3015 /* ~*carraspeo* Bueno, Mathyus... �tienes idea de a d�nde pueda estar?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 14
END

IF ~~ THEN BEGIN 8 // from:
  SAY @3007 /* ~De acuerdo, Mathyus. No deber�a ser tan complicado de traer, �verdad?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 21
END

// Ejemplo de llamado a archivo exterior desde respuesta de CHARNAME
IF ~~ THEN BEGIN 9 // from:
  SAY @3008 /* ~�A qu� te refieres? No me digas que...~ */
  IF ~~ THEN REPLY @3016 /* ~Dusk, �qu� sucede?~ */ EXTERN ~P_MATUT~ 22
END

IF ~~ THEN BEGIN 10 // from:
  SAY @3009 /* ~Ya quisiera, <CHARNAME>. Michelson adora los chistes. Mathyus lo 'atrap�' as� desde un principio.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 25
END

IF ~~ THEN BEGIN 11 // from:
  SAY @3010 /* ~Tanto, que Michelson le convirti� el cabello a su color favorito.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 26
END

IF ~~ THEN BEGIN 12 // from:
  SAY @3011 /* ~Te lo mereces, por haber dejado que huya. Se supone que debes cuidarlo, Mathyus.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 27
END

IF ~~ THEN BEGIN 13 // from:
  SAY @3012 /* ~En cuanto podamos, <CHARNAME>, deber�amos buscar a Michelson. Puede que no lo parezca, pero te aseguro que puede ser un aliado importante para la causa.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1","GLOBAL",2)
  ~ UNSOLVED_JOURNAL @210003 EXIT
END

IF ~~ THEN BEGIN 14 // from:
  SAY @3013 /* ~Excelente, <CHARNAME>. Pong�monos en marcha.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1","GLOBAL",2)
  ~ UNSOLVED_JOURNAL @210003 EXIT
END

// Michelson Encounter

IF ~~ THEN BEGIN 15 // from:
  SAY @3017 /* ~*susurro* Creo que esa es su forma de expresar alegr�a, <CHARNAME>.~ */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from:
  SAY @3018 /* ~�Michelson! Tanto tiempo, me alegra verte. Ver�s, Mathyus est� preocupado por ti y...~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 3
END

IF ~~ THEN BEGIN 17 // from:
  SAY @3019 /* ~*suspiro* Rayos... <CHARNAME>, �alguna idea?~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 4
END

IF ~~ THEN BEGIN 18 // from:
  SAY @3020 /* ~Bueno, eso ha ido mejor de lo que he esperado. Lamento el gasto del oro, <CHARNAME>. Prometo compens�rtelo en un futuro.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from:
  SAY @3023 /* ~Vamos, regresemos con Mathyus. De seguro ahora podr� entregarnos la Armadura Shilmista.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1","GLOBAL",4)
  ~ UNSOLVED_JOURNAL @210004 EXIT
END

IF ~~ THEN BEGIN 20 // from:
  SAY @3024 /* ~Bueno, eso ha ido mejor de lo que he esperado. Al menos no gastamos una suma descarada de dinero en convencerlo.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 21 // from:
  SAY @3027 /* ~Oh, <CHARNAME>. Le preguntas al hombre equivocado... a decir verdad no me s� ninguno.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 7
END

IF ~~ THEN BEGIN 22 // from:
  SAY @3028 /* ~Debo admitir que ha estado bien, <CHARNAME>. Veremos si eso convence a Michelson.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 8
END

IF ~~ THEN BEGIN 23 // from:
  SAY @3032 /* ~Rayos... corre como una gacela... Vamos, <CHARNAME>. Lo intentemos de nuevo.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1Failed","GLOBAL",1)
  ~ EXIT
END

IF ~~ THEN BEGIN 24 // from:
  SAY @3033 /* ~Hmm... No lo s�, <CHARNAME>. Eso podr�a ofender a los enanos, �no lo crees?~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 8
END

IF ~~ THEN BEGIN 25 // from:
  SAY @3037 /* ~(Creo que as� no era el dicho, <CHARNAME>)~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 9
END

IF ~~ THEN BEGIN 26 // from:
  SAY @3035 /* ~�Muy bien, <CHARNAME>! Has estado maravilloso.~ ~�Muy bien, <CHARNAME>! Has estado maravillosa.~ */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 27 // from:
  SAY @3036 /* ~Oh, <CHARNAME>. Creo que eso no ha sido una buena idea.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission1Failed","GLOBAL",1)~EXTERN ~P_MICHEL~ 13
END

IF ~Global("P_DuskMatMission1Failed","GLOBAL",1)
Global("P_Dusk_T2","GLOBAL",0)~ THEN BEGIN 28 // from:
  SAY @3039 /* ~El peque��n no nos lo ha hecho f�cil, Mathyus. Pero por suerte, tuvimos �xito, pese a sufrir alguna de sus travesuras.~ */
  IF ~~ THEN DO ~AddexperienceParty(10000)~ EXTERN ~P_MATUT~ 31
END

IF ~~ THEN BEGIN 29 // from:
  SAY @3040 /* ~�Finalmente! Mi preciada armadura vuelve conmigo... gracias, amigos. Gracias a ti tambi�n, <CHARNAME>.~ */
  IF ~~ THEN REPLY @3041 /* ~Me alegra que hayamos podido ayudar.~ */ EXTERN ~P_MATUT~ 33
  IF ~~ THEN REPLY @3042 /* ~*ejem* Digamos que nada es gratis en esta vida, caballeros. Espero que este esfuerzo valga, al menos, una recompensa.~ */ EXTERN ~P_MATUT~ 33
  IF ~~ THEN REPLY @3043 /* ~No hay problema... s�lo, trata de no perder de vista al renacuajo de nuevo, Mathyus, �de acuerdo?~ */ EXTERN ~P_MATUT~ 33
END

IF ~~ THEN BEGIN 30 // from:
  SAY @3044 /* ~Ermm... un peque�o detalle que olvid� mencionar. Perd�n.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 39
END

IF ~~ THEN BEGIN 31 // from:
  SAY @3045 /* ~(Hmmm... no estoy seguro de que as� sea el dicho)~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 42
END

IF ~~ THEN BEGIN 32 // from:
  SAY @3047 /* ~Te lo agradezco, amigo m�o.~ */
    IF ~~ THEN REPLY @3048 /* ~�Una b�squeda? Dusk, �a qu� se refiere?~ */ GOTO 33
END

IF ~~ THEN BEGIN 33 // from:
  SAY @3049 /* ~Ah, <CHARNAME>. No te preocupes... a su debido tiempo lo sabr�s. No es nada que no podamos manejar.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 49
END

IF ~Global("P_DuskMatMission1Failed","GLOBAL",0)
Global("P_Dusk_T2","GLOBAL",0)
Global("P_Dusk_Mathyus_Enc","LOCALS",1)~ THEN BEGIN 34 // from:
  SAY @3038 /* ~A decir verdad, Mathyus, es todo m�rito de <CHARNAME>. Ha sabido manejar el asunto sin tapujos. Michelson no es alguien f�cil de lidiar.~ */
  IF ~~ THEN DO ~AddexperienceParty(15000)~ EXTERN ~P_MATUT~ 31
END

IF ~~ THEN BEGIN 35 // from:
  SAY @3050 /* ~Erhm... est� bien, Mathyus. �Michelson! Te encargo mi arma. Conf�o en ustedes.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 21
END

IF ~~ THEN BEGIN 36 // from:
  SAY @3051 /* ~Vaya... el poder que irradia... es incre�ble...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 60
END

IF ~~ THEN BEGIN 37 // from:
  SAY @3052 /* ~De acuerdo... aqu� tienes... (Rayos, me siento desnudo)~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 66
END

IF ~~ THEN BEGIN 38 // from:
  SAY @3053 /* ~Es mucho m�s pesada... pero su artesan�a es magn�fica...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 68
END


IF ~~ THEN BEGIN 39 // from:
  SAY @3055 /* ~Vaya... el esfuerzo finalmente ha valido la pena.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 104
END

IF ~~ THEN BEGIN 40 // from:
  SAY @3056 /* ~��Qu�?! Rayos, <CHARNAME>, �qu� has hecho con mi bast�n? (eso me pasa por confiarte mis cosas). Ser� mejor que lo busquemos y volvamos. La Vengadora Real es algo que vale la pena tener, cr�eme.~ */
  IF ~~ THEN DO ~SetGlobal ("p_staff_lost", "GLOBAL", 1)~ EXTERN ~P_MATUT~ 52
END

IF ~~ THEN BEGIN 41 // from:
  SAY @3057 /* ~Gracias por ayudarme a recuperarlo, <CHARNAME>. As�, ambos nos evitamos el inc�modo momento en que te pateo el trasero por haberlo perdido en primer lugar. *sonr�e*~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MATUT~ 105
END

IF ~~ THEN BEGIN 42 // from:
  SAY @3058 /* ~El bast�n shilmista me ha acompa�ado desde un principio... pero la Vengadora Real nos servir� mejor para nuestro prop�sito... As� que s�... acepto el cambio.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 106
END

IF ~~ THEN BEGIN 43 // from:
  SAY @3059 /* ~*suspiro* Un trato es un trato, mi peque�o amigo. Aqu� tienes mi preciado bast�n shilmista.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 48
END

IF ~~ THEN BEGIN 44 // from:
  SAY @3054 /* ~Reunir el equipo del Duque no ha sido f�cil, Mathyus y Michelson...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 101
END

IF ~~ THEN BEGIN 45 // from:
  SAY @3058 /* ~El bast�n shilmista me ha acompa�ado desde un principio... pero la Vengadora Real nos servir� mejor para nuestro prop�sito... As� que s�... acepto el cambio.~ */
  IF ~~ THEN DO ~SetGlobal ("p_staff_lost", "GLOBAL", 2)~ EXTERN ~P_MATUT~ 106
END


// Primer encuentro con Demolidor

IF ~~ THEN BEGIN 46 // from:
  SAY @3060 /* ~��Demoli?! �Qu� diantes haces aqu�?~ */
    IF ~~ THEN REPLY @3061 /* ~Dusk, �conoces a este saco de pulgas?~ */ GOTO 47
    IF ~~ THEN REPLY @3062 /* ~�Pero qu� perrito m�s tierno! �Lo conoces, Dusk? �C�mo se llama?~ */ GOTO 47
    IF ~~ THEN REPLY @3063 /* ~Genial, un perro callejero... imagino que no lo iremos a adoptar, �eh? Esto no es un refugio animal, muchacho.~ */ GOTO 47
END

IF ~~ THEN BEGIN 47
  SAY @3064 /* ~<CHARNAME>, �ste es Demolidor. No es un perro cualquiera, como aparenta. Es el compa�ero animal de Mathyus.~ */
    IF ~~ THEN REPLY @3065 /* ~�Demolidor? No me parece tan demoledor a mi parecer.~ */ EXTERN ~P_DEMOLE~ 3
    IF ~~ THEN REPLY @3066 /* ~�Es de Mathyus? No s� por qu� no me sorprende.~ */ EXTERN ~P_DEMOLE~ 3
END

IF ~~ THEN BEGIN 48
  SAY @3067 /* ~�Qu� es lo que traes aqu�, Demoli? D�jame ver esta nota...~ */
  IF ~~ THEN GOTO 49
END

IF ~~ THEN BEGIN 49
  SAY @3068 /* ~"Querido Dusk, hemos encontrado una pista sobre los ataques a tu destacamento. Ser� mejor que vengas cuanto antes.
  Atentamente, 
  Mathyus, el poderoso elfo guardi�n de Shilmista."~ */
  IF ~~ THEN GOTO 50
END

IF ~~ THEN BEGIN 50 // from:
  SAY @3069 /* ~<CHARNAME>, deber�amos ir cuanto antes al Distrito del Puerto a ver a Mathyus.~ */
    IF ~~ THEN REPLY @3070 /* ~�Debe ser inmediato, Dusk? Tenemos cosas pendientes por hacer.~ */ GOTO 51
    IF ~~ THEN REPLY @3071 /* ~�Qu� sucede, Dusk? Espero que no sea algo grave.~ */ GOTO 52
    IF ~~ THEN REPLY @3072 /* ~De acuerdo, iremos de inmediato.~ */ GOTO 53
END

IF ~~ THEN BEGIN 51
  SAY @3073 /* ~Hagamos lo que tengamos que hacer, <CHARNAME>, y luego, acomp��ame. Necesitar� de tu ayuda, seguramente.~ */
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 52
  SAY @3074 /* ~No estoy seguro, amigo m�o. Pero lo sabremos en cuanto vayamos.~ ~No estoy seguro, amiga m�a. Pero lo sabremos en cuanto vayamos.~*/
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 53
  SAY @3075 /* ~Gracias, <CHARNAME>.~*/
  IF ~~ THEN GOTO 54
END

IF ~~ THEN BEGIN 54 // from:
  SAY @3076 /* ~Demolidor, corre y dile a tu maestro que nos espere, �de acuerdo?~ */
  IF ~~ THEN EXTERN ~P_DEMOLE~ 4
END

IF ~Global ("P_Dusk_1stTDemoli","GLOBAL",2) 
    ~ THEN BEGIN 55 // from:
  SAY @3077 /* ~Pero, �qu�...?~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_1stTDemoli","GLOBAL",3)~ EXTERN ~P_DEMOLE~ 0
END

// MISION 2 

IF ~~ THEN BEGIN 56 // from:
  SAY @3078 /* ~Mathyus, �finalmente has podido encontrarlos?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 109
END

IF ~~ THEN BEGIN 57 // from:
  SAY @3079 /* ~Excelente, Mathyus... excelente...~ */
    IF ~~ THEN REPLY @3080 /* ~Dusk, creo que es hora de que nos digas de qu� va todo esto.~ */ GOTO 58
    IF ~~ THEN REPLY @3081 /* ~Esto est� relacionado con tu antiguo grupo de soldados, �verdad?~ */ GOTO 58
END

IF ~~ THEN BEGIN 58 // from:
  SAY @3082 /* ~<CHARNAME>, lamento haberte tenido en las sombras respecto a este asunto.~ */
  IF ~~ THEN GOTO 59
END

IF ~~ THEN BEGIN 59 // from:
  SAY @3083 /* ~Cuando arribamos a estas tierras, por el norte, mi destacamento y yo fuimos atacados por oleadas de orcos y trolls de las colinas. Esto debo hab�rtelo mencionado, �no es as�?~ */
  IF ~~ THEN GOTO 60
END

IF ~~ THEN BEGIN 60 // from:
  SAY @3084 /* ~Todos... todos mis compa�eros fueron abatidos en combate por estas horribles criaturas...~ */
  IF ~~ THEN GOTO 61
END

IF ~~ THEN BEGIN 61 // from:
  SAY @3085 /* ~Una vez que mis heridas fueron curadas en Shilmista, volv� a buscar sus cuerpos y darles un apropiado entierro.~ */
  IF ~~ THEN GOTO 62
END

IF ~~ THEN BEGIN 62 // from:
  SAY @3086 /* ~Mientras encontraba los... los restos que pod�a, en mi interior no pod�a evitar preguntarme...~ */
  IF ~~ THEN GOTO 63
END

IF ~~ THEN BEGIN 63 // from:
  SAY @3087 /* ~�Qu� tal si estos ataques no fueron al azar? �Qu� tal si fueron orquestados por una fuerza oscura que no puedo vislumbrar?~ */
    IF ~~ THEN REPLY @3088 /* ~�De verdad crees que los orcos son capaces de tales planes, Dusk? Les das demasiado cr�dito a mi parecer.~ */ GOTO 64
    IF ~~ THEN REPLY @3089 /* ~�Crees que esto puede haber sido originado por alguien m�s all� de los orcos?~ */ GOTO 64
END

IF ~~ THEN BEGIN 64 // from:
  SAY @3090 /* ~Si me lo hubieses preguntado en ese entonces, no habr�a estado tan seguro. Pero ahora...~ */
  IF ~~ THEN GOTO 65
END

IF ~~ THEN BEGIN 65 // from:
  SAY @3091 /* ~Durante mi entrenamiento para ser un Asesino de Magos, pude vislumbrar un escudo con el emblema del Drag�n P�rpura. El mismo estaba roto... partido por un feroz combate.~ */
  IF ~~ THEN GOTO 66
END

IF ~~ THEN BEGIN 66 // from:
  SAY @3092 /* ~Esa imagen qued� en mi mente, hasta que pude venir aqu� y coment�rselo a Mathyus.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 110
END

IF ~~ THEN BEGIN 67 // from:
  SAY @3093 /* ~�Estoy seguro de que son ellos, <CHARNAME>!~ */
  IF ~~ THEN GOTO 68
END

IF ~~ THEN BEGIN 68 // from:
  SAY @3094 /* ~Lo vi claramente, hace mucho tiempo, en mi mente... humanoides portando artefactos de Cormyr, como si de un trofeo se tratase.~ */
  IF ~~ THEN GOTO 69
END

IF ~~ THEN BEGIN 69 // from:
  SAY @3095 /* ~No ha pasado mucho tiempo desde que encomend� esta b�squeda a Mathyus... eso quiere decir que se encuentran relativamente cerca de Athkatla, <CHARNAME>.~ */
  IF ~~ THEN GOTO 70
END

IF ~~ THEN BEGIN 70 // from:
  SAY @3096 /* ~Lo que tenemos que hacer est� claro: debemos dar caza a estas criaturas. Dar� justicia a mis compa�eros ca�dos.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 112
END

IF ~~ THEN BEGIN 71 // from:
  SAY @3097 /* ~Mathyus, ya hemos hablado al respecto. Ahora, como me has prometido... dadme la ubicaci�n de este grupo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 113
END

IF ~~ THEN BEGIN 72 // from:
  SAY @3097 /* ~Mathyus, ya hemos hablado al respecto. Ahora, como me has prometido... dadme la ubicaci�n de este grupo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 113
END

IF ~~ THEN BEGIN 73 // from:
  SAY @3099 /* ~Gracias, Mathyus... de verdad.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 115
END

IF ~~ THEN BEGIN 74 // from:
  SAY @3100 /* ~No te preocupes, amigo. <CHARNAME> viaja conmigo... y cuento con su consejo en momentos dif�ciles.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 116
END

IF ~~ THEN BEGIN 75 // from:
  SAY @3101 /* ~De acuerdo, Mathyus. Ten por seguro que volveremos... victoriosos.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission2","GLOBAL",3)~ UNSOLVED_JOURNAL @210007 EXIT
END

IF ~Global ("P_DuskMatMission2","GLOBAL",4) Global ("P_DuskMatMission3","GLOBAL",0)~ THEN BEGIN 76
SAY @3102 /* Finalmente... �Les hemos encontrado! El escudo p�rpura... ten�a raz�n, <CHARNAME>... ellos lo tienen... */
IF ~~ THEN DO ~SetGlobal ("P_DuskMatMission2","GLOBAL",5)~ EXTERN ~P_FALON~ 2
END

IF ~~ THEN BEGIN 77 // from:
  SAY @3103/* ~Tienes raz�n, <CHARNAME>. Esc�chame bien, criatura... Tu maldad llega hasta aqu�. �Por Cormyr, los condeno a muerte!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskMatMission2","GLOBAL",7)~ EXTERN ~P_FALON~ 3
END

IF ~~ THEN BEGIN 78 // from:
  SAY @3106/* ~�Escuchar? �Son orcos! Lo �nico que deben escuchar es el sonido met�lido de mi espada mientras atraviesa su oscuro coraz�n...~ */
    IF ~~ THEN REPLY @3107 /* ~No me parec�as del tipo de hombre que se entrega a la furia tan f�cilmente, Dusk. Por favor, esc�chame... y esc�chalos.~ */ GOTO 79
    IF ~~ THEN REPLY @3108 /* ~Est�s en lo cierto, Dusk... El mal, siempre ser� el mal... �Ataquemos!~ */ GOTO 77
END

IF ~~ THEN BEGIN 79 // from:
  SAY @3109/* ~(Rayos...) Est� bien, <CHARNAME>... seguir� tu consejo. �Criatura! Mi amigo me ha convencido de escucharte... as� que... tienes nuestra atenci�n.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 4
END

IF ~~ THEN BEGIN 80 // from:
  SAY @3112/* ~Ah... Sothillis... el ogro mago que ha creado su propio imperio... Ha logrado juntar una cantidad considerable de humanoides que s�lo buscan quedarse con la tierra de los humanos aqu�, en Amn. �Por qu� habr�a de pensar que ustedes son diferentes a ellos?~ */
  IF ~~ THEN EXTERN ~P_FALON~ 5
END

IF ~~ THEN BEGIN 81 // from:
  SAY @3113/* ~Lo que cuentan suena muy bello... pero hay algo que no encaja en su historia...~ */
  IF ~~ THEN GOTO 82
END

IF ~~ THEN BEGIN 82 // from:
  SAY @3114/* ~Me refiero al escudo roto que llevan consigo. �Pertenece a la Orden de los Dragones P�rpuras de Cormyr! Exijo una respuesta, �ahora!~ */
  IF ~~ THEN EXTERN ~P_FALON~ 7
END

IF ~~ THEN BEGIN 83 // from:
  SAY @3115/* ~�Pretendes que me crea eso, Falon? �Debo creer que el escudo apareci� de la nada en tu campamento?~ */
  IF ~~ THEN EXTERN ~P_FALON~ 9
END

IF ~~ THEN BEGIN 84 // from:
  SAY @3116/* ~*suspiro* Odio admitirlo... pero el ettin tiene raz�n... Necesito consejos...~ */
  IF ~~ THEN GOTO 85
END

IF ~~ THEN BEGIN 85 // from:
  SAY @3117/* ~<CHARNAME>, lamento poner el peso de la decisi�n final en ti... pero mi coraz�n no permite a mi mente decidir claramente sobre el asunto. �Qu� piensas al respecto?~ */
    IF ~~ THEN REPLY @3133 /* ~Dusk, creo que estos humanoides no son responsables por tu ataque...~ */ GOTO 86
    IF ~~ THEN REPLY @3134 /* ~Dusk, creo que estos humanoides merecen morir por lo que son: miembros del imperio de Sothillis.~ */ GOTO 77
    IF ~~ THEN REPLY @3135 /* ~Dusk, creo que debemos indagar m�s sobre este asunto. En especial, acerca del escudo roto de Cormyr.~ */ GOTO 87
    IF ~~ THEN REPLY @3136 /* ~Dusk, creo que nos est�n tendiendo una trampa. Debemos atacar antes de que sea demasiado tarde.~ */ GOTO 77
END

IF ~~ THEN BEGIN 86 // from:
  SAY @3137/* ~Puede que est�s en lo cierto... pero siento que debemos indagar m�s...~ */
  IF ~~ THEN GOTO 87
END

IF ~~ THEN BEGIN 87 // from:
  SAY @3138/* ~El asunto del escudo, Falon... me tiene desconcertado... Dime, �de d�nde vienen?~ */
  IF ~~ THEN EXTERN ~P_FALON~ 10
END

IF ~~ THEN BEGIN 88 // from:
  SAY @3139/* ~Entiendo... ahora... sobre el escudo...~ */
  IF ~~ THEN EXTERN ~P_FALON~ 11
END

IF ~~ THEN BEGIN 89 // from:
  SAY @3140/* ~�Energ�a negativa? Puede que el escudo... despu�s de todo... haya sido plantado.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 13
END

IF ~~ THEN BEGIN 90 // from:
  SAY @3141/* ~No importa, Falon. Gracias a <CHARNAME>, hemos podido averiguar bastante del asunto.~ */
  IF ~~ THEN GOTO 91
END

IF ~~ THEN BEGIN 91 // from:
  SAY @3142/* ~Por cierto, puedes dejar de llamarme 'humano'. Mi nombre es Ardusk Aldant. Pueden llamarme Dusk.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 14
END

IF ~~ THEN BEGIN 92 // from:
  SAY @3143/* ~Me gustar�a pedirles un �ltimo favor.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 15
END

IF ~~ THEN BEGIN 93 // from:
  SAY @3144/* ~El escudo de Cormyr... m�s all� de que est� roto, pertenece a mi gente. Me gustar�a que me lo entregues.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 16
END

IF ~~ THEN BEGIN 94 // from:
  SAY @3145/* ~Te lo agradezco... �hay algo que pueda hacer por ustedes? Consid�renlo como una forma de disculpa por mi presentaci�n un tanto... agresiva hacia ustedes.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 17
END

IF ~~ THEN BEGIN 95 // from:
  SAY @3146/* ~El hecho de que sean desertores de Sothillis les complicar�a la situaci�n, �verdad? Entiendo...~ */
  IF ~~ THEN GOTO 96
END

IF ~~ THEN BEGIN 96 // from:
  SAY @3147/* ~Creo que podemos solucionar ese inconveniente. Si intervengo por ustedes en la Noble Orden del Radiante Coraz�n, quiz�s podamos hacer algo al respecto.~ */
  IF ~~ THEN EXTERN ~P_FALON~ 18
END

IF ~~ THEN BEGIN 97 // from:
  SAY @3148/* ~Ustedes mantengan el perfil bajo y esp�renme aqu�. <CHARNAME>, deber�amos ir a la Noble Orden del Radiante Coraz�n a hablar con Sir Ryan Espinel. Estoy seguro de que �l podr� ayudarnos.~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",1)~ UNSOLVED_JOURNAL @210009 EXIT 
END

// PARA CAMINO GOOD_DUSK
//Global("Kayl1Done","GLOBAL",1) KAYL2.d
// Sigue en 198

IF ~Global ("P_DuskEvil","GLOBAL",2)~ THEN BEGIN 98 // from:
  SAY @3149 /* ~Por Cormyr, �qui�n rayos eres t�?~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskEvil","GLOBAL",3)~ EXTERN ~p_sornhi~ 0
END

IF ~~ THEN BEGIN 99 // from:
  SAY @3150 /* ~�Qu�...? �Mago, expl�cate! �Qui�n eres... y c�mo es que me conoces?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 1
END

IF ~~ THEN BEGIN 100 // from:
  SAY @3151 /* ~Oh... rayos... <CHARNAME>... creo que este hechicero... es quien plant� el escudo en la tribu de estos humanoides...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 2
END

IF ~~ THEN BEGIN 101 // from:
  SAY @3152 /* ~No... yo...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 4
END

IF ~~ THEN BEGIN 102 // from:
  SAY @3153 /* ~Bastardo... �por qu�? �Por qu� lo has hecho? �Por qu� quer�as que masacrara a estos inocentes...?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 5
END

IF ~~ THEN BEGIN 103 // from:
  SAY @3154 /* ~Das m�s vueltas que un gato con su presa, mago. �Exijo una explicaci�n!~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 7
END

IF ~~ THEN BEGIN 104 // from:
  SAY @3155 /* ~�Maestro? �De qu� demonios est�s hablando?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 8
END

IF ~~ THEN BEGIN 105 // from:
  SAY @3156 /* ~Maldito...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 11
END

IF ~~ THEN BEGIN 106 // from:
  SAY @3157 /* ~Desgraciado... Si te les acercas, yo...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 24
END

IF ~~ THEN BEGIN 107 // from:
  SAY @3158 /* ~*susurro* �Qu�...?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 26
END

IF ~Global ("P_DuskEvil","GLOBAL",4)~ THEN BEGIN 108 // from:
  SAY @3159 /* ~...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskEvil","GLOBAL",5)~ GOTO 109
END

IF ~~ THEN BEGIN 109 // from:
  SAY @3160 /* ~<CHARNAME>... lo lamento...~ */
    IF ~~ THEN REPLY @3161 /* ~Y tienes raz�n, Dusk. Tus asuntos han hecho que un grupo de psic�patas descubran mi identidad.~ */ GOTO 110
    IF ~~ THEN REPLY @3162 /* ~Pierde el cuidado, Dusk. Tampoco es que sea un secreto tan bien guardado a estas alturas.~ */ GOTO 110
END

IF ~~ THEN BEGIN 110 // from:
  SAY @3163 /* ~Intentar� compens�rtelo... con mi vida si es posible...~ */
  IF ~~ THEN GOTO 111
END

IF ~~ THEN BEGIN 111 // from:
  SAY @3164 /* ~Sin embargo... no puedes comprender el odio que invade mi coraz�n...~ */
  IF ~~ THEN GOTO 112
END

IF ~~ THEN BEGIN 112 // from:
  SAY @3165 /* ~Siento... siento una ira que apenas puedo contener...~ */
  IF ~~ THEN GOTO 113
END

IF ~~ THEN BEGIN 113 // from:
  SAY @3166 /* ~No s�lo he matado a las criaturas equivocadas... sino que expuse a mis seres queridos...~ */
  IF ~~ THEN GOTO 114
END

IF ~~ THEN BEGIN 114 // from:
  SAY @3167 /* ~Creo... creo que el camino que he intentado seguir hasta ahora no ha funcionado... muchas veces... muchas veces intent� actuar de manera recta... creyendo... creyendo que eso siempre llevar�a a buen puerto...~ */
  IF ~~ THEN GOTO 115
END

IF ~~ THEN BEGIN 115 // from:
  SAY @3168 /* ~Pero sigo tomando las decisiones equivocadas... una y otra vez... y siempre pongo en peligro a los que me rodean...~ */
  IF ~~ THEN GOTO 116
END

IF ~~ THEN BEGIN 116 // from:
  SAY @3169 /* ~Eso se acab�, <CHARNAME>... He sentido que me he contenido toda mi vida... y el camino de la violencia es el que he elegido, desde un principio.~ */
  IF ~~ THEN GOTO 117
END

IF ~~ THEN BEGIN 117 // from:
  SAY @3170 /* ~Entonces... creo que esa es la respuesta... El camino que elijo ahora debe ser el correcto, �no es as�?~ */
  IF ~~ THEN GOTO 118
END

IF ~~ THEN BEGIN 118 // from:
  SAY @3171 /* ~Gracias, <CHARNAME>... has abierto mis ojos... y por ello, te lo agradezco.~ */
  IF ~~ THEN GOTO 119
END

IF ~~ THEN BEGIN 119 // from:
  SAY @3172 /* ~Cuentas con mi lealtad, hasta el final de mis d�as. Te seguir� hasta que uno de los dos sea alcanzado por los brazos de la muerte.~ */
  IF ~~ THEN GOTO 120
END

IF ~~ THEN BEGIN 120 // from:
  SAY @3173 /* ~Vamos... ya hemos tenido suficiente con lo que ha pasado hoy... Vayamos con Mathyus y expliquemos lo que aqu� ha acontecido. Quiz�s sepan qu� hacer con este maldito orbe...~ */
IF ~~ THEN DO ~SetGlobal ("P_DuskEvil","GLOBAL",5)~ UNSOLVED_JOURNAL @210010 EXIT 
END


/////////////////////////////////////////////////////////////

// Global("Kayl1Done","GLOBAL",1)
// Global ("P_DuskGood","GLOBAL",1)

IF ~Global("Kayl1Done","GLOBAL",0) Global ("P_DuskGood","GLOBAL",1) 
Global ("P_DuskEvil","GLOBAL",0) 
Global ("P_Dusk_KAYL1NOTDONE","GLOBAL",0)~ THEN BEGIN 121 // from:
  SAY @3174 /* ~Sir Ryan Espinel, en nombre de Cormyr, es un placer saludarte.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_KAYL1NOTDONE","GLOBAL",1)~ EXTERN  ~KAYL2~ p_1
END

IF ~~ THEN BEGIN 122 // from:
  SAY @3175 /* ~Con nuestro grupo hemos podido localizar a un grupo de humanoides renegados del imperio Sothillis. Su cacique busca vivir en paz, lejos de la guerra que su antiguo jefe ha provocado.~ */
  IF ~~ THEN EXTERN ~KAYL2~ p_2
END

IF ~~ THEN BEGIN 123 // from:
  SAY @3176 /* ~Pues... luego de dialogar con ellos, he prometido buscarles un hogar, aqu� en Amn. S� que pido demasiado, pero creo que he ayudado en el pasado a la ciudad como me ha sido posible. Lo �nico que busco, es una oportunidad...~ */
  IF ~~ THEN EXTERN ~KAYL2~ p_3
END

IF ~~ THEN BEGIN 124 // from:
  SAY @3177 /* ~No se trata de un grupo violento, ni siquiera numeroso, mi se�or. Si estuvieran bajo la protecci�n de la Orden, creo que ser�an �tiles en la guerra que se est� llevando a cabo contra el imperio de Sothillis.~ */
  IF ~~ THEN GOTO 125
END

IF ~~ THEN BEGIN 125 // from:
  SAY @3178 /* ~Creo que podr�an brindar informaci�n vital acerca del ej�rcito del ogro, mi se�or. Incluso, puede que luchen a su lado si as� se lo piden. Siempre y cuando se les prometa un hogar aqu�, en Amn.~ */
  IF ~~ THEN EXTERN ~KAYL2~ p_4
END

IF ~~ THEN BEGIN 126 // from:
  SAY @3179 /* ~Gracias, Sir Ryan. Estoy seguro de que <CHARNAME> estar� a la altura de lo que requieras de �l.~ ~Gracias, Sir Ryan. Estoy seguro de que <CHARNAME> estar� a la altura de lo que requieras de ella.~ */
  IF ~~ THEN DO ~~  UNSOLVED_JOURNAL @210011 EXIT 
END

IF ~Global("Kayl1Done","GLOBAL",1) Global ("P_DuskGood","GLOBAL",1) 
Global ("P_Dusk_KAYL1NOTDONE","GLOBAL",1)~ THEN BEGIN 127 // from:
  SAY @3180 /* ~Sir Ryan, ahora que se ha resuelto el asunto de los paladines ca�dos...~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_KAYL1NOTDONE","GLOBAL",2) 
  SetGlobal ("P_DuskMatMission2","GLOBAL",6)~ EXTERN  ~KAYL2~ p_8
END

IF ~~ THEN BEGIN 128 // from:
  SAY @3181 /* ~�Formidables noticias! <CHARNAME>, volvamos a las Colinas Ventolanza y demos las buenas noticias a Falon y su tribu.~ */
  IF ~~ THEN DO ~~  UNSOLVED_JOURNAL @210012 EXIT 
END

// Kayl1Done 1
IF ~Global("Kayl1Done","GLOBAL",1) Global ("P_DuskGood","GLOBAL",1) 
Global ("P_DuskEvil","GLOBAL",0) Global ("P_Dusk_KAYL1NOTDONE","GLOBAL",0)~ THEN BEGIN 129 // from:
  SAY @3174 /* ~Sir Ryan Espinel, en nombre de Cormyr, es un placer saludarte.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_KAYL1NOTDONE","GLOBAL",2) 
  SetGlobal ("P_DuskMatMission2","GLOBAL",6)~ EXTERN  ~KAYL2~ p_10
END

IF ~~ THEN BEGIN 130 // from:
  SAY @3175 /* ~Con nuestro grupo hemos podido localizar a un grupo de humanoides renegados del imperio Sothillis. Su cacique busca vivir en paz, lejos de la guerra que su antiguo jefe ha provocado.~ */
  IF ~~ THEN EXTERN ~KAYL2~ p_11
END

IF ~~ THEN BEGIN 131 // from:
  SAY @3176 /* ~Pues... luego de dialogar con ellos, he prometido buscarles un hogar, aqu� en Amn. S� que pido demasiado, pero creo que he ayudado en el pasado a la ciudad como me ha sido posible. Lo �nico que busco, es una oportunidad...~ */
  IF ~~ THEN EXTERN ~KAYL2~ p_12
END

IF ~~ THEN BEGIN 132 // from:
  SAY @3177 /* ~No se trata de un grupo violento, ni siquiera numeroso, mi se�or. Si estuvieran bajo la protecci�n de la Orden, creo que ser�an �tiles en la guerra que se est� llevando a cabo contra el imperio de Sothillis.~ */
  IF ~~ THEN GOTO 133
END

IF ~~ THEN BEGIN 133 // from:
  SAY @3178 /* ~Creo que podr�an brindar informaci�n vital acerca del ej�rcito del ogro, mi se�or. Incluso, puede que luchen a su lado si as� se lo piden. Siempre y cuando se les prometa un hogar aqu�, en Amn.~ */
  IF ~~ THEN EXTERN ~KAYL2~ p_13
END

IF ~~ THEN BEGIN 134 // from:
  SAY @3191 /* ~�Falon! Buenas noticias: <CHARNAME> y yo hemos logrado convencer a Sir Ryan Espinel para que obtengan un hogar en la Noble Orden del Muy Radiante Coraz�n. Os indicar� a ti y a tu tribu c�mo llegar...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",2) 
  SetGlobal ("P_DuskMatMission2","GLOBAL",7)
  SetGlobal ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ UNSOLVED_JOURNAL @210013 EXTERN  ~P_FALON~ 23
END

IF ~~ THEN BEGIN 135 // from:
  SAY @3192 /* ~Asimismo, creo que me corresponde decir... que creo que deber�n brindar informaci�n sobre Sothillis a los paladines. No creo que haya precedentes de que reciban humanoides de tan buena gana en sus cuarteles.~ */
  IF ~~ THEN GOTO 136
END

IF ~~ THEN BEGIN 136 // from:
  SAY @3193 /* ~No creo que los caballeros sean tiranos. No ser�n obligados a hacer nada que no quieran, puesto a que me han dado su palabra. Caso contrario, no duden en acudir a m�...~ */
  IF ~~ THEN EXTERN  ~P_FALON~ 24
END

IF ~~ THEN BEGIN 137 // from:
  SAY @3182 /* ~Gracias, Ziben. Lo acepto, honrado...~ */
  IF ~~ THEN GOTO 158 //
END

IF ~~ THEN BEGIN 138 // from:
  SAY @3183 /* ~Vamos, <CHARNAME>. Creo que es hora actualizar el estado de la misi�n a Mathyus.~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",2) 
  SetGlobal ("P_DuskMatMission2","GLOBAL",7)
  SetGlobal ("P_DuskFalonObtieneNuevoHogar","GLOBAL",1)~ EXIT 
END

IF ~Global ("P_DuskGood","GLOBAL",2) ~ THEN BEGIN 139 // from:
  SAY @3149 /* ~Por Cormyr, �qui�n rayos eres t�?~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",3) ~ EXTERN ~p_sornhi~ 28
END

IF ~~ THEN BEGIN 140 // from:
  SAY @3150 /* ~�Qu�...? �Mago, expl�cate! �Qui�n eres... y c�mo es que me conoces?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 29
END

IF ~~ THEN BEGIN 141 // from:
  SAY @3184 /* ~Oh... rayos... <CHARNAME>... creo que este hechicero... es quien plant� el escudo en la tribu de Falon...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 30
END

IF ~~ THEN BEGIN 142 // from:
  SAY @3185 /* ~Bastardo... T� has plantado ese escudo en unos humanoides inocentes y �me llamas pat�tico por haber hecho lo correcto?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 32
END

IF ~~ THEN BEGIN 143 // from:
  SAY @3154 /* ~Das m�s vueltas que un gato con su presa, mago. �Exijo una explicaci�n!~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 34
END

IF ~~ THEN BEGIN 144 // from:
  SAY @3155 /* ~�Maestro? �De qu� demonios est�s hablando?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 35
END

IF ~~ THEN BEGIN 145 // from:
  SAY @3156 /* ~Maldito...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 38
END

IF ~~ THEN BEGIN 146 // from:
  SAY @3157 /* ~Desgraciado... Si te les acercas, yo...~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 51
END

IF ~~ THEN BEGIN 147 // from:
  SAY @3158 /* ~*susurro* �Qu�...?~ */
  IF ~~ THEN EXTERN ~p_sornhi~ 53
END

IF ~Global ("P_DuskGood","GLOBAL",4)~ THEN BEGIN 148 // from:
  SAY @3159 /* ~...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",5)~ GOTO 149
END

IF ~~ THEN BEGIN 149 // from:
  SAY @3160 /* ~<CHARNAME>... lo lamento...~ */
    IF ~~ THEN REPLY @3161 /* ~Y tienes raz�n, Dusk. Tus asuntos han hecho que un grupo de psic�patas descubran mi identidad.~ */ GOTO 150
    IF ~~ THEN REPLY @3162 /* ~Pierde el cuidado, Dusk. Tampoco es que sea un secreto tan bien guardado a estas alturas.~ */ GOTO 150
END

IF ~~ THEN BEGIN 150 // from:
  SAY @3163 /* ~Intentar� compens�rtelo... con mi vida si es posible...~ */
  IF ~~ THEN GOTO 151
END

IF ~~ THEN BEGIN 151 // from:
  SAY @3164 /* ~Sin embargo... no puedes comprender el odio que invade mi coraz�n...~ */
  IF ~~ THEN GOTO 152
END

IF ~~ THEN BEGIN 152 // from:
  SAY @3165 /* ~Siento... siento una ira que apenas puedo contener...~ */
  IF ~~ THEN GOTO 153
END

IF ~~ THEN BEGIN 153 // from:
  SAY @3186 /* ~Pero... pero creo que al menos no he cometido el error de atacar a Falon y su tribu.~ */
  IF ~~ THEN GOTO 154
END

IF ~~ THEN BEGIN 154 // from:
  SAY @3187 /* ~Es gracias a ti, <CHARNAME>. Me has salvado de cometer un error imperdonable.~ */
  IF ~~ THEN GOTO 155
END

IF ~~ THEN BEGIN 155 // from:
  SAY @3188 /* ~Esto puede que haya sido eso que llaman una de las encrucijadas de la vida... Creo que lo que nos separa de la maldad, muchas veces, es una simple decisi�n.~ */
  IF ~~ THEN GOTO 156
END

IF ~~ THEN BEGIN 156 // from:
  SAY @3189 /* ~Cuentas con mi lealtad, hasta el final de mis d�as, <CHARNAME>. Te seguir�, sabiendo que hay un halo al final del camino.~ */
  IF ~~ THEN GOTO 157
END

IF ~~ THEN BEGIN 157 // from:
  SAY @3190 /* ~Por lo pronto, volvamos con Mathyus. Puede que mis amigos sepan algo acerca de este orbe maldito...~ */
IF ~~ THEN DO ~SetGlobal ("P_DuskGood","GLOBAL",5)~ UNSOLVED_JOURNAL @210014 EXIT 
END

IF ~~ THEN BEGIN 158 // from:
  SAY @3194 /* ~Estoy seguro de que nuestros caminos volver�n a cruzarse alg�n d�a, amigos. Mientras tanto, les visitar� en el Distrito del Templo cuando pueda.~ */
  IF ~~ THEN GOTO 138
END


//////////////////////////////////////////////////////

// MISSION 2 FINAL - EVIL PATH

IF ~~ THEN BEGIN 159 // from:
  SAY @3195 /* ~Hemos encontrado al grupo de humanoides, Mathyus. La informaci�n brindada por Demolidor era certera.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission2","GLOBAL",8)
  SetGlobal ("P_DuskEvil","GLOBAL",6) ~ EXTERN ~P_DEMOLE~ 7
END

IF ~~ THEN BEGIN 160 // from:
  SAY @3196 /* ~Sin embargo, ellos no eran los responsables del ataque a mi destacamento...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 129
END

IF ~~ THEN BEGIN 161 // from:
  SAY @3197 /* ~As� es... mientras hablamos, su sangre alimenta la tierra de Colinas Ventolanza.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 132
END

IF ~~ THEN BEGIN 162 // from:
  SAY @3198 /* ~Eran desertores del imperio de Sothillis. Merec�an su destino final, Mathyus.~ */
  IF ~~ THEN GOTO 163
END

IF ~~ THEN BEGIN 163 // from:
  SAY @3199 /* ~�Esa raz�n te parece suficiente?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 134
END

IF ~~ THEN BEGIN 164 // from:
  SAY @3200 /* ~Entonces, murieron por ser humanoides, Mathyus. No le des tanta vuelta.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 135
END

IF ~~ THEN BEGIN 165 // from:
  SAY @3201 /* ~Cuando acabamos con los humanoides, un misterioso mago hizo aparici�n.~ */
  IF ~~ THEN GOTO 166
END

IF ~~ THEN BEGIN 166 // from:
  SAY @3202 /* ~Se hac�a llamar Sornhil. Fue el responsable de plantar el escudo cormyreano en el campamento de los humanoides.~ */
  IF ~~ THEN GOTO 167
END

IF ~~ THEN BEGIN 167 // from:
  SAY @3203 /* ~Pero lo supe una vez que acab� con ellos.~ */
  IF ~~ THEN GOTO 168
END

IF ~~ THEN BEGIN 168 // from:
  SAY @3204 /* ~Luego de una breve... charla, me entreg� este orbe.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 53
END

IF ~~ THEN BEGIN 169 // from:
  SAY @3205 /* ~Entiendo... y, �qu� debo hacer para liberar su poder?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 140
END

IF ~~ THEN BEGIN 170 // from:
  SAY @3206 /* ~Ya veo... Si ustedes logran extirpar esa maldad, los poderes del mismo se ver�an diezmados, �no es as�?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 142
END

IF ~~ THEN BEGIN 171 // from:
  SAY @3207 /* ~En definitiva, nadie est� seguro de qu� es lo que pueda pasar si lo uso...~ */
  IF ~~ THEN GOTO 172
END

IF ~~ THEN BEGIN 172 // from:
  SAY @3208 /* ~Pero... si Sornhil y su orden son lo que creo que son... no puedo darme el lujo de desperdiciar tal poder.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 145
END

IF ~~ THEN BEGIN 173 // from:
  SAY @3209 /* ~Voy a usarlo, Mathyus. Necesito saber c�mo se activa.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 146
END

IF ~~ THEN BEGIN 174 // from:
  SAY @3210 /* ~�Callaos los dos! He tomado mi decisi�n y no hay vuelta atr�s. Mathyus, s�lo lo preguntar� una vez. �C�mo se activa el orbe?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 147
END

IF ~~ THEN BEGIN 175 // from:
  SAY @3211 /* ~Bien. Aqu� est�...~ */
  IF ~~ THEN GOTO 176
END

IF ~~ THEN BEGIN 176 // from:
  SAY @3159 /* ~...~ */
    IF ~~ THEN REPLY @3212 /* ~�Hola? �Dusk! Deja de tontear y h�blamos.~ */  EXTERN ~P_MATUT~ 148
    IF ~~ THEN REPLY @3213 /* ~�Dusk? Mathyus, �qu� est� pasando? El orbe ha comenzado a brillar.~ */  EXTERN ~P_MATUT~ 148
END

IF ~~ THEN BEGIN 177 // from:
  SAY @3214 /* ~He visto lo que me ofreces... y lo acepto. Ahora... �dame tu poder!~ */
  IF ~~ THEN DO ~SetGlobal ("P_EVIL_ORB","GLOBAL",1) DestroyItem("p_orbe1")~ EXIT 
END

IF ~Global ("P_EVIL_ORB","GLOBAL",2)~ THEN BEGIN 178 // from:
  SAY @3215 /* ~Ha terminado...~ */
  IF ~~ THEN DO ~SetGlobal ("P_EVIL_ORB","GLOBAL",3) CreateItem ("p_swevi1",1,1,0) SetGlobal ("P_DUSK_IS_EVIL","GLOBAL",1)~ GOTO 179
END

IF ~~ THEN BEGIN 179 // from:
  SAY @3216 /* ~�Qu� mir�is?~ */
    IF ~~ THEN REPLY @3217 /* ~�Dusk? Por Candelero, te ves sumamente diferente.~ */  GOTO 180
    IF ~~ THEN REPLY @3218 /* ~Dusk, �est�s bien? Has... cambiado.~ */  GOTO 180
END

IF ~~ THEN BEGIN 180 // from:
  SAY @3219 /* ~Nunca antes me sent� tan vivo...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 149
END

IF ~~ THEN BEGIN 181 // from:
  SAY @3220 /* ~Mathyus... a�n tienes la misi�n de encontrar a los verdaderos culpables del ataque a mi destacamente, �entendido?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 150
END

IF ~~ THEN BEGIN 182 // from:
  SAY @3221 /* ~Y esta vez... no tolerar� fallos. �Me has comprendido?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 151
END

IF ~~ THEN BEGIN 183 // from:
  SAY @3222 /* ~Excelente...~ */
  IF ~~ THEN GOTO 184
END

IF ~~ THEN BEGIN 184 // from:
  SAY @3223 /* ~<CHARNAME>, ser� mejor que continuemos con nuestros asuntos... Cuando llegue el momento, solicitar� tus servicios para dar caza a unos orcos.~ */
    IF ~~ THEN REPLY @3224 /* ~Vaya, no te hac�a tan exigente. De acuerdo.~ */  GOTO 185
    IF ~~ THEN REPLY @3225 /* ~�Qui�n te crees que eres, muchacho? Har� lo que me plazca cuando se me plazca.~ */  GOTO 186
END

IF ~~ THEN BEGIN 185 // from:
  SAY @3226 /* ~As� me gusta...~ */
  IF ~~ THEN DO ~SetGlobal ("P_EVIL_ORB","GLOBAL",3) SetGlobal("P_DuskMatMission2","GLOBAL",8) SetGlobal ("P_DUSK_IS_EVIL","GLOBAL",1) EraseJournalEntry (@210006) EraseJournalEntry (@210007) EraseJournalEntry (@210008) EraseJournalEntry (@210009) EraseJournalEntry (@210010) EraseJournalEntry (@210011) EraseJournalEntry (@210012) EraseJournalEntry (@210013) EraseJournalEntry (@210014)~ SOLVED_JOURNAL @210015 EXIT
  END

IF ~~ THEN BEGIN 186 // from:
  SAY @3227 /* ~Bien, <CHARNAME>... mant�n esa furia asesina... estoy seguro de que nos ser� �til en un futuro no muy lejano...~ */
  IF ~~ THEN DO ~SetGlobal ("P_EVIL_ORB","GLOBAL",3) SetGlobal("P_DuskMatMission2","GLOBAL",8) SetGlobal ("P_DUSK_IS_EVIL","GLOBAL",1) EraseJournalEntry (@210006) EraseJournalEntry (@210007) EraseJournalEntry (@210008) EraseJournalEntry (@210009) EraseJournalEntry (@210010) EraseJournalEntry (@210011) EraseJournalEntry (@210012) EraseJournalEntry (@210013) EraseJournalEntry (@210014)~ SOLVED_JOURNAL @210015 EXIT
  END

/////////////////////////////////////////////////////////////////

// MISSION 2 FINAL - GOOD PATH

IF ~~ THEN BEGIN 187 // from:
  SAY @3195 /* ~Hemos encontrado al grupo de humanoides, Mathyus. La informaci�n brindada por Demolidor era certera.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission2","GLOBAL",8) 
  SetGlobal ("P_DuskGood","GLOBAL",6) ~ EXTERN ~P_DEMOLE~ 10
END

IF ~~ THEN BEGIN 188 // from:
  SAY @3196 /* ~Sin embargo, ellos no eran los responsables del ataque a mi destacamento...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 153
END

IF ~~ THEN BEGIN 189 // from:
  SAY @3228 /* ~As� es... El grupo result� ser desertor del imperio Sothillis. Se encontraban huyendo hacia el sur cuando dimos con ellos.~ */
  IF ~~ THEN GOTO 190
END

IF ~~ THEN BEGIN 190 // from:
  SAY @3230 /* ~Luego de una breve conversaci�n, y gracias a la intervenci�n de <CHARNAME>, resolv� que estar�an m�s seguros en Athkatla.~ */
  IF ~~ THEN GOTO 191
END

IF ~~ THEN BEGIN 191 // from:
  SAY @3231 /* ~Acud� a la Noble Orden del Radiante Coraz�n y Sir Ryan Espinel les dio un hogar en sus cuarteles.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 156
END

IF ~~ THEN BEGIN 192 // from:
  SAY @3232 /* ~�Mi destino? No entiendo, �a qu� se refiere?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 159
END

IF ~~ THEN BEGIN 193 // from:
  SAY @3233 /* ~Pues... cre� que al fin podr�a vengar a mis compa�eros ca�dos, Mathyus. Sin embargo, s�lo culmin� en una b�squeda que nos dej� m�s dudas que respuestas.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 166
END

IF ~~ THEN BEGIN 194 // from:
  SAY @3234 /* ~Cuando le dimos un nuevo hogar a los humanoides, un misterioso mago hizo aparici�n.~ */
  IF ~~ THEN GOTO 195
END

IF ~~ THEN BEGIN 195 // from:
  SAY @3235 /* ~Se hac�a llamar Sornhil. Fue el responsable de plantar el escudo cormyreano en el campamento de Falon.~ */
  IF ~~ THEN GOTO 196
END

IF ~~ THEN BEGIN 196 // from:
  SAY @3204 /* ~Luego de una breve... charla, me entreg� este orbe.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 63
END

IF ~~ THEN BEGIN 197 // from:
  SAY @3205 /* ~Entiendo... y, �qu� debo hacer para liberar su poder?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 171
END

IF ~~ THEN BEGIN 198 // from:
  SAY @3206 /* ~Ya veo... Si ustedes logran extirpar esa maldad, los poderes del mismo se ver�an diezmados, �no es as�?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 173
END

IF ~~ THEN BEGIN 199 // from:
  SAY @3207 /* ~En definitiva, nadie est� seguro de qu� es lo que pueda pasar si lo uso...~ */
  IF ~~ THEN GOTO 200
END

IF ~~ THEN BEGIN 200 // from:
  SAY @3208 /* ~Pero... si Sornhil y su orden son lo que creo que son... no puedo darme el lujo de desperdiciar tal poder.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 176
END

IF ~~ THEN BEGIN 201 // from:
  SAY @3236 /* ~Debo usarlo, Mathyus... La Orden a la que pertenece Sornhil... Debo averiguar m�s acerca de ellos. Utilizar el orbe, a pesar del peligro que conlleve, es la �nica opci�n. Aunque...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 177
END

IF ~~ THEN BEGIN 202 // from:
  SAY @3237 /* ~Te escucho, <CHARNAME>. Y aunque aprecio tu consejo... tengo dudas en mi coraz�n. Creo... creo que...~ */
  IF ~~ THEN GOTO 203
END

IF ~~ THEN BEGIN 203 // from:
  SAY @3238 /* ~De hecho, la purificaci�n parece ser una opci�n viable. Michelson es un ser poderoso, capaz de lograr algo as�, �no es as�, Mathyus?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 178
END

IF ~~ THEN BEGIN 204 // from:
  SAY @3239 /* ~Michelson... lo has logrado...~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 69
END

IF ~~ THEN BEGIN 205 // from:
  SAY @3240 /* ~Gracias, amigo m�o. Mathyus, creo que estoy listo para usarlo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 179
END

IF ~~ THEN BEGIN 206 // from:
  SAY @3241 /* ~Bien. Aqu� est�... el orbe purificado...~ */
  IF ~~ THEN GOTO 207
END

IF ~~ THEN BEGIN 207 // from:
  SAY @3159 /* ~...~ */
    IF ~~ THEN REPLY @3212 /* ~�Hola? �Dusk! Deja de tontear y h�blamos.~ */  EXTERN ~P_MATUT~ 181
    IF ~~ THEN REPLY @3213 /* ~�Dusk? Mathyus, �qu� est� pasando? El orbe ha comenzado a brillar.~ */  EXTERN ~P_MATUT~ 181
END

IF ~~ THEN BEGIN 208 // from:
  SAY @3242 /* ~Gracias... por otorgarme esa visi�n...~ */
  IF ~~ THEN DO ~SetGlobal ("P_GOOD_ORB","GLOBAL",1) DestroyItem("p_orbev")~ EXIT 
END

IF ~Global ("P_GOOD_ORB","GLOBAL",2)~ THEN BEGIN 209 // from:
  SAY @3215 /* ~Ha terminado...~ */
  IF ~~ THEN DO ~SetGlobal ("P_GOOD_ORB","GLOBAL",3) CreateItem ("p_swgoo1",1,1,0) SetGlobal ("P_DUSK_IS_GOOD","GLOBAL",1)~ GOTO 210
END

IF ~~ THEN BEGIN 210 // from:
  SAY @3216 /* ~�Qu� mir�is?~ */
    IF ~~ THEN REPLY @3217 /* ~�Dusk? Por Candelero, te ves sumamente diferente.~ */  GOTO 211
    IF ~~ THEN REPLY @3218 /* ~Dusk, �est�s bien? Has... cambiado.~ */  GOTO 211
END

IF ~~ THEN BEGIN 211 // from:
  SAY @3243 /* ~Agradezco la atenci�n, pero hay cosas m�s importantes que atender, �no lo creen?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 182
END

IF ~~ THEN BEGIN 212 // from:
  SAY @3244 /* ~El orbe ha desaparecido, Mathyus. Creo que ha tomado la forma de esta espada esmeralda que ha se�alado Michelson, la cual resplandece en mis manos. He visto tus moviemientos de alegr�a, Demolidor. Gracias por precuparse.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 183
END

IF ~~ THEN BEGIN 213 // from:
  SAY @3245 /* ~Gracias, Mathyus. Sin embargo, no se expongan al peligro. Sornhil y su Orden de Hechiceros parecen ser algo a tratar, pero si no sabemos m�s de ellos, puede que eso no sea una mala se�al.~ */
  IF ~~ THEN GOTO 214
END

IF ~~ THEN BEGIN 214 // from:
  SAY @3246 /* ~La venganza no siempre es la respuesta. Ahora lo s�. <CHARNAME>, es gracias a ti que mi coraz�n est� m�s sosegado.~ */
  IF ~~ THEN GOTO 215
END

IF ~~ THEN BEGIN 215 // from:
  SAY @3247 /* ~Los muertos no desean venganza... asumo que querr�an que aquellos que fueron sus seres amados vivan en paz y armon�a. Hablo por mis compa�eros ca�dos en batalla.~ */
    IF ~~ THEN REPLY @3248 /* ~Una sabia decisi�n, amigo m�o. Vamos, tenemos asuntos que atender.~ */  GOTO 217
    IF ~~ THEN REPLY @3249 /* ~Vaya, Dusk. Est�s totalmente cambiado. Creo que me gusta esta versi�n de ti.~ */  GOTO 217
	IF ~~ THEN REPLY @3250 /* ~No empezar�s a cantar y a bailar como ese leprechaun, �eh?~ */  GOTO 216
END

IF ~~ THEN BEGIN 216 // from:
  SAY @3251 /* ~Muy gracioso, <CHARNAME>. Vamos, continuemos con nuestro viaje.~ ~Muy graciosa, <CHARNAME>. Vamos, continuemos con nuestro viaje.~*/
  IF ~~ THEN DO ~SetGlobal ("P_GOOD_ORB","GLOBAL",3) SetGlobal("P_DuskMatMission2","GLOBAL",8) SetGlobal ("P_DUSK_IS_GOOD","GLOBAL",1) EraseJournalEntry (@210006) EraseJournalEntry (@210007) EraseJournalEntry (@210008) EraseJournalEntry (@210009) EraseJournalEntry (@210010) EraseJournalEntry (@210011) EraseJournalEntry (@210012) EraseJournalEntry (@210013) EraseJournalEntry (@210014)~ SOLVED_JOURNAL @210016 EXIT
  END

IF ~~ THEN BEGIN 217 // from:
  SAY @3252 /* ~Gracias, <CHARNAME>. Vamos, continuemos con nuestro viaje.~ */
  IF ~~ THEN DO ~SetGlobal ("P_GOOD_ORB","GLOBAL",3) SetGlobal("P_DuskMatMission2","GLOBAL",8) SetGlobal ("P_DUSK_IS_GOOD","GLOBAL",1) EraseJournalEntry (@210006) EraseJournalEntry (@210007) EraseJournalEntry (@210008) EraseJournalEntry (@210009) EraseJournalEntry (@210010) EraseJournalEntry (@210011) EraseJournalEntry (@210012) EraseJournalEntry (@210013) EraseJournalEntry (@210014)~ SOLVED_JOURNAL @210016 EXIT
  END

IF ~~ THEN BEGIN 218 // from:
  SAY @3253 /* ~Erm... Gracias, Coco, pero estamos bien. Con <CHARNAME> tenemos algunos asuntos pendientes que atender... (Rayos, me costar� sacarme de encima esta salsa de tomate)~ */
  IF ~~ THEN DO ~~ EXIT 
END


////////////////////////////////////////////////////////////////////


////////// MISSION 3
// DEMOLE
// EVIL
IF ~Global ("P_Dusk_2ndTDemoli","GLOBAL",2)
    Global ("P_DUSK_IS_GOOD","GLOBAL",0) 
    ~ THEN BEGIN 219 // from:
  SAY @3262 /* ~Demolidor... conf�o en que tu interrupci�n s�lo se deba a novedades sobre la misi�n que encomend� a tu maestro.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_2ndTDemoli","GLOBAL",3)~ EXTERN ~p_demole~ 13
END

// GOOD
IF ~Global ("P_Dusk_2ndTDemoli","GLOBAL",2)
	Global ("P_DUSK_IS_GOOD","GLOBAL",1) 
    ~ THEN BEGIN 220 // from:
  SAY @3263 /* ~�Demoli! Me alegra verte. Imagino que te env�a Matyhus. �Hay novedades?~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_2ndTDemoli","GLOBAL",3)~ EXTERN ~p_demole~ 13
END

IF ~~ THEN BEGIN 221 // from:
  SAY @3264 /* ~"�Dusk! Finalmente hemos dado con ellos. O al menos, �l. El jefe orco que ha organizado el ataque a tu destacamento se encuentra muy cerca de Athkatla. Es menester que regreses con <CHARNAME> a nuestra guarida para m�s detalles.
  Atentamente, Mathyus.
  El poderoso elfo shilmista."~ */
  IF ~~ THEN GOTO 222
END


IF ~~ THEN BEGIN 222 // from:
  SAY @3265 /* ~"El jefe orco..."~ */
  IF ~~ THEN GOTO 223
END

IF ~~ THEN BEGIN 223 // from:
  SAY @3266 /* ~Despu�s de tanto tiempo... podr� vengar a mis camaradas ca�dos...~ */
    IF ~~ THEN REPLY @3267 /* ~Es una buena noticia, Dusk. S�lo espero que Mathyus no la haya pifiado esta vez. Te acompa�ar�.~ */  GOTO 224
	IF ~Global("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN REPLY @3268 /* ~No tenemos tiempo para esto, Dusk. Deber� esperar.~ */  GOTO 232
	IF ~Global("P_DUSK_IS_GOOD","GLOBAL",1) ~ THEN REPLY @3268 /* ~No tenemos tiempo para esto, Dusk. Deber� esperar.~ */  GOTO 234
END

IF ~~ THEN BEGIN 224 // from:
  SAY @3269 /* ~Yo espero lo mismo, <CHARNAME>. Pero algo me dice que esta vez... esta vez es �l...~ */
  IF ~~ THEN REPLY @3270 /* ~��l? �De qui�n est�s hablando?~ */  EXTERN ~p_demole~ 14
END

IF ~~ THEN BEGIN 225 // from:
  SAY @3271 /* ~Alabarza, el Mutilador. Al menos, eso se jactaba de gritar mientras combat�amos en las llanuras del Este.~ */
  IF ~~ THEN GOTO 226
END

IF ~~ THEN BEGIN 226 // from:
  SAY @3272 /* ~Se trata de un orco que combat�a con dos poderosas hachas. Logr� acabar con cuatro de los nuestros antes de que pudiera encontrarle en el campo de batalla.~ */
  IF ~~ THEN GOTO 227
END

IF ~~ THEN BEGIN 227 // from:
  SAY @3273 /* ~Uno de sus impactos casi me decapita... por fortuna, mi casco impidi� el golpe mortal, aunque se despedaz� en el proceso.~ */
  IF ~~ THEN GOTO 228
END

IF ~~ THEN BEGIN 228 // from:
  SAY @3274 /* ~Logr� asestar un golpe, aunque no de lleno, en su rostro. Creo que logr� sacarle un ojo... aunque no estoy seguro. Algunos de sus esbirros acudieron en su ayuda en ese momento.~ */
  IF ~~ THEN GOTO 229
END

IF ~~ THEN BEGIN 229 // from:
  SAY @3275 /* ~Grit� con gran fuerza... y desde las sombras apareci� un troll gigante, el cual nos hizo retroceder... Esa fue la �ltima vez que supe de �l.~ */
  IF ~~ THEN GOTO 230
END

IF ~~ THEN BEGIN 230 // from:
  SAY @3276 /* ~<CHARNAME>, estoy seguro de que Mathyus se refiere a Alabarza. Debe haber sobrevivido a sus heridas... y de seguro tiene consigo alg�n emblema de Cormyr.~ */
  IF ~~ THEN GOTO 231
END

IF ~~ THEN BEGIN 231 // from:
  SAY @3277 /* ~Demolidor, vuelve con tu maestro e ind�cale que iremos lo m�s pronto posible.~ */
  IF ~~ THEN EXTERN ~p_demole~ 15
END

IF ~~ THEN BEGIN 232 // from:
  SAY @3278 /* ~<CHARNAME>, si es el enemigo que creo que es, lo m�s probable es que cuente con un tesoro a tener en cuenta.~ */
  IF ~~ THEN GOTO 238
END

IF ~~ THEN BEGIN 233 // from:
  SAY @3283 /* ~Muy bien... no te necesito. Har� las cosas a mi propia manera, como dices. Dudo que nuestros caminos vuelvan a cruzarse...~ */
  IF ~~ THEN DO ~DestroyItem("p_brkshl") DestroyItem("p_stf1") DestroyItem("p_swr1") DestroyItem("p_swevi1") DestroyItem("p_dchan1") DestroyItem("p_orbe1") DestroyItem("p_sw1hdr")  LeaveParty() EscapeArea()~ EXTERN ~p_demole~ 16 
END

//GOOD
IF ~~ THEN BEGIN 234 // from:
  SAY @3284 /* ~Entiendo, <CHARNAME>... La venganza no clama mi coraz�n, aunque enfrentarnos a los orcos puede evitar muertes de inocentes.~ */
  IF ~~ THEN GOTO 235
END

IF ~~ THEN BEGIN 235 // from:
  SAY @3285 /* ~Si eso no te conmueve, puede que prefieras enfrentarle, simplemente, para demostrar tu propia fuerza o quiz�s arrebatar su tesoro.~ */
    IF ~~ THEN REPLY @3280 /* ~�Tesoro dices? Ahora hablas mi idioma. Cu�ntame m�s.~ */  GOTO 226
	IF ~~ THEN REPLY @3286 /* ~Hm, ahora que lo mencionas, un buen combate no vendr�a mal. Contin�a.~ */  GOTO 226
	IF ~~ THEN REPLY @3287 /* ~Tienes raz�n con respecto a las posibles v�ctimas, Dusk. Lo lamento. Cu�ntame m�s.~ */  GOTO 226
	IF ~~ THEN REPLY @3288 /* ~Me importan muy poco tus problemas, hombre. Quien manda aqu� soy yo.~ */  GOTO 236
END

IF ~~ THEN BEGIN 236 // from:
  SAY @3289 /* ~De acuerdo, <CHARNAME>. No te presionar� por este asunto. Si la fortuna est� de nuestro lado, puede que Alabarza siga all� cuando decidas investigar el asunto...~ */
  IF ~~ THEN GOTO 237
END

IF ~~ THEN BEGIN 237 // from:
  SAY @3290 /* ~Demolidor, vuelve con tu maestro e ind�cale que iremos cuando nos sea posible.~ */
  IF ~~ THEN EXTERN p_demole 15
END

IF ~~ THEN BEGIN 238 // from:
  SAY @3279 /* ~Si eso no te conmueve, puede que el reto de enfrentarte a alguien fuerte lo haga. Alabarza es un enemigo a temer.~ */
    IF ~~ THEN REPLY @3280 /* ~�Tesoro dices? Ahora hablas mi idioma. Cu�ntame m�s.~ */  GOTO 226
	IF ~~ THEN REPLY @3281 /* ~�M�s temible que yo, Dusk? Eso lo veremos. Muy bien, me has convencido. Cu�ntame m�s.~ */  GOTO 226
	IF ~~ THEN REPLY @3282 /* ~Me importan muy poco tus problemas, hombre. Arr�glatelas por tu propia cuenta.~ */  GOTO 233
END

////////////////////////////////////////////////////////////////////////////

/////// EVIL -> MATHYUS M3
IF ~~ THEN BEGIN 239 // from:
  SAY @3291 /* ~Al grano, Mathyus. Estoy seguro de que tienes algo... interesante qu� contar, �no es as�?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 189
END

IF ~~ THEN BEGIN 240 // from:
  SAY @3292 /* ~Lo sab�a... no debe ser otro m�s que Alabarza, el Mutilador.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 190
END

IF ~~ THEN BEGIN 241 // from:
  SAY @3322 /* ~�Si t� qu�, Mathyus?, �si me dices el nombre ofensivo del clan de Alabarza? No soy una bestia, elfo. Puedo controlarme. Dilo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 193
END

IF ~~ THEN BEGIN 242 // from:
  SAY @3159 /* ~...~ */
  IF ~~ THEN GOTO 243
END

IF ~~ THEN BEGIN 243 // from:
  SAY @3293 /* ~(De repente, explota en una risa profunda y maligna)~ */
    IF ~~ THEN REPLY @3294 /* ~�Qu� es tan gracioso, Dusk?~ */  GOTO 244
    IF ~~ THEN REPLY @3295 /* ~Genial, se ha vuelto loco.~ */  GOTO 244
END

IF ~~ THEN BEGIN 244 // from:
  SAY @3296 /* ~�No lo entiendes, <CHARNAME>? El orco bastardo ha renombrado su clan as� porque ha cumplido la haza�a de matar a varios guerreros de la Orden del Drag�n P�rpura.~ */
    IF ~~ THEN REPLY @3297 /* ~Tienes raz�n, no lo entiendo. Expl�cate.~ */  GOTO 245
    IF ~~ THEN REPLY @3298 /* ~�Y eso qu� tiene de gracioso?~ */  GOTO 245
END

IF ~~ THEN BEGIN 245 // from:
  SAY @3299 /* ~Entender�s la gracia del asunto, <CHARNAME>... cuando tenga el coraz�n del orco en mi mano y lo destruya frente a su cr�neo aplastado...~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 194
END

IF ~~ THEN BEGIN 246 // from:
  SAY @3323 /* ~�Crees que algo as� me asusta a m� o a <CHARNAME>?~ */
    IF ~~ THEN REPLY @3300 /* ~Pues, a m� me asusta un poco.~ */  GOTO 247
    IF ~~ THEN REPLY @3301 /* ~Tienes raz�n, Dusk. Acabar con ellos ser� pan comido.~ */  GOTO 248
END

IF ~~ THEN BEGIN 247 // from:
  SAY @3302 /* ~*susurro* Rayos, <CHARNAME>, no seas cobarde. Si tienes dudas, env�ame al frente de batalla. Yo har� el resto.~ */
  IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 248 // from:
  SAY @3303 /* ~�Ese es el esp�ritu, <CHARNAME>!~ */
  IF ~~ THEN GOTO 249
END

IF ~~ THEN BEGIN 249 // from:
  SAY @3304 /* ~�Mathyus! Dadme la ubicaci�n de este clan. <CHARNAME> y yo nos encargaremos de destruirlo por completo.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 197
END

IF ~~ THEN BEGIN 250 // from:
  SAY @3305 /* ~Excelente... Volveremos victoriosos, elfo... ya lo ver�s...~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",3)
  ~ UNSOLVED_JOURNAL @210019 EXIT
END

/////// GOOD -> MATHYUS M3
IF ~~ THEN BEGIN 251 // from:
  SAY @3306 /* ~�Amigos! Siempre es un placer verlos. Mathyus, creo que tienes novedades que me conciernen, �no es as�?~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 199
END

IF ~~ THEN BEGIN 252 // from:
  SAY @3292 /* ~Lo sab�a... no debe ser otro m�s que Alabarza, el Mutilador.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 200
END

IF ~~ THEN BEGIN 253 // from:
  SAY @3307 /* ~�Qu� sucede, Mathyus? Pueden decirme lo que sea. No perder� mi compostura.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 202
END

IF ~~ THEN BEGIN 254 // from:
  SAY @3159 /* ~...~ */
  IF ~~ THEN GOTO 255
END

IF ~~ THEN BEGIN 255 // from:
  SAY @3308 /* ~Entiendo...~ */
    IF ~~ THEN REPLY @3309 /* ~�Qu� sucede, Dusk?~ */  GOTO 256
    IF ~~ THEN REPLY @3310 /* ~�Te importar�a compartir con el resto del grupo, muchacho?~ */  GOTO 256
END

IF ~~ THEN BEGIN 256 // from:
  SAY @3311 /* ~Alabarza ha renombrado su clan as� porque ha cumplido la haza�a de matar a varios guerreros de la Orden del Drag�n P�rpura.~ */
    IF ~~ THEN REPLY @3312 /* ~Oh... ya veo...~ */  GOTO 257
    IF ~~ THEN REPLY @3313 /* ~�Bastardo! Imagino el odio que debe correr dentro de ti, Dusk.~ */  GOTO 257
END

IF ~~ THEN BEGIN 257 // from:
  SAY @3314 /* ~Supongo que ser�a l�gico pensar que el deseo por vengarme puede llegar a poseerme, <CHARNAME>. Y debo admitir que estoy conteniendo mi ira en estos momentos... Pero esa no es la respuesta.~ */
  IF ~~ THEN GOTO 258
END

IF ~~ THEN BEGIN 258 // from:
  SAY @3315 /* ~Sin embargo, Alabarza debe ser detenido. No por venganza, sino por justicia.~ */
  IF ~~ THEN EXTERN ~P_MATUT~ 203
END

IF ~~ THEN BEGIN 259 // from:
  SAY @3316 /* ~Gracias por la informaci�n, Mathyus. Sin embargo, creo que <CHARNAME> y yo podemos arregl�rnosla bien.~ */
  IF ~~ THEN EXTERN ~P_MICHEL~ 75
END

IF ~~ THEN BEGIN 260 // from:
  SAY @3317 /* ~Los Paladines... ya veo... Y puede que Falon tambi�n est� dispuesta a ayudar... �Qu� dices, <CHARNAME>?~ */
    IF ~~ THEN REPLY @3318 /* ~Nah, nosotros solos podemos con esos humanoides, Dusk.~ */  EXTERN ~P_MATUT~ 207
    IF ~~ THEN REPLY @3319 /* ~Me parece una buena idea. �Nos ponemos en contacto con ellos?~ */ EXTERN ~P_MATUT~ 210
END

IF ~~ THEN BEGIN 261 // from:
  SAY @3320 /* ~Excelente, Mathyus. Volveremos en cuanto hayamos terminado de limpiar ese t�mulo.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskMatMission3","GLOBAL",3)
  ~ UNSOLVED_JOURNAL @210019 EXIT
END

IF ~~ THEN BEGIN 262 // from:
  SAY @3321 /* ~Muy bien... �Michelson, trae a Sir Ryan Espinel para que podamos informarle de nuestra situaci�n!~ */
  IF ~~ THEN DO ~~ EXTERN ~P_MICHEL~ 76 
END


///////////////////////////////////////////////////////

// Aparici�n de Valatar - EVIL
IF ~Global ("P_DUSK_VALATA_ENC1","GLOBAL",1) Global("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN BEGIN 263 // from:
  SAY @3325 /* ~Rayos... �otro mago m�s!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DUSK_VALATA_ENC1","GLOBAL",2)~ EXTERN ~p_valata~ 0
END

IF ~~ THEN BEGIN 264 // from:
  SAY @3326 /* ~(Rayos...) Veo que t� tambi�n est�s al tanto de la identidad de <CHARNAME>.~ */
    IF ~~ THEN REPLY @3327 /* ~Y es lo obvio, Dusk. Estos tipos m�s que pertenecer a una Orden de Magos, deben pertenecer a una Orden de Chismosos.~ */  GOTO 265
    IF ~~ THEN REPLY @3328 /* ~Ya ni me ofende que mi secreto se sepa, Dusk. De igual manera, me interesa saber qu� es lo que va a decir este hechicero. �Qui�n es y qu� demonios hace aqu�?~ */ GOTO 265
END

IF ~~ THEN BEGIN 265 // from:
  SAY @3329 /* ~�Y qui�n se supone que eres t�, mago? �Tambi�n eres un Encantador como tu amigo?~ */
  IF ~~ THEN EXTERN ~P_VALATA~ 1
END

// EVIL - DESPUES DE MATAR AL DEMONIO DE VALATAR
IF ~Global ("P_Dusk_Valata_Demon","GLOBAL",3) Global("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN BEGIN 266 // from:
  SAY @3330 /* ~Buen trabajo, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",4)~ GOTO 267
END

IF ~~ THEN BEGIN 267 // from:
  SAY @3331 /* ~Siento... una extra�a sensaci�n. Algo en mi interior me dice que debo atravesar el coraz�n del demonio.~ */
    IF ~~ THEN REPLY @3332 /* ~��Atravesar qu�?!~ */  GOTO 268	
    IF ~~ THEN REPLY @3333 /* ~Dusk, la criatura ya est� muerta.~ */ GOTO 268
END

IF ~~ THEN BEGIN 268 // from:
  SAY @3334 /* ~Es la espada carmes�... Si la ba�o en la sangre del demonio abisal, se volver� m�s poderosa.~ */
  IF ~~ THEN GOTO 269
END

IF ~~ THEN BEGIN 269 // from:
  SAY @3335 /* ~(Dusk avanza hacia el cad�ver de la criatura y atraviesa el coraz�n, a�n palpitante, con la espada carmes�)~ */
  IF ~~ THEN DO ~ TakePartyItem ("p_demhe") DestroyItem ("p_demhe") TakePartyItem ("p_swevi1")  DestroyItem ("p_swevi1")  SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",1)~ EXIT
END

IF ~Global ("P_Dusk_Valata_Demon_FORGE","GLOBAL",2) Global("P_DUSK_IS_GOOD","GLOBAL",0)~ THEN BEGIN 270 // from:
  SAY @3336 /* ~�Ja! Ten�a raz�n, <CHARNAME>. La espada carmes� ha mejorado... siento el calor de los infiernos en su mango... y ni siquiera me afecta.~ */
    IF ~~ THEN REPLY @3337 /* ~Excelente, Dusk. Conf�o en que la usar�s para el beneficio del grupo.~ */  GOTO 271	
    IF ~~ THEN REPLY @3338 /* ~Dusk, ten cuidado o la espada te dominar�.~ */ GOTO 272
END

IF ~~ THEN BEGIN 271 // from:
  SAY @3339 /* ~La usar� en maleficio de nuestros enemigos, <CHARNAME>. Vamos... Alabarza nos espera.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",3) CreateItem ("p_swevi2",1,1,0) ~ UNSOLVED_JOURNAL @210021 EXIT
END

IF ~~ THEN BEGIN 272 // from:
  SAY @3340 /* ~Mi voluntad es m�a, <CHARNAME>. Conf�a en m�... no ser� dominado por un trozo de acero. Ahora, vamos... Alabarza nos espera.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",3) CreateItem ("p_swevi2",1,1,0)~ UNSOLVED_JOURNAL @210021 EXIT
END

// Aparici�n de Valatar - GOOD
IF ~Global ("P_DUSK_VALATA_ENC1","GLOBAL",1) Global("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN BEGIN 273 // from:
  SAY @3325 /* ~Rayos... �otro mago m�s!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DUSK_VALATA_ENC1","GLOBAL",2)~ EXTERN ~p_valata~ 4
END

IF ~~ THEN BEGIN 274 // from:
  SAY @3326 /* ~(Rayos...) Veo que t� tambi�n est�s al tanto de la identidad de <CHARNAME>.~ */
    IF ~~ THEN REPLY @3327 /* ~Y es lo obvio, Dusk. Estos tipos m�s que pertenecer a una Orden de Magos, deben pertenecer a una Orden de Chismosos.~ */  GOTO 275
    IF ~~ THEN REPLY @3328 /* ~Ya ni me ofende que mi secreto se sepa, Dusk. De igual manera, me interesa saber qu� es lo que va a decir este hechicero. �Qui�n es y qu� demonios hace aqu�?~ */ GOTO 275
END

IF ~~ THEN BEGIN 275 // from:
  SAY @3329 /* ~�Y qui�n se supone que eres t�, mago? �Tambi�n eres un Encantador como tu amigo?~ */
  IF ~~ THEN EXTERN ~P_VALATA~ 5
END

// GOOD - DESPUES DE MATAR AL DEMONIO DE VALATAR
IF ~Global ("P_Dusk_Valata_Demon","GLOBAL",3) Global("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN BEGIN 276 // from:
  SAY @3330 /* ~Buen trabajo, <CHARNAME>.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon","GLOBAL",4)~ GOTO 277
END

IF ~~ THEN BEGIN 277 // from:
  SAY @3331 /* ~Siento... una extra�a sensaci�n. Algo en mi interior me dice que debo atravesar el coraz�n del demonio.~ */
    IF ~~ THEN REPLY @3332 /* ~��Atravesar qu�?!~ */  GOTO 278	
    IF ~~ THEN REPLY @3333 /* ~Dusk, la criatura ya est� muerta.~ */ GOTO 278
END

IF ~~ THEN BEGIN 278 // from:
  SAY @3341 /* ~Es la espada esmeralda... Si la uso para destruir el coraz�n del demonio, Valatar no podr� llamar de nuevo a la bestia que us� para intentar matarnos.~ */
  IF ~~ THEN GOTO 279
END

IF ~~ THEN BEGIN 279 // from:
  SAY @3342 /* ~(Dusk avanza hacia el cad�ver de la criatura y atraviesa el coraz�n, a�n palpitante, con la espada esmeralda)~ */
  IF ~~ THEN DO ~ TakePartyItem ("p_demhe") DestroyItem ("p_demhe") TakePartyItem ("p_swgoo1")  DestroyItem ("p_swgoo1") SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",1)~ EXIT
END

IF ~Global ("P_Dusk_Valata_Demon_FORGE","GLOBAL",2) Global("P_DUSK_IS_GOOD","GLOBAL",1)~ THEN BEGIN 280 // from:
  SAY @3343 /* ~Es extra�o... la espada ha mejorado pese a todo.~ */
    IF ~~ THEN REPLY @3344 /* ~�Pese a todo? No entiendo, Dusk.~ */  GOTO 281	
END

IF ~~ THEN BEGIN 281 // from:
  SAY @3345 /* ~La espada esmeralda... sent� como si susurrara dentro de mi mente. Una voz similar al c�firo de oto�o.~ */
  IF ~~ THEN GOTO 282
END

IF ~~ THEN BEGIN 282 // from:
  SAY @3346 /* ~Me dijo que podr�a utilizar la sangre del demonio para mejorar la espada o para desterrar al demonio abisal de este plano para siempre.~ */
  IF ~~ THEN GOTO 283
END

IF ~~ THEN BEGIN 283 // from:
  SAY @3347 /* ~Pese a que opt� por desterrar al demonio, aparentemente la espada mejor� de igual manera.~ */
    IF ~~ THEN REPLY @3348 /* ~Has elegido sabiamente, Dusk. Y de paso, has sido recompensado.~ */  GOTO 284	
    IF ~~ THEN REPLY @3349 /* ~Dusk, �otra vez andas desperdiciando poder? Nos habr�a venido bien en nuestra lucha contra Alabarza.~ */ GOTO 285
END

IF ~~ THEN BEGIN 284 // from:
  SAY @3352 /* ~Gracias, <CHARNAME>, de verdad. Tus palabras siempre son un aliento para mi coraz�n. Vamos, Alabarza nos espera.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",3) CreateItem ("p_swgoo2",1,1,0) ~ UNSOLVED_JOURNAL @210023 EXIT
END

IF ~~ THEN BEGIN 285 // from:
  SAY @3351 /* ~Quiz�s, la espada esmeralda habr�a sido m�s fuerte... pero conf�o en que tendremos un enemigo menos al que enfrentarnos si llegamos a cruzarnos otra vez con Valatar. Vamos, <CHARNAME>. Alabarza nos espera.~ */
  IF ~~ THEN DO ~SetGlobal ("P_Dusk_Valata_Demon_FORGE","GLOBAL",3) CreateItem ("p_swgoo2",1,1,0) ~ UNSOLVED_JOURNAL @210023 EXIT
END

/////////////////////////////////////////////////////////////////

// VS ALABARZA - EVIL

IF ~~ THEN BEGIN 286 // from:
  SAY @3353 /* ~�Alabarza!~ */
  IF ~~ THEN EXTERN ~P_ALABAR~ 2
END

IF ~~ THEN BEGIN 287 // from:
  SAY @3354 /* ~No tendr� compasi�n, Alabarza... �hoy ser� el �ltimo d�a de tu miserable vida! ���Por Cormyr!!!~ */
  IF ~~ THEN DO ~~ UNSOLVED_JOURNAL @210024 EXIT
END

IF ~Global("P_DuskM3EVIL","GLOBAL",2) Global("P_DuskM3EVIL_DUSK_ALIVE","GLOBAL",1)~ THEN BEGIN 288 // from:
  SAY @3353 /* ~�Alabarza!~ */
  IF ~~ THEN EXTERN ~P_ALABA2~ 5
END


// VS ALABARZA - GOOD

IF ~Global("P_DuskM3GOOD_OT_RING","GLOBAL",2)~ THEN BEGIN 289 // from:
  SAY @3355 /* ~�Bellfame!~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskM3GOOD_OT_RING","GLOBAL",3)~ EXTERN ~P_BELL2~ 0
END

IF ~Global("P_DuskM3GOOD_OT_RING","GLOBAL",4) PartyHasItem ("p_orbet1")~ THEN BEGIN 290
  SAY @3356 /* ~Casi puedo sentir su presencia en el anillo...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskM3GOOD_OT_RING","GLOBAL",5)~ EXTERN ~P_ALABAR~ 8
END



IF ~Global("P_DuskM3LLAMA_ORBET","GLOBAL",2)~ THEN BEGIN 291 // from:
  SAY @3357 /* ~Los refuerzos han llegado.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskM3LLAMA_ORBET","GLOBAL",3)~ EXTERN ~P_ALABAR~ 9
END

IF ~~ THEN BEGIN 292 // from:
  SAY @3358 /* ~Ha llegado la hora de la justicia, Alabarza. Por mis compa�eros ca�dos... ���Por Cormyr!!!~ */
  IF ~~ THEN DO ~~ UNSOLVED_JOURNAL @210024 EXIT
END

IF ~Global("P_DuskM3GOOD_OT_RING","GLOBAL",4) !PartyHasItem ("p_orbet1")~ THEN BEGIN 293 // from:
  SAY @3356 /* ~Casi puedo sentir su presencia en el anillo...~ */
  IF ~~ THEN DO ~SetGlobal ("P_DuskM3GOOD_OT_RING","GLOBAL",5)~ EXTERN ~P_ALABAR~ 13
END

IF ~~ THEN BEGIN 294 // from:
  SAY @3359 /* ~(De repente, de los ojos de Dusk surje una deslumbrante luz escarlata)~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",1)~ UNSOLVED_JOURNAL @210033 EXIT
END

IF ~Global("P_DanctianAppear","GLOBAL",2)~ THEN BEGIN 295 // from:
  SAY @3360 /* ~Y as� terminan los d�as del guardabosques de Shilmista...~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",3)~ GOTO 296
END

IF ~~ THEN BEGIN 296 // from:
  SAY @3361 /* ~<CHARNAME>, lamento no haberte avisado de antemano lo que har�a. Digamos que... no quise involucrarte.~ */
    IF ~~ THEN REPLY @3362 /* ~�Dusk! �Qu� demonios has hecho? Cre� que Mathyus y Michelson eran amigos tuyos. �Acaso planeas hacer lo mismo conmigo?~ */  GOTO 297	
    IF ~~ THEN REPLY @3363 /* ~Pues, no me quejo de lo que has hecho, Dusk. Ya me estaba cansando de ese elfo verdoso.~ */ GOTO 299
	IF ~~ THEN REPLY @3364 /* ~No comprendo, Dusk. �Qu� est� pasando?~ */ GOTO 299
END

IF ~~ THEN BEGIN 297 // from:
  SAY @3365 /* ~�Ja! Tu ira es siempre bienvenida, <CHARNAME>.~ */
  IF ~~ THEN GOTO 298
END

IF ~~ THEN BEGIN 298 // from:
  SAY @3366 /* ~Jam�s te traicionar�a, amigo m�o. Despu�s de todo, soy as� por ti.~ ~Jam�s te traicionar�a, amiga m�a. Despu�s de todo, soy as� por ti.~ */
  IF ~~ THEN GOTO 299
END

IF ~~ THEN BEGIN 299 // from:
  SAY @3367 /* ~A�n tenemos camino por recorrer juntos, <CHARNAME>. En nuestra b�squeda por poder y venganza debemos ser capaces de confiar el uno con el otro. Por eso te debo una explicaci�n por lo que aqu� ha pasado.~ */
  IF ~~ THEN GOTO 300
END

IF ~~ THEN BEGIN 300 // from:
  SAY @3368 /* ~Enfrentarnos al demonio abisal de Valatar me brind� un canal m�s claro con el poder del Orbe Escarlata.~ */
  IF ~~ THEN GOTO 301
END

IF ~~ THEN BEGIN 301 // from:
  SAY @3369 /* ~Su energ�a proviene del Pandemonium, un plano que sirve de refugio para demonios y sombras.~ */
  IF ~~ THEN GOTO 302
END

IF ~~ THEN BEGIN 302 // from:
  SAY @3370 /* ~El orbe obtiene su poder a partir de una criatura de ese plano. Con el paso del tiempo, desde que absorb� su poder, he podido esclarecer mi comunicaci�n con ella. Hab�a algo en nuestro plano de existencia que evitaba su... resurgimiento.~ */
  IF ~~ THEN GOTO 303
END

IF ~~ THEN BEGIN 303 // from:
  SAY @3371 /* ~Ese algo se acab� con la muerte de Mathyus y Michelson. La ca�da de los Guardianes de Shilmista ahora permite el resurgimiento de la criatura...~ */
  IF ~~ THEN GOTO 304
END

IF ~~ THEN BEGIN 304 // from:
  SAY @3372 /* ~Y ahora habremos de conocerla...~ */
  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",3)~
 EXIT
END



// Espada de Disrupci�n
IF ~~ THEN BEGIN 305 // from:
  SAY @3373 /* ~Est� bien, Danctian. �Haz que el filo de Cormyr sea temible a mis enemigos!~ */
  IF ~~ THEN EXTERN ~P_DANCTI~ 29
END

IF ~~ THEN BEGIN 306 // from:
  SAY @3051 /* ~Vaya... el poder que irradia... es incre�ble...~ */
  IF ~~ THEN EXTERN ~P_DANCTI~ 33
END

IF ~~ THEN BEGIN 307 // from:
  SAY @3374 /* ~Est� bien, Danctian. �Haz que mi armadura se convierta en mi defensa contra aquellos que debo ajusticiar!~ */
  IF ~~ THEN EXTERN ~P_DANCTI~ 37
END

IF ~~ THEN BEGIN 308 // from:
  SAY @3053 /* ~Es mucho m�s pesada... pero su artesan�a es magn�fica...~ */
  IF ~~ THEN EXTERN ~P_DANCTI~ 39
END

// RIBALD

IF ~~ THEN BEGIN 309 // from:
  SAY @3375 /* ~"Tan solo buenas mercanc�as, simple y..." (deja de escribir cuando todos posan su atenci�n en �l)~ */
  IF ~~ THEN GOTO 310
END

IF ~~ THEN BEGIN 310 // from:
  SAY @3376 /* ~Ehm... Perd�n, se�or Ribald, es s�lo que usted tiene buena labia para estas cosas. Y he pensado que podr�a aprender una o dos cosas de su discurso.~ */
  IF ~~ THEN EXTERN ~RIBALD~ P_DUSK2
END

//IF ~Global("P_DanctianAppear","GLOBAL",2)~ THEN BEGIN 311 // from:
//  SAY @3384 /* ~All�... en la oscuridad... �puedes verlo, <CHARNAME>?~ */
//  IF ~~ THEN DO ~SetGlobal("P_DanctianAppear","GLOBAL",3)~ GOTO 296
//END

// etiquetado siguiente 3374

IF ~~ THEN BEGIN 311 // from:
  SAY @3394 /* ~E-eres t�...~ */
    IF ~Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN REPLY @3395 /* ~�Dusk? Est�s p�lido... �Conoces a este mequetrefe?~ */  GOTO 312	
    IF ~Global("P_Dusk_IS_GOOD","GLOBAL",1)~ THEN REPLY @3395 /* ~�Dusk? Est�s p�lido... �Conoces a este mequetrefe?~ */ GOTO 313
END

IF ~~ THEN BEGIN 312 // from:
  SAY @3396 /* ~Es �l... el asesino de Celine...~ */
  IF ~~ THEN EXTERN ~P_ANTHAG~ 1
END

IF ~~ THEN BEGIN 313 // from:
  SAY @3396 /* ~Es �l... el asesino de Celine...~ */
  IF ~~ THEN EXTERN ~P_ANTHAG~ 10
END

IF ~Global("P_Dusk_Dancti_Enc_MF","GLOBAL",1)~ THEN BEGIN 314 // from:
  SAY @3405 /* ~Pero, �qu� rayos-?~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DANCTI~ 82
END

IF ~Global ("P_Dusk_Anthag_Army","GLOBAL",1) Global("P_Dusk_IS_EVIL","GLOBAL",1)~ THEN BEGIN 315 // from:
  SAY @3406 /* ~Rayos... �percibo una poderosa fuerza arcana, <CHARNAME>!~ */
  IF ~~ THEN DO ~~ EXTERN ~P_ANTHAG~ 18
END

IF ~Global ("P_Dusk_Anthag_Army","GLOBAL",1) Global("P_Dusk_IS_GOOD","GLOBAL",1)~ THEN BEGIN 316 // from:
  SAY @3406 /* ~Rayos... �percibo una poderosa fuerza arcana, <CHARNAME>!~ */
  IF ~~ THEN DO ~~ EXTERN ~P_ANTHAG~ 19
END

IF ~Global ("P_Dusk_3rdTDemoli","GLOBAL",2) Global("P_Dusk_IS_GOOD","GLOBAL",1) Global ("P_Dusk_DemoliDISM","GLOBAL",0)~ THEN BEGIN 317 // from:
  SAY @3407 /* ~�Demoli! Amigo, es un gran placer verte de nuevo.~ */
  IF ~~ THEN DO ~SetGlobal("P_Dusk_DemoliDISM","GLOBAL",1)~ EXTERN ~P_DEMOLE~ 19
END

IF ~~ THEN BEGIN 318 // from:
  SAY @3408 /* ~Estupendo, Danctian. Todo va seg�n lo planeado.~ */
    IF ~~ THEN REPLY @3409 /* ~*carraspeo* Hola, estoy aqu�. �Te molestar�a compartir con el resto del grupo lo que est� pasando?~ */  GOTO 319	
    IF ~~ THEN REPLY @3410 /* ~Dusk, �de qu� est�n hablando? No entiendo nada.~ */ GOTO 319
END

IF ~~ THEN BEGIN 319 // from:
  SAY @3411 /* ~Nada preocupante, <CHARNAME>. Podemos lidiar este asunto cuando t� quieras. Aunque recomendar�a hacerlo lo m�s pronto posible. Las recompensas pueden ser... muy cuantiosas.~ */
  IF ~~ THEN DO ~~ EXTERN ~P_DANCTI~ 96
END

// GOOD ARRIVAL AR1506
IF ~Global("P_DuskArrivingAR1506","GLOBAL",1) Global("P_Dusk_IS_GOOD","GLOBAL",1) ~ THEN BEGIN 320 // from:
  SAY @3412 /* ~Hm... este lugar me es familiar... �Hemos estado aqu� antes, <CHARNAME>? No importa.~ */
  IF ~~ THEN GOTO 321
END

IF ~~ THEN BEGIN 321 // from:
  SAY @3413 /* ~De acuerdo. En marcha.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskArrivingAR1506","GLOBAL",2)~ EXIT
END

// EVIL ARRIVAL AR1506
IF ~Global("P_DuskArrivingAR1506","GLOBAL",1) Global("P_Dusk_IS_EVIL","GLOBAL",1) ~ THEN BEGIN 322 // from:
  SAY @3412 /* ~Hm... este lugar me es familiar... �Hemos estado aqu� antes, <CHARNAME>? No importa.~ */
  IF ~~ THEN GOTO 323
END

IF ~~ THEN BEGIN 323 // from:
  SAY @3413 /* ~De acuerdo. En marcha.~ */
  IF ~~ THEN DO ~SetGlobal("P_DuskArrivingAR1506","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN 324 // from:
  SAY @3428 /* ~��Ce-Celine?!~ */
    IF ~~ THEN REPLY @3429 /* ~�Dusk? �Qu� est� pasando? Este esp�ritu... �es el de tu esposa?~ */  GOTO 325	
    IF ~~ THEN REPLY @3430 /* ~Pero, �qu� diantres? �Grupo, desenvainad armas! Hay un fantasma que debemos aniquilar.~ */ GOTO 326
END

IF ~~ THEN BEGIN 325 // from:
  SAY @3431 /* ~*se queda un instante en silencio* As�... as� es, <CHARNAME>. O al menos... eso creo...~ */
  IF ~~ THEN GOTO 327
END

IF ~~ THEN BEGIN 326 // from:
  SAY @3432 /* ~�No muevas un m�sculo, <CHARNAME>! Creo... creo que ese fantasma al que llamas... no es otro que mi esposa, Celine.~ */
  IF ~~ THEN GOTO 327
END

IF ~~ THEN BEGIN 327 // from:
  SAY @3433 /* ~Celine... �eres... eres t�?~ */
  IF ~~ THEN DO ~~ EXTERN ~P_CELGH~ 1
END

IF ~~ THEN BEGIN 328 // from:
  SAY @3434 /* ~Por Mielikki... Celine... esta vez... eres t�...~ */
  IF ~~ THEN DO ~~ EXTERN ~P_CELIN~ 1
END

// Dusk see Celine for the last time
IF ~Global("P_CelineSpawn","GLOBAL",3)~ THEN BEGIN 329 // from:
  SAY @3435 /* ~Celine...~ */
  IF ~~ THEN DO ~SetGlobal("P_CelineSpawn","GLOBAL",4)~
 EXIT
END

IF ~~ THEN BEGIN 330 // from:
  SAY @3436 /* ~Ce-Celine... es imposible...~ */
  IF ~~ THEN DO ~~ EXTERN ~P_CELIN~ 4
END

IF ~~ THEN BEGIN 331 // from:
  SAY @3437 /* ~ ���Celine!!! ~ */
  IF ~~ THEN DO ~ SetGlobal("P_CelineSpawn","GLOBAL",2)~ EXIT
END

// AR1506 ARRIVAL EVIL
I_C_T P_DUSKJ 322 P_Dusk_GOOD_AR1506_1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3420 /* No conf�o en estos magos, por lo que recomiendo proceder con cuidado. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3421 /* �Qui�n habr�a de hacerlo, patas flacas? No te preocupes, yo habr� de cuidarte las espaldas si tanto te preocupa. Mi hacha siempre est� sedienta de sangre arcana. */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3422 /* ~El ambiente es t�trico, Dusk. La energ�a de la naturaleza no es percibida en ning�n lado. Actuar con cautela y lentitud, como si fu�ramos un caracol, no ser�a una mala elecci�n.~ */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3423 /* ~Un lugar extra�o para el enfrentamiento final contra esta Orden de iblith. No te preocupes, abbil, la fuerza de Shar est� con nosotros. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3424 /* ~Hmm... creo que hemos estado aqu�. Esto es como una especie de deja v�, �no lo crees, Dusk? Una vez pas� por algo parecido cuando ese lamebotas de Trax ven�a una y otra vez a pincharme sobre la venta ilegal de nabos en el Distrito Gubernamental. "Gnomo, no puedes vender eso aqu�. Est� prohibido." Y esa frase se repet�a pr�cticamente todos los d�as. */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3425 /* No creo que ese sea el concepto de "deja v�", Jan. Creo que simplemente iban a ti porque estabas diariamente tratando de vender... �verduras ilegales? */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3426 /* ~Nabos, rapos, podr�amos inmiscuirnos en esa discusi�n y la misma tardar�a d�as en resolverse. O puede que a�os, mi buen Duskie. Sabes, yo no tengo problema en charlar, aunque me considero un gnomo de pocas palabras. */
== P_DuskJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3427 /* *carraspeo* Ser� mejor que esa discusi�n sea para otro d�a (un d�a que no esperar� con ansias...). */
END

// AR1506 ARRIVAL GOOD
I_C_T P_DUSKJ 320 P_Dusk_GOOD_AR1506_1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3414 /* No veo a Mathyus ni a Demolidor por ninguna parte... */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3415 /* Hmpf... lo m�s probable es que ni siquiera venga. Ese elfo es pura palabrer�a. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3416 /* P-puede que hayan tenido alg�n problema durante el hechizo de teletransportaci�n, �no lo creen? */
== IMOEN2J IF ~InParty("Imoen2") InMyArea("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @3417 /* ~No creo que tu amigo te haya abandonado, Dusk. A juzgar por su... apariencia, lo m�s probable es que quiera hacer alguna entrada espectacular o algo as�.~ */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3418 /* Ser� mejor que tengamos cuidado... Sabiendo que nos enfrentamos a Anthagar y sus secuaces, lo m�s probable es que tengan alguna trampa arcana preparada para nosotros. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3419 /* Llegado al caso no debes preocuparte, hombre del palito. Edwin Odesseiron se encargara de superarlos en cualquier aspecto relacionado a la magia. (S�, ya lo ver�n...) */
END


////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T UDSVIR03 27 P_Dusk_GOOD_SVIRN1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_Dusk_IS_EVIL","GLOBAL",0) ~ THEN @3404 /* ��Qu�?! <CHARNAME>, �qu� demonios est�s haciendo? �Es una vil traici�n! No... �No lo consentir�! Espero... espero que nuestros caminos no vuelvan a cruzarse... */
DO ~SetGlobal("P_Dusk_IS_GONE","GLOBAL",1) LeaveParty() EscapeArea()~
END

// ENCUENTRO CON ANTHAGAR - GOOD1

I_C_T P_DUSKJ 313 P_Dusk_Anthag1c
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3397 /* �Eso alivia tu carga, capit�n? Desligarte de la culpa por completo... �es as�? */
== P_DuskJ IF ~ InMyArea("P_Dusk") ~ THEN @3398 /* S� lo que intentas, sierpe. Y s� qui�n eres, tambi�n. */
== P_DuskJ IF ~ InMyArea("P_Dusk") ~ THEN @3399 /* Has sido t� quien ha enviado a los otros magos, �no es as�? */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3400 /* No se necesita ser sagaz para esa deducci�n, Asesino. */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3401 /* Pero ya es hora de que formalicemos esto, �no lo crees? */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3402 /* Soy el l�der de la Orden de la Cripta Olvidada y Velshar�n es mi Se�or. */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3403 /* Soy Anthagar, el Nigromante. Comandante del Veneno, la Muerte y la Destrucci�n. */
END

// ENCUENTRO CON ANTHAGAR - EVIL1

I_C_T P_DUSKJ 312 P_Dusk_Anthag1b
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3397 /* �Eso alivia tu carga, capit�n? Desligarte de la culpa por completo... �es as�? */
== P_DuskJ IF ~ InMyArea("P_Dusk") ~ THEN @3398 /* S� lo que intentas, sierpe. Y s� qui�n eres, tambi�n. */
== P_DuskJ IF ~ InMyArea("P_Dusk") ~ THEN @3399 /* Has sido t� quien ha enviado a los otros magos, �no es as�? */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3400 /* No se necesita ser sagaz para esa deducci�n, Asesino. */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3401 /* Pero ya es hora de que formalicemos esto, �no lo crees? */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3402 /* Soy el l�der de la Orden de la Cripta Olvidada y Velshar�n es mi Se�or. */
== P_ANTHAG IF ~InMyArea("P_Dusk") ~ THEN @3403 /* Soy Anthagar, el Nigromante. Comandante del Veneno, la Muerte y la Destrucci�n. */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T MINSCJ 79 P_Dusk_Minscj1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3380 /*  ~Concuerdo contigo, Minsc. Aunque lo de arrancarse los ojos me parece un tanto... exagerado.~ */
END


////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T KALAH2 4 P_Dusk_KALAH2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3378 /* Vaya, a fin de cuentas, no era un ogro mago, sino un gnomo ilusionista. Todo cobra sentido ahora... */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T CIRCG1 3 P_Dusk_CIRCUS1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3377 /* Hm... Es extra�o, <CHARNAME>. Quiz�s el guardia tenga raz�n... puede que esto se trate de magia maligna. Debemos proceder con cuidado. */ 
END


////////////// OK!!! \\\\\\\\\\\\\\\\\ 

I_C_T P_DUSKJ 84 P_Dusk_Mission2_Decision
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3118 /* �Argh! Minsc se confunde mucho en estas situaciones. Sin embargo, Bub� piensa que no todo debe terminar en combate, buen Dusk. */
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3119 /* P-pues... yo opino que este grupo no es malvado, Dusk. C-creo que deber�as darle una oportunidad... Incluso, ayudarles. */
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3120 /* A veces es sabio compartir la responsabilidad de una decisi�n, joven Dusk. Creo que haces lo correcto en confiar en el juicio de tus compa�eros. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3121 /* Pues, si me lo preguntas a m�, Dusk... yo intentar�a evitar un conflicto de ser posible. Pero tampoco reniego a una refriega. */
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3122 /* Me he enfrentado a muchos humanoides, Dusk. Y, ciertamente, ninguno ha sido como este grupo. Me cuesta creer que �stos hayan orquestado un ataque contra un destacamento de Cormyr. */
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3123 /* No parecen oponentes dignos de nuestra atenci�n... Sin embargo, pienso que no deber�an estar libres. Un buen juez de Athkatla ya les habr�a condenado a la hoguera. */
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3124 /* De primera mano, tengo mala experiencia tratando con humanoides... Pero, Dusk... estas criaturas no parecen ser violentas. */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @3125 /* Dusk, entiendo que quieras vengar a tus compa�eros de armas... pero ten en cuenta, que puede que este grupo no sea el responsable de tal ataque. */
== CERNDJ IF ~InParty("Cernd") InMyArea("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @3126 /* La naturaleza indica la violencia innata en muchos humanoides, Dusk. Pero no logro ver eso en este grupo. Puede que, a fin de cuentas, no hayan sido responsables de dicho ataque. */
== VALYGARJ IF ~InParty("Valygar") InMyArea("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @3127 /* S� muy bien lo que es ser juzgado por un grupo corrupto, Dusk. No quiero creer que el nuestro encaje en esa clasificaci�n. Que el odio no nuble tu juicio, amigo m�o. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @3128 /* Abbil, s� muy bien lo que es ser juzgada s�lo por tu raza. Juzgada por los viles rivvil... Y creo, Dusk, que t� no eres como el resto de los rivvil. */
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3129 /* Pues, si me lo preguntan a m� (cosa que a�n no han hecho, pero no se puede esperar menos de un grupo de primates), yo dir�a que los friamos con magia. Los humanoides de Sothillis no merecen vivir en el mundo de los hombres. */
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3130 /* Hmpf... �dijiste algo, flacucho? S�lo di la palabra m�gica y Korgan se encargar� de este pat�tico grupo de orcos. Mi hacha tambi�n lo ansia. */
== JANJ IF ~InParty("Jan") InMyArea("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @3131 /* Esto me recuerda a una situaci�n que vivi� mi t�o Gerardo. El pobre hab�a sido acusado de robar toda una granja de faisanes. Los rumores indicaban que mi t�o planeaba armar un ej�rcito de faisanes y as� asaltar diferentes granjas de nabos a lo largo de todo Faer�n. Al cabo de unos d�as, un destacamento de guardias cay� a mi casa. Por suerte, all� pudieron desmentir los viles rumores sobre Gerardo. Como represalia, los meses siguientes plane� armar un ej�rcito de hurones para que los rumores se hicieran realidad. A�n no s� en qu� habr� quedado ese plan. Pero ciertamente ten�a su potencial. */
== HAERDAJ IF ~InParty("HaerDalis") InMyArea("HaerDalis") !StateCheck("HaerDalis",CD_STATE_NOTVALID)~ THEN @3132 /* Vaya, vaya, el cuervo blanco est� en una especie de discrepancia con sus deseos. Yo dir�a: no lo pienses tanto. Baila un poco y que tus pies decidan tu destino (y el suyo tambi�n). */
END


I_C_T P_FALON 4 P_Dusk_Mission2_Falon_Sothil
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3110 /* Ya veo, estas criaturas eran parte del ej�rcito que busca invadir Amn... Creo que es una raz�n m�s para aniquilarlos, <CHARNAME>. */
END

I_C_T P_FALON 4 P_Dusk_Mission2_Falon_Sothil2
== KELDORJ IF ~InParty("Keldorn") InMyArea("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @3111 /* Los caballeros de la Noble Orden han combatido durante meses contra criaturas como esta, <CHARNAME>. Sin embargo, estos no parecen tener la sed de sangre que tienen los esbirros del ogro. */
END

I_C_T P_DUSKJ 77 P_Dusk_Mission2_Attack1
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3104 /* Muy bien, flacucho. Me gusta tu determinaci�n. D�jame ese gigante a m�, �quieres?  �Ja! */
END

I_C_T P_DUSKJ 77 P_Dusk_Mission2_Attack12
== MAZZYJ IF ~InParty("Mazzy") InMyArea("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3105 /* No estoy de acuerdo con esto, Dusk... pero supongo que si no los aniquilamos ahora, estos humanoides bien podr�an hacer da�o a inocentes. */
END

I_C_T P_DUSKJ 18 P_Dusk_NPC_Michelson_GOLD
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @3021 /* Bueno, eso ha sido un gasto excesivo de oro si me lo preguntas a m�. No te preocupes, <CHARNAME>. Siempre podemos 'reabastecernos' en el Distrito Gubernamental. */
END

I_C_T P_DUSKJ 18 P_Dusk_NPC_Michelson_GOLD2
== EDWINJ IF ~InParty("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @3022 /* Con un demonio, <CHARNAME>. �C�mo se te ocurre darle dinero a esa pulga verdosa? (�Mejor me lo hubieras dado a m�!) */
END

I_C_T P_DUSKJ 20 P_Dusk_NPC_Michelson_BEER
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3025 /* �Con un carajo, <CHARNAME>! Desperdicias una cerveza de buena calidad en ese enclenque del bosque. Mejor se la hubieras dado al buen Korgan. */
END

I_C_T P_DUSKJ 20 P_Dusk_NPC_Michelson_BEER2
== NALIAJ IF ~InParty("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @3026 /* Nunca cre� que algo tan peque�o pudiese beber tanto. Ese Michelson es algo de otro mundo. */
END

I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES1b
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3029 /* �Vaya, <CHARNAME>! Has hecho despanzar de la risa a Bub�. */
END

I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES1c
== AERIEJ IF ~InParty("Aerie") InMyArea("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @3030 /* Cielos, <CHARNAME>. *risita* Eso ha sido muy gracioso. */
END

I_C_T P_DUSKJ 22 P_Dusk_NPC_Michelson_JOKES1d
== ANOMENJ IF ~InParty("Anomen") InMyArea("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @3031 /* Esto es una p�rdida de tiempo, <CHARNAME>. Espero que tu peque�a treta funcione. */
END




I_C_T P_DUSKJ 24 P_Dusk_NPC_Michelson_JOKES2
== KORGANJ IF ~InParty("Korgan") InMyArea("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN @3034 /* �Ja! �De qu� te preocupas, flacucho? El chiste de <CHARNAME> ha estado muy bueno. De hecho yo lo cont� en el funeral de mi t�a. Fue todo un �xito. */
END

I_C_T P_MATUT 44 P_Dusk_NPC_Minsc_Mathyus_Mission_Complete
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @3046 /* �Calvo? Pues Minsc no ve el inconveniente en ello �verdad, Bub�?*/
END
///////////////////////////////////

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("P_Dusk",LastTalkedToBy)~ EXTERN TRGYP02 g1
END

CHAIN TRGYP02 g1
@0 /* A�n cuando ya no eres un mensajero de la paz, puedes lograr mucho si tu <LADYLORD> <CHARNAME> encamina su destino hacia la luz. Pero ten en cuenta, a�n en la oscuridad puedes encontrar el camino que tanto buscas.. */
== P_DuskJ @1 /* Un poco ambiguo, mi dama. Sin embargo, no har� o�dos sordos a lo que me ha dicho. */ 
EXIT

// Celvan el Loco
////////////// OK!!! \\\\\\\\\\\\\\\\\

CHAIN IF WEIGHT #-1 
~InParty("P_Dusk")
See("P_Dusk")
!StateCheck("P_Dusk",CD_STATE_NOTVALID)
Global("P_DuskReactionCelvan","AR0300",0)~ THEN CELVAN c1
@2 /* Hubo una vez un valiente guerrero,
aunque so�aba con la paz su porte era severo.
Fue entonces que al amor de su vida conoci� un d�a:
una elfa de cabellos dorados le correspond�a.
Le acompa�� en su gesta por la paz
y su rostro severo ahora era un disfraz,
pues el amor le ceg� como a un tonto
ajeno a la tragedia que le golpear�a pronto... */
DO ~SetGlobal("P_DuskReactionCelvan","AR0300",1)~
== P_DuskJ @3 /* �Me hablas a m�? ��C�mo sabes eso?! �Expl�cate! */
END CELVAN 1

// Madame Nin

CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0) 
Name("P_Dusk",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_DuskReactionMadam1
@4 /* Saludos, mi se�or. Soy la Madame Nin, y estoy aqu� para asegurar que su compa��a sea placentera. �Est�s interesado? */
== P_DuskJ @5 /* No, gracias. <CHARNAME>, ser� mejor que encontremos una soluci�n a esto. Claramente, aqu� trabajan en contra de su voluntad. */
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("P_Dusk",LastTalkedToBy)
!Global("MadamUpset","GLOBAL",1)~ THEN MADAM P_DuskReactionMadam2
@6 /* Entonces... �deseas compa��a para esta noche? */
== P_DuskJ @7 /* Rayos, deje de molestar, se�ora. */
EXIT

// Traici�n de Yoshimo

I_C_T YOSHJ 113 P_DuskYOSHJ113
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @8 /* No, Yoshimo... no... �c�mo has podido vender tu alma a este ser desgraciado? Maldito seas, Yoshimo... maldito seas... */
END

// Prisi�n del Hechicero, luego de perder el alma

INTERJECT Player1 3 P_DuskSpellholdDizzy0
== P_DuskJ IF ~InParty("P_Dusk") Range("P_Dusk",15) !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN
@9 /* �Te encuentras bien? Estuviste un buen tiempo inconsciente. */
END
++ @10 /* Estoy bien, no te preocupes. */ EXTERN P_DuskJ pl1.1
++ @11 /* Mi cuerpo se siente extra�o, como si no estuviera en total control... */ EXTERN P_DuskJ pl1.2

CHAIN P_DuskJ pl1.1
@13 /* De acuerdo, pero no dudes en acudir a tus amigos si lo necesitas. Debemos estar juntos en esto si queremos salir de aqu� con vida. */
EXIT

CHAIN P_DuskJ pl1.2
@14 /* Es muy probable que el mago haya lanzado algo permanente contra ti... o tal vez, quitado algo. Pensar en las almas me estremece, pero si la tuya fue arrebatada, la recuperaremos. Es una promesa, <CHARNAME>. */
EXIT

// PC se convierte en el Asesino por primera vez

I_C_T PLAYER1 5 P_DuskFirstSlayerChange1 
== P_DuskJ IF ~InParty("P_Dusk") See("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @15 /* �Qu� diantres fue eso? Te convertiste en una criatura sediente de sangre, totalmente enajenada de sus sentidos de juicio. <CHARNAME>, eso fue el avatar del Asesino, �no es as�? Fue impresionante... y escalofriante al mismo tiempo. */
END

// Lonk ha muerto. Momentos antes del enfrentamiento contra Irenicus

I_C_T PLAYER1 15 P_DuskLonkIsDead1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @16 /* No me sentir�a muy a gusto con tantos hechiceros (especialmente dementes) a mi alrededor. Pero creo que tienen tantas razones como nosotros para enfrentarse a Irenicus, <CHARNAME>. Haz lo que consideres correcto. */
END

// Di�logo por el �rbol de la Vida

EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DuskTreeOfLife","GLOBAL",0) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ EXTERN PLAYER1 pl2
END

CHAIN PLAYER1 pl2
@17 /* Dusk, el bravo guerrero. Su mirada es severa y determinada. Sabes que no dudar�a en morir por sus ideales, ni por sus camaradas. */
DO ~SetGlobal("P_DuskTreeOfLife","GLOBAL",1)~
END
++ @18 /* Dusk, esta no es tu pelea. No es necesario que me sigas. */ EXTERN P_DuskJ pl2.1
++ @19 /* Has hecho mucho por m�, Dusk. Puedes irte a casa si as� lo deseas. */ EXTERN P_DuskJ pl2.1
++ @20 /* �Est�s listo para seguirme? Te necesito a mi lado para vencer. */ EXTERN P_DuskJ pl2.1

CHAIN P_DuskJ pl2.1
@21 /* Hemos recorrido un largo camino para llegar aqu�. La �nica opci�n es el combate, <CHARNAME>. Lo haremos juntos... �lo haremos por los ca�dos! */
END
COPY_TRANS PLAYER1 33 

EXTEND_BOTTOM PLAYER1 33
IF ~ InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DuskTreeOfLife","GLOBAL",0) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ EXTERN PLAYER1 pl3
END

CHAIN PLAYER1 pl3
@3392 /* Dusk, el guerrero de Cormyr. Su coraz�n se ha endurecido, pero ello le ha hecho m�s poderoso. Su mirada es fr�a y temeraria; pese a ello, sus ojos emanan respeto a tu presencia. */
DO ~SetGlobal("P_DuskTreeOfLife","GLOBAL",1)~
END
++ @18 /* Dusk, esta no es tu pelea. No es necesario que me sigas. */ EXTERN P_DuskJ pl3.1
++ @19 /* Has hecho mucho por m�, Dusk. Puedes irte a casa si as� lo deseas. */ EXTERN P_DuskJ pl3.1
++ @20 /* �Est�s listo para seguirme? Te necesito a mi lado para vencer. */ EXTERN P_DuskJ pl3.1

CHAIN P_DuskJ pl3.1
@3393 /* Hemos recorrido un largo camino para llegar aqu�, <CHARNAME>: La venganza est� a nuestro alcance. Acabemos con Jon Irenicus. Que el bastardo sea testigo de nuestro gran poder. */
END
COPY_TRANS PLAYER1 33 


// �rbol de la vida. Irenicus es derrotado.

I_C_T PLAYER1 16 P_DuskIrenicusIsDead1
== P_DuskJ IF ~InParty("P_Dusk") Range("P_Dusk",15) !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @27 /* �Le hemos vencido! Pero... algo no est� bien... �qu� sucede? */
END

// Infierno

I_C_T PLAYER1 25 P_DuskEnteringHell1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @28 /* Una visi�n extra�a, <CHARNAME>. �Me has tra�do a tu infierno personal? Si salimos de aqu� con vida, puede que acepte que me compres una cerveza. */
END

// Combatiendo contra Irenicus

I_C_T HELLJON 7 P_DuskThirdBattleWithIrenicus1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @29 /* Desde el Paseo de Waukin no has hecho m�s que dejar un regadero de cad�veres en tu camino, Irenicus... tu ego�smo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los ca�dos tendr�n su venganza. �Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 7 P_DuskThirdBattleWithIrenicus12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @515 /* �Jon Irenicus, hoy ser� el �ltimo d�a de tu miserable existencia! Tu intento de acumular poder ha fracasado. �Caer�s y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominaci�n... */
END

I_C_T HELLJON 8 P_DuskThirdBattleWithIrenicus2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @29 /* Desde el Paseo de Waukin no has hecho m�s que dejar un regadero de cad�veres en tu camino, Irenicus... tu ego�smo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los ca�dos tendr�n su venganza. �Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 8 P_DuskThirdBattleWithIrenicus22
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @515 /* �Jon Irenicus, hoy ser� el �ltimo d�a de tu miserable existencia! Tu intento de acumular poder ha fracasado. �Caer�s y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominaci�n... */
END

I_C_T HELLJON 9 P_DuskThirdBattleWithIrenicus3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @29 /* Desde el Paseo de Waukin no has hecho m�s que dejar un regadero de cad�veres en tu camino, Irenicus... tu ego�smo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los ca�dos tendr�n su venganza. �Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 9 P_DuskThirdBattleWithIrenicus32
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @515 /* �Jon Irenicus, hoy ser� el �ltimo d�a de tu miserable existencia! Tu intento de acumular poder ha fracasado. �Caer�s y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominaci�n... */
END

I_C_T HELLJON 10 P_DuskThirdBattleWithIrenicus4
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @29 /* Desde el Paseo de Waukin no has hecho m�s que dejar un regadero de cad�veres en tu camino, Irenicus... tu ego�smo y maldad te han cegado por completo y muchos inocentes han pagado por ello. Pero hoy, los ca�dos tendr�n su venganza. �Vamos, camaradas, a las armas! */
END

I_C_T HELLJON 10 P_DuskThirdBattleWithIrenicus42
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @515 /* �Jon Irenicus, hoy ser� el �ltimo d�a de tu miserable existencia! Tu intento de acumular poder ha fracasado. �Caer�s y nosotros obtendremos la gloria! Vamos, <CHARNAME>, acabemos con esta abominaci�n... */
END

// Segunda transformaci�n en El Asesino

//INTERJECT Player1 7 P_DuskSecondSlayerChange0
//== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) OR(2) Global("P_DuskRomanceActive","GLOBAL",1) Global("P_DuskRomanceActive","GLOBAL",2)~ THEN @30 /* �No puedes dormir? No es de sorprenderse. Las cosas que han pasado �ltimamente... espera, �te encuentras bien? De repente, tu rostro se ha empalidecido. */
//END
//++ @31 /* Algo est� pasando en mi interior... �Huye! */ EXTERN P_DuskJ P_DuskSecondSlayerChange1
//++ @32 /* Dusk, creo que me estoy transformando de nuevo... */ EXTERN P_DuskJ P_DuskSecondSlayerChange1
//++ @33 /* �Sal de aqu�, ahora! */ EXTERN P_DuskJ P_DuskSecondSlayerChange1

//CHAIN P_DuskJ P_DuskSecondSlayerChange1
//@34 /* N-no... no entiendo... �est�s intentando decirme algo? */ 
//DO ~SetGlobal("P_DuskSecondSlayerChange","GLOBAL",1)
//ActionOverride(Player1,ReallyForceSpell(Myself,SLAYER_CHANGE))~
//EXIT

//INTERJECT Player1 10 P_DuskSlayerSurvived1
//== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") //!StateCheck("P_Dusk",CD_STATE_NOTVALID) OR(2) //Global("P_DuskRomanceActive","GLOBAL",1) //Global("P_DuskRomanceActive","GLOBAL",2) //Global("P_DuskSecondSlayerChange","GLOBAL",1)~ THEN @35 /* <CHARNAME>... �te encuentras bien? Esta vez cre� que no volver�as a la normalidad... */
//== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") //!StateCheck("P_Dusk",CD_STATE_NOTVALID) OR(2) //Global("P_DuskRomanceActive","GLOBAL",1) //Global("P_DuskRomanceActive","GLOBAL",2) //Global("P_DuskSecondSlayerChange","GLOBAL",1)~ THEN @36 /* No te preocupes... tengo la certeza de que encontraremos alguna soluci�n a esto... quiz�s... quiz�s debas aprender a controlar este poder... Aunque, no s� si eso sea lo recomendable. Algo me dice que llamar�as atenci�n... indeseada. */
//END
//IF ~~ EXIT

//EXTEND_BOTTOM Player1 10
//IF ~Dead("P_Dusk") Global("P_DuskSecondSlayerChange","GLOBAL",1)~ EXTERN Player1 12
//END



////////////// OK!!! \\\\\\\\\\\\\\\\\

// GAELAN BAYLE
I_C_T GAELAN 12 P_DuskGAELAN
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20001 /* Debemos ser cuidadosos. Estos son los Barrios Bajos, por lo que confiar en un extra�o es algo potencialmente peligroso. A�n as�, conf�o en mi fuerza. Si este pelmazo intenta algo raro, mi bast�n le har� ver las estrellas. */
END

I_C_T GAELAN 87 P_DuskGAELAN
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20002 /* Finalmente... conoceremos al l�der de los Ladrones de las Sombras. M�s vale que haga valer nuestros esfuerzos... */
END

// Viconia, ANTES DE SER QUEMADA

I_C_T vicg1 2 P_DuskVICONI13
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @60 /* �Van a quemarla viva?... No... �s�lo por ser una drow? <CHARNAME>, esto es inconcebible. �Debemos hacer algo! */
END

I_C_T vicg1 2 P_DuskVICONI132
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @516 /* �Ja! �C�mo es posible que una drow se haya dejado atrapar tan f�cilmente por estos alfe�iques? En mi opini�n, tal ineptitud deber�a ser castigada con la muerte... */
END

// Xzar
////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T LYROS 5 P_DuskLYROS5
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @61 /* (susurro) <CHARNAME>, claramente fuimos nosotros los que irrumpimos en su casa y matamos a esas viles criaturas. No es que me est� quejando, pero creo que aqu� hay gato encerrado... Debemos estar atentos. */
END

I_C_T LYROS 5 P_DuskLYROS52
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @517 /* (susurro) Esto es c�mico... hemos sido nosotros los que aniquilamos a las 'pertenencias' de este infeliz. Si bien fue un placer hacerlo, creo que hemos sido enga�ados, <CHARNAME>. */
END

// Faldorn
////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T CERNDJ 69 P_DuskCEFALDOR9
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @62 /* Incluso yo puedo entender que esta Faldorn es una afrenta para la naturaleza. Usar a los animales para el asesinato por venganza es una maniobra soez y cobarde. Cernd, espero que puedas patearle el trasero. */
END

I_C_T JAHEIRAJ 94 P_DuskCEFALDOR10
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20003 /* Incluso yo puedo entender que esta Faldorn es una afrenta para la naturaleza. Usar a los animales para el asesinato por venganza es una maniobra soez y cobarde. Jaheira, espero que puedas patearle el trasero. */
END

// Bodhi
////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T BODHI 6 P_DuskBODHI10
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3386 /* �C�mo sabe esta fulana de cu�nto dinero disponemos? Rayos, <CHARNAME>. Si bien, supuestamente, ofrece lo mismo que los Ladrones por menos dinero... Esta criatura se me hace muy... repugnante. */
END

I_C_T BODHI 6 P_DuskBODHI10
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3385 /* Al parecer est� al tanto de nuestros movimientos, <CHARNAME>. Sabe hasta de cu�nto oro disponemos. Err... un dato inc�modo si a m� me lo preguntas... */
END

I_C_T BODHI 10 P_DuskBODHI10
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @63 /* <CHARNAME>, aliarnos con esta criatura supondr� inmiscuirnos directamente en una guerra abierta contra los Ladrones de las Sombras. Debemos ser cautos en nuestras pr�ximas decisiones... puede que la vida de muchos inocentes est�n en nuestras manos... Si hay una guerra, querr�a evitarla (aunque a estas alturas, parece casi imposible). */
END

I_C_T BODHI 10 P_DuskBODHI102
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @518 /* �Una alianza con esta... inmundicia? Aunque nos ofrezca un buen trato, no creo que valga la pena, <CHARNAME>. Si por m� fuera, la decapitar�a aqu� mismo. No merece otro destino... */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T BODHI 72 P_DuskBODHI43
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @63 /* <CHARNAME>, aliarnos con esta criatura supondr� inmiscuirnos directamente en una guerra abierta contra los Ladrones de las Sombras. Debemos ser cautos en nuestras pr�ximas decisiones... puede que la vida de muchos inocentes est�n en nuestras manos... Si hay una guerra, querr�a evitarla (aunque a estas alturas, parece casi imposible). */
END

I_C_T BODHI 72 P_DuskBODHI432
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @518 /* �Una alianza con esta... inmundicia? Aunque nos ofrezca un buen trato, no creo que valga la pena, <CHARNAME>. Si por m� fuera, la decapitar�a aqu� mismo. No merece otro destino... */
END

I_C_T BODHI2 4 P_DuskBODHI24
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @65 /* Mide tus palabras, criatura. Puede que <CHARNAME> sea un fastidio (sin �nimos de ofender) pero al menos tiene claridad en sus palabras, a diferencia tuya. */
END

I_C_T PPBODHI4 14 P_DuskPPBODHI414
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @66 /* Parece ser que Irenicus a�n puede ser alcanzado. <CHARNAME>, debemos superar los obst�culos que nos ponga esta criatura si queremos lograrlo. */
END

I_C_T PPBODHI4 14 P_DuskPPBODHI4142
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @519 /* Tenemos una oportunidad aqu�, <CHARNAME>. Irenicus est� cada vez m�s cerca. Aunque no me f�o de este... demonio. Hagamos lo que quiere y luego... 'lidiemos' con ella. */
END

I_C_T C6BODHI 15 P_DuskC6BODHI15
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @67 /* Finalmente la criatura demuestra sentimientos. La sola menci�n de los elfos casi le hace perder la cabeza. */
END

// El Ojo Ciego

I_C_T GAAL 1 P_DuskGAAL1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @68 /* Fan�ticos... presiento que algo malo est� por ocurrir aqu�, <CHARNAME>... */
END

I_C_T GAAL 1 P_DuskGAAL12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @520 /* No hay nada m�s lamentable que fan�ticos cegados por sus creencias... Aunque, en este caso es algo muy literal para mi gusto. */
END

I_C_T GAAL 22 P_DuskGAAL22
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @69 /* �La hora del juicio ha llegado, Gaal! �Pagar�s con sangre por aquellos inocentes que han muerto por tu culpa! */
END

I_C_T GAAL 22 P_DuskGAAL222
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @521 /* Reza al dios que quieras, perro... Nadie te salvar� de la muerte. �D�jamelo a m�, <CHARNAME>! Disfrutar� de su agon�a... */
END

I_C_T CTRAITOR 2 P_DuskCTRAITOR2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @70 /* Al parecer, el dios va tomando forma de bestia. Debemos tener cuidado, los contempladores no son criaturas para tomar a la ligera. */
END

I_C_T RIFTM01 6 P_DuskRIFTM016
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @71 /* ~��Casi cada siglo?! Rayos...~ */
END

I_C_T RIFTM01 28 P_DuskRIFTM0128
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @72 /* ~El artefacto no nos pertenece. <CHARNAME> est� haciendo lo correcto, al menos deber�as darle el beneficio de la duda.~ */
END

I_C_T RIFTM01 28 P_DuskRIFTM01282
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3387 /* ~�Esc�chame bien, alfe�ique! <CHARNAME> ha decidido regresar el artefacto porque ha cre�do que es lo correcto. Lo m�nimo que deber�as hacer es agradec�rselo de rodillas. �Eso te costar�a? Yo podr�a ayudarte. Ya ver�s que mi espada es un buen incentivo...~ */
END

// Maevar, Renal, Aran Linvail 

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T MAEVAR 24 P_DuskMAEVAR24
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @73 /* ~Este tipo es un pelmazo, <CHARNAME>. Sin duda espero que nuestros esfuerzos valgan la pena.~ */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T MAEVAR 29 P_DuskMAEVAR29
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @74 /* ~Si hay algo que me gustar�a evitar, es asesinar en nombre de este idiota, <CHARNAME>. Espero que puedas encontrar la sabidur�a de hacer lo correcto.~ */
END

I_C_T MAEVAR 29 P_DuskMAEVAR292
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3381 /* ~No es que me queje en tener que asesinar a un ladr�n, <CHARNAME>. Pero preferir�a tener que hacerlo por motivos propios y no por necesidad de esta lacra...~ */
END


////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T EDWIN 3 P_DuskEDWIN3
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @75 /* Claramente, esta es una Cofrad�a de Zopencos, <CHARNAME>. �Asesinar por este... este tipejo de rojo? (suspiro) Creo que puedo encargarme de ello, si es necesario. */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T EDWIN 16 P_DuskEDWIN16
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @76 /* <CHARNAME>, espero que no lleguemos al extremo del asesinato en esta ocasi�n. Sin duda creo que podremos llegar a ser un tanto m�s... diplom�ticos, �verdad? */
END

I_C_T EDWIN 16 P_DuskEDWIN162
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @522 /* <CHARNAME>, creo poder estar a la altura de la tarea. Si quieres, env�ame a m�. Le amenazar� y har� que suelte esos papeles que tanto quiere este... infeliz de rojo. */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T RENAL 5 P_DuskRENAL5
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @77 /* Es bastante carism�tico para ser un ladr�n. Veremos qu� tiene para decir... */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T RENAL 41 P_DuskRENAL41
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @78 /* Finalmente, alguien a quien vale la pena matar. Quiz�s te sorprenda lo que voy a decir, pero espero que nos asignen la tarea de matar a ese bastardo. */
END

I_C_T RENAL 41 P_DuskRENAL412
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @523 /* Espero que nos encarguen el asesinato de Mae'var, <CHARNAME>. Esa lacra no merece estar con vida un segundo m�s... */
END

I_C_T ARAN 49 P_DuskARAN49
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @79 /* Este tipo es tan carism�tico como Renal. Sin embargo, no puedo evitar pensar que puede que estemos siendo estafados... */
END

I_C_T ARAN 53 P_DuskARAN53
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @80 /* Creo que la criatura del cementerio entra en juego aqu�, <CHARNAME>... De seguro le est� dando por los pelos a estos ladronzuelos. */
END

I_C_T ARAN 12 P_DuskARAN12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @81 /* Todo apunta a un enfrentamiento definitivo con la criatura, �verdad? No veo las horas de armar un alboroto entre los muertos. */
END

I_C_T ARAN 66 P_DuskARAN66
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @82 /* Y todo culmin� en la tragedia del Paseo y en la muerte de decenas de personas inocentes. Debo decir que fue una l�stima que no hayas podido resolver esto antes, Aran. */
END

// Hendak y Lehtinian


////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T LEHTIN 17 P_DuskLEHTIN17
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @83 /* Qu� desagradable es este tipejo, <CHARNAME>. Sin embargo, ser� mejor que le sigas preguntando al respecto. Presiento que aqu� pasa algo m�s de lo que vemos. */
END

I_C_T HENDAK 2 P_DuskHendakInt2
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @84 /* �Me hierve la sangre de ira, <CHARNAME>! Hagamos lo posible por liberar a estos esclavos y hagamos pagar a los culpables. Cuenta conmigo. */
END

I_C_T HENDAK 2 P_DuskHendakInt22
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @524 /* Mucho esfuerzo si me lo preguntas a m�. Sin embargo, nunca viene mal tener que despachar a uno que otro esclavista. Lo har� con gusto si es lo que quieres, <CHARNAME>. */
END

I_C_T HENDAK 41 P_DuskHendakInt41
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @85 /* La esclavitud es un negocio muy redituable. El precio que pagamos por la libertad no es visible, pero cuesta y mucho. Acabar con los asquerosos esclavistas es lo mejor que podemos hacer. */
END

I_C_T HENDAK 41 P_DuskHendakInt412
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @525 /* La esclavitud es un negocio muy redituable. Pero es un negocio de cobardes. Y no hay nada que me d� m�s placer que acabar con cobardes que se creen fuertes. Vamos, <CHARNAME>. Busquemos esa guarida y armemos algo de alboroto. */
END

I_C_T HENDAK 43 P_DuskHendakInt43
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @86 /* Hemos hecho algo bueno aqu�, <CHARNAME>. Estoy seguro de que Hendak har� lo posible para mejorar la calidad de vida de aquellos que fueron esclavos. */
END

I_C_T HENDAK 43 P_DuskHendakInt432
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @526 /* No creo que la 'recompensa' haya valido la pena. Pero bueno, destrozar a esos pusil�nimes ha sido todo un placer. */
END

// Distrito del Puente. Paladines Ca�dos. Plano de Tieflings

I_C_T MURDGIRL 8 P_DuskMURDGIRL8
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @87 /* Muchachita, el hecho de que hayas escapado por los pelos, �no te dice algo? Campoescudo hizo lo correcto al darnos tu nombre. */
END

I_C_T MURDGIRL 8 P_DuskMURDGIRL82
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @527 /* �Qu� otra cosa puedes esperar de una cortesana? Para este tipo de personas no existe la palabra 'responsabilidad'. */
END

I_C_T TANNER 8 P_DuskTanner8
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @88 /* As� que lo admites... Miserable. Pagar�s por lo que has hecho... */
END

I_C_T TANNER 8 P_DuskTanner82
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @528 /* Debo admitir que me pica un poco la curiosidad de por qu� ha hecho todo esto. Pero, de nuevo, �a qui�n le importa el deseo de un chiflado? */
END

I_C_T INSPECT 43 P_DuskINSPECT43
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @89 /* Debes ir con cuidado, teniente. El bastardo hab�a plantado un mont�n de trampas mortales, puede que a�n quede alguna. Oh, y si fuera t�, llevar�a mascarilla... El hedor all� es... insoportable. */
END

////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T MEKRAT 11 P_DuskMEKRAT11
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN 
@90 /* No tengo quejas en realizar esta b�squeda, sin embargo, este elfo hechicero parece algo inestable... Recomendar�a ir con cuidado, tanto si tenemos �xito, c�mo si no. */
== P_DuskJ IF ~~ THEN @3324 /* Tampoco tendr�a quejas si decidieras, de repente, que le d� un bastonazo por la cabeza. Dilo y se har� realidad. */
END

I_C_T RAELIS 17 P_DuskRAELIS17
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @91 /* Ha sido una aventura extra�a, <CHARNAME>, aunque siempre es bueno enfrentarse a esclavistas. Espero que Raelis no tenga inconvenientes para abrir ese portal... */
END

I_C_T EDWINJ 58 P_DuskEDWINJ58
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @92 /* �Est�s loco, hechicero? En ning�n momento mencion� que ten�amos permiso para usar tus cochinos conjuros a diestra y siniestra. �No creas que me quedar� de brazos cruzados si tienes la intenci�n de lastimar a inocentes con tu magia! */
== VALYGARJ IF ~InParty("P_Dusk") InParty("Valygar") InMyArea("Valygar") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20007 /* No lo podr�a haber dicho mejor, Dusk. */
== EDWINJ IF ~InParty("P_Dusk") InParty("Edwin") InMyArea("Edwin") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20008 /* �Qu� es esto? �El hombre del palito intenta darme advertencias? Puedes intentar detenerme, hombre del palito... S�lo int�ntalo... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20009 /* Ya lo veremos, mago... ya lo veremos... */
END

I_C_T KAYPAL02 16 P_DuskKAYPAL0216
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @93 /* No soy nadie para juzgar los errores ajenos. M�s a�n de aquellos que intentan redimirse pese a no tener lugar en el mundo... Espero que estemos haciendo lo correcto, <CHARNAME>. */
END



// Valle de Inmes

////////////// OK!!! \\\\\\\\\\\\\\\\\


I_C_T TOLGER 75 P_DuskTOLGER75
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @94 /* �Te pide aceptar un trato sin siquiera conocer los detalles de antemano? Uff... t�pica actitud de un mago cobarde... */
END

I_C_T UHOGRE01 5 P_DuskUHOGRE01
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @96 /* No me pinta que ellos sean los responsables de este misterio, <CHARNAME>. Cazarlos sin que hayan hecho nada malo ser�a un error. Creo que es mejor que sigamos indagando. */
END

// Ventolanza
////////////// OK!!! \\\\\\\\\\\\\\\\\

I_C_T VAELASA 7 P_DuskVAELASA7
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @97 /* Es raro... pero siento una extra�a nostalgia con s�lo verlas... Son criaturas hermosas. 
Has hecho bien en liberarlas, <CHARNAME>.  Pertenecen al bosque. Y a la libertad. */
END

I_C_T FIRKRA02 7 P_DuskFIRKRA02
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @98 /* Cada vez me convenzo m�s, amigo m�o, que lo de tu linaje divino no es un secreto tan bien guardado... */ /* Cada vez me convenzo m�s, amiga m�a, que lo de tu linaje divino no es un secreto tan bien guardado... */
END

I_C_T FIRKRA02 21 P_DuskFIRKRA21
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20010 /* Una criatura imponente... Dicen que los dragones ancianos se encuentran entre las criaturas m�s poderosas de los Reinos... Creo que es oportuno que posterguemos este combate... Creo... */
END

I_C_T FIRKRA02 25 P_DuskFIRKRA25
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20011 /* �El d�a de tu juicio ha llegado, drag�n! ���Prep�rate a sentir nuestra ira!!! */
END


// Castillo de'Arnise

I_C_T NALIA 56 P_DuskP_Dusk56
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @99 /* La muchacha no carece de coraje, <CHARNAME>. Creo que ser�a una buena adici�n al grupo. Sin embargo, tambi�n comprender�a que decidas no arriesgar su cuello en esta empresa. */
END


I_C_T KPCAPT01 3 P_DuskKPCAPT0103
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20012 /* �Bestias excavadoras? Se me ocurre que pueden tratarse de Moles Sombr�as... Eso o... Topos gigantes. */
== MINSCJ IF ~InParty("P_Dusk") InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @20013 /* �Topos gigantes? Bub� se estremece de s�lo pensarlo. */
== JAHEIRAJ IF ~InParty("P_Dusk") InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @20014 /* �Topos? Vaya imaginaci�n que tienes, Dusk. */
== P_DuskJ IF ~ OR (2) InMyArea("Jaheira") InMyArea("Minsc") ~ @20015 /* *carraspeo* Creo que me quedo con la teor�a de las Moles Sombr�as... */
END


// Caravasar 
 
I_C_T NEEBER 10 P_DuskNEEBER8
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @103 /* Claramente, este tipejo no cuenta con todas sus luces. */
END

I_C_T CELOGAN 40 P_DuskCELOGAN40
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @104 /* Tiene sentido... �Puede que se trate de un druida? */
== JAHEIRAJ IF ~ InParty("P_Dusk") InMyArea("Jaheira") ~ THEN @20016 /* Es posible, aunque no veo por qu� har�a algo as�. Provocar una guerra abierta contra las ciudades no es la forma de preservar el equilibrio. */
== VALYGARJ IF ~ InParty("P_Dusk") InMyArea("Valygar") ~ THEN @20017 /* He conocido a algunos druidas. Si bien suelen ser extra�os, no veo razones para que comiencen una guerra sin sentido. Pero, de nuevo, es muy probable que se trate de un druida. */
== CELOGAN IF ~InParty("P_Dusk")~ THEN @20018 /* Quiz�s, pero espera a que contin�e con mi relato. */
END

I_C_T TRGENI01 24 P_DuskTRGENI0124
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20019 /* No s� si podamos confiar en los djinn, <CHARNAME>. Nada garantiza que cumplan con su palabra. */
== TRGENI01 @20020 /* �Pero qu� oigo? Un peque�o mortal dudando de las palabras del gran Khan Zahra. Deber�a mandarte a otro plano por tal insolencia... pero te dir� qu�: Si me traes lo que pido, os dar� un artefacto digno para alguien de tu... clase. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20021 /* No actuamos por la recompensa, criatura. Lo hacemos para ayudar al pueblo que asolas. Si no cumples con la promesa de irte, ten por seguro que te las ver�s con nosotros... */
== TRGENI01 @20022 /* (risa) �Qu� divertidos son ustedes los humanos! */
END

I_C_T TRGENI01 24 P_DuskTRGENI01242
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3388 /* No se puede confiar en un djinn, <CHARNAME>. Si optas por perseguir a su presa, supongo que puedo ponerme detr�s de eso. Pero si fuera por m�, los exterminar�a aqu� mismo. */
== TRGENI01 @20020 /* �Pero qu� oigo? Un peque�o mortal dudando de las palabras del gran Khan Zahra. Deber�a mandarte a otro plano por tal insolencia... pero te dir� qu�: Si me traes lo que pido, os dar� un artefacto digno para alguien de tu... clase. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @514 /* �Un artefacto dices? Aunque suene tentador, ello no me convence de lo que me dices, monstruo. Sin embargo, seguir� a <CHARNAME> y si nos traicionas... lo pagar�s con tu vida. */
== TRGENI01 @20022 /* (risa) �Qu� divertidos son ustedes los humanos! */
END



I_C_T TRGENI01 35 P_DuskTRGENI0135 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20023 /* Supongo que te debo una disculpa, genio. Despu�s de todo, has cumplido con tu palabra. */
== TRGENI01  @20024 /* Ah, pero si es el mortal desconfiado. As� es, caminante, no creas que me he olvidado de ti. Este faj�n es muy extra�o y presiento que puedes encontrarle m�s utilidad que yo. */
END

///

I_C_T TRGENI01 40 P_DuskTRGENI0140 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20023 /* Supongo que te debo una disculpa, genio. Despu�s de todo, has cumplido con tu palabra. */
== TRGENI01  @20024 /* Ah, pero si es el mortal desconfiado. As� es, caminante, no creas que me he olvidado de ti. Este faj�n es muy extra�o y presiento que puedes encontrarle m�s utilidad que yo. */
END


I_C_T TRGENI01 35 P_DuskTRGENI01352 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3389 /* �Ja! �Qui�n lo dir�a? El djinn est� dispuesto a cumplir con su palabra. Espero que tambi�n lo hagas con lo que me has prometido, �eh? */
== TRGENI01  @20024 /* Ah, pero si es el mortal desconfiado. As� es, caminante, no creas que me he olvidado de ti. Este faj�n es muy extra�o y presiento que puedes encontrarle m�s utilidad que yo. */
END

I_C_T TRGENI01 40 P_DuskTRGENI01402 //LastTalkedToBy
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3389 /* �Ja! �Qui�n lo dir�a? El djinn est� dispuesto a cumplir con su palabra. Espero que tambi�n lo hagas con lo que me has prometido, �eh? */
== TRGENI01  @20024 /* Ah, pero si es el mortal desconfiado. As� es, caminante, no creas que me he olvidado de ti. Este faj�n es muy extra�o y presiento que puedes encontrarle m�s utilidad que yo. */
END

// Prisi�n del Hechicero

I_C_T PPCOWLED 1 P_DuskPPCOWLED1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @107 /* (susurro) Algo va mal... mant�n la guardia en alto, s�lo por si las dudas... */
END

I_C_T PPSAEM3 2 P_DuskPPSAEM32
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @108 /* De tres palabras que dice este tipo, cuatro son mentiras. Sin embargo, <CHARNAME>, (pese a arriesgarnos a ser nuevamente traicionados por este batracio) creo que deber�amos escucharlo. */
END

I_C_T PPSAEM3 55 P_DuskPPSAEM355
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @109 /* Con un demonio, Saemon... */
END

I_C_T PPSAEM3 52 P_DuskPPSAEM352
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @110 /* El bastardo nos ha enga�ado de nuevo... */
END

I_C_T ELEARB01 2 P_DuskELEARB012
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @111 /* Estos lugares arcanos... tienen un aire de corrupci�n por doquier... */
== VALYGARJ IF ~InParty("P_Dusk") InParty("Valygar")~ THEN @20025 /* Coincido, Dusk. T�pica treta, viniendo de los Magos Encapuchados... */
END

I_C_T PPTIAX 1 P_DuskPPTIAX1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @112 /* Es extra�o, no percibo energ�a m�gica en este tipejo. Sin embargo, est� claro que no est� en sus cabales. Pobre... */
END

I_C_T PPTIAX 1 P_DuskPPTIAX12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @529 /* Es extra�o, no percibo energ�a m�gica en este tipejo. Sin embargo, est� claro que no est� en sus cabales. */
END

I_C_T PPIRENI1 4 P_DuskPPIRENI14
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @114 /* Est� claro que no dejar� marchar a tu amiga de aqu� as� como as�, <CHARNAME>. Creo que debemos prepararnos para un inevitable combate... */
END

// Ciudad Sahuagin

I_C_T SAHKNG01 33 P_DuskSAHKNG0133
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") InMyArea("Minsc") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @116 /* Ciertamente, este hombre-pez es muy cabeza dura. Me recuerda a alguien... */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc")~ THEN @20026 /* Bub� pregunta, �por qu� has mirado a Minsc cuando has dicho cabeza dura? */
== P_DuskJ IF ~InParty("Minsc") InMyArea("Minsc")~ THEN @20027 /* (carraspeo) Oh, no, mi querido Minsc. No estaba insinuando nada. Solamente me acord� de... ehm... un amigo, llamado... Munsc. S�, eso es. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc")~ THEN @20028 /* �Munsc? �Qu� gran nombre! De seguro debe ser buen amigo tuyo, Dusk. */
== P_DuskJ IF ~InParty("Minsc") InMyArea("Minsc")~ @20029 /* De los mejores. */
END

I_C_T SAHPR1 1 P_DuskSAHPR11
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @117 /* Esta civilizaci�n es incre�ble. Parece ser sumamente antigua. No creo que muchos hombres hayan pisado estas... pegajosas baldosas. */
END

I_C_T SAHPR1 1 P_DuskSAHPR112
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @530 /* Este lugar es asqueroso. El hedor a pescado abunda. Las baldosas est�n pegajosas... Rayos, <CHARNAME>, estos lugares a los que nos traes... */
END

I_C_T SAHPR2 12 P_DuskSAHPR112
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @118 /* No me sorprende. <CHARNAME>, tu linaje de Bhaal seguro que tiene algo que ver. */
END

I_C_T SAHBEH01 26 P_DuskSAHBEH0126
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @119 /* (susurro) Quiz�s puedas convencerlo con cierta perspicacia, <CHARNAME>. Si no me comprendes, env�ame a hablar con �l directamente. Creo que la clave est� en la palabra *arc�n*... */
END

// Infraoscuridad

I_C_T UDSVIR01 3 P_DuskUDSVIR013
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @120 /* He le�do sobre los svirfneblin. En general, son criaturas ben�volas. Si necesitan de nuestra ayuda, no deber�amos dudarlo, <CHARNAME>. Puede que incluso en este lugar podamos hacer algo de bien. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0) ~ THEN @20030 /* Incluso en la Oscuridad buscas ayudar a los dem�s, rivvil. Deber�as saber que ese accionar tuyo, en la Infraoscuridad, te llevar� a una muerte dolorosa. */
== P_DuskJ IF ~ InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20031 /* Si fueras t� la que estuviese en apuros, Viconia, no dudar�a en ayudarte. Para eso est�n los compa�eros. */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ @20032 /* Hmm... �intentas seducirme, abbil? �Oh, Dusk, prot�geme, soy una damisela en apuros! */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20033 /* �Ja! �As� conquistas a tus hembras? Te lo advierto, necesitar�s mucho m�s que dulces palabras para tenerme satisfecha, mi querido abbil. */
== P_DuskJ IF ~ InMyArea("Viconia") Global("P_DUSK_IS_EVIL","GLOBAL",0) ~ @20034 /* (suspiro) �Para qu� habr� hablado? */
END

I_C_T UDSILVER 9 P_DuskUDSILVER12
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @121 /* A�n no salgo de mi asombro. Esta dragona es sumamente hermosa. Una criatura maravillosa. */
END

I_C_T UDSILVER 9 P_DuskUDSILVER122
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @531 /* Nunca cre� ver a un drag�n plateado. Me pregunto si tendr� alg�n artefacto que valga la pena... */
END

I_C_T UDSILVER 35 P_DuskUDSILVER35
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @122 /* Rayos... nunca cre� que alg�n d�a habr�a de convertirme en un... drow... */
== AERIEJ IF ~ InParty("P_Dusk")  InMyArea("Aerie") ~ @20035 /* N-no te ves tan mal, Dusk. No pongas esa cara. A fin de cuentas, as� es como lucir�as si hubieses nacido como un elfo. U-uno de piel oscura. */
== P_DuskJ IF ~ InParty("P_Dusk")  InMyArea("Aerie") ~ @20036 /* S�, bueno... t� no has cambiado mucho. S�lo tu tono de piel se ha oscurecido, pero con claridad a�n puedo ver que eres Aerie. */
== P_DuskJ IF ~ InParty("P_Dusk")  InMyArea("Aerie") InMyArea("Viconia") ~ @20037 /* Hasta puedo ver que tienes un parecido a Viconia, je. */
== VICONIJ IF ~ InParty("P_Dusk")  InMyArea("Aerie") ~ @20038 /* Escuch� eso, rivvil. Tus bromas pueden costarte caro. */
== AERIEJ IF ~ InParty("P_Dusk")  InMyArea("Viconia") ~ @20039 /* En esta ocasi�n estoy de acuerdo con Viconia. Dusk, retr�ctate. */
== P_DuskJ IF ~ InMyArea("Viconia") InMyArea("Aerie") ~ @20040 /* Bueno, bueno. Dejen de mirarme as�. (suspiro) Creo que abro mucho la boca �ltimamente... */
END

I_C_T UDSOLA01 56 P_DuskUDSOLA0156
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @123 /* �Vaya! Con que hay problemas en el para�so, �eh? */
END

// Cap 6 y 7

I_C_T C6ELHAN2 8 P_DuskC6ELHAN28
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @126 /* Hubiera esperado una bienvenida m�s c�lida por parte de los elfos de la superficie... aunque puedo llegar a comprender su alto nivel de desconfianza. */
END

I_C_T C6ELHAN2 8 P_DuskC6ELHAN282
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @37 /* Est�pidos elfos... hemos vivido un calvario en la Infraoscuridad... s�lo para toparnos con esta desconfianza inmerecida... */
END

I_C_T C6ELHAN2 23 P_DuskC6ELHAN223
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20041 /* �Condena? <CHARNAME>, no podemos permitir que le hagan da�o a Viconia. �Otra vez es juzgada s�lo por su raza! */
== VICONIJ IF ~InParty("Viconia") InMyArea("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @20042 /* Tranquil�zate, abbil. S� cuidarme sola. */
END

I_C_T VICONIJ 119 P_DuskVICONIJ119
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @20043 /* Ahora tranquil�zate t�, Viconia. Estoy seguro de que <CHARNAME> bromeaba. Tiene un sentido del humor bastante extra�o... */
END

I_C_T SUELHAN 6 P_DuskSUELHAN6
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0) Global("P_Dusk_T12","GLOBAL",3) ~ THEN @127 /* �Debemos apresurarnos, <CHARNAME>! La ciudad de los elfos corre peligro. �Por la memoria de Celine proteger� a los suyos! */
END

I_C_T p_belld 5 P_DuskBelld1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3254 /* Mi peque�o amigo, Michelson, mencion� algo sobre una alteraci�n en el tiempo. No cre� que algo as� fuese posible. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3255 /* El mundo de la magia tiene la capacidad de alterar el tiempo y el espacio. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3256 /* En mi enfrentamiento contra el destacamento de Kartlzer, mi magia dru�dica colision� contra la magia arcana de su hechicero. */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3257 /* El anillo que ahora tu grupo posee, fue el conductor de dicho evento... No creo que pueda explicar concretamente lo que sucedi�... */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3258 /* Pues... sea lo que sea, tu historia en el Bosque de Mir a�n no ha sucedido. Eso me confunde... */
== P_BELLD IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3259 /* No tienes necesidad de entender todo lo que te rodea, mortal. A veces, las cosas... simplemente suceden. */
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID)~ THEN @3261 /* Es verdad que soy un mortal, ninfa... pero mis amigos me llaman Dusk. T� tambi�n puedes hacerlo. */
END


// Agregados

// Tiris
I_C_T TRSKIN02 16 P_DuskTRSKIN021
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3382 /* <CHARNAME>, aparentemente hemos dado con el curtidor que se nos escap� en Athkatla. Creo que es una buena oportunidad para hacer justicia, �no lo crees? */
END

I_C_T TRSKIN02 16 P_DuskTRSKIN0212
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3383 /* �Ja! �Qui�n lo dir�a? Hemos dado con el bastardo despellejador. Es una buena oportunidad para averiguar por qu� hace lo que hace... aunque, si tenemos que matarlo, no habr� quejas por mi parte. */
END

// GOOD/NEUTRAL
I_C_T PPIRENI2 35 P_Dusk_WIZARD_PRISON1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3390 /* �Irenicus! Pagar�s por las muertes que has causado en el Paseo de Waukin. La muerte de los inocentes no quedar�n en el olvido. �Por Cormyr! */
END
//EVIL
I_C_T PPIRENI2 35 P_Dusk_WIZARD_PRISON1
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3391 /* �Finalmente! El asqueroso hechicero est� a nuestro alcance, <CHARNAME>. �Demostr�mosle a este necio lo que es el verdadero poder! */
END

// Agregados v0.9

I_C_T C6BODHI 0 P_DuskC6BODHI15_GOOD
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3440 /* Debemos tener cuidado, <CHARNAME>. Sabemos cu�n fan�tica es Bodhi de las trampas mortales... */
END

I_C_T C6BODHI 0 P_DuskC6BODHI15_EVIL
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3441 /* Hasta en las �ltimas consecuencias la criatura demuestra confianza... Acabemos con ella de una buena vez. */
END

I_C_T SUJON 14 P_DuskSUJON14_GOOD_NEUTRAL
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN @3442 /* Es hora de que pagues por lo que has hecho, Jon Irenicus. �Por la justicia de Athkatla, caer�s! */
END

I_C_T SUJON 14 P_DuskSUJON14_EVIL
== P_DuskJ IF ~InParty("P_Dusk") InMyArea("P_Dusk") !StateCheck("P_Dusk",CD_STATE_NOTVALID) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN @3443 /* Este es tan buen lugar como cualquiera para hacerte caer con nuestro poder, mago. El resultado ser� uno s�lo: tu muerte. */
END




// ***************************************************************


// COMIENZO DEL APPEND -> AMISTAD e HISTORIA DE Dusk
APPEND P_DuskJ

// ***************************************************************


// t1 - GLOBAL 2
// Incluso si P1 no quiere hablar, el Increment en el Global sigue siendo de 1. 
// Nos podemos guiar por el fin de la conversaci�n por el EXIT en la l�nea de di�logo
// Deberemos decidir cu�nto ponemos de Timer, dependiendo de la cantidad de Talks que tengamos -> "P_DuskTimer","GLOBAL",3600

IF ~Global("P_DuskTalk","GLOBAL",2)~ t1
SAY @129 /* Empecemos una conversaci�n (ocurrir� 100 segundos despu�s de que Dusk se haya unido al grupo) */
++ @130 /* Player 1: Respuesta 1 */ + t1.1
++ @131 /* Player 1: Respuesta 2 */ + t1.2
++ @132 /* Player 1: Respuesta 4 Que corta la conversaci�n */ + t.0
END

IF ~~ t.0
SAY @144 /* Respuesta 4: Fin de la conversaci�n -> Timer 3600 segundos (.d file) */
= @338 /*  */
IF ~~ DO ~IncrementGlobal("P_DuskTalk","GLOBAL",1)
SetGlobal("P_DuskMatMission1","GLOBAL",1) ~ UNSOLVED_JOURNAL @210001 EXIT
END 
//RealSetGlobalTimer("P_DuskTimer","GLOBAL",60)

// NOTA: el t.0 puede utilizarla para finalizar varias conversaciones

// t.1.1, .2 y .3 Son Ramas Loop. Sea cual sea la opci�n que el Player elija, el resultado ser� el mismo.

IF ~~ t1.1
SAY @133 /* Dusk: Respuesta 1.1 -> Se va a la 1.4 */
= @223 /*  */
= @134 /*  */
++ @135 /* Player 1: Respuesta 1 */ + t1.11
++ @136 /* Player 1: Respuesta 2 */ + t.0
END

IF ~~ t1.11
SAY @137 /* Dusk: Respuesta 1.2 -> Se va a la 1.4 */
= @138 /*  */
= @139 /*  */
++ @140 /* Player 1: Respuesta 1 */ + t.0
++ @141 /* Player 1: Respuesta 2 */ + t1.12
END

IF ~~ t1.12
SAY @142 /* Dusk: Respuesta 1.3 -> Se va a la 1.4 */
= @338 /*  */
IF ~~ DO ~IncrementGlobal("P_DuskTalk","GLOBAL",1)
SetGlobal("P_DuskMatMission1","GLOBAL",1)~ UNSOLVED_JOURNAL @210001 EXIT
END 
//RealSetGlobalTimer("P_DuskTimer","GLOBAL",60)

IF ~~ t1.2
SAY @143 /* Dusk: Respuesta 1.1 -> Se va a la 1.4 */
= @139 /*  */
++ @140 /* Player 1: Respuesta 1 */ + t.0
++ @141 /* Player 1: Respuesta 2 */ + t1.12
END


// Cuando se finalizan los di�logos, las funciones IncrementGlobal() y RealSetGlobalTimer() DEBEN ejecutarse

// ***************************************************************


// ***************************************************************


// t2 - P_Dusk_T2

IF ~Global("P_Dusk_T2","GLOBAL",2)~ t2
SAY @145 /*  */
++ @146 /* */ + t2.3
++ @147 /*  */ + t2.1
END

IF ~~ t2.3
SAY @148 /* */
IF ~~ DO ~SetGlobal("P_Dusk_T2","GLOBAL",3)   
//RealSetGlobalTimer("P_DuskTimer","GLOBAL",60)
SetGlobal("P_Dusk_T3","GLOBAL",0)~ EXIT
END


IF ~~ t2.1
SAY @149 /*  */
= @172 /*  */
= @150 /*  */
= @151 /*  */
= @173 /*  */
= @152 /*  */
++ @153 /* */ + t2.4
++ @154 /*  */ + t2.5
++ @155 /*  */ + t2.6
END

IF ~~ t2.6
SAY @156 /* */
IF ~~ DO ~SetGlobal("P_Dusk_T2","GLOBAL",3)   
//RealSetGlobalTimer("P_DuskTimer","GLOBAL",60)
SetGlobal("P_Dusk_T3","GLOBAL",0)~ EXIT
END

IF ~~ t2.5
SAY @158 /*  */
= @171 /*  */
++ @159 /* */ + t2.7
END

IF ~~ t2.7
SAY @160 /*  */
IF ~~ + t2.8
END

IF ~~ t2.4
SAY @157 /*  */
IF ~~ + t2.8
END

IF ~~ t2.8
SAY @161 /*  */
++ @162 /* */ + t2.11
++ @163 /*  */ + t2.9
END

IF ~~ t2.9
SAY @164 /*  */
++ @165 /* */ + t2.10
++ @166 /*  */ + t2.10
++ @167 /*  */ + t2.10
END

IF ~~ t2.10
SAY @168 /*  */
= @169 /*  */
= @170 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T2","GLOBAL",3)  
SetGlobal("P_Dusk_T3","GLOBAL",0) ~ EXIT
END

IF ~~ t2.11
SAY @144 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T2","GLOBAL",3)  
SetGlobal("P_Dusk_T3","GLOBAL",0) ~ EXIT
END

// ***************************************************************


// t3 - P_Dusk_T3
// Esto desencadenar�a la 2da misi�n

IF ~Global("P_Dusk_T3","GLOBAL",2)~ t3
SAY @174 /*  */
++ @175 /* */ + t3.1
++ @176 /*  */ + t3.0
END

IF ~~ t3.0
SAY @177 /*  */
IF ~~ DO ~IncrementGlobal("P_Dusk_T3","GLOBAL",1) 
~ EXIT
END

IF ~~ t3.1
SAY @178 /*  */
= @179 /*  */
= @180 /*  */
= @181 /*  */
= @182 /*  */
= @183 /*  */
= @184 /*  */
= @185 /*  */
= @186 /*  */
= @187 /*  */
= @188 /*  */
= @189 /*  */
= @190 /*  */
= @191 /*  */
= @192 /*  */
= @193 /*  */
= @194 /*  */
= @195 /*  */
++ @196 /*  */ + t3.2
END

IF ~~ t3.2
SAY @197 /*  */
= @198 /*  */
= @199 /*  */
IF ~~ DO ~IncrementGlobal("P_Dusk_T3","GLOBAL",1) 
~ EXIT
END

// ***************************************************************


// T4 - P_Dusk_T4 GOOD

IF ~Global("P_Dusk_T4","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t4
SAY @200 /*  */
++ @201 /* */ + t4.1
++ @202 /*  */ + t4.0
END

IF ~~ t4.0
SAY @203 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T4","GLOBAL",3)~ EXIT
END

IF ~~ t4.1
SAY @204 /*  */
= @205 /*  */
= @206 /*  */
= @207 /*  */
= @208 /*  */
= @209 /*  */
= @210 /*  */
++ @211 /*  */ + t4.2
++ @212 /*  */ + t4.3 //termina
END

IF ~~ t4.3
SAY @213 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T4","GLOBAL",3)~ EXIT
END

IF ~~ t4.2
SAY @214 /*  */
= @215 /*  */
= @216 /*  */
= @217 /*  */
= @218 /*  */
 IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @219 /* *carraspeo* Vaya, Dusk. No me esperaba que fueras tan directo. */ + t4.4
 IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @219 /* *carraspeo* Vaya, Dusk. No me esperaba que fueras tan directo. */ + t4.4e
END

IF ~~ t4.4
SAY @220 /*  */
= @221 /*  */
= @222 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T4","GLOBAL",3)~ EXIT
END

// T4 - P_Dusk_T4 EVIL
// @532 en adelante

IF ~Global("P_Dusk_T4","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t4e
SAY @532 /*  */
= @533 /*  */
++ @534 /* */ + t4.1
++ @202 /*  */ + t4.0
END

IF ~~ t4.4e
SAY @535 /*  */
= @536 /*  */
= @537 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T4","GLOBAL",3)~ EXIT
END



// ***************************************************************


// t5 - GLOBAL 10
// T5 - P_Dusk_T5 GOOD

IF ~Global("P_Dusk_T5","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t5
SAY @224 /*  */
++ @225 /* */ + t5.1
++ @226 /*  */ + t5.1
++ @227 /* */ + t5.2
++ @228 /*  */ + t5.0
END

IF ~~ t5.0
SAY @203 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T5","GLOBAL",3)~ EXIT
END

IF ~~ t5.1
SAY @229 /*  */
= @230 /*  */
= @231 /*  */
= @232 /*  */
= @233 /*  */
= @234 /*  */
= @235 /*  */
= @236 /*  */
++ @237 /*  */ + t5.3
++ @238 /*  */ + t5.3 
END

IF ~~ t5.2
SAY @230 /*  */
= @231 /*  */
= @232 /*  */
= @233 /*  */
= @234 /*  */
= @235 /*  */
= @236 /*  */
++ @237 /*  */ + t5.3
++ @238 /*  */ + t5.3
END

IF ~~ t5.3
SAY @239 /*  */
= @240 /*  */
= @241 /*  */
 IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @242 /* ~No me digas que has conocido a un rey elfo, Dusk. Suena un poco incre�ble.~ */ + t5.4
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @242 /* ~No me digas que has conocido a un rey elfo, Dusk. Suena un poco incre�ble.~ */ + t5.4e
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @243 /* ~He o�do hablar de Elbereth. Fue un h�roe de guerra, seg�n tengo entendido. Menuda suerte has tenido.~ */ + t5.4
    IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @243 /* ~He o�do hablar de Elbereth. Fue un h�roe de guerra, seg�n tengo entendido. Menuda suerte has tenido.~ */ + t5.4e
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @244 /* ~Vaya� pues yo habr�a estado a punto de mojar mis pantalones de ser as�, Dusk. Despu�s de todo, acababas de llevar una invasi�n troll a su bosque. Me imagino que no habr�a sido una bienvenida c�lida.~ */ + t5.4
    IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @244 /* ~Vaya� pues yo habr�a estado a punto de mojar mis pantalones de ser as�, Dusk. Despu�s de todo, acababas de llevar una invasi�n troll a su bosque. Me imagino que no habr�a sido una bienvenida c�lida.~ */ + t5.4e  
END

IF ~~ t5.4
SAY @245 /*  */
= @246 /*  */
= @247 /*  */
= @248 /*  */
= @249 /*  */
= @250 /*  */
= @251 /*  */
= @252 /*  */
= @253 /*  */
= @254 /*  */
= @255 /*  */
= @256 /*  */
= @257 /*  */
= @258 /*  */
= @259 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T5","GLOBAL",3) ~ EXIT
END

// T5 - P_Dusk_T5 EVIL

IF ~Global("P_Dusk_T5","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t5e
SAY @538 /*  */
++ @225 /* */ + t5.1
++ @226 /*  */ + t5.1
++ @227 /* */ + t5.2
++ @228 /*  */ + t5.0
END

IF ~~ t5.4e
SAY @539 /*  */
= @540 /*  */
= @247 /*  */
= @541 /*  */
= @249 /*  */
= @250 /*  */
= @251 /*  */
= @542 /*  */
= @253 /*  */
= @254 /*  */
= @255 /*  */
= @543 /*  */
= @544 /*  */
= @258 /*  */
= @545 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T5","GLOBAL",3) ~ EXIT
END


// ***************************************************************

// P_Dusk_T6 GOOD
// t6 - GLOBAL 12


IF ~Global("P_Dusk_T6","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t6
SAY @260 /*  */
IF ~~ THEN REPLY @261 /* */ + t6.1
IF ~~ THEN REPLY @262 /*  */ + t6.0
END

IF ~~ t6.0
SAY @263 /*  */
= @264 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T6","GLOBAL",3) ~ EXIT
END

IF ~~ t6.1
SAY @265 /*  */
= @266 /*  */
= @267 /*  */
= @268 /*  */
= @269 /*  */
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @270 /* ~He o�do hablar de Elbereth. Fue un h�roe de guerra, seg�n tengo entendido. Menuda suerte has tenido.~ */ + t6.2
    IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @270 /* ~He o�do hablar de Elbereth. Fue un h�roe de guerra, seg�n tengo entendido. Menuda suerte has tenido.~ */ + t6.2e
  IF ~Global("P_DUSK_IS_EVIL","GLOBAL",0)~ THEN REPLY @271 /* ~Vaya� pues yo habr�a estado a punto de mojar mis pantalones de ser as�, Dusk. Despu�s de todo, acababas de llevar una invasi�n troll a su bosque. Me imagino que no habr�a sido una bienvenida c�lida.~ */ + t6.2
    IF ~Global("P_DUSK_IS_EVIL","GLOBAL",1)~ THEN REPLY @271 /* ~Vaya� pues yo habr�a estado a punto de mojar mis pantalones de ser as�, Dusk. Despu�s de todo, acababas de llevar una invasi�n troll a su bosque. Me imagino que no habr�a sido una bienvenida c�lida.~ */ + t6.2e  
END



IF ~~ t6.2
SAY @272 /*  */
= @273 /*  */
= @274 /*  */
= @275 /*  */
= @276 /*  */
= @277 /*  */
= @278 /*  */
++ @279 /* */ + t6.3
END

IF ~~ t6.3
SAY @280 /*  */
= @281 /*  */
= @282 /*  */
= @283 /*  */
= @284 /*  */
= @285 /*  */
= @286 /*  */
= @287 /*  */
= @288 /*  */
= @289 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T6","GLOBAL",3) ~ EXIT
END

// P_Dusk_T6 EVIL
// t6 - GLOBAL 12


IF ~Global("P_Dusk_T6","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t6e
SAY @546 /* Es hora de que escuches c�mo contin�a mi relato, <CHARNAME>. */
IF ~~ THEN REPLY @261 /* */ + t6.1
IF ~~ THEN REPLY @262 /*  */ + t6.0
END


IF ~~ t6.2e
SAY @272 /*  */
= @273 /*  */
= @547 /*  */
= @275 /*  */
= @276 /*  */
= @277 /*  */
= @548 /*  */
++ @279 /* */ + t6.3e
END

IF ~~ t6.3e
SAY @549 /* Lamento mi silencio, <CHARNAME>. A veces... mi mente se queda vagando en el pasado. *carraspeo* Continuar� con la historia. */
= @550 /* El camino que recorr�amos era peligroso� y vaya si lo era� */
= @282 /* En algunas ocasiones nos vimos forzados a luchar contra goblins y trasgos. Rescatamos caravanas de ataques de ogrillones y salvamos a varios viajantes de necr�fagos y xvarts. */
= @551 /* Por alguna raz�n, est�bamos convencidos de que nuestra misi�n ser�a un �xito. Al punto, de que tuvimos una conversaci�n sobre qu� hacer una vez que logr�ramos nuestro cometido. */
= @285 /* Planeamos un viaje a Cormyr, para que ella conociese mi tierra. Volver�a como un h�roe al puerto de Suzail y all�, mis amigos y compa�eros habr�an de conocer a la mujer de mi vida: Celine. */
= @286 /* Ella se emocionaba al escuchar esto. Y me animaba a seguir de viaje con ella. Conocer el bosque de Mir, la Llanura Brillante, Calimsham, los Picos de las Nubes� */
= @552 /* Su voz era una apacible melod�a que danzaba en mi mente durante horas... *carraspeo* No me mires as�, <CHARNAME>. */
= @553 /* Hablar sobre ella me induce una extra�a sensaci�n de tristeza y felicidad... */
= @554 /* Finalmente, llegamos al castillo de Tethyr� y hasta aqu� llega mi narraci�n hoy, <CHARNAME>. Continuar� mi relato m�s adelante. Continuemos. */
IF ~~ DO ~SetGlobal("P_Dusk_T6","GLOBAL",3)~ EXIT
END

// ***************************************************************

//P_Dusk_T7
// t7 - GLOBAL 14
IF ~Global("P_Dusk_T7","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t7
SAY @290 /*  */
++ @291 /* */ + t7.1
++ @292 /*  */ + t7.0
END

IF ~~ t7.0
SAY @293 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T7","GLOBAL",3)~ EXIT
END

IF ~~ t7.1
SAY @294 /*  */
= @295 /*  */
= @296 /*  */
= @297 /*  */
= @298 /*  */
= @299 /*  */
= @300 /*  */
++ @301 /* */ + t7.2
++ @302 /*  */ + t7.2
END

IF ~~ t7.2
SAY @303 /*  */
= @304 /*  */
= @305 /*  */
= @306 /*  */
= @307 /*  */
= @308 /*  */
= @309 /*  */
= @310 /*  */
= @311 /*  */
= @312 /*  */
= @313 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T7","GLOBAL",3)~ EXIT
END

//P_Dusk_T7 EVIL
// t7 - GLOBAL 14
IF ~Global("P_Dusk_T7","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t7e
SAY @290 /*  */
++ @291 /* */ + t7.1e
++ @292 /*  */ + t7.0
END

IF ~~ t7.1e
SAY @294 /*  */
= @295 /*  */
= @296 /*  */
= @297 /*  */
= @298 /*  */
= @299 /*  */
= @300 /*  */
++ @301 /* */ + t7.2e
++ @302 /*  */ + t7.2e
END

IF ~~ t7.2e
SAY @555 /*  */
= @304 /*  */
= @305 /*  */
= @306 /*  */
= @307 /*  */
= @556 /*  */
= @312 /*  */
= @313 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T7","GLOBAL",3)~ EXIT
END


// ***************************************************************

//P_Dusk_T8
// t8 - GLOBAL 16
IF ~Global("P_Dusk_T8","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t8
SAY @314 /*  */
++ @315 /* */ + t8.1
++ @316 /*  */ + t8.0
END

IF ~~ t8.0
SAY @317 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T8","GLOBAL",3)~ EXIT
END

IF ~~ t8.1
SAY @318 /*  */
= @319 /*  */
= @320 /*  */
= @321 /*  */
= @322 /*  */
= @323 /*  */
= @324 /*  */
= @325 /*  */
= @326 /*  */
= @327 /*  */
= @328 /*  */
= @329 /*  */
= @330 /*  */
= @331 /*  */
= @332 /*  */
= @333 /*  */
= @334 /*  */
= @335 /*  */
= @336 /*  */
= @337 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T8","GLOBAL",3)~ EXIT
END

//P_Dusk_T8 EVIL
// t8 - GLOBAL 16
IF ~Global("P_Dusk_T8","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t8e
SAY @557 /*  */
= @558 /*  */
= @320 /*  */
= @559 /*  */
= @322 /*  */
= @323 /*  */
= @560 /*  */
= @561 /*  */
= @562 /*  */
= @564 /*  */
= @565 /*  */
= @566 /*  */
= @567 /*  */
= @568 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T8","GLOBAL",3)~ EXIT
END

// ***************************************************************


//P_Dusk_T9
// t9 - GLOBAL 16

IF ~Global("P_Dusk_T9","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t9
SAY @368 /* <CHARNAME>, �qu� opinas del matrimonio? */
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @3379 /* *carraspeo* Vaya, Dusk. No me esperaba que fueras tan directo. */ + t9.1
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @339 /* �Es una proposici�n, Dusk? No te hac�a del tipo lanzado. *r�e*  */ + t9.1
 IF ~Gender(Player1,MALE)~ THEN REPLY  @340 /* �Por qu� preguntas, Dusk? �Acaso quieres presentarme a alguna noble muchachita de Cormyr? Eso no suena nada mal.  */ + t9.1
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @341 /* �De qu� diantres est�s hablando, Dusk? No pienso casarme contigo.  */ + t9.1
 ++ @342 /* Opino que no es mi fuerte. Pero algo me dice que t� tienes algo qu� decir al respecto.  */ + t9.2
END

IF ~~ t9.2
SAY @343 /* As� es... quer�a continuar mi relato, desde donde nos quedamos. */
IF ~~ DO ~~ GOTO t9.3
END

IF ~~ t9.1
SAY @344 /* Oh, no me refer�a a una propuesta ahora, <CHARNAME>. S�lo quer�a continuar mi relato. */
++ @345 /* Haberlo dicho antes, muchacho. Cu�ntame. */ + t9.3
++ @346 /* Oh, ya veo... *ejem* Bueno... en ese caso, contin�a, Dusk. */ + t9.3
++ @347 /* Es una l�stima. De igual manera, no tenemos tiempo para esto, Dusk. */ + t9.0
END

IF ~~ t9.0
SAY @317 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T9","GLOBAL",3)~ EXIT
END

IF ~~ t9.3
SAY @348 /* Las palabras de Zaranda quedaron grabadas en mi mente� */
= @349 /* Mi mente l�gica indicaba que un matrimonio con Celine ser�a un refuerzo entre las naciones de Cormyr y Shilmista, entre humanos y elfos. */
= @350 /* Pero lo cierto es que ese pensamiento era una excusa positiva a mis verdaderos deseos. */
= @351 /* Deseaba pasar el resto de mi vida mortal con ella� Pero �se era el problema� */
= @352 /* �El resto de mi vida mortal.� �Cu�nto tiempo de vida me quedaba? El tiempo de un humano es como un suspiro al lado de un elfo. �Qu� ser�a de ella durante el resto de su extensa� extensa vida? */
= @353 /* Poco a poco, estos pensamientos apesadumbraron mi alma y me fueron alejando del mundo real. Celine, obviamente, not� esto. */
= @354 /* Pero, pese a ello, no dijo nada, hasta que� */
= @355 /* Hasta que un d�a, Celine, de la nada, me pregunt�: ��Por qu� no quieres casarte conmigo?� */
++ @356 /* Vaya, la chica sab�a lo que quer�a, �no? */ + t9.4
++ @357 /* Conoci�ndote, me imagino que habr�s quedado boquiabierto, �eh? */ + t9.4
++ @358 /* Me interesa saber qu� es lo que respondiste, Dusk. */ + t9.4
END

IF ~~ t9.4
SAY @359 /* Ciertamente, la pregunta me tom� por sorpresa. Al instante, ella confes� haber o�do mi conversaci�n con Zaranda en Darromar. */
= @360 /* Pidi� disculpas, con l�grimas en sus ojos, pero exigi� de inmediato una explicaci�n. */
= @361 /* �S�lo soy un humano, Celine.� Fue mi respuesta. Ella era lo suficientemente perspicaz como para saber a qu� me refer�a. */
= @362 /* �El amor no se mide por tiempo, Dusk.� Respondi�. �El amor no puede ser medido, porque mi amor por ti se desborda en alegr�a y dolor� alegr�a por tenerte y dolor por el miedo a perderte� Pero as� es la vida.� */
= @363 /* �No pretendo ser lo suficientemente sabia como para decir que tengo todas las respuestas, amor m�o. S�lo s� que lo que quiero es pasar la mayor cantidad de d�as a tu lado�� */
= @364 /* �Ahora que he dicho esto� entiendo que el matrimonio sea s�lo una formalidad� Si no quieres, no es necesario que lo hagamos.� */
= @365 /* Por alguna raz�n, en ese momento me decid�, <CHARNAME>. Le dije que la amaba y que nos casar�amos al llegar a Shilmista. */
= @366 /* Nos abrazamos bajo los rojizos rayos de sol del atardecer de Tethyr� a�n siento c�mo sus brazos rodean mi cuello y c�mo su cabello danza en mi rostro. */
= @367 /* Lo lamento, <CHARNAME>� Creo que continuar� mi relato en otro momento. */
IF ~~ DO ~SetGlobal("P_Dusk_T9","GLOBAL",3)~ EXIT
END

//P_Dusk_T9 EVIL
// t9 - GLOBAL 16

IF ~Global("P_Dusk_T9","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t9e
SAY @368 /* <CHARNAME>, �qu� opinas del matrimonio? */
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @3379 /* *carraspeo* Vaya, Dusk. No me esperaba que fueras tan directo. */ + t9.1e
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @339 /* �Es una proposici�n, Dusk? No te hac�a del tipo lanzado. *r�e*  */ + t9.1e
 IF ~Gender(Player1,MALE)~ THEN REPLY  @340 /* �Por qu� preguntas, Dusk? �Acaso quieres presentarme a alguna noble muchachita de Cormyr? Eso no suena nada mal.  */ + t9.1e
 IF ~Gender(Player1,FEMALE)~ THEN REPLY @341 /* �De qu� diantres est�s hablando, Dusk? No pienso casarme contigo.  */ + t9.1e
 ++ @342 /* Opino que no es mi fuerte. Pero algo me dice que t� tienes algo qu� decir al respecto.  */ + t9.2e
END

IF ~~ t9.1e
SAY @569 /* No te hagas ilusiones, <CHARNAME>. Era s�lo una excusa para seguir con mi historia. */
++ @345 /* Haberlo dicho antes, muchacho. Cu�ntame. */ + t9.3e
++ @346 /* Oh, ya veo... *ejem* Bueno... en ese caso, contin�a, Dusk. */ + t9.3e
++ @347 /* Es una l�stima. De igual manera, no tenemos tiempo para esto, Dusk. */ + t9.0
END

IF ~~ t9.2e
SAY @570 /* As� es... continuar� mi relato, desde donde nos quedamos. */
IF ~~ DO ~~ GOTO t9.3e
END

IF ~~ t9.3e
SAY @348 /* Las palabras de Zaranda quedaron grabadas en mi mente� */
= @349 /* Mi mente l�gica indicaba que un matrimonio con Celine ser�a un refuerzo entre las naciones de Cormyr y Shilmista, entre humanos y elfos. */
= @350 /* Pero lo cierto es que ese pensamiento era una excusa positiva a mis verdaderos deseos. */
= @351 /* Deseaba pasar el resto de mi vida mortal con ella� Pero �se era el problema� */
= @352 /* �El resto de mi vida mortal.� �Cu�nto tiempo de vida me quedaba? El tiempo de un humano es como un suspiro al lado de un elfo. �Qu� ser�a de ella durante el resto de su extensa� extensa vida? */
= @353 /* Poco a poco, estos pensamientos apesadumbraron mi alma y me fueron alejando del mundo real. Celine, obviamente, not� esto. */
= @354 /* Pero, pese a ello, no dijo nada, hasta que� */
= @355 /* Hasta que un d�a, Celine, de la nada, me pregunt�: ��Por qu� no quieres casarte conmigo?� */
++ @356 /* Vaya, la chica sab�a lo que quer�a, �no? */ + t9.4
++ @357 /* Conoci�ndote, me imagino que habr�s quedado boquiabierto, �eh? */ + t9.4
++ @358 /* Me interesa saber qu� es lo que respondiste, Dusk. */ + t9.4
END


// ***************************************************************


//P_Dusk_T10

IF ~Global("P_Dusk_T10","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t10
SAY @369 /* Oye, <CHARNAME>, �quieres saber c�mo fue mi casamiento? */
++ @370 /* Vaya, vaya, Dusk. S�, cu�ntamelo todo. */ + t10.1
++ @371 /* Hm... No tenemos tiempo para esto, Dusk. */ + t10.0
END

IF ~~ t10.0
SAY @317 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T10","GLOBAL",3)~ EXIT
END

IF ~~ t10.1
SAY @372 /* Llegamos a Shilmista y fuimos recibidos c�ndidamente por sus habitantes. Inmediatamente, solicit� audiencia con el rey Elbereth para pedir la mano de Celine. Si bien sus padres hab�an muerto hac�a ya muchos a�os en combate contra los orcos, cre� que era lo correcto hacerlo con el protector de los elfos del bosque. */
= @373 /* Elbereth se sorprendi�, pero vio como algo positivo que se forjaran lazos con Cormyr. Le dije que el matrimonio no era una estrategia pol�tica. �l s�lo sonri� y me dijo: �Estoy al tanto de ello.� */
= @374 /* Inmediatamente se plane� la ceremonia. La misma fue maravillosa. Los elfos tienen costumbres hermosas, <CHARNAME>. En todo momento despliegan su amor por la naturaleza, bailando alegremente entre ellos mientras las luci�rnagas sobrevuelan el ambiente. */
= @375 /* Sin embargo� ni Celine ni yo �ramos personas de multitud� en cuanto pudimos, planeamos un viaje hacia el norte del bosque. */
= @376 /* Pasamos nuestras primeras noches en un lugar llamado La Colina de las Estrellas. */
= @377 /* El lugar est� casi en las fronteras del bosque, por lo que el cielo, estando nosotros sobre los alcores, es inmenso. */
= @378 /* El cosmos, infinito, era un oc�ano de estrellas brillantes. La luz del universo nocturno nos iluminaba. */
= @379 /* Bes� a Celine. Y en ese momento� en ese momento� */
= @380 /* Fui lo suficientemente ingenuo como para creer que la felicidad ser�a eterna. */
++ @381 /* �Por qu�, Dusk?, �qu� pas�? */ + t10.2
++ @382 /* Tienes raz�n, Dusk. Eres ingenuo. La felicidad no es eterna. Pero dime, �c�mo sigue tu historia? */ + t10.2
END


IF ~~ t10.2
SAY @383 /* (suspiro) Lo lamento, <CHARNAME>. Continuar� continuar� en otra ocasi�n. */
IF ~~ DO ~SetGlobal("P_Dusk_T10","GLOBAL",3)~ EXIT
END


//P_Dusk_T10 EVIL

IF ~Global("P_Dusk_T10","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t10e
SAY @571 /* ~*carraspeo* Oye, <CHARNAME>, �est�s... interesado en saber c�mo sigue mi historia?~ ~*carraspeo* Oye, <CHARNAME>, �est�s... interesada en saber c�mo sigue mi historia?~ */
++ @370 /* Vaya, vaya, Dusk. S�, cu�ntamelo todo. */ + t10.1e
++ @371 /* Hm... No tenemos tiempo para esto, Dusk. */ + t10.0
END


IF ~~ t10.1e
SAY @572 /* ~Al llegar a Shilmista, solicit� audiencia con el rey Elbereth para pedir la mano de Celine. Si bien sus padres hab�an muerto hac�a ya muchos a�os en combate contra los orcos, en ese entonces cre� que era lo correcto ped�rselo al protector de los elfos del bosque.~ */
= @573 /* ~Para conveniencia del rey elfo, vio como algo positivo que se forjaran lazos con Cormyr. Le dije que el matrimonio no era una estrategia pol�tica.~ */
= @574 /* ~Inmediatamente se plane� la ceremonia. Hm... apenas tengo recuerdo de ella. He tratado de olvidarme de las costumbres �lficas desde entonces. Adem�s... ese tipo de detalles no vienen al caso.~ */
= @575 /* ~La cuesti�n es que ni Celine ni yo �ramos personas de multitud� en cuanto pudimos, planeamos un viaje hacia el norte del bosque.~ */
= @376 /* Pasamos nuestras primeras noches en un lugar llamado La Colina de las Estrellas. */
= @377 /* El lugar est� casi en las fronteras del bosque, por lo que el cielo, estando nosotros sobre los alcores, era inmenso. */
= @378 /* El cosmos, infinito, era un oc�ano de estrellas brillantes. La luz del universo nocturno nos iluminaba. */
= @379 /* Bes� a Celine. Y en ese momento� en ese momento� */
= @576 /* Cre� que ten�a todo lo que necesitaba... que estaba lleno en mi interior de algo que llaman... felicidad. Fui un est�pido al pensar eso... */
++ @381 /* �Por qu�, Dusk?, �qu� pas�? */ + t10.2
++ @382 /* Tienes raz�n, Dusk. Eres ingenuo. La felicidad no es eterna. Pero dime, �c�mo sigue tu historia? */ + t10.2
END

// ***************************************************************

//P_Dusk_T11

IF ~Global("P_Dusk_T11","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t11
SAY @384 /* Comenzar� el relato del evento� del evento que me llev� a convertirme en Asesino de Magos, <CHARNAME>. */
++ @385 /* Claro, Dusk. Por favor, sigue. */ + t11.1
++ @386 /* Quiz�s en otra ocasi�n, Dusk. Ahora no es un buen momento */ + t11.0
END


IF ~~ t11.0
SAY @317 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T11","GLOBAL",3)~ EXIT
END

IF ~~ t11.1
SAY @387 /* A las pocas semanas de mi casamiento, lleg� un mensajero de Darromar. En realidad, el mismo mensajero era uno de los concejeros reales de Zaranda. */
= @388 /* Su nombre era Darvin, un hombrecillo temeroso de su propia sombra. Pidi� hablar conmigo y con Celine respecto a nuestra visita a Tethyr y de nuestra audiencia en el castillo. */
= @389 /* Cuando estuvimos en Darromar y tuve mi audiencia con Zaranda, Darvin estaba entre los presentes, oyendo todo lo que ten�a para decir al respecto. */
= @390 /* Darvin nos dijo que los rumores de una guerra no eran rumores, sino una promesa. Los Zhentarim buscaban la destrucci�n o debilitaci�n de ambas naciones para as� establecer un monopolio en el sur de Faer�n. */
= @391 /* Inquir� sobre los regentes de Tethyr y los grifos que hab�an enviado a Amn. Darvin coment� que el descubrimiento del complot Zhentarim fue posterior al env�o de los grifos y que el accionar de la organizaci�n era inminente. */
= @392 /* ��Por qu� acudes a nosotros?� preguntamos. Darvin dijo que la interferencia directa de alguien de Tethyr o Amn podr�a acelerar los conflictos b�licos, pero que si alguien extranjero, ya sea de Cormyr o Shilmista interven�an, podr�an evitar una guerra. */
++ @393 /* Un poco extra�o, �no lo crees? Cu�ntame qu� pas� despu�s, Dusk. */ + t11.2
++ @394 /* Por como lo narras, ese tal Darvin no te daba una buena espina, �no? */ + t11.2
END

IF ~~ t11.2
SAY @395 /* Lo cierto es que Darvin no me convenc�a mucho. Sin embargo, sac� una nota con el emblema y sello real de Zaranda. Eso me convenci� de seguir escuch�ndolo. */
= @396 /* Lo que pretend�a Darvin de nosotros era una incursi�n al norte del bosque, pasando el r�o Valashar, dejando el bosque detr�s hasta encontrarnos con un campamento, aparentemente, de mercaderes. */
= @397 /* Seg�n Darvin, esos eran los mercenarios Zhentarim enviados a cumplir asesinatos puntuales en Tethyr, con el objetivo de inculpar a Amn en el proceso y as� desatar la guerra. */
= @398 /* ��C�mo sabremos si no estamos atacando a las personas equivocadas?� pregunt�, inteligentemente, Celine. */
= @399 /* Darvin dijo que encontrar�amos emblemas de Zhentarim en sus alijos. */
= @400 /* Estaba al tanto de cu�l era el emblema Zhentarim, as� que no ser�a problema el reconocerlo. */
= @401 /* No tuvimos que pensarlo mucho con Celine, <CHARNAME>. As� que, al cabo de unas horas de planeamiento, partimos hacia el norte. */
++ @402 /* �Y�? Dusk, �qu� pas�? */ + t11.3
++ @403 /* No me digas� era una trampa. */ + t11.3
END

IF ~~ t11.3
SAY @404 /* Falta poco para terminar mi historia, <CHARNAME>. Ser� mejor que lo hagamos en otra ocasi�n. */
IF ~~ DO ~SetGlobal("P_Dusk_T11","GLOBAL",3)~ EXIT
END

//P_Dusk_T11 EVIL


IF ~Global("P_Dusk_T11","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t11e
SAY @577 /* Comenzar� el relato del evento que me llev� a convertirme en Asesino de Magos, <CHARNAME>. */
++ @385 /* Claro, Dusk. Por favor, sigue. */ + t11.1
++ @386 /* Quiz�s en otra ocasi�n, Dusk. Ahora no es un buen momento */ + t11.0
END


// ***************************************************************

//P_Dusk_T12

IF ~Global("P_Dusk_T12","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",0)~ t12
SAY @405 /* <CHARNAME>, si quieres, puedo seguir con mi relato, desde donde lo dejamos. */
++ @406 /* S�, Dusk. Por favor, contin�a. */ + t12.1
++ @386 /* Quiz�s en otra ocasi�n, Dusk. Ahora no es un buen momento */ + t12.0
END


IF ~~ t12.0
SAY @317 /*  */
IF ~~ DO ~SetGlobal("P_Dusk_T12","GLOBAL",3)~ EXIT
END

IF ~~ t12.1
SAY @407 /* Luego de unas noches de viaje, ten�amos al campamento a la vista. */
= @408 /* Celine, con su vista �lfica, not� que el mismo estaba vac�o. */
++ @409 /* Lo sab�a� era una trampa, �verdad? Dime, �qu� hizo Celine? */ + t12.2
++ @410 /* Contin�a, Dusk. �Qu� pas� a continuaci�n? */ + t12.2
END

IF ~~ t12.2
SAY @411 /* Le ped� que se mantuviera oculta mientras yo investigaba el campamento de mercaderes. Ella habr�a de cubrirme con su arco en caso de alguna emboscada. */
= @412 /* Extra�amente, pese a estar en la llanura, el silencio se acrecentaba a medida que me acercaba a las carpas y a las fogatas, ya apagadas, del campamento. */
= @413 /* Ten�a un mal presentimiento, <CHARNAME>. Pese a ello, busqu� en aquellas pertenencias andrajosas por signos del emblema Zentharim. Por m�s que revis�, no pude encontrar nada. */
= @414 /* Esper� unos minutos antes de retirarme del campamento y volver con Celine, pero decid� dar una vuelta m�s. */
= @415 /* En el piso, al frente de una extinguida fogata, vi c�mo algo brillaba, como si de una moneda de oro se tratase. */
= @416 /* Al acercarme, un estruendo me aturdi� y unas chispas me dejaron ciego. Hab�a activado una trampa m�gica... */
= @417 /* Intent� gritar para advertir a Celine que no se acercara, pero estaba mudo. La trampa inclu�a, al parecer, un hechizo de silencio. */
= @418 /* Celine, al ver que hab�a quedado paralizado por aquella trampa, corri� hacia m�. Fue entonces cuando, de la nada, un portal se abri�. */
= @419 /* Al desaparecer las chispas y el humo del hechizo teleportador, la imagen de Darvin yac�a enfrente nuestro. */
= @420 /* Pero no era el hombrecillo d�bil que aparentaba ser. Estaba erguido y sus ojos, antes brillantes, ahora estaban inundados de una negrura sobrenatural. */
= @421 /* �Es incre�ble lo f�cil que resulta enga�ar a las personas felices.� Dijo. Su voz, incluso, hab�a cambiado. Ten�a un tono profundo y acentuado. No pude identificar la regi�n a la que pertenec�a. Pero es de esperarse� los magos humanos se descarr�an de la realidad, incluso de su propia humanidad. */
= @422 /* Celine intent� apuntarle con el arco, pero los labios de Darvin se movieron m�s r�pido: Celine, al igual que yo, sufri� una par�lisis m�gica mediante un hechizo lanzado por el mago. */
= @423 /* �La llegada de ambos a Darromar fue m�s que propicia. Sin lugar a dudas, un evento que signific� un cambio de planes de nuestra Orden.� dijo. */
= @424 /* Intent� hablar, pero a�n permanec�a silenciado por el conjuro. El mago movi� sus dedos y el hechizo se deshizo, aunque segu�a paralizado. */
= @425 /* ��Qui�n eres? Estoy seguro de que Darvin no es tu nombre�� pregunt�. */
= @426 /* El mago rio macabramente. �Es un nombre demasiado com�n en Tethyr, �no es as�?� Se torn� serio y sus negros ojos se turnaban entre m� y Celine. �Soy Anthagar, el nigromante.� */
= @427 /* ��Qu� quieres de nosotros, Anthagar? Si nos quisieras muertos, ya lo habr�as hecho, �no?� pregunt�. */
= @428 /* Sonri�. �Es verdad, capit�n� Pero mi maestro ha tomado un particular inter�s en esta� uni�n entre elfos y humanos.� */
= @429 /* �Es cierto que buscamos la guerra entre Amn y Tethyr�� continu�. �Intentar engatusar a los nobles estaba siendo m�s complicado de lo que esper�bamos. Zaranda no es alguien f�cil de enga�ar. Y, como por arte de magia, ustedes hicieron aparici�n.� */
= @430 /* �Los rumores de guerra hab�an comenzado hac�a ya un tiempo.� Dijo �Lo mejor de todo es que no fue iniciado por nosotros. No sabemos qui�n o qu� fue, ni tampoco nos importa.� */
= @431 /* �Lo �nico que queremos es que el caos se desate en la tierra y que la muerte ronde en el aire. S�lo as� podremos cumplir nuestro objetivo.� */
= @432 /* Mientras el bastardo segu�a narrando su historia, comenc� a darme cuenta de que el hechizo de par�lisis se debilitaba a medida que pasaban los segundos. Concentr� toda mi voluntad en romper aquellas cadenas invisibles. */
= @433 /* Celine se percat� de ello e intent� hacer lo mismo. Pero Anthagar advirti� esto: ���Qu� haces, elfa?!� elev� sus manos ��Bah! De todas formas, s�lo necesito a uno de ustedes con vida.� */
= @434 /* Ahora s� que estaba conjurando un hechizo de muerte m�gica contra Celine. En ese entonces, a�n ignorante de esto, sab�a que lo que lanzara Anthagar provocar�a la muerte de mi esposa. As� que fue entonces cuando, finalmente, pude librarme de su conjuro. */
= @435 /* Acomet�, r�pidamente, con mi bast�n. El golpe contundente dio en su pecho y logr� tumbarlo antes de que terminara su hechizo. */
= @436 /* El bastardo, de sus mangas, sac� una varita m�gica y lanz� un proyectil contra m�. El da�o m�gico dio de lleno en mi pecho. */
= @437 /* Ca� de espaldas al suelo, viendo c�mo Anthagar se incorporaba. �Parece ser que ser�s t�, despu�s de todo.� Dijo. */
= @438 /* Con su voz sombr�a como la muerte comenz� a conjurar. Sab�a que ser�a mi fin� pero dijo que s�lo uno de nosotros dos deb�a morir� en cierto sentido, me alegraba de que fuera yo y no Celine. */
= @439 /* Pero� en ese instante, el grito de Celine inund� el ambiente. Rompi� su par�lisis y se lanz� enfrente del hechizo� */
++ @440 /* Oh, Dusk� no me digas que� */ + t12.3
END

IF ~~ t12.3
SAY @441 /* Celine cay� de bruces frente a m�. Anthagar pareci� sorprendido. Vi que intent� mover sus manos, pero una expresi�n de dolor escap� de sus labios. Al parecer, el golpe que le di con el bast�n le hab�a desgastado. */
= @442 /* �Parece ser� capit�n� que t� tendr�s que lidiar con el peso de la historia...�  */
= @443 /* �Ten en cuenta esto: si tu esposa dice tu nombre, la maldici�n se romper� pero al hacerlo, el efecto ser� la muerte inmediata�� */
= @444 /* �El amor es cruel� �no lo crees?� Luego de decir esto, desapareci� entre las sombras de un portal negro, desvaneci�ndose su maldita risa en la oscuridad. */
= @445 /* R�pidamente tom� a Celine entre mis brazos. A�n estaba con vida� pero� pero� */
= @446 /* El brillo de sus ojos hab�a desaparecido. */
= @447 /* Su respiraci�n parec�a estable, al igual que sus signos vitales� pero no respond�a a mi voz� */
= @448 /* Anthagar le hab�a lanzado una maldici�n� */
= @449 /* <CHARNAME>, no puedo continuar� ser� mejor� ser� mejor que lo dejemos para una �ltima ocasi�n. */
IF ~~ DO ~SetGlobal("P_Dusk_T12","GLOBAL",3)~ EXIT
END

//P_Dusk_T12 EVIL

IF ~Global("P_Dusk_T12","GLOBAL",2) Global("P_DUSK_IS_EVIL","GLOBAL",1)~ t12e
SAY @578 /* <CHARNAME>, continuar� con mi relato donde lo dejamos. */
++ @406 /* S�, Dusk. Por favor, contin�a. */ + t12.1
++ @386 /* Quiz�s en otra ocasi�n, Dusk. Ahora no es un buen momento */ + t12.0
END

// ***************************************************************

//P_Dusk_T13

IF ~Global("P_Dusk_T13","GLOBAL",2)~ t13
SAY @450 /* <CHARNAME>, proceder� a narrar el �ltimo cap�tulo de mi historia� */
= @451 /* Cargu� a Celine en mis brazos y viaj� lo m�s r�pido posible de vuelta a Shilmista. */
= @452 /* En las fronteras nos aguardaban algunos elfos guardianes, por lo que, en cierto sentido, ya no corr�amos peligro de otra emboscada. */
= @453 /* Ya en el coraz�n del bosque, el mismo Elbereth supervis� la situaci�n: Muchos cl�rigos y hechiceros elfos hab�an acudido al llamado del Rey. */
= @454 /* La sabidur�a �lfica desvel� los misterios de la maldici�n en tan s�lo una noche. El hechizo era algo muy particular y personal. Quien lo haya creado, lo hizo pensando meramente en nosotros. */
= @455 /* El alma de Celine hab�a sido apagada por dicha maldici�n. Para restablecerla, se deb�a realizar un ritual sumamente peligroso en un paraje maldito. */
= @456 /* El lugar deb�a tener indicios de magia salvaje, demon�aca o nigrom�ntica. Elbereth mencion� que el sitio m�s cercano para ejecutar dicho ritual eran las Ruinas del Castillo de la Trinidad. */
= @457 /* No prest� atenci�n a los detalles del porqu�, <CHARNAME>. S�lo puedo imaginar que all� se realiz� alg�n ritual mal�fico, relacionado a demonios o muertos vivientes. */
= @458 /* Aquellas imaginaciones se confirmaron cuando llegu� al lugar. */
++ @459 /* Dusk, �fuiste a las ruinas? Me imagino que habr� sido muy peligroso. */ + t13.1
++ @460 /* Est�s loco, muchacho. M�s all� de que fuesen ruinas, conjurar un ritual all� es llamar a la desgracia. */ + t13.1
++ @461 /* Entiendo� �y qu� es lo que pas�? */ + t13.1
END

IF ~~ t13.1
SAY @462 /* Pues� la idea era llevar a cabo dicho ritual en las ruinas del castillo� */
= @463 /* Como sea� los rasgos de la maldici�n, como habr�s imaginado, consist�an en anular la voluntad vital del objetivo. El afectado no pod�a hablar, ni hacer nada por cuenta propia. Como si de una marioneta sin cuerdas se tratase. */
= @464 /* La naturaleza de la maldici�n pod�a ser rota con un contraconjuro llevado a cabo mediante un ritual. Uno de los hechiceros �lficos mencion� que exist�a una leve posibilidad de que la misma Celine rompiera la maldici�n, pero yo sab�a que, si eso suced�a, Celine morir�a... O al menos eso es lo que el bastardo de Anthagar hab�a dicho. */
= @465 /* S�lo dispon�amos de siete d�as y siete noches antes de que la maldici�n consumiera la energ�a vital de Celine. */
= @466 /* Los cl�rigos de Shilmista me dijeron que la maldici�n s�lo pod�a ser limpiada por alguien cercano al maldito. Un ser amado o alguien de la familia. */
= @467 /* Celine no ten�a parientes de sangre, y aunque los tuviera, no les habr�a permitido llevar a cabo el ritual. Era algo que depend�a de m�. Era mi responsabilidad. */
++ @468 /* Tengo conocimiento sobre este tipo de situaciones, Dusk. El costo de dicho ritual no es algo que se deba tomar a la ligera. */ + t13.2
++ @469 /* Fue una decisi�n arriesgada, Dusk. No veo c�mo podr�as poner en peligro tu vida por una causa perdida. */ + t13.2
END

IF ~~ t13.2
SAY @470 /* Deb�a hacerlo, <CHARNAME>. Y estaba al tanto de las posibles consecuencias. */
= @471 /* Y las consecuencias eran fatales� Si fallaba en ejecutar el ritual correctamente, la misma energ�a arcana absorber�a la vida de Celine y la m�a incluida. Pero� si lo hac�a de forma correcta, s�lo habr�a de costar la m�a. */
++ @472 /* ��Tu vida?! Por Candelero, Dusk. �Dar tu vida por un ritual m�gico desconocido? Eso es extremo. */ + t13.3
++ @473 /* Lo que uno hace por amor� Por favor, Dusk, contin�a. */ + t13.3
END

IF ~~ t13.3
SAY @474 /* � */
= @475 /* Al cabo de unos d�as, arribamos a Trinidad. Elbereth brind� una escolta de guerreros y exploradores, pero exig� que permanecieran fuera de las Ruinas. Si no sal�a en unas horas, ten�an la orden de marchar de regreso a Shilmista. */
= @476 /* Ingres� a lo que debi� ser el sal�n real del castillo. Otrora habr�a sido espl�ndido bajo la luz del sol y seguro que gozar�a de felicidad y armon�a� Pero ahora� no era m�s que el esqueleto de una estructura sombr�a y maligna. */
= @477 /* El silencio reinaba en todos los rincones y las sombras parec�an acechar a toda presencia viva que ingresaba en aquellos recintos. */
= @478 /* La luz de la luna no exist�a, puesto a que las negras nubes reinaban constantemente el cielo. La noche all� es eterna� */
= @479 /* Pero deb�a despabilarme de este escenario terror�fico. Ten�a conmigo aquello que habr�a de salvar a mi amor� El contraconjuro: Un pergamino �lfico del Bosque de las Sombras. */
= @480 /* Uno de los hechiceros elfos me entren� para leer el pergamino de contraconjuro que deb�a ejecutar. Me dijo que, al entrar en tierra maldita, deb�a leerlo enfrente de Celine. */
= @481 /* Nadie estaba seguro de qu� es lo que suceder�a durante el proceso, pero s� sab�an que si ten�a �xito, entregar�a mi energ�a vital para revitalizar a Celine. Y si fallaba, ambos habr�amos de morir, inmediatamente, all�, en las sombras de Trinidad� */
= @482 /* (suspiro) Rayos, <CHARNAME>. Perd�name, pero no puedo continuar� cre� que podr�a hacerlo� pero no puedo� no puedo� */
++ @483 /* Dusk, �qu� pas�? Si t� est�s vivo, es obvio que el ritual no funcion�  */ + t13.4
++ @484 /* Claramente fallaste en tu empresa, Dusk. �Le�ste mal el pergamino y provocaste la muerte de tu esposa?  */ + t13.5
++ @485 /* Tengo la certeza de que lo que haya sucedido no fue tu culpa, Dusk. */ + t13.6
END

IF ~~ t13.4
SAY @486 /* El ritual nunca lleg� a ejecutarse, <CHARNAME>� */
IF ~~ DO ~~ GOTO t13.7
END

IF ~~ t13.5
SAY @487 /* Es verdad� fall� le fall� a mi esposa� */
IF ~~ DO ~~ GOTO t13.7
END

IF ~~ t13.6
SAY @488 /* Oh, <CHARNAME>� pero s� fue mi culpa. */
IF ~~ DO ~~ GOTO t13.7
END


IF ~~ t13.7
SAY @489 /* Celine estaba al frente m�o� su mirada vac�a, sin vida, como el ambiente en que nos encontr�bamos. */
= @490 /* Comenc� a leer el pergamino� y con cada palabra, mi voz parec�a elevarse a las alturas, resonando en cada rinc�n de la oscuridad. */
= @491 /* Mi visi�n comenz� a nublarse y comenc� a atisbar figuras sombr�as en el horizonte, como si los mismos emisarios de la muerte vinieran en mi busca. */
= @492 /* La oraci�n estaba por terminar y mi coraz�n, aterrorizado por mi inminente hado, comenz� a temblar. */
= @493 /* Fue entonces cuando volv� mi vista a Celine. Sus ojos estaban llenos de l�grimas y el brillo estaba restaurado. Todo� todo sucedi� muy r�pido� pero a la vez, parec�a como si el tiempo se hubiese detenido. */
= @494 /* La imagen de Anthagar apareci� en mi mente y su advertencia regres�: �Si tu esposa dice tu nombre, la maldici�n se romper� pero al hacerlo, el efecto ser� la muerte��. */
= @495 /* Tuve la intenci�n de acelerar el ritual� pero� mis palabras se vieron rotas� finalmente� por su voz� Ella dijo: */
= @496 /* �Ardusk�� */
= @497 /* Mi voz se quebr� y el silencio inund� a�n m�s el ambiente� */
= @498 /* Aquellas visiones que tuve de la muerte se hab�an desvanecido, y s�lo estaba ella, iluminada por el fuego de las antorchas. */
= @499 /* Sonri� dulcemente, y se desplom� */
= @500 /* Antes� antes de que cayese al suelo la puse entre mis brazos� */
= @501 /* �Celine� Celine� estoy aqu� estoy aqu�, a tu lado�� */
= @502 /* Con su �ltimo aliento, acarici� mi rostro� y sus ojos se cerraron� para siempre� */
= @503 /* Segu� segu� habl�ndole� pero mis palabras se perd�an en las sombras� y nadie me escuchaba. Nadie me escuchaba. */
++ @504 /* Dusk, lamento tu p�rdida� */ + t13.8
++ @505 /* No fue tu culpa, Dusk� hiciste lo que pudiste. */ + t13.8
END

IF ~~ t13.8
SAY @506 /* Perd� la noci�n del tiempo� no s� cu�ntas horas pasaron� ni podr�a decirlo, pues las noches en ese lugar maldito son eternas� */
= @507 /* Finalmente� llev� su cuerpo de vuelta a Shilmista. Elbereth en persona se encarg� de los oficios solemnes. La ceremonia fue� fue hermosa. */
= @508 /* Como consecuencia de esto� fue que entregu� mi vida a ser un Asesino de Magos. Anthagar est� ah� fuera� y a�n necesito respuestas del porqu� */
= @509 /* Pretendo dar con su Orden� y acabar con cada uno de ellos� */
++ @510 /* Cuenta conmigo, Dusk. Llegado el momento, estar� a tu lado. */ + t13.9
++ @511 /* Hm� suena peligroso, Dusk. Pero, de todas formas, te deseo la mejor de las suertes. */ + t13.10
END

IF ~~ t13.9
SAY @512 /* Gracias, <CHARNAME>. Sab�a que podr�a contar contigo. Y gracias por escucharme� */
IF ~~ DO ~SetGlobal("P_Dusk_T13","GLOBAL",3)~ UNSOLVED_JOURNAL @210035 EXIT
END

IF ~~ t13.10
SAY @513 /* La suerte no tiene nada que ver con esto, <CHARNAME>. De igual manera, gracias por escucharme�  */
IF ~~ DO ~SetGlobal("P_Dusk_T13","GLOBAL",3)~ UNSOLVED_JOURNAL @210035 EXIT
END

// *************************************************************** 
// @578 �ltima etiqueta



// ***************************************************************




// ***************************************************************




END // END for APPEND