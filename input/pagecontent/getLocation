

### Get Location (facility)

#### Read Loction with Identifier

{% include get-location.svg %}

Read location processing steps:
1. The user supplies a facId number for the location to be looked up.
2. The integrating application sends an HTTP GET request for the location resource using the facId to identify the location whose information is being requested. E.g. GET https://hpi.api.health.govt.nz/location/FZZ999-B
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Location resource is retrieved from the HPI - ALT: Location not found. Operation Outcome resource returned
5. The response containing the Location resource is returned

[For more info click here](/general.html#read-resource-by-id)

#### Query Loction with another identifier

To query a location (facility) with ‘another identifier’, the integrating application sends an HTTP GET request for the Location resource using the ‘other identifier’
to identify the location whose information is being requested. E.g. GET https://hpi.api.health.govt.nz/location?identifier=https://standards.digital.health.nz/ns/nzhis-facility-id|[legacyFacId]

[For more info click here](/general.html#query-resource)
