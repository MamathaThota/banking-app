       IDENTIFICATION DIVISION.
       PROGRAM-ID. DepositWithdrawalSystem.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-BALANCE         PIC 9(9)V99 VALUE 0.00.
       01 WS-AMOUNT          PIC 9(9)V99 VALUE 0.00.
       01 WS-CHOICE          PIC 9 VALUE 0.
       01 WS-CONTINUE        PIC X VALUE 'Y'.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "Welcome to the Deposit and Withdrawal System".
           PERFORM UNTIL WS-CONTINUE NOT = 'Y'
               DISPLAY "Current Balance: $" WS-BALANCE
               DISPLAY "Choose an option:"
               DISPLAY "1. Deposit"
               DISPLAY "2. Withdraw"
               DISPLAY "Enter your choice (1 or 2): "
               ACCEPT WS-CHOICE

               EVALUATE WS-CHOICE
                   WHEN 1
                       PERFORM DEPOSIT
                   WHEN 2
                       PERFORM WITHDRAW
                   WHEN OTHER
                       DISPLAY "Invalid choice. Please try again."
               END-EVALUATE

               DISPLAY "Do you want to perform another transaction? (Y/N): "
               ACCEPT WS-CONTINUE
           END-PERFORM.

           DISPLAY "Thank you for using the system. Goodbye!".
           STOP RUN.

       DEPOSIT.
           DISPLAY "Enter the amount to deposit: "
           ACCEPT WS-AMOUNT
           ADD WS-AMOUNT TO WS-BALANCE
           DISPLAY "Deposit successful. Updated Balance: $" WS-BALANCE.

       WITHDRAW.
           DISPLAY "Enter the amount to withdraw: "
           ACCEPT WS-AMOUNT
           IF WS-AMOUNT > WS-BALANCE THEN
               DISPLAY "Insufficient balance. Withdrawal failed."
           ELSE
               SUBTRACT WS-AMOUNT FROM WS-BALANCE
               DISPLAY "Withdrawal successful. Updated Balance: $" WS-BALANCE
           END-IF.
      *This is a program that allows users to deposit and withdraw money
      * from their account.
      *Deposit withdrawal sustem
