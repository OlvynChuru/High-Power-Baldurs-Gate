BEGIN ~WISH~

IF ~  Global("wishjames","LOCALS",0)
~ THEN BEGIN 0
  SAY @35327
  IF ~~ THEN REPLY @35349 DO ~SetGlobal("wishjames","LOCALS",1)
~ GOTO 12
  IF ~~ THEN REPLY @35350 DO ~SetGlobal("wishjames","LOCALS",1)
~ GOTO 1
  IF ~~ THEN REPLY @35351 DO ~SetGlobal("wishjames","LOCALS",1)
~ GOTO 2
END

IF ~~ THEN BEGIN 1
  SAY @35328
  IF ~~ THEN REPLY @35352 GOTO 12
  IF ~~ THEN REPLY @35353 GOTO 2
  IF ~  CheckStatGT(LastTalkedToBy,9,WIS)
Global("wishRich","GLOBAL",0)
~ THEN REPLY @35354 DO ~SetGlobal("wishRich","GLOBAL",1)
~ GOTO 3
  IF ~  CheckStatGT(LastTalkedToBy,10,WIS)
Global("wishArmor","GLOBAL",0)
~ THEN REPLY @35355 DO ~SetGlobal("wishArmor","GLOBAL",1)
~ GOTO 6
  IF ~  CheckStatGT(LastTalkedToBy,3,WIS)
Global("wishXP","GLOBAL",0)
~ THEN REPLY @35356 DO ~SetGlobal("wishXP","GLOBAL",1)
~ GOTO 7
  IF ~  CheckStatGT(LastTalkedToBy,11,WIS)
Global("wishGlasses","GLOBAL",0)
~ THEN REPLY @35357 DO ~SetGlobal("wishGlasses","GLOBAL",1)
~ GOTO 11
  IF ~  False()
~ THEN REPLY @35358 DO ~SetGlobal("wishQuest","GLOBAL",1)
~ GOTO 8
  IF ~  CheckStatGT(LastTalkedToBy,13,WIS)
Global("wishTime","GLOBAL",0)
~ THEN REPLY @35359 DO ~SetGlobal("wishTime","GLOBAL",1)
~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,5,WIS)
Global("wishShape","GLOBAL",0)
~ THEN REPLY @35360 DO ~SetGlobal("wishShape","GLOBAL",1)
~ GOTO 10
  IF ~  CheckStatGT(LastTalkedToBy,9,WIS)
Global("wishContigency","GLOBAL",0)
~ THEN REPLY @35361 DO ~SetGlobal("wishContigency","GLOBAL",1)
~ GOTO 5
  IF ~  CheckStatGT(LastTalkedToBy,11,WIS)
Global("wishWail","GLOBAL",0)
~ THEN REPLY @35362 DO ~SetGlobal("wishWail","GLOBAL",1)
~ GOTO 4
END

IF ~~ THEN BEGIN 2
  SAY @35329
  IF ~~ THEN DO ~SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @35330
  IF ~~ THEN DO ~GiveItemCreate("misc38",LastTalkedToBy,0,0,0)
GiveItemCreate("misc36",LastTalkedToBy,0,0,0)
GiveItemCreate("misc35",LastTalkedToBy,0,0,0)
GiveItemCreate("misc43",LastTalkedToBy,0,0,0)
GiveGoldForce(2000)
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 4
  SAY @35331
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpell(Myself,WIZARD_WAIL_OF_THE_BANSHEE))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 5
  SAY @35332
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ForceSpell(Myself,WIZARD_CHAIN_CONTINGENCY))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 6
  SAY @35333
  IF ~~ THEN DO ~GiveItemCreate("meax2h60",LastTalkedToBy,0,0,0)
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 7
  SAY @35334
  IF ~~ THEN DO ~CreateCreatureObjectEffect("MEELOGRE","SPDIMNDR",LastTalkedToBy)
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 8
  SAY @35335
  IF ~~ THEN DO ~GiveItemCreate("wishscrl",Player1,0,0,0)
