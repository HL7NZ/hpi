#!/bin/bash
set -x #echo on

common_version=$( yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".version' ./sushi-config.yaml)
cp "./fhir_packages/hip-fhir-common-$common_version/openapi/HipFhirCommonOpenApi.yaml" ./openapi/HipFhirHpiOpenApi.yaml

#add the MWS paths to the common openapi spec
newpath=$(< ./openapi/HipFhirHpiPaths.yaml)  yq -i '.paths=env(newpath) ' openapi/HipFhirHpiOpenApi.yaml 
newversion=$(yq '.version' ./sushi-config.yaml)   yq -i '.info.version=env(newversion) ' openapi/HipFhirHpiOpenApi.yaml 

## delete aws api gw intergation 
yq -i 'del(.paths[][].x-amazon-apigateway-integration)' openapi/HipFhirHpiOpenApi.yaml

zip -u ./input/extra/HipFhirHpiOpenApi.zip ./openapi/HipFhirHpiOpenApi.yaml 

