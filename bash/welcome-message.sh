#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
title="Overlord"
name="$USER"
date=$(date +'%I:%M %P')
weekday=$(date +%u)
hostname=$(hostname)

###############
# Main        #
###############
cat <<EOF

Welcome to planet $hostname, "$title $name!"

EOF
if (($weekday > 5 )); then
  echo "It is $date onWeekend."
else
  echo "It is $date on Weekday."
fi
