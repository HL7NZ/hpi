
#run from the openapi directory


#!/bin/bash
#OpenApi validation
for FILE in  ../fsh-generated/resources/Practitioner*.json
do
	openapi-examples-validator -s $.components.schemas.Practitioner -e ${FILE} ./HpiFhirOpenApi.yaml
done	

#FHIR validator
#todo : needs generalisation
cd ../output
java -jar /C/apps/FHIR_validator/validator_cli.jar   ./Practitioner-92ZZRR.json -ig ./package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/HPIPractitioner -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation.html
cd ../openapi