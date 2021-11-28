#!/bin/bash

# Run sushi to build the local IG
# if that runs OK, then execute a number of scripts that build
# some of the summary pages.


sushi  -s -o .      # need to include the snapshot

if [[ $? -eq 0 ]]
then

# create the 2 summary files extensions.xml & profiles.xml. Saves in both /input.. & /fsh/ig-data...

# echo "Updating the global summary of extensions and terminology"
# ../globalScripts/makeGlobalIGSummary.js
echo


echo "Creating Profiles and extensions summary pages..."
./scriptCopy/makeProfilesAndExtensions.js hpi
echo

echo "Making local terminology summary"  
#../scripts/makeTerminologySummary.js hpi
python3 ./localscripts/makeTermSummary.py
# localscripts/makeTerminologySummary.js
echo

echo "Making API summary"
./scriptCopy/makeCapabilityStatement.js hpi
echo

# echo "Making NamingSystem summary"
# ../scripts/makeNamingSystemSummary.js hpi


else 
echo
echo
echo "There were errors, so the other scripts weren't run..."
fi

