

### Get Organization

#### Read Organization with Identifier

Diagram TBC

Read organization processing steps:
1. The user supplies a hpi-organisation-id (HPIorgId) number for the Organization to be looked up.
2. The integrating application sends an HTTP GET request for the Organization resource using the HPIorgId to identify the Organization whose information is being requested. E.g. GET https://hpi.api.health.govt.nz/organization/GZZ999-J
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Organization resource is retrieved from the HPI - ALT: Organization not found. Operation Outcome resource returned
5. The response containing the Organization resource is returned

#### Query Organization with another identifier

To query an Organization with ‘another identifier' is technically a FHIR search, but is treated internally as an Organization read. The integrating application sends an HTTP GET request for the Organization resource using the ‘other identifier’ to identify the Organization whose information is being requested.

**Link to Search org when available**

[For more information on read vs query click here](/general.html#read-resource-by-id)

### Rules and errors
TBC
