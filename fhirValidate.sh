#!/bin/bash   
#run from project root
set -x #echo on

#create a bundle for the results
cd ./output
rm -r ./temp
mkdir ./temp

echo validating Practitioner examples
cp ./Practitioner-*.json ./temp
java -jar /C/apps/FHIR_validator/validator_cli.jar ./temp  -ig ./package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_HPIPractitioner.html
rm ./*temp/*.json

echo validating Organization examples
cp ./Organization-*.json ./temp
java -jar /C/apps/FHIR_validator/validator_cli.jar ./temp  -ig ./package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization  -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_HPIOrganization.html
rm ./*temp/*.json


echo validating Location examples
cp ./Location-*.json ./temp
java -jar /C/apps/FHIR_validator/validator_cli.jar ./temp  -ig ./package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/HPILocation  -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_HPILocation.html
rm ./*temp/*.json


echo validating PractitionerRole examples
cp ./PractitionerRole-*.json ./temp
java -jar /C/apps/FHIR_validator/validator_cli.jar ./temp  -ig ./package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole   -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_HPIPractitionerRole.html
rm ./*temp/*.json
cd ..