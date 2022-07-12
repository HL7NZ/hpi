#run from project root
#validation
cd ./output
echo validating Practitioner examples
for FILE in  ./Practitioner-*.json
do
	java -jar /C/apps/FHIR_validator/validator_cli.jar ${FILE}  -ig ./package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation.html
done
	
echo validating Organization examples
for FILE in  ./Organization-*.json
do
	java -jar /C/apps/FHIR_validator/validator_cli.jar ${FILE}  -ig ./package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/HPIOrganization -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation.html
done	

echo validating Location examples
for FILE in  ./Location-*.json
do
	java -jar /C/apps/FHIR_validator/validator_cli.jar ${FILE}  -ig ./package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/HPILocation -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation.html
done	

echo validating PractitionerRole examples
for FILE in  ./PractitionerRole-*.json
do
	java -jar /C/apps/FHIR_validator/validator_cli.jar ${FILE}  -ig ./package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/HPIPractitionerRole -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation.html
done

cd ..