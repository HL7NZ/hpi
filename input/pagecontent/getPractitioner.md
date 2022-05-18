
### Get Practitioner

#### Read Practitioner with Identifier (CPN)

<img style="width:900px; float:none" src="uc1.png"/>

Read practitioner processing steps:

1. The user supplies a CPN number for the practitioner to be looked up.
2. The integrating application sends an HTTP GET request for the Practitioner resource using the CPN to identify the practitioner whose information is being requested. E.g. GET https://hpi.api.health.govt.nz/practitioner/99ZZZZ
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The Practitioner resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5. The response containing the Practitioner resource is returned

[For more info click here](/general.html#read-resource-by-id)

#### Query Practitioner with another identifier (e.g. Nursing Council Number)

<img style="width:900px; float:none" src="uc2.png"/>

Query practitioner processing steps:

1. The user supplies a nursing council number for the practitioner to be looked up.
2. The integrating application sends an HTTP GET request for the Practitioner resource using the nursing council id to identify the practitioner whose information is being requested. E.g. GET https://hpi.api.health.govt.nz/practitioner?identifier=https://standards.digital.health.nz/ns/nursing-council-id|999999
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The Practitioner resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5. The response containing the Practitioner resource is returned
6. The integrating application displays the matching practitioner to the use

[For more info click here](/general.html#query-resource)
[For a full list of identifiers click here](https://fhir.org.nz/ig/base/namingSystems.html) on the identifiers tab there.
