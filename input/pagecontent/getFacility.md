

### Get Facility Overview

The Get Facility use case describes how a user can find an HPI facility record.
HPI Facilities are returned using the HL7 FHIR Location resource.

### Get facility using an hpi-facility-id

<div>
{% include get-location.svg %}
</div>

**Get facility (Location) processing steps:**
1. The user supplies a hpi-facility-id for the Facility to be looked up
2. The integrating application sends an HTTP GET request for the Location resource using the hpi-facility-id to identify the Location whose information is being requested. E.g. GET\<Endpoint>/Location/FZZ999-B
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Location resource is retrieved from the HPI - ALT: Location not found. Operation Outcome resource returned
5. The response containing the Location resource is returned
6. The Facility details are provided to the user

<h4>Get Facility rules and errors</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><a href="general.html#request-rules-and-errors">For Request rules and errors click here</a></caption>
<tr><th>Rule</th>
<th>Error code</th>
<th>Error description</th>
<th>Error text / expression</th>
<th>Http code</th></tr>

<tr>
<td>A Facility read request must include a valid hpi-facility-id</td>
<td>
 <ul>
  <li></li>
 </ul>
</td>
<td>
 <ul>
  <li>Invalid ID: <></li>
 </ul>
</td>
<td>
 <ul>
  <li></li>
 </ul>
</td>
<td>
 <ul>
  <li>404 Not found</li>
 </ul>
 </td>
</tr>
</table>

### Query Facility using the Location the NZHIS (Legacy) identifier

To query a Facility with the NZHIS (Legacy) identifier, the integrating application sends an HTTP Get request for the Location resource using the NZHIS (Legacy) identifier and the identifier system.

[For more information on read vs query click here](./general.html#read-resource-by-id)

<div>
{% include query-facility.svg %}
</div>

**Query facility (location) processing steps**

1. The user supplies the system (https://standards.digital.health.nz/ns/nzhis-facility-id) and identifier (NZHIS-id) for the facility.
2. The integrating application sends an HTTP Get request for the Location resource using the NZHIS identifier to identify the facility whose information is being requested. E.g. GET\<Endpoint>/Location?identifier=https://standards.digital.health.nz/ns/nzhis-facility-id\|Z997
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The Location resource is retrieved from the HPI - ALT: Location reource not found. OperationOutcome resource returned
5. The response containing a bundle with a single facility record is returned
6. The integrating application displays the facility details to the user

<h4>Query Facility rules and errors</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption><a href="general.html#request-rules-and-errors">For Request rules and errors click here</a></caption>
<tr><th>Rule</th>
<th>Error code</th>
<th>Error description</th>
<th>Error text / expression</th>
<th>Http code</th></tr>

<tr>
<td>A Facility query request must include a valid registration authority identifier and 'system'</td>
<td>
 <ul>
  <li></li>
  <li>EM07240</li>
 </ul>
</td>
<td>
 <ul>
  <li>Unknown identifier system: https://standards.digital.health.nz/ns/nzhis-facility-id</li>
  <li>Resource not found</li>
 </ul>
</td>
<td>
 <ul>
  <li></li>
  <li>Location.identifier:legacyFacId</li>
 </ul>
</td>
<td>
 <ul>
  <li>422 Unknown</li>
  <li>404 Not found</li>
 </ul>
 </td>
</tr>
</table>
