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

optionscount=1
option0="Install Apache2 Web Server"
question_options
case $answer in 
	1)
		cd apache2
		./apache2.sh ;;
esac
