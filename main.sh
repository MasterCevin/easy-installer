##############
checkpoint=1 #
##############

### Begin of function loading section ###

echo "loading functions, please wait a moment..."
bash functions.sh

### End of function loading section ###

##############
checkpoint=2 #
##############

### Begin of Test section ###

header

question="Dies ist ein Test"
defaultanswer=y
question_yn
echo $answer

question="Dies ist ein Test2"
defaultanswer=n
question_yn
echo $answer

question_yn
