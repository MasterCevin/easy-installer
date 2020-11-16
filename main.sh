##############
checkpoint=1 #
##############

### Begin of function loading section ###

echo "loading functions, please wait a moment..."
. ./functions.sh

### End of function loading section ###

##############
checkpoint=2 #
##############

### Begin of Test section ###

header

question="Test123"
defaultanswer="y"
question_yn

question="Dies ist ein Test:"
defaultanswer="Test123"
question_data
echo "$answer"
