
#run from the openapi director


#!/bin/bash
for FILE in  ../fsh-generated/resources/Practitioner*.json
do
	openapi-examples-validator -s $.components.schemas.Practitioner -e ${FILE} ./HpiFhirOpenApi.yaml
done	