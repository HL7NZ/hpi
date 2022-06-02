

### Get Organization

#### Read Organization with Identifier

Diagram TBC

Read organization processing steps:
1. The user supplies a orgId number for the Organization to be looked up.
2. The integrating application sends an HTTP GET request for the Organization resource using the orgId to identify the Organization whose information is being requested. E.g. GET https://hpi.api.health.govt.nz/organization/GZZ999-J
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Organization resource is retrieved from the HPI - ALT: Organization not found. Operation Outcome resource returned
5. The response containing the Organization resource is returned

[For more info click here](/general.html#read-resource-by-id)

#### Query Organization with another identifier

To query an Organization with ‘another identifier’, the integrating application sends an HTTP GET request for the Organization resource using the ‘other identifier’
to identify the Organization whose information is being requested. E.g. GET https://hpi.api.health.govt.nz/organization?identifier=	
https://standards.digital.health.nz/ns/nhi-id|[NZBN]

[For more info click here](/general.html#query-resource)
