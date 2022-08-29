

### Read Location with Identifier

<div>
{% include get-location.svg %}
</div>

Read location processing steps:
1. The user supplies a hpi-facility-id number for the location to be looked up.
2. The integrating application sends an HTTP GET request for the location resource using the hpi-facility-id to identify the location whose information is being requested. E.g. GET(Endpoint)/Location/FZZ999-B
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Location resource is retrieved from the HPI - ALT: Location not found. Operation Outcome resource returned
5. The response containing the Location resource is returned


### Query Location with another identifier

To query a location (facility) with ‘another identifier’, the integrating application sends an HTTP GET request for the Location resource using the ‘other identifier’
to identify the location whose information is being requested.

[To review searching by other identifiers click here](/searchLocation.html#other-search-criteria)

[For more information on read vs query click here](/general.html#read-resource-by-id)

#### Rules and errors
TBC
