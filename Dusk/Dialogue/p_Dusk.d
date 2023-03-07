BEGIN P_Dusk 

// EJEMPLO DE BLOQUE SIMPLE
//IF ~~ THEN BEGIN 6 // from:
//  SAY @5 /* ~~*/
//  IF ~~ THEN GOTO 7
//END

// EJEMPLO DE BLOQUE SIMPLE CON EXTERN
//IF ~~ THEN BEGIN 11 // from:
//  SAY @10 /* ~A eso iba... Michelson ha desaparecido.~ */
//  IF ~~ THEN EXTERN ~P_DUSKJ~ 104
//END

CHAIN IF ~Global("P_DuskMet","GLOBAL",0)~ THEN P_Dusk b1 
@0 /* Mis o�dos a�n retumban con esa explosi�n. Muchas personas han perecido debido a la imprudencia de ese mago... Todo pas� demasiado r�pido, no he podido reaccionar a tiempo... */
DO ~SetGlobal("P_DuskMet","GLOBAL",1)~ 
= @20005 /* Sin embargo, veo que no he sido el �nico afectado por la par�lisis, mi <LADYLORD>. Mi nombre es Dusk, y soy un mensajero de la paz... o al menos lo era... Veo que t� no est�s en relaci�n amistosa con ese hechicero homicida. �C�mo es tu nombre? Puede que tenga algo que proponerte. */
END 
++ @6 /* Un placer, Dusk. Mi nombre es <CHARNAME>. Y est�s en lo cierto... ese hechicero ha secuestrado a mi amiga, Imoen.*/ EXTERN P_Dusk b1.1 
++ @7 /* Ahora no tengo tiempo para hablar. */  EXTERN P_Dusk b1.2

CHAIN P_Dusk b1.1

@8 /* Si bien fueron esos magos encapuchados los que se llevaron a ambos, entiendo que ese maligno hechicero es quien tiene de reh�n a tu amiga. Nunca vi un poder tan inmenso... */
= @20006 /* <CHARNAME>, imagino que ahora emplear�s una b�squeda por tu amiga... o una cacer�a contra ese mago... Por favor, perm�teme acompa�arte. */
END
++ @20008 /* �Y qu� puedes aportar al grupo, Dusk? Esta misi�n es peligrosa, debo saber si puedes valerte por ti mismo. */ EXTERN P_Dusk b1.3 
++ @20007 /* Quiz�s m�s tarde, Dusk. Ahora debo atender otros asuntos. */  EXTERN P_Dusk b1.2

CHAIN P_Dusk b1.3

@20009 /* Soy un guerrero, h�bil con el bast�n y la espada bastarda. He tenido un entrenamiento especial en la lucha contra los lanzadores de hechizos. Creo que alguien as� puede serte �til en tu b�squeda, <CHARNAME>. */
== MINSCJ IF ~InParty("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN @20010 /* <CHARNAME>, Boo y yo opinamos que el guerrero del bast�n nos acompa�e, parece ser que tiene sed de justicia, �justo como nosotros! */
== JAHEIRAJ IF ~InParty("Jaheira") InMyArea("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @20011 /* Pues, no s� si nos ser� �til o no, <CHARNAME>, dejo que eso sea a tu criterio. Lo �nico que me interesa es perseguir a Irenicus y vengar a Khalid. */
== YOSHJ IF ~InParty("Yoshimo") InMyArea("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN @20012 /* Creo que nos vendr�a bien su ayuda, <CHARNAME>. Cualquier aliado, a estas alturas, nos vendr�a bien. */
== P_Dusk @20014 /* �Y bien? Espero que al menos consideres mi oferta. */
END
++ @20013 /* De acuerdo, me has convencido. En marcha. */ EXTERN P_Dusk b1.4 
++ @20007 /* Quiz�s m�s tarde, Dusk. Ahora debo atender otros asuntos. */  EXTERN P_Dusk b1.2

CHAIN P_Dusk b1.2
@12 /* Como quieras... estar� aqu� si cambias de opini�n. */
EXIT

CHAIN P_Dusk b1.4
@13 /* Gracias... Ser� un placer viajar contigo. Creo que lo m�s pertinente ser� pedir informaci�n a los ciudadanos. Puede que en los Barrios Bajos encontremos la respuesta. */
END
IF ~~ EXTERN P_Dusk b1.join 

CHAIN P_Dusk b1.join
@15 /* (suspiro) Viajar me vendr� bien... �En marcha, mi <LADYLORD>, tenemos amigos que rescatar y magos que ajusticiar! */
DO ~JoinParty()~ 
EXIT

APPEND P_Dusk

IF ~Global("P_DuskMet","GLOBAL",1)~ b2 
SAY @16 /* �Has cambiado de opini�n? La propuesta es unirme a ti, mi <LADYLORD>. Siento que la injusticia que ha sucedido en el Paseo de Waukin no debe quedar impune. */
++ @17 /* De hecho, s�. Bienvenido a bordo, Dusk. */ + b1.join
++ @18 /* Por el momento no. */ + b1.2
END 

END
