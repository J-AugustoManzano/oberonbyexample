MODULE ifelse;


IMPORT Out;

VAR n, m : INTEGER;


BEGIN
    n := 8; m := 4;

    IF n MOD m = 0 THEN
        Out.Int(n,0); Out.String(" eh divisivel por "); Out.Int(m,0); Out.Ln;
    END;

    n := 7; m := 6;

    IF n * m = 42 THEN
        Out.Int(n,0); Out.String(" vezes "); Out.Int(m,0); Out.String(" eh igual a 42"); Out.Ln;
    END;

    IF n # m THEN Out.Int(n,0); Out.String(" eh diferente de "); Out.Int(m,0); Out.Ln; END;

    IF ODD(n)
        THEN
            Out.Int(n,0); Out.String(" eh impar"); Out.Ln;
        ELSE
            Out.Int(n,0); Out.String(" eh par"); Out.Ln;
    END;

    IF ~ODD(m)
        THEN
            Out.Int(m,0); Out.String(" eh par"); Out.Ln;
        ELSE
            Out.Int(m,0); Out.String(" eh impar"); Out.Ln;
    END;

    n := 9;

    IF n < 0
        THEN
            Out.Int(n, 0); Out.String(" eh negativo"); Out.Ln;
    ELSIF n < 10
        THEN
            Out.Int(n, 0); Out.String(" possui 1 digito"); Out.Ln;
    ELSE
            Out.Int(n, 0); Out.String(" possui multiplos digitoss"); Out.Ln;
    END;
END ifelse.
