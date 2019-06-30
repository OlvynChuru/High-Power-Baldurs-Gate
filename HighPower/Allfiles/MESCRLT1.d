BEGIN ~MESCRLT1~

IF WEIGHT #4 ~True()~ THEN BEGIN 0
  SAY @1901
  IF ~	OR(2)
  	Global("Chapter","GLOBAL",0)
  	Global("InCandlekeepCH6","GLOBAL",1)~ THEN REPLY @1902 GOTO 1
  IF ~OR(3)
  AreaCheck("AR1008")
  AreaCheck("AR1009")
  AreaCheck("AR1010")~ THEN REPLY @1902 GOTO 2
  IF ~!Global("Chapter","GLOBAL",0)
!Global("InCandlekeepCH6","GLOBAL",1)
!AreaCheck("AR1008")
!AreaCheck("AR1009")
!AreaCheck("AR1010")~ THEN REPLY @1902 GOTO 3
  IF ~~ THEN REPLY @1903 EXIT
END

IF ~~ THEN BEGIN 1
  SAY @1904
  IF ~~ THEN REPLY @1903 EXIT
END

IF ~~ THEN BEGIN 2
  SAY @1906
  IF ~~ THEN REPLY @1903 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @1905
  IF ~~ THEN DO ~SetGlobal("Party_Used_MESCRLT1","GLOBAL",1)
		MultiPlayerSync()
		ActionOverride(Player1,LeaveAreaLUAPanic("AR0514","",[3595.2148],E))
		ActionOverride(Player1,LeaveAreaLUA("AR0514","",[3595.2148],E))
		ActionOverride(Player1,SetMasterArea("AR0500"))
		ActionOverride(Player2,LeaveAreaLUA("AR0514","",[3549.2182],E))
		ActionOverride(Player3,LeaveAreaLUA("AR0514","",[3537.2106],E))
		ActionOverride(Player4,LeaveAreaLUA("AR0514","",[3489.2140],E))
		ActionOverride(Player5,LeaveAreaLUA("AR0514","",[3483.2068],E))
		ActionOverride(Player6,LeaveAreaLUA("AR0514","",[3433.2100],E))
		MultiPlayerSync()~ EXIT
END