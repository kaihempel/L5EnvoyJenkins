#!/bin/bash
show_divider()
{
	echo ""
	echo "*************************************************************"
	echo ""
}

show_public_key()
{
	echo "Adding this public key to your repositories:"
	echo ""

	cat ~/.ssh/id_rsa.pub
}

generate_new_key()
{
	echo "Generating new SSH key for the Jenkins!"
	echo "Key will be stored in .ssh/id_rsa"

	ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa

	echo "...done"
}

###
# Main body of script starts here
###

set -e

if [ -e ~/.ssh/id_rsa -a -e ~/.ssh/id_rsa.pub ]; then

	show_divider
	show_public_key
	show_divider

else 

	show_divider
	generate_new_key
	show_public_key
	show_divider
fi	

exec "$@"