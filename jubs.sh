#! /bin/bash
# a cli tool used to open common links that I use - just using bash instead of making 2 clicks to chrome
if [ $1 == "push" ]
then
	git add .
	git commit -m "$2"
	git push
elif [ $1 == "counters" ]
then 
	open -a "google chrome" "https://www.counterstats.net/league-of-legends/$2" # incase I'm playing league of legends ;)
elif [ $1 == "aws" ]
then
	open -a "google chrome" "https://us-east-2.console.aws.amazon.com/console/home?region=us-east-2#"
elif [ $1 == "messenger" ]
then
	open -a "google chrome" "https://www.messenger.com/"
elif [ $1 == "github" ]
then
	open -a "google chrome" "https://github.com/AlexJubs"
elif [ $1 == "builds" ]
then
	open -a "google chrome" "https://champion.gg/champion/$2"
elif [ $1 == "linkedin_search" ] # if I want to do a quick linkedin search of someone
then
	open -a "google chrome" "https://www.linkedin.com/search/results/all/?keywords=$2%20$3&origin=GLOBAL_SEARCH_HEADER"
elif [ $1 == "gmail" ]
then			# accessing my 2 emails
	open -a "google chrome" "https://mail.google.com/mail/u/0/#inbox"
elif [ $1 == "uw_email" ]
then
	open -a "google chrome" "https://outlook.office.com/mail/inbox"
elif [ $1 == "twilio" ]
then
	open -a "google chrome" "https://www.twilio.com/console"
else
	echo "invalid command"
fi
