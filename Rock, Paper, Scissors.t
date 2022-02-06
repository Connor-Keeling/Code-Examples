%Background Colour
colour (10)
colourback (black)
cls

%Variables
var playerchoice, computerchoice, score, x, y, click : int
var playerscore, cpuscore : int := 0
var answer : string

loop
    %Score and Error Check
    loop
	put "What score would you like to play to? " ..
	put "Maximum 25! " ..
	get score
	cls
	if score >= 26 then
	    put "ERROR: Number entered is invalid"
	    put "Please Select A Different Number"
	    put ""
	    put "Click To Continue "
	    loop
		Mouse.Where (x, y, click)
		if click = 1 then
		    cls
		end if
		exit when click = 1
	    end loop
	end if
	exit when score <= 25
    end loop

    playerscore := 0
    cpuscore := 0

    loop
	computerchoice := Rand.Int (1, 3)
	%Menu
	cls
	put "Welcome to Rock, Paper, Scissors!"
	put ""
	put "1. Rock"
	put "2. Paper"
	put "3. Scissors"
	put ""
	put "Select a symbol: " ..
	get playerchoice
	cls

	%Win, Loss, Tie Decision
	if playerchoice = computerchoice then
	    put "Tie"
	elsif playerchoice = 1 and computerchoice = 2 then
	    put "Computer Won!"
	elsif playerchoice = 2 and computerchoice = 3 then
	    put "Computer Won!"
	elsif playerchoice = 3 and computerchoice = 1 then
	    put "Computer Won!"
	elsif playerchoice = 1 and computerchoice = 3 then
	    put "Player Won!"
	elsif playerchoice = 2 and computerchoice = 1 then
	    put "Player Won!"
	elsif playerchoice = 3 and computerchoice = 2 then
	    put "Player Won!"
	end if

	%Win, Loss, Tie Points
	if playerchoice = 1 and computerchoice = 2 then
	    cpuscore := cpuscore + 1
	elsif playerchoice = 2 and computerchoice = 3 then
	    cpuscore := cpuscore + 1
	elsif playerchoice = 3 and computerchoice = 1 then
	    cpuscore := cpuscore + 1
	elsif playerchoice = 1 and computerchoice = 3 then
	    playerscore := playerscore + 1
	elsif playerchoice = 2 and computerchoice = 1 then
	    playerscore := playerscore + 1
	elsif playerchoice = 3 and computerchoice = 2 then
	    playerscore := playerscore + 1
	end if

	%Scoreboard
	put ""
	put "Your score is: ", playerscore, ""
	put "The computer's score is; ", cpuscore, ""
	put ""
	put "Click To Continue!"
	loop
	    Mouse.Where (x, y, click)
	    exit when click = 1
	end loop
	cls

	%End Game
	exit when playerscore = score or cpuscore = score
    end loop

    %Reset
    put "GAME OVER!"
    put "Would you like to play again? " ..
    get answer
    if answer = "YES" or answer = "Yes" or answer = "yes" then
	cls
    elsif answer = "NO" or answer = "No" or answer = "no" then
	cls
	put "GOODBYE!"
	exit
    end if
    
end loop
