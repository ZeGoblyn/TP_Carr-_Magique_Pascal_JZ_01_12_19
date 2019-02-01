program carrmag;
//BUT créer un carré magique
//ENTREE un tableau vide
//SORTIE un tableau plain

uses crt;

const taille =5;

var i, x, y: INTEGER;
	t: array [1..taille, 1..taille] of INTEGER;

BEGIN
	y:=2;
	x:=3;

	FOR i:= 1 to taille*taille DO
		BEGIN
		t[x, y]:=i;
		y := y-1;
		IF y<1 THEN
			BEGIN
			y:=taille;
			END;
		x := x+1;
		IF x> taille THEN
			BEGIN
			x:=1;
			END;

			IF t[x, y] > 0 THEN
				BEGIN
				y := y-1;
				x := x-1;
				IF x<1 THEN
					BEGIN
					x := taille;
					END;
					IF y<1 THEN
					BEGIN
					y:=taille;
					END;
				END;
	END;

	FOR y:=1 to taille DO
		BEGIN
		FOR x:= 1 to taille DO
		BEGIN
                write('|');
		WRITE (t[x, y]);
		END;
        write('|');
        writeln;
	END;
	READLN;
END.
