# Overview

 HpiFhirOpenApi.yaml is an OpenApi 3.0 specification which has been manually created to reflect as closely as possible the HpiPractitioner profile defined in the IG.



## Differences from IG

Some of the ways in which the spec differs from the IG:

- ValueSets and CodeSytems have not been represented as enums,  only as strings

- Extension arrays which have different cardinalities for different slices have been reparented using anyOf, which means all slices have 0..* cardinality
- Descriptions which are siblings of a $ref have been replaced by comments

## Testing

To test the spec, install the openapi validator online tool (https://www.npmjs.com/package/openapi-examples-validator) (You need npm:)
`npm install -g openapi-examples-validator`

then, from a bash shell run the script `validate.sh` in the openapi directory

This will validate each of the example json files from the fsh-generated  folder (you will need to run sushi first to generate these)

## Development

Tools used to create the openapi spec:

https://editor.swagger.io/
KaiZen eclipse plugin  (https://marketplace.eclipse.org/content/kaizen-openapi-editor)