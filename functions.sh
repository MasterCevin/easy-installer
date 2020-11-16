#################################################################################################################################
#
# Description: Question to choose an option out of a list
# question_options
#
# Required varriables:
# optionscount		--> The number of available options.
# option0		--> The option name that will be displayed in the list. Replace "0" with the number of the option.
#
#################################################################################################################################
#
# Description: Question to choose either y (yes) or n (no)
# question_yn
#
# Required varriables:
# question		--> The question that will be displayed in front of the answer of the user.
# defaultanswer		--> Is the default answer, if the client doesnt choose y (yes) or n (no).
#
#################################################################################################################################
#
# Description: just prints the header
# header
#
# Required varriables:
# No varriables required
#
#################################################################################################################################
#
# Description: clears the screen and prints the header
# newheader
#
# Required varriables:
# No varriables required
#
#################################################################################################################################
#
# available soon...
# 
# Description: ask for any type of data like a path or a username
# data_question
#
# Required varriables:
# question
# defaultanswer
#
#################################################################################################################################

echo "loading functions, please wait a moment..."


header() {
echo "
------------------
| Easy Installer |
------------------"
}

newheader() {
clear
header
}

question_options() {
checknull_optionscount
checknull_options
echo "Please choose an option:"
for N in {1..$optionscount}
do
echo "{$N}) {$option{$N}}"
done
until [ "$validanswer" == "true" ]
do
read -p "Please enter a number:" answer
checkanswer_options
done
validanswer=""
for N in {1..$optionscount}
do
option$N=""
done
optionscount=""
}

checknull_optionscount() {
if [ "$optionscount" == "" ]
then
echo "
THERE IS AN ERROR IN THE SCRIPT!
Error: optionscount is not set! (code 1)
checkpoint: $checkpoint"
exit 1
fi
}

checknull_options() {
for N in {1..$optionscount}
do
if [ "$option{$N}" == "" ]
then
echo "
THERE WAS AN ERROR IN THIS SCRIPT!
Error: option$N is not set!
checkpoint: $checkpoint"
exit 1
fi
done
}

checkanswer_options() {
if [ "$answer" >= "1" ] && [ "$answer" <= "$optionscount" ]
then
validanswer=true
else
validanswer=false
fi
}


question_yn() {
checknull_default
checknull_question
until [ "$validanswer" == "true" ]
do
read -p "$question $defaultanswermessage " answer
checkanswer_yn
done
validanswer=""
defaultanswer=""
question=""
defaultanswermessage=""
}

checknull_default() {
if [ "$defaultanswer" == "" ]
then
echo "
THERE WAS AN ERROR IN THIS SCRIPT!
Error: defaultanswer is not set!
checkpoint: $checkpoint"
exit 1
fi
if [ "$defaultanswer" == "y" ]
then
defaultanswermessage="[Y/n]"
else
if [ "$defaultanswer" == "n" ]
then
defaultanswermessage="[y/N]"
else
echo "
THERE WAS AN ERROR IN THIS SCRIPT!
Error: defaultanswer is invalid (not y/n)!
checkpoint: $checkpoint"
exit 1
fi
fi
}

checknull_question() {
if [ "$question" == "" ]
then
echo "
THERE WAS AN ERROR IN THIS SCRIPT!
Error: question is not set!
checkpoint: $checkpoint"
exit 1
fi
}

checkanswer_yn() {
if [ "$answer" == "" ] || [ "$answer" == "y" ] || [ "$answer" == "Y" ] || [ "$answer" == "n" ] || [ "$answer" == "N" ]
then
if [ "$answer" == "" ]
then
answer=$defaultanswer
else
if [ "$answer" == "N" ]
then
answer=n
else
if [ "$answer" == "Y" ]
then
answer=y
fi
fi
fi
validanswer=true
else
validanswer=false
fi
}
