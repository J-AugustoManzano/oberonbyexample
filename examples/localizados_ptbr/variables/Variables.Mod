MODULE variables;

IMPORT Out;


VAR
    s       : ARRAY 32 OF CHAR;
    i       : REAL;
    n, m    : INTEGER;


BEGIN
    s := "Inicial";
    Out.String(s);  Out.Ln;
    i := 3.14;
    n := 64;
    m := 42;
    Out.Int(m, 0);  Out.Ln;
    Out.Int(n, 0);  Out.Ln;
    Out.Real(i, 0); Out.Ln;

    s := "novo valor atribuido";
    Out.String(s);  Out.Ln;
    i := 2.71;
    n := 128;
    m := 84;
    Out.Int(m, 0);  Out.Ln;
    Out.Int(n, 0);  Out.Ln;
    Out.Real(i, 0);
    Out.Ln
END variables.
