MODULE case;


IMPORT Out, Modules;


BEGIN
    CASE Modules.ArgCount - 1 OF
        0   : Out.String("Nao ha argumentos");
    |   1   : Out.String("Ha um argumento");
    |   2   : Out.String("Ha dois argumentos");
    ELSE Out.String("Ha mais de dois argumentos") END;
    Out.Ln;
END case.
