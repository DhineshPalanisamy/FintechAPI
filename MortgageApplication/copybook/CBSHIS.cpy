      ******************************************************************
      * DCLGEN TABLE(COREBK.CBS_ACCT_TRAN_HSTRY_DTL)                   *
      *        LIBRARY(IBMUSER.DCLGEN.CASE(CBSHIS))                    *
      *        ACTION(REPLACE)                                         *
      *        LANGUAGE(COBOL)                                         *
      *        NAMES(H3-)                                              *
      *        QUOTE                                                   *
      *        LABEL(YES)                                              *
      *        COLSUFFIX(YES)                                          *
      *        INDVAR(YES)                                             *
      * ... IS THE DCLGEN COMMAND THAT MADE THE FOLLOWING STATEMENTS   *
      ******************************************************************
           EXEC SQL DECLARE COREBK.CBS_ACCT_TRAN_HSTRY_DTL TABLE
           ( ACCOUNT_NUMBER                 BIGINT NOT NULL,
             TRANSACTION_ID                 CHAR(16) NOT NULL,
             TRAN_AMOUNT                    DECIMAL(12, 2) NOT NULL,
             TRAN_TYPE                      CHAR(10) NOT NULL,
             STATUS                         CHAR(10) NOT NULL
           ) END-EXEC.
      ******************************************************************
      * COBOL DECLARATION FOR TABLE COREBK.CBS_ACCT_TRAN_HSTRY_DTL     *
      ******************************************************************
       01  DCLCBS-ACCT-TRAN-HSTRY-DTL.
      *    *************************************************************
      *                       ACCOUNT_NUMBER
           10 H3-ACCOUNT-NUMBER    PIC S9(18) USAGE COMP.
      *    *************************************************************
      *                       TRANSACTION_ID
           10 H3-TRANSACTION-ID    PIC X(16).
      *    *************************************************************
      *                       TRAN_AMOUNT
           10 H3-TRAN-AMOUNT       PIC S9(10)V9(2) USAGE COMP-3.
      *    *************************************************************
      *                       TRAN_TYPE
           10 H3-TRAN-TYPE         PIC X(10).
      *    *************************************************************
      *                       STATUS
           10 H3-STATUS            PIC X(10).
      ******************************************************************
      * INDICATOR VARIABLE STRUCTURE                                   *
      ******************************************************************
       01  ICBS-ACCT-TRAN-HSTRY-DTL.
           10 INDSTRUC           PIC S9(4) USAGE COMP OCCURS 5 TIMES.
      ******************************************************************
      * THE NUMBER OF COLUMNS DESCRIBED BY THIS DECLARATION IS 5       *
      ******************************************************************