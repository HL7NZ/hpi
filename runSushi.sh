#!/bin/bash

# clear the input folders b4 the generate. Assumes that only sushi to writing to them!
# rm -f input/examples/*.json
# rm -f input/extensions/*.json
# rm -f input/profiles/*.json
# rm -f input/vocabulary/*.json



sushi  -s -o .

if [[ $? -eq 0 ]]
then

# create the 2 summary files extensions.xml & profiles.xml. Saves in both /input.. & /fsh/ig-data...

# echo "Updating the global summary of extensions and terminology"
# ../globalScripts/makeGlobalIGSummary.js
echo


echo "Creating Profiles and extensions summary pages..."
../scripts/makeProfilesAndExtensions.js hpi
echo

echo "Making local terminology summary"  
#../scripts/makeTerminologySummary.js hpi
localscripts/makeTerminologySummary.js
echo

echo "Making API summary"
../scripts/makeCapabilityStatement.js hpi
echo

echo "Making NamingSystem summary"
../scripts/makeNamingSystemSummary.js hpi


else 
echo
echo
echo "There were errors, so the other scripts weren't run..."
fi

