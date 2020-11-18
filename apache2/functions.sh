install() {
update_lists
}

update_lists() {
echo "To install apache2 on your system you need to update the package lists.
Oherwise it can couse an error."
question="Do you want to update the package lists now?"
defaultanswer=y
question_yn
if [ "$answer" == "y" ]
then
apt-get update -y
errorcode=$?
if [ "$errorcode" != "0" ]
then
echo "We were unable to update the package lists.
Reason: apt-get returned with error code $errorcode.
Please check your internet connection and the /etc/apt/sources.list file
as well as the /etc/apt/sources.list.d directory.
exiting..."
exit 1
fi
else
echo "We are unable to update the package lists.
Reason: aborted by user
exiting..."
exit 1
fi
}
