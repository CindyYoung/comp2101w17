#! /bin/bash
# this script demonstrates different kinds of testing commands

[ -f /etc/resolv.conf ] && echo "/etc/resolv.conf exists"

if [ -x /bin/ls ]; then
	echo "/bin/ls is executable"
	if [ -w /bin/ls ]; then
		echo "/bin/ls is also writable"
	fi
	if [ -r /bin/ls ]; then
		echo "/bin/ls is also readable"
	fi
else
	echo "/bin/ls is not executable"
fi

if [ -n "$FLOOBLE" ]; then
	echo "FLOOBLE has something in it"
fi

if [ "$FLOOBLE" != "" ]; then
	echo "FLOOBLE has something in it"
fi

arr=(a b c d)
if [ ${#arr[@]} -lt 1 ]; then
	echo "arr has less than one element"
elif [ ${#arr[@]} -gt 1 ]; then
	echo "arr has more than one element"
else
	echo "arr has exactly one element"
fi


