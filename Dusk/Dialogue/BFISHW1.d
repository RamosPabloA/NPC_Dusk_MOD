// creator  : weidu (version 24700)
// argument : BFISHW1.DLG
// game     : .
// source   : ./override/BFISHW1.DLG
// dialog   : .\lang\es_es\dialog.tlk
// dialogF  : .\lang\es_es\dialogf.tlk

BEGIN ~BFISHW1~
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 3 4 5 6 7 even though they appear after this state */
~  Global("InteractSarevok","LOCALS",0)
InParty ("Sarevok")
IsValidForPartyDialogue("Sarevok")
RandomNum(2,1)
~ THEN BEGIN 8 // from:
  SAY #26257 /* ~Os diré algo, sé que mi esposo dice que está pescando todo el día... ¡pero estoy segura de que está en Las Cinco Jarras!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 3 4 5 6 7 even though they appear after this state */
~  Global("InteractSarevok","LOCALS",0)
InParty ("Sarevok")
IsValidForPartyDialogue("Sarevok")
RandomNum(2,1)
~ THEN BEGIN 9 // from:
  SAY #26258 /* ~Dusk~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 3 4 5 6 7 even though they appear after this state */
~  Global("InteractSarevok","LOCALS",0)
InParty ("Sarevok")
IsValidForPartyDialogue("Sarevok")
RandomNum(2,1)
~ THEN BEGIN 10 // from:
  SAY #26259 /* ~¡Que Helm nos guarde! Estaba tendiendo la maldita colada y ¿dónde creéis que se han ido mis hijos? ¡Ni rastro! Cuando los coja...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("InteractSarevok","LOCALS",0)
