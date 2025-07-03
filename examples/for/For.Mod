MODULE for;

IMPORT Out;

VAR
    i : INTEGER;


BEGIN
    Out.String("i eh "); Out.Int(i, 0); Out.Ln;
    Out.String("inicio do laco For"); Out.Ln;
    FOR i := 0 TO 10 DO
        Out.String("i : "); Out.Int(i, 0); Out.Ln;
    END;
    Out.String("inicio do laco For-By"); Out.Ln;
    FOR i := 0 TO 10 BY 2 DO
        Out.String("i : "); Out.Int(i, 0); Out.Ln;
    END;
END for.
