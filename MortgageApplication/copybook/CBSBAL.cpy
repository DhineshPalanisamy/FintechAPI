      ******************************************************************
      * DCLGEN TABLE(COREBK.CBS_ACCT_BAL_DTL)                          *
      *        LIBRARY(IBMUSER.DCLGEN.CASE(CBSBAL))                    *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(H2-)                                              *
      *        QUOTE                                                   *
      *        LABEL(YES)                                              *
      *        COLSUFFIX(YES)                                          *
      *        INDVAR(YES)                                             *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE COREBK.CBS_ACCT_BAL_DTL TABLE
           ( CUSTOMER_ID                    INTEGER NOT NULL,
             DEBIT_AMOUNT                   DECIMAL(12, 2) NOT NULL,
             AVAILABLE_BALANCE              DECIMAL(12, 2) NOT NULL,
             LEDGER_BALANCE                 DECIMAL(12, 2) NOT NULL,
             HOLD_BALANCE                   DECIMAL(12, 2) NOT NULL,
             LAST_CREDIT_AMOUNT             DECIMAL(12, 2) NOT NULL,
             LAST_DEBIT_AMOUNT              DECIMAL(12, 2) NOT NULL,
             LAST_CREDIT_DATE               DATE NOT NULL,
             LAST_DEBIT_DATE                DATE NOT NULL,
             CURRENCY                       CHAR(3) NOT NULL,
             UPD_USERID                     CHAR(10) NOT NULL,
             UPD_TIMESTAMP                  TIMESTAMP NOT NULL
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE COREBK.CBS_ACCT_BAL_DTL            *
      ******************************************************************
       01  DCLCBS-ACCT-BAL-DTL.
      *    *************************************************************
      *                       CUSTOMER_ID
           10 H2-CUSTOMER-ID       PIC S9(9) USAGE COMP.
      *    *************************************************************
      *                       DEBIT_AMOUNT
           10 H2-DEBIT-AMOUNT      PIC S9(10)V9(2) USAGE COMP-3.
      *    *************************************************************
      *                       AVAILABLE_BALANCE
           10 H2-AVAILABLE-BALANCE
              PIC S9(10)V9(2) USAGE COMP-3.
      *    *************************************************************
      *                       LEDGER_BALANCE
           10 H2-LEDGER-BALANCE    PIC S9(10)V9(2) USAGE COMP-3.
      *    *************************************************************
      *                       HOLD_BALANCE
           10 H2-HOLD-BALANCE      PIC S9(10)V9(2) USAGE COMP-3.
      *    *************************************************************
      *                       LAST_CREDIT_AMOUNT
           10 H2-LAST-CREDIT-AMOUNT
              PIC S9(10)V9(2) USAGE COMP-3.
      *    *************************************************************
      *                       LAST_DEBIT_AMOUNT
           10 H2-LAST-DEBIT-AMOUNT
              PIC S9(10)V9(2) USAGE COMP-3.
      *    *************************************************************
      *                       LAST_CREDIT_DATE
           10 H2-LAST-CREDIT-DATE  PIC X(10).
      *    *************************************************************
      *                       LAST_DEBIT_DATE
           10 H2-LAST-DEBIT-DATE   PIC X(10).
      *    *************************************************************
      *                       CURRENCY
           10 H2-CURRENCY          PIC X(3).
      *    *************************************************************
      *                       UPD_USERID
           10 H2-UPD-USERID        PIC X(10).
      *    *************************************************************
      *                       UPD_TIMESTAMP
           10 H2-UPD-TIMESTAMP     PIC X(26).
      ******************************************************************
      * INDICATOR VARIABLE STRUCTURE                                   *
      ******************************************************************
       01  ICBS-ACCT-BAL-DTL.
           10 INDSTRUC           PIC S9(4) USAGE COMP OCCURS 12 TIMES.
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 12      *
      ******************************************************************