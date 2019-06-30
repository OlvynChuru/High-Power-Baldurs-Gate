BEGIN ~WISH25~

IF ~  NumTimesTalkedTo(0)
~ THEN BEGIN 0
  SAY @35374
  IF ~~ THEN REPLY @35387 GOTO 7
  IF ~~ THEN REPLY @35388 GOTO 3
  IF ~  CombatCounterGT(0)
~ THEN REPLY @35389 GOTO 2
  IF ~~ THEN REPLY @35390 GOTO 1
END

IF ~~ THEN BEGIN 1
  SAY @35375
  IF ~~ THEN DO ~ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @35376
  IF ~~ THEN REPLY @35391 GOTO 3
  IF ~~ THEN REPLY @35392 GOTO 7
  IF ~~ THEN REPLY @35393 GOTO 1
END

IF ~~ THEN BEGIN 3
  SAY @35377
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4
  SAY @35378
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5
  SAY @35379
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6
  SAY @35380
  IF ~  CombatCounterGT(0)
~ THEN REPLY @35394 GOTO 2
  IF ~~ THEN REPLY @35395 GOTO 7
  IF ~~ THEN REPLY @35396 GOTO 1
END

IF ~~ THEN BEGIN 7
  SAY @35381
  IF ~  CheckStatGT(LastTalkedToBy,24,WIS)
~ THEN DO ~SetupWish(4,1)
~ GOTO 8
  IF ~  CheckStatGT(LastTalkedToBy,20,WIS)
CheckStatLT(LastTalkedToBy,25,WIS)
~ THEN DO ~SetupWish(3,1)
~ GOTO 9
  IF ~  CheckStatGT(LastTalkedToBy,15,WIS)
CheckStatLT(LastTalkedToBy,21,WIS)
~ THEN DO ~SetupWish(2,1)
~ GOTO 10
  IF ~  CheckStatLT(LastTalkedToBy,16,WIS)
~ THEN DO ~SetupWish(1,1)
~ GOTO 11
END

IF ~~ THEN BEGIN 8
  SAY @35382
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 9
  SAY @35383
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 10
  SAY @35384
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 11
  SAY @35385
  IF ~~ THEN GOTO 12
END

IF ~~ THEN BEGIN 12
  SAY @35386
  IF ~  Global("WishPower01","GLOBAL",1)
~ THEN REPLY @35397 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish26",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower02","GLOBAL",1)
~ THEN REPLY @35398 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish27",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower03","GLOBAL",1)
~ THEN REPLY @35399 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish28",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower04","GLOBAL",1)
~ THEN REPLY @35400 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish29",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower05","GLOBAL",1)
~ THEN REPLY @35401 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish30",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower06","GLOBAL",1)
~ THEN REPLY @35402 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish31",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower07","GLOBAL",1)
~ THEN REPLY @35403 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish32",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower08","GLOBAL",1)
~ THEN REPLY @35404 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish33",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower09","GLOBAL",1)
~ THEN REPLY @35405 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish34",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower10","GLOBAL",1)
~ THEN REPLY @35406 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish35",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower11","GLOBAL",1)
~ THEN REPLY @35407 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish36",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower12","GLOBAL",1)
~ THEN REPLY @35408 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish37",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower13","GLOBAL",1)
~ THEN REPLY @35409 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish38",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower14","GLOBAL",1)
~ THEN REPLY @35410 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish46",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower15","GLOBAL",1)
~ THEN REPLY @35411 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish08",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower16","GLOBAL",1)
~ THEN REPLY @35412 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish10",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower17","GLOBAL",1)
~ THEN REPLY @35413 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("MEWISH11",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower18","GLOBAL",1)
~ THEN REPLY @35414 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish12",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower19","GLOBAL",1)
~ THEN REPLY @35415 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish14",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower20","GLOBAL",1)
~ THEN REPLY @35416 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish13",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower21","GLOBAL",1)
~ THEN REPLY @35417 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("MEWISH02",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower22","GLOBAL",1)
~ THEN REPLY @35418 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish17",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower23","GLOBAL",1)
~ THEN REPLY @35419 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish39",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower24","GLOBAL",1)
~ THEN REPLY @35420 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish40",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower25","GLOBAL",1)
~ THEN REPLY @35421 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish18",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower26","GLOBAL",1)
~ THEN REPLY @35422 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish19",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower27","GLOBAL",1)
~ THEN REPLY @35423 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish20",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower28","GLOBAL",1)
~ THEN REPLY @35424 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish21",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower29","GLOBAL",1)
~ THEN REPLY @35425 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish22",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower30","GLOBAL",1)
~ THEN REPLY @35426 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish23",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower31","GLOBAL",1)
~ THEN REPLY @35427 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish24",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower32","GLOBAL",1)
~ THEN REPLY @35428 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish41",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower33","GLOBAL",1)
~ THEN REPLY @35429 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish42",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower34","GLOBAL",1)
~ THEN REPLY @35430 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish43",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower35","GLOBAL",1)
~ THEN REPLY @35431 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish44",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower36","GLOBAL",1)
~ THEN REPLY @35432 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish45",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
  IF ~  Global("WishPower37","GLOBAL",1)
~ THEN REPLY @35433 DO ~ActionOverride(LastTalkedToBy,ForceSpellRES("spwish25",Myself))
ForceSpell(Myself,DRYAD_TELEPORT)
~ EXIT
END