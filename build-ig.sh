#!/bin/bash

# echo cleaning up temp directory ...
rm -r  ./temp

echo running sushi ...
./runSushi.sh
echo running ig publisher
java -jar C:/apps/FHIR_IG_Publisher/publisher.jar -ig . -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -no-sushi -tx  http://tx.fhir.org 

./fhirValidate.sh