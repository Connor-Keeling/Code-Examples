%Rock, Paper, Scissors Assignment
%April 10, 2020
%By: Connor Keeling

colour (10)
colourback (black)
cls

%VARIABLES
var playerscore, cpuscore, score, playerpick : int := 0
var cpupick, x, y, button, fontsmall, font, font2, font3, font4 : int
var playerpickstring, cpupickstring, replaystring : string
fontsmall := Font.New ("arial:8")
font := Font.New ("arial:16")
font2 := Font.New ("arial:18")
font3 := Font.New ("arial:20")
font4 := Font.New ("arial:40")

%PICTURES
var rockpic : int := Pic.FileNew ("Rock.bmp")
var paperpic : int := Pic.FileNew ("Paper.bmp")
var scissorspic : int := Pic.FileNew ("Scissors.bmp")

%PROCEDURES
%Find Mouse Procedure
procedure mouse ()
    loop
	Mouse.Where (x, y, button)
	exit when button = 1
    end loop
end mouse

%Player Reset
procedure pickreset ()
    playerpick := 0
    cpupick := 0
end pickreset

%Computer Random Number Procedure
procedure computerpick ()
    cpupick := Rand.Int (1, 3)
    if cpupick = 1 then
	cpupickstring := "Rock"
    elsif cpupick = 2 then
	cpupickstring := "Paper"
    elsif cpupick = 3 then
	cpupickstring := "Scissors"
    end if
end computerpick

%Title Screen Procedure
procedure mainmenu ()
    cls
    Draw.Text ("Welcome To Rock, Paper, Scissors!", maxx div 6, maxy div 2, font3, 10)
    %Begin Button
    Draw.FillBox (maxx div 2 - 100, maxy div 3 - 90, maxx div 2 + 100, maxy div 3, 10)
    Draw.Text ("CLICK TO BEGIN", maxx div 2 - 95, maxy div 3 - 50, font2, black)
    loop
	mouse
	if (x >= maxx div 2 - 100 and x <= maxx div 2 + 100) and (y >= maxy div 3 - 90 and y <= maxy div 3) then
	    exit
	end if
    end loop
end mainmenu

%Score Request Procedure
procedure scorerequest ()
    cls
    Draw.Text ("What Score Would You Like To Play To?", maxx div 6 - 30, maxy div 2, font3, 10)
    Draw.Text ("Maximum 10 Points!", maxx div 3 + 20, maxy div 3, font, 10)
    %Score Buttons
    Draw.FillBox (30, 280, 70, 320, 54)
    Draw.Text ("1", 42, 290, font3, black)
    Draw.FillBox (90, 280, 130, 320, 12)
    Draw.Text ("2", 102, 290, font3, black)
    Draw.FillBox (150, 280, 190, 320, 54)
    Draw.Text ("3", 162, 290, font3, black)
    Draw.FillBox (210, 280, 250, 320, 12)
    Draw.Text ("4", 222, 290, font3, black)
    Draw.FillBox (270, 280, 310, 320, 54)
    Draw.Text ("5", 282, 290, font3, black)
    Draw.FillBox (330, 280, 370, 320, 12)
    Draw.Text ("6", 342, 290, font3, black)
    Draw.FillBox (390, 280, 430, 320, 54)
    Draw.Text ("7", 402, 290, font3, black)
    Draw.FillBox (450, 280, 490, 320, 12)
    Draw.Text ("8", 462, 290, font3, black)
    Draw.FillBox (510, 280, 550, 320, 54)
    Draw.Text ("9", 522, 290, font3, black)
    Draw.FillBox (570, 280, 610, 320, 12)
    Draw.Text ("10", 574, 290, font3, black)
    %Score Calculation Procedure
    delay (100)
    loop
	mouse
	if (x >= 30 and x <= 70) and (y >= 280 and y <= 320) and button = 1 then
	    score := 1
	elsif (x >= 90 and x <= 130) and (y >= 280 and y <= 320) and button = 1 then
	    score := 2
	elsif (x >= 150 and x <= 190) and (y >= 280 and y <= 320) and button = 1 then
	    score := 3
	elsif (x >= 210 and x <= 250) and (y >= 280 and y <= 320) and button = 1 then
	    score := 4
	elsif (x >= 270 and x <= 310) and (y >= 280 and y <= 320) and button = 1 then
	    score := 5
	elsif (x >= 330 and x <= 370) and (y >= 280 and y <= 320) and button = 1 then
	    score := 6
	elsif (x >= 390 and x <= 430) and (y >= 280 and y <= 320) and button = 1 then
	    score := 7
	elsif (x >= 450 and x <= 490) and (y >= 280 and y <= 320) and button = 1 then
	    score := 8
	elsif (x >= 510 and x <= 550) and (y >= 280 and y <= 320) and button = 1 then
	    score := 9
	elsif (x >= 570 and x <= 610) and (y >= 280 and y <= 320) and button = 1 then
	    score := 10
	end if
	exit when score > 0 and score <= 10
    end loop
end scorerequest

%Interfacing Procedures
%Scoreboard Procedure
procedure scoreboard ()
    Draw.FillBox (10, maxy - 50, 110, maxy - 10, gray)
    Draw.Text ("Player Score", 30, maxy - 20, fontsmall, black)
    Draw.Text (intstr (playerscore), 55, maxy - 45, font3, black)
    Draw.FillBox (530, maxy - 50, 630, maxy - 10, gray)
    Draw.Text ("Computer Score", 542, maxy - 20, fontsmall, black)
    Draw.Text (intstr (cpuscore), 575, maxy - 45, font3, black)
end scoreboard

%Options Procedure
procedure options ()
    delay (100)
    Draw.Text ("Select Rock, Paper, or Scissors", 120, 2 * (maxy div 3), font3, 10)
    Pic.Draw (rockpic, 125, 40, picCopy)
    Pic.Draw (paperpic, 285, 40, picCopy)
    Pic.Draw (scissorspic, 395, 40, picCopy)
    loop
	mouse
	if (x >= 125 and x <= 255) and (y >= 40 and y <= 170) and button = 1 then
	    playerpick := 1
	    playerpickstring := "Rock"
	elsif (x >= 285 and x <= 383) and (y >= 40 and y <= 120) and button = 1 then
	    playerpick := 2
	    playerpickstring := "Paper"
	elsif (x >= 395 and x <= 475) and (y >= 40 and y <= 120) and button = 1 then
	    playerpick := 3
	    playerpickstring := "Scissors"
	end if
	exit when playerpick = 1 or playerpick = 2 or playerpick = 3
    end loop
end options

%Theatrics Procedure
procedure theatrics ()
    cls
    scoreboard
    delay (100)
    Draw.Text ("Rock", maxx div 2 - 45, maxy - 100, font3, 10)
    delay (250)
    Draw.Text ("Paper", maxx div 2 - 50, maxy div 2, font3, 10)
    delay (250)
    Draw.Text ("Scissors", maxx div 2 - 65, maxy - 300, font3, 10)
    delay (500)
end theatrics

%RESULT DISPLAY/CALCULATIONS PROCEDURES
%Result Display
procedure resultdisplay ()
    %Player Side
    Draw.Text ("You Selected: ", 50, maxy div 2 + 4, font, 10)
    if playerpickstring = "Rock" then
	Draw.Text (playerpickstring, 95, maxy div 2 - 20, font, 10)
    elsif playerpickstring = "Paper" then
	Draw.Text (playerpickstring, 95, maxy div 2 - 20, font, 10)
    elsif playerpickstring = "Scissors" then
	Draw.Text (playerpickstring, 80, maxy div 2 - 20, font, 10)
    end if
    if playerpick = 1 then
	Pic.Draw (rockpic, 55, 25, picCopy)
    elsif playerpick = 2 then
	Pic.Draw (paperpic, 83, 55, picCopy)
    elsif playerpick = 3 then
	Pic.Draw (scissorspic, 70, 55, picCopy)
    end if
    %Computer Side
    Draw.Text ("Computer Selected: ", maxx - 215, maxy div 2 + 4, font, 10)
    Draw.Text (cpupickstring, maxx - 155, maxy div 2 - 20, font, 10)
    if cpupick = 1 then
	Pic.Draw (rockpic, maxx - 185, 25, picCopy)
    elsif cpupick = 2 then
	Pic.Draw (paperpic, maxx - 163, 55, picCopy)
    elsif cpupick = 3 then
	Pic.Draw (scissorspic, maxx - 170, 55, picCopy)
    end if
end resultdisplay