DisplayStringHead(Myself,37839)
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 9
  SAY @35336
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ReallyForceSpell(Myself,WIZARD_TIME_STOP))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 10
  SAY @35337
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ReallyForceSpell(Myself,WIZARD_SHAPECHANGE))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 11
  SAY @35338
  IF ~~ THEN DO ~GiveItemCreate("misc3p",LastTalkedToBy,3,0,0)
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 12
  SAY @35339
  IF ~  CheckStatGT(LastTalkedToBy,9,WIS)
~ THEN REPLY @35363 GOTO 13
  IF ~  CheckStatLT(LastTalkedToBy,10,WIS)
~ THEN REPLY @35364 GOTO 14
  IF ~  CheckStatGT(LastTalkedToBy,15,WIS)
~ THEN REPLY @35365 GOTO 15
  IF ~  CheckStatLT(LastTalkedToBy,16,WIS)
~ THEN REPLY @35366 GOTO 16
  IF ~  CheckStatGT(LastTalkedToBy,11,WIS)
~ THEN REPLY @35367 GOTO 17
  IF ~  CheckStatLT(LastTalkedToBy,12,WIS)
~ THEN REPLY @35368 GOTO 18
  IF ~~ THEN REPLY @35369 GOTO 19
  IF ~  CheckStatGT(LastTalkedToBy,9,WIS)
~ THEN REPLY @35370 GOTO 20
  IF ~  CheckStatLT(LastTalkedToBy,10,WIS)
~ THEN REPLY @35371 GOTO 21
  IF ~~ THEN REPLY @35372 GOTO 1
  IF ~~ THEN REPLY @35373 GOTO 2
END

IF ~~ THEN BEGIN 13
  SAY @35340
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ReallyForceSpell(Myself,WISH_HEAL_PARTY))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 14
  SAY @35341
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ReallyForceSpell(Myself,WISH_POISON))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 15
  SAY @35342
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ReallyForceSpell(Myself,WISH_MEMORIZE))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 16
  SAY @35343
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ReallyForceSpell(Myself,WISH_LOSE_SPELL))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 17
  SAY @35344
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,WISH_GLOBE))
ActionOverride(Player2,ReallyForceSpell(Myself,WISH_GLOBE))
ActionOverride(Player3,ReallyForceSpell(Myself,WISH_GLOBE))
ActionOverride(Player4,ReallyForceSpell(Myself,WISH_GLOBE))
ActionOverride(Player5,ReallyForceSpell(Myself,WISH_GLOBE))
ActionOverride(Player6,ReallyForceSpell(Myself,WISH_GLOBE))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 18
  SAY @35345
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ReallyForceSpell(Myself,WISH_SPELL_FAILURE))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 19
  SAY @35346
  IF ~~ THEN DO ~ActionOverride(LastTalkedToBy,ReallyForceSpell(Myself,WISH_RABBIT))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 20
  SAY @35347
  IF ~~ THEN DO ~ActionOverride(Player1,ReallyForceSpell(Myself,CLERIC_NEGATIVE_PLANE_PROTECTION))
ActionOverride(Player2,ReallyForceSpell(Myself,CLERIC_NEGATIVE_PLANE_PROTECTION))
ActionOverride(Player3,ReallyForceSpell(Myself,CLERIC_NEGATIVE_PLANE_PROTECTION))
ActionOverride(Player4,ReallyForceSpell(Myself,CLERIC_NEGATIVE_PLANE_PROTECTION))
ActionOverride(Player5,ReallyForceSpell(Myself,CLERIC_NEGATIVE_PLANE_PROTECTION))
ActionOverride(Player6,ReallyForceSpell(Myself,CLERIC_NEGATIVE_PLANE_PROTECTION))
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 21
  SAY @35348
  IF ~~ THEN DO ~DayNight(MIDNIGHT)
CreateCreatureObjectEffect("meshadow","SPDIMNDR",LastTalkedToBy)
CreateCreatureObjectEffect("meshadow","SPDIMNDR",LastTalkedToBy)
CreateCreatureObjectEffect("meshadow","SPDIMNDR",LastTalkedToBy)
CreateCreatureObjectEffect("meshadow","SPDIMNDR",LastTalkedToBy)
CreateCreatureObjectEffect("meshadow","SPDIMNDR",LastTalkedToBy)
CreateCreatureObjectEffect("meshadow","SPDIMNDR",LastTalkedToBy)
SetInterrupt(FALSE)
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END