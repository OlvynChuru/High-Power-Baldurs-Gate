BEGIN ~MEARDOSH~

IF ~True()~ THEN BEGIN 0
  SAY @18345
  IF ~~ THEN REPLY @18346 GOTO 1
  IF ~~ THEN REPLY @18347 GOTO 2
  IF ~~ THEN REPLY @18348 DO ~Enemy()~ EXIT
  IF ~~ THEN REPLY @18349 GOTO 3
END

IF ~~ THEN BEGIN 1
  SAY @18350
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 2
  SAY @18351
  IF ~~ THEN DO ~Enemy()~ EXIT
END

IF ~~ THEN BEGIN 3
  SAY @18352
  IF ~~ THEN DO ~TakePartyGold(2000000000)
EscapeArea()~ EXIT
END