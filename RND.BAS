' RND.BAS
' Indica come impostare intervalli di numeri casuali in QuickBASIC
' Rif. documentazione Microsoft
' Marco da Venezia, 1989
' Inserire zeri/niente per uscire dai loop

CLS

' Sintassi: RND[(n)]
'
' Il valore di n determina come RND genera il successivo numero casuale:
'
' n < 0      Restituisce sempre lo stesso numero
' n omesso   Restituisce il successivo numero casuale nella sequenza
' n = 0      Restituisce l'ultimo numero generato
'
' Anche se n>0, ad ogni esecuzione del programma viene generata la stessa
' sequenza di numeri casuali, a meno che il generatore dei numeri non venga
' inizializzato ogni volta. (Vedere l'istruzione RANDOMIZE per ulteriori
' informazioni sull'inizializzazione del generatore dei numeri casuali.)

PRINT "Per generare interi casuali in un determinato intervallo, usare la formula"; ""
PRINT "    INT ((Max - Min + 1) * RND + Min)"
PRINT "Max Š il numero pi— alto nell'intervallo, Min il pi— basso."

VIEW PRINT 4 TO 25

DO
    PRINT
    INPUT "Min"; Min
    INPUT "Max"; Max
    n = RND
    PRINT "Intero: INT("; Max - Min + 1; "* RND +"; Min; ") =";
    PRINT INT((Max - Min + 1) * n + Min)
    PRINT "Decim.:"; Max - Min + 1; "* RND +"; Min; "=";
    PRINT (Max - Min + 1) * n + Min
LOOP WHILE Min <> 0 AND Max <> 0

DO
    PRINT
    INPUT "Fattore"; Fattore
    INPUT "Addendo"; Addendo
    PRINT "Intero: INT("; Fattore; "* RND +"; Addendo; ") ="; INT(Fattore * RND + Addendo)
    PRINT "Decim.:"; Fattore; "* RND +"; Addendo; "="; Fattore * RND + Addendo
    PRINT "Min ="; Addendo
    PRINT "Max ="; Fattore + Addendo - 1

LOOP WHILE Fattore <> 0 AND Addendo <> 0

