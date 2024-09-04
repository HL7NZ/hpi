
# this script is intended to be run from code build, it should build the IG using the Hl7 IG Publisher 
# to run locally, pass in the parameter true:
## ./build-ig-cicd.sh true

islocal=$1

addPackage() {
echo " adding package named $1 version $2 from source $3 using url $4"
ls  $3
if [[ "$islocal" == "true" ]]; then
  mkdir -p ~/.fhir/packages/$1#$2
  mkdir -p ~/.fhir/packages/$1#current
else 
   mkdir -p ~/.fhir/packages/$1#$2
   mkdir -p ~/.fhir/packages/$1#current
fi
   



tar zxvf  $3 -C  ~/.fhir/packages/$1#$2
#publisher seems to need the current version as well
#tar zxvf  $3 -C  ~/.fhir/packages/$1#current
##fix the package url:
jq --arg url $4 '.url |= $url' ~/.fhir/packages/$1#$2/package/package.json > temp2.json
mv temp2.json  ~/.fhir/packages/$1#$2/package/package.json
#cat ~/.fhir/packages/hl7.org.nz.fhir.ig.hip-core#$common_version/package/package.json
}

#!/bin/bash
set -x -e #echo on, exit on error


echo getting nzbase dependencies...
nzbase_name="fhir.org.nz.ig.base"
nzbase_url=$(yq '.dependencies."fhir.org.nz.ig.base".uri' ./sushi-config.yaml)
nzbase_version=$(yq '.dependencies."fhir.org.nz.ig.base".version' ./sushi-config.yaml)
nzbase_source="./fhir_packages/nzbase-conformance-module-$nzbase_version/package.tgz"
addPackage "$nzbase_name" "$nzbase_version" "$nzbase_source" "$nzbase_url"


echo getting common dependencies...

common_name="hl7.org.nz.fhir.ig.hip-core"
common_version=$(yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".version' ./sushi-config.yaml)

#comdir=$(ls -d ./fhir_packages/hip-fhir-common*)
common_source="./fhir_packages/hip-fhir-common-$common_version/package/package.tgz"
common_url=$(yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".uri' ./sushi-config.yaml)
addPackage "$common_name" "$common_version" "$common_source" "$common_url" 



echo running sushi ...
sushi -o .

echo running local scripts
chmod +x ./localscripts/*.js
./localscripts/makeTerminologySummary.js
echo "Making API summary"
./localscripts/makeCapabilityStatement.js hpi

echo "building openapi spec"
chmod +x ./openapi/makeoas.sh
./openapi/makeoas.sh

#to do find a way to get add custom content - the following doesnt work, it  seem the template does not get downloaded by IG publisher if the directory exists?
#echo copying custom content to template  
# mkdir -p  ~/.fhir/packages/fhir.base.template#current/package/content
#cp ./template/* ~/.fhir/packages/fhir.base.template#current/package/content

echo running ig publisher
java -jar ~/publisher.jar -ig . -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -no-sushi



chmod +x ./fhirValidate.sh
./fhirValidate.sh
