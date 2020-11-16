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

question_data() {
data_checknull_default
data_checknull_question
until [ "$validanswer" == "true" ]
do
read -p "$question [$defaultanswer] " answer
checkvalid_data
done
validanswer=""
defaultanswer=""
question=""
defaultanswermessage=""
}

data_checknull_default() {
if [ "$defaultanswer" == "" ]
then
echo "
THERE WAS AN ERROR IN THIS SCRIPT!
Error: defaultanswer is not set!
checkpoint: $checkpoint"
exit 1
fi
}

data_checknull_question() {
if [ "$question" == "" ]
then
echo "
THERE WAS AN ERROR IN THIS SCRIPT!
Error: question is not set!
checkpoint: $checkpoint"
exit 1
fi
}

checkvalid_data() {
if [ "$answer" == "" ]
then
until [ "$valid" == "true" ]
do
echo "
There was no clear answer specified!
The question was: $question
The default answer is: $defaultanswer"
read -p "Do you want to use the default answer from above? [Y/n]" danswer
if [ "$danswer" == "" ]
then
answer=$defaultanswer
validanswer=true
valid=true
fi
if [ "$danswer" == "y" ]
then
answer=$defaultanswer
validanswer=true
valid=true
fi
if [ "$danswer" == "Y" ]
then
answer=$defaultanswer
validanswer=true
valid=true
fi
if [ "$danswer" == "n" ]
then
validanswer=talse
valid=true
fi
if [ "$danswer" == "N" ]
then
validanswer=talse
valid=true
fi
done
else
validanswer=true
fi
valid=""
danswer=""
}
