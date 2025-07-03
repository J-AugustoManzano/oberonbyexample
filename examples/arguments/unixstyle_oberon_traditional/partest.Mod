MODULE partest;

IMPORT Oberon, Texts;

CONST 
  argStr0 = "str"; (* só temos dois tipos de argumentos: uma string e um inteiro *)
  argInt0 = "int"; (* ou seja: -str algumatexto -int alghumnúmero *)

VAR
   W: Texts.Writer; (* para saída no console *)
   S: Texts.Scanner; T: Texts.Text;
BEGIN
    Texts.OpenWriter(W);
    Texts.WriteString(W, "ola, mundo, vamos ver quais argumentos recebemos"); Texts.WriteLn(W);

    (* abrir scanner de argumentos *)
    Texts.OpenScanner(S, Oberon.Par.text, Oberon.Par.pos); 
    
    WHILE ~S.eot DO
       Texts.Scan(S);

       IF S.class = Texts.Char THEN (* recebemos o sinal '-'? *)
         IF S.c = "-" THEN
           Texts.Scan(S);
           IF S.class = Texts.Name THEN (* recebemos a chave *)
             Texts.WriteString(W, "key: "); Texts.WriteString(W, S.s); Texts.WriteLn(W);
             (* agora obtemos o valor *)
             IF S.s = argStr0 THEN
                Texts.Scan(S);
                IF S.class = Texts.Name THEN
                  Texts.WriteString(W, "valor: "); Texts.WriteString (W, S.s); Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf);
                ELSE
                  Texts.WriteString(W, "esperado um texto"); Texts.WriteLn(W);
                  Texts.Append(Oberon.Log, W.buf);
                  HALT(1);
                END;
             ELSIF S.s = argInt0 THEN
                Texts.Scan(S);
                IF S.class = Texts.Int THEN
                  Texts.WriteString(W, "valor: "); Texts.WriteInt (W, S.i, 0); Texts.WriteLn(W); Texts.Append(Oberon.Log, W.buf);
                ELSE
                  Texts.WriteString(W, "esperado um numero inteiro"); Texts.WriteLn(W);
                  Texts.Append(Oberon.Log, W.buf);d"); Texts.WriteLn(W);
                  Texts.Append(Oberon.Log, W.buf);
                  HALT(1);
                END;
             END;
           ELSE
             (* esperávamos caracteres após o sinal '-' *)
             Texts.WriteString(W, "key name expected"); Texts. WriteLn(W);
             Texts.Append(Oberon.Log, W.buf);
             HALT(1);
           END;
         END
       ELSE
         Texts.WriteString(W, "a opção deve começar com o sinal '-' "); Texts.WriteLn(W);
       HALT(1);
       END; (* if got '-' *)
    Oberon.Par.pos := Texts.Pos(S);
    Texts.Append(Oberon.Log, W.buf)
    END; (* while *)


END partest.
