# Use
---------------------------------------------------------------------------------------------------------------------------------

- Description: Question to choose an option out of a list --> Answer will be stored in $answer
- question_options

- Required varriables:
- optionscount          --> The number of available options.
- option0               --> The option name that will be displayed in the list. Replace "0" with the number of the option.

---------------------------------------------------------------------------------------------------------------------------------

- Description: Question to choose either y (yes) or n (no) --> Answer will be stored in $answer
- question_yn

- Required varriables:
- question              --> The question that will be displayed in front of the answer of the user.
- defaultanswer         --> Is the default answer, if the client doesnt choose y (yes) or n (no).

---------------------------------------------------------------------------------------------------------------------------------

- Description: ask for any type of data like a path or a username --> Answer will be stored in $answer
- question_data

- Required varriables:
- question
- defaultanswer

---------------------------------------------------------------------------------------------------------------------------------

- Description: just prints the header
- header

- Required varriables:
- No varriables required

---------------------------------------------------------------------------------------------------------------------------------

- Description: clears the screen and prints the header
- newheader

- Required varriables:
- No varriables required

---------------------------------------------------------------------------------------------------------------------------------
