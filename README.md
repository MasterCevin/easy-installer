# Use
---------------------------------------------------------------------------------------------------------------------------------

`question_options
Description: Question to choose an option out of a list --> Answer will be stored in $answer`

`Required varriables:
optionscount          --> The number of available options.
option0               --> The option name that will be displayed in the list. Replace "0" with the number of the option.`

---------------------------------------------------------------------------------------------------------------------------------

- question_yn
- Description: Question to choose either y (yes) or n (no) --> Answer will be stored in $answer


- Required varriables:
- question              --> The question that will be displayed in front of the answer of the user.
- defaultanswer         --> Is the default answer, if the client doesnt choose y (yes) or n (no).

---------------------------------------------------------------------------------------------------------------------------------

- question_data
- Description: ask for any type of data like a path or a username --> Answer will be stored in $answer


- Required varriables:
- question
- defaultanswer

---------------------------------------------------------------------------------------------------------------------------------

- header
- Description: just prints the header


- Required varriables:
- No varriables required

---------------------------------------------------------------------------------------------------------------------------------

- newheader
- Description: clears the screen and prints the header


- Required varriables:
- No varriables required

---------------------------------------------------------------------------------------------------------------------------------