%RESULTS
procedure results ()
    %Calculation
    cls
    scoreboard
    if playerpick = cpupick then
    elsif playerpick = 1 and cpupick = 2 then
	cpuscore := cpuscore + 1
    elsif playerpick = 2 and cpupick = 3 then
	cpuscore := cpuscore + 1
    elsif playerpick = 3 and cpupick = 1 then
	cpuscore := cpuscore + 1
    elsif playerpick = 1 and cpupick = 3 then
	playerscore := playerscore + 1
    elsif playerpick = 2 and cpupick = 1 then
	playerscore := playerscore + 1
    elsif playerpick = 3 and cpupick = 2 then
	playerscore := playerscore + 1
    end if
    cls
    scoreboard
    if playerpick = cpupick then
	Draw.Text ("TIE", maxx div 2 - 20, maxy - 40, font2, 10)
    elsif playerpick = 1 and cpupick = 2 then
	Draw.Text ("COMPUTER WON", maxx div 3, maxy - 40, font2, 10)
    elsif playerpick = 2 and cpupick = 3 then
	Draw.Text ("COMPUTER WON", maxx div 3, maxy - 40, font2, 10)
    elsif playerpick = 3 and cpupick = 1 then
	Draw.Text ("COMPUTER WON", maxx div 3, maxy - 40, font2, 10)
    elsif playerpick = 1 and cpupick = 3 then
	Draw.Text ("PLAYER WON", maxx div 3 + 25, maxy - 40, font2, 10)
    elsif playerpick = 2 and cpupick = 1 then
	Draw.Text ("PLAYER WON", maxx div 3 + 25, maxy - 40, font2, 10)
    elsif playerpick = 3 and cpupick = 2 then
	Draw.Text ("PLAYER WON", maxx div 3 + 25, maxy - 40, font2, 10)
    end if

    %Display
    %Player Side
    Draw.Text ("You Selected: ", 50, maxy div 2 + 4, font, 10)
    if playerpickstring = "Rock" then
	Draw.Text (playerpickstring, 95, maxy div 2 - 20, font, 10)
    elsif playerpickstring = "Paper" then
	Draw.Text (playerpickstring, 95, maxy div 2 - 20, font, 10)
    elsif playerpickstring = "Scissors" then
	Draw.Text (playerpickstring, 80, maxy div 2 - 20, font, 10)
    end if
    if playerpick = 1 then
	Pic.Draw (rockpic, 55, 25, picCopy)
    elsif playerpick = 2 then
	Pic.Draw (paperpic, 83, 55, picCopy)
    elsif playerpick = 3 then
	Pic.Draw (scissorspic, 70, 55, picCopy)
    end if
    %Computer Side
    Draw.Text ("Computer Selected: ", maxx - 215, maxy div 2 + 4, font, 10)
    Draw.Text (cpupickstring, maxx - 155, maxy div 2 - 20, font, 10)
    if cpupick = 1 then
	Pic.Draw (rockpic, maxx - 185, 25, picCopy)
    elsif cpupick = 2 then
	Pic.Draw (paperpic, maxx - 163, 55, picCopy)
    elsif cpupick = 3 then
	Pic.Draw (scissorspic, maxx - 170, 55, picCopy)
    end if
end results

%Continue Button
procedure continue ()
    Draw.FillBox (maxx div 2 - 75, 20, maxx div 2 + 75, 80, 10)
    Draw.Text ("Continue", maxx div 2 - 42, 42, font, black)
    loop
	mouse
	if (x >= maxx div 2 - 75 and x <= maxx div 2 + 75) and (y >= 20 and y <= 80) and button = 1 then
	    exit
	end if
    end loop
    delay (100)
end continue

%END SCREEN
procedure winscreen ()
    if playerscore = score then
	Draw.Text ("PLAYER WINS!", maxx div 3+10, maxy div 2 - 10, font3, 10)
	Draw.Text ("GAME OVER", maxx div 3 + 32, maxy - 100, font2, 10)
    elsif cpuscore = score then
	Draw.Text ("COMPUTER WINS", maxx div 3 - 20, maxy div 2 - 10, font3, 10)
	Draw.Text ("GAME OVER", maxx div 3 + 32, maxy - 100, font2, 10)
    end if
    delay (100)
    continue
end winscreen

%Replay
procedure replay ()
    cls
    delay (100)
    Draw.Text ("Would You Like To Play Again?", maxx div 5+2, maxy div 2 - 10, font3, 10)
    Draw.FillBox (120, maxy div 3 - 90, 270, maxy div 3, gray)
    Draw.Text ("YES", 140, maxy div 3 - 65, font4, black)
    Draw.FillBox (370, maxy div 3 - 90, 520, maxy div 3, gray)
    Draw.Text ("NO", 410, maxy div 3 - 65, font4, black)
    mouse
    if (x >= 120 and x <= 270) and (y >= maxy div 3 - 90 and y <= maxy div 3) and button = 1 then
	replaystring := "YES"
    elsif (x >= 370 and x <= 520) and (y >= maxy div 3 - 90 and y <= maxy div 3) and button = 1 then
	replaystring := "NO"
	cls
	Draw.Text ("HAVE A GOOD DAY", maxx div 3-15, maxy div 2 - 10, font3, 10)
	Draw.Text ("GOODBYE", maxx div 2 - 55, maxy div 3, font2, 10)
    end if
end replay

procedure scorereset()
    score:=0
    cpuscore:=0
    playerscore:=0
end scorereset

%GAME CODE
cls
mainmenu
delay (100)
loop
    scorereset
    scorerequest
    loop
	cls
	%Choice
	scoreboard
	options
	%Function
	theatrics
	computerpick
	%Results
	results
	pickreset
	continue
	cls
	exit when playerscore = score or cpuscore = score
    end loop
    winscreen
    replay
    exit when replaystring= "NO"
end loop
