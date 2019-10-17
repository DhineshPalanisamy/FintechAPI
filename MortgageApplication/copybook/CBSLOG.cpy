      ******************************************************************
      * DCLGEN TABLE(COREBK.CBS_API_LOG_DTL)                           *
      *        LIBRARY(IBMUSER.DCLGEN.CASE(CBSLOG))                    *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(H4-)                                              *
      *        QUOTE                                                   *
      *        LABEL(YES)                                              *
      *        COLSUFFIX(YES)                                          *
      *        INDVAR(YES)                                             *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE COREBK.CBS_API_LOG_DTL TABLE
           ( ACCOUNT_NUMBER                 INTEGER NOT NULL,
             API_TYPE                       CHAR(10) NOT NULL,
             API_COPYBOOK                   VARCHAR(4000) NOT NULL,
             API_NAME                       CHAR(15) NOT NULL,
             TIME_STAMP                     TIMESTAMP NOT NULL
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE COREBK.CBS_API_LOG_DTL             *
      ******************************************************************
       01  DCLCBS-API-LOG-DTL.
      *    *************************************************************
      *                       ACCOUNT_NUMBER
           10 H4-ACCOUNT-NUMBER    PIC S9(9) USAGE COMP.
      *    *************************************************************
      *                       API_TYPE
           10 H4-API-TYPE          PIC X(10).
      *    *************************************************************
           10 H4-API-COPYBOOK.
      *                       API_COPYBOOK LENGTH
              49 H4-API-COPYBOOK-LEN
                 PIC S9(4) USAGE COMP.
      *                       API_COPYBOOK
              49 H4-API-COPYBOOK-TEXT
                 PIC X(4000).
      *    *************************************************************
      *                       API_NAME
           10 H4-API-NAME          PIC X(15).
      *    *************************************************************
      *                       TIME_STAMP
           10 H4-TIME-STAMP        PIC X(26).
      ******************************************************************
      * INDICATOR VARIABLE STRUCTURE                                   *
      ******************************************************************
       01  ICBS-API-LOG-DTL.
           10 INDSTRUC           PIC S9(4) USAGE COMP OCCURS 5 TIMES.
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 5       *
      ******************************************************************