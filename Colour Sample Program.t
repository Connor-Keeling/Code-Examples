% Variables
var c : int := 0
var x : int := 5
var y : int := maxy - 20
var font : int := Font.New ("arial:10")

loop
    % Colour and Number Box
    Draw.FillBox (x, y, x + 15, y + 15, c)
    Draw.Text (intstr (c), x + 17, y + 3, font, black)
    
    y := y - 20
    c := c + 1
    if y <= 5 then
	y := maxy - 20
	x := x + 45
    end if
    exit when c >= 255
end loop
