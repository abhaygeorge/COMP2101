#!/bin/bash
# This script demonstrates testing to see if 2 strings are the same
# it also demonstrates using conditional execution

# TASK 1: Improve it by asking the user for a password guess instead of using inline literal data (i.e. TestString)
# TASK 2: Improve it by rewriting it to use the if command
#         The if command should test if they got it right, in which case it should tell them they got it right
#         The if command should tell them they got it wrong
# TASK 3: Improve it by giving them 5 tries to get it right before failing
#           *** Do not use the exit command, and do not use a loop (e.g. while or for)

#Task 1
mypassword="abhay"
echo "Enter your five digit password to continue"
read enteredpassword

#Task2 and task 3
if [ $enteredpassword == $mypassword ]
then
  echo You have enetered the correct password.
else
   echo The password that you have enetered is incorrect.Your second chance.Please enter the correct password.
   read enteredpassword
   if [ $enteredpassword == $mypassword ]
   then
     echo You have enetered the correct password.
   else
      echo The password that you have enetered is incorrect.Your third chance.Please enter the correct password.
      read enteredpassword
      if [ $enteredpassword == $mypassword ]
      then
        echo You have enetered the correct password.
      else
         echo The password that you have enetered is incorrect.Your fourth chance.Please enter the correct password.
         read enteredpassword
         if [ $enteredpassword == $mypassword ]
         then
           echo You have enetered the correct password.
         else
            echo The password that you have enetered is incorrect.Your final chance.Please enter the correct password.
            read enteredpassword
            if [ $enteredpassword == $mypassword ]
            then
              echo You have enetered the correct password.
            else
               echo The password that you have enetered is incorrect.You have entered the incorrect poassword five times,you idiot.
            fi
      fi
   fi
fi
fi 
