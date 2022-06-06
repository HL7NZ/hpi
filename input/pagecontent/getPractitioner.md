

### Get Practitioner

#### Read Practitioner with Identifier (CPN)

<img style="width:900px; float:none" src="uc1.png"/>

Read practitioner processing steps:

1. The user supplies a CPN number for the practitioner to be looked up.
2. The integrating application sends an HTTP GET request for the Practitioner resource using the CPN to identify the practitioner whose information is being requested. E.g. GET https://hpi.api.health.govt.nz/practitioner/99ZZZZ
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The Practitioner resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5. The response containing the Practitioner resource is returned

#### Query Practitioner with another identifier (e.g. Nursing Council Number)

To query a Practitioner with ‘another identifier' the integrating application sends an HTTP GET request for the Practitioner resource using the ‘other identifier’ to identify the Practitioner whose information is being requested.

**Link to Search Practitioner when available**

[For more information on read vs query click here](/general.html#read-resource-by-id)

### Rules and errors
TBC
