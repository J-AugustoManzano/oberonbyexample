MODULE while;

IMPORT Out;


VAR
   i : INTEGER;


BEGIN
   i := 0;
   Out.String("Laco WHILE iniciado"); Out.Ln;
   WHILE i < 10 DO
           i := i + 1;
           Out.Int(i, 0); Out.Ln;
   END;
END while.