InParty ("Sarevok")
IsValidForPartyDialogue("Sarevok")
RandomNum(2,1)
~ THEN BEGIN 11 // from:
  SAY #26260 /* ~¡Os lo advierto! ¡Tened cuidado por estos lugares! ¡Un asesino anda suelto!~ */
  IF ~~ THEN DO ~SetGlobal("knowsmurders","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 ~  Global("InteractSarevok","LOCALS",0)
InParty ("Sarevok")
IsValidForPartyDialogue("Sarevok")
RandomNum(2,1)
~ THEN BEGIN 12 // from:
  SAY #26261 /* ~Así que... vos sois el que investiga los asesinatos, ¿eh? ¿Y qué? ¿Queréis que os aplauda? Estoy demasiado ocupada.~ ~Así que... vos sois la que investiga los asesinatos, ¿eh? ¿Y qué? ¿Queréis que os aplauda? Estoy demasiado ocupada.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  Global("InteractSarevok","LOCALS",0)
InParty ("Sarevok")
IsValidForPartyDialogue("Sarevok")
RandomNum(2,1)
~ THEN BEGIN 13 // from:
  SAY #26262 /* ~¿Qué estáis mirando? ¡Será mejor que no se os salgan los ojos de las órbitas o probaréis mi rodillo, os lo aseguro!~ */
  IF ~~ THEN DO ~SetGlobal("InteractYoshimo","LOCALS",1)
~ EXTERN ~YOSHJ~ 17
END

IF WEIGHT #3 ~  Global("InteractSarevok","LOCALS",0)
InParty ("Sarevok")
IsValidForPartyDialogue("Sarevok")
RandomNum(2,1)
~ THEN BEGIN 14 // from:
  SAY #48700 /* ~¡Os he visto, gnomo! ¡Vos y los de vuestra calaña sois unos borrachos que hacéis que mi marido pase fuera toda la noche con vuestras historias! ¡Alejaos!~ */
  IF ~~ THEN DO ~SetGlobal("InteractJan","LOCALS",1)
~ EXTERN ~JANJ~ 105
END

IF WEIGHT #4 ~  Global("InteractSarevok","LOCALS",0)
InParty ("Sarevok")
IsValidForPartyDialogue("Sarevok")
RandomNum(2,1)
~ THEN BEGIN 15 // from:
  SAY #48705 /* ~¡Eh, vos! ¡Sí, el que está pavoneándose con su ostentosa armadura! Por qué no hacéis algo útil y encerráis a todos los ladrones y a los rateros, ¿eh?~ ~¡Eh, vos! ¡Sí, la que está pavoneándose con su ostentosa armadura! Por qué no hacéis algo útil y encerráis a todos los ladrones y a los rateros, ¿eh?~ */
  IF ~~ THEN DO ~SetGlobal("InteractKeldorn","LOCALS",1)
~ EXTERN ~KELDORJ~ 118
END

IF WEIGHT #6 /* Agregado por Pol Rupes */
~RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY @1 /* ~¡Puedo limpiar y destripar un pez en un abrir y cerrar de ojos! Podéis encontrar nuestro género en el mercado todos los días.~ */
  IF ~~ THEN EXIT
END
  
IF WEIGHT #5 /* Triggers after states #: 3 4 5 6 7 even though they appear after this state */
~  RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @2 /* ~Os diré algo, sé que mi esposo dice que está pescando todo el día... ¡pero estoy segura de que está en Las Cinco Jarras!~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 3 4 5 6 7 even though they appear after this state */
~  RandomNum(3,3)
~ THEN BEGIN 2 // from:
  SAY @3 /* ~¡Que Helm nos guarde! Estaba tendiendo la maldita colada y ¿dónde creéis que se han ido mis hijos? ¡Ni rastro! Cuando los coja...~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~  Global("MurdersSolved","GLOBAL",0)
RandomNum(3,1)
~ THEN BEGIN 3 // from:
  SAY @4 /* ~¡Os lo advierto! ¡Tened cuidado por estos lugares! ¡Un asesino anda suelto!~ */
  IF ~~ THEN DO ~SetGlobal("knowsmurders","GLOBAL",1)
~ EXIT
END

IF WEIGHT #1 ~  Global("MurdersSolved","GLOBAL",1)
RandomNum(3,1)
~ THEN BEGIN 4 // from:
  SAY @5 /* ~Así que... vos sois el que investiga los asesinatos, ¿eh? ¿Y qué? ¿Queréis que os aplauda? Estoy demasiado ocupada.~ ~Así que... vos sois la que investiga los asesinatos, ¿eh? ¿Y qué? ¿Queréis que os aplauda? Estoy demasiado ocupada.~ */
  IF ~~ THEN EXIT
END

IF WEIGHT #2 ~  Global("InteractYoshimo","LOCALS",0)
IsValidForPartyDialogue("Yoshimo")
RandomNum(2,1)
~ THEN BEGIN 5 // from:
  SAY @6 /* ~¿Qué estáis mirando? ¡Será mejor que no se os salgan los ojos de las órbitas o probaréis mi rodillo, os lo aseguro!~ */
  IF ~~ THEN DO ~SetGlobal("InteractYoshimo","LOCALS",1)
~ EXTERN ~YOSHJ~ 17
END

IF WEIGHT #3 ~  Global("InteractJan","LOCALS",0)
IsValidForPartyDialogue("Jan")
RandomNum(2,1)
~ THEN BEGIN 6 // from:
  SAY @7 /* ~¡Os he visto, gnomo! ¡Vos y los de vuestra calaña sois unos borrachos que hacéis que mi marido pase fuera toda la noche con vuestras historias! ¡Alejaos!~ */
  IF ~~ THEN DO ~SetGlobal("InteractJan","LOCALS",1)
~ EXTERN ~JANJ~ 105
END

IF WEIGHT #4 ~  Global("InteractKeldorn","LOCALS",0)
IsValidForPartyDialogue("Keldorn")
RandomNum(2,1)
~ THEN BEGIN 7 // from:
  SAY @8 /* ~¡Eh, vos! ¡Sí, el que está pavoneándose con su ostentosa armadura! Por qué no hacéis algo útil y encerráis a todos los ladrones y a los rateros, ¿eh?~ ~¡Eh, vos! ¡Sí, la que está pavoneándose con su ostentosa armadura! Por qué no hacéis algo útil y encerráis a todos los ladrones y a los rateros, ¿eh?~ */
  IF ~~ THEN DO ~SetGlobal("InteractKeldorn","LOCALS",1)
~ EXTERN ~KELDORJ~ 118
END