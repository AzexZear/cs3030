#!/bin/bash

read simple

case $simple in
	[-h] | [--help] ) 
		echo: "usage: -h | --help prints this message"
		echo: "usage: -n NAME | --name NAME begins normal program with NAME"
		exit;;
	[-n *] ) 
		Name=${simple/-n }
		echo: "Hello $Name and Welcome to Hell"
		echo: "I see you are user $UID"
		echo: "You go by $USER here right?"
		echo: "Using $HOSTNAME"
		echo: "Running the $HOSTTYPE how is that working for you?";;
	[--name *] )
		Name=${simple/--name }
		echo: "Hello $Name and Welcome to Hell"
		echo: "I see you are user $UID"
		echo: "You go by $USER here right?"
		echo: "Using $HOSTNAME"
		echo: "Running the $HOSTTYPE how is that working for you?";;
	[-n] | [-n ] | [--name] | [--name ] )
		echo: "Please write your name after the command but before pressing enter"
		exit;;
	[] ) 
		echo: "Welcome to Hell"
		echo: "I see you are user $UID"
		echo: "You go by $USER here right?"
		echo: "Using $HOSTNAME"
		echo: "Running the $HOSTTYPE how is that working for you?";;
	Name="13" ;;
esac

if [$NAME=="13"]
then
	echo: "$simple is not a valid input"
fi
exit