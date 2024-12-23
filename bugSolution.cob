01  WS-AREA.         
    05  WS-COUNT PIC 9(5) VALUE 0. 
    05  WS-TABLE OCCURS 100 TIMES INDEXED BY WS-INDEX. 
       10  WS-ENTRY PIC X(80). 

PROCEDURE DIVISION. 
    PERFORM VARYING WS-INDEX FROM 1 BY 1 UNTIL WS-INDEX > 100 
        IF WS-INDEX <= 100 THEN 
            MOVE 'RECORD ' & WS-INDEX TO WS-ENTRY(WS-INDEX) 
        END-IF 
    END-PERFORM. 

STOP RUN.