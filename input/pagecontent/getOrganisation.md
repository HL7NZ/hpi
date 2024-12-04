

### Get Organisation Overview

The Get Organisation use case describes how a user can access an HPI organisation record from the HPI.

### Get Organisation using hpi-organisation-id

<div>
{% include get-organisation.svg %}
</div>

**Get Organisation processing steps:**

1. The user supplies a hpi-organisation-id for the Organisation to be looked up
2. The integrating application sends an HTTP GET request for the Organization resource using the hpi-organisation-id to identify the Organisation whose information is being requested E.g. GET\<Endpoint>/Organization/GZZ999-J
3. The request is validated - ALT: Validation failure. Operation Outcome resource returned
4. The Organization resource is retrieved from the HPI - ALT: Organization not found. Operation Outcome resource returned
5. The response containing the Organization resource is returned
6. The Organisation details are provided to the user

<h4>Get organisation rules and errors</h4>
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
<td>An organisation read request must include a valid hpi-organisation-id</td>
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

### Query Organisation with 'other identifier'

To query an Organisation with an ‘other identifier' the integrating application sends an HTTP GET request for the Organisation resource using the ‘other identifier’ and the identifier system.

The 'other identifier's that may be requested include
* The Legacy agency code (NZHIS)
  * using the url GET\<Endpoint>/Organization?identifier=https://standards.digital.health.nz/ns/nzhis-agency-id\|9000
* The New Zealand Business Number (NZBN)
  * using the url GET\<Endpoint>/Organization?identifier=https://standards.digital.health.nz/ns/hpi-nzbn\|9999999999001

#### Query Organisation using other identifier - NZ Business number (NZBN)

[For more information on read vs query click here](./general.html#read-resource-by-id)

<div>
{% include query-organisation.svg %}
</div>

**Query organisation using other identifier processing steps (E.g. NZBN)**

1. The user supplies the system (https://standards.digital.health.nz/ns/hpi-nzbn) and identifier (NZBN) for the organisation.
2. The integrating application sends an HTTP Get request for the organization resource using the NZBN to identify the organisation whose information is being requested. E.g. GET\<Endpoint>/Organization?identifier=https://standards.digital.health.nz/ns/hpi-nzbn\|9999999999001
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The Organization resource is retrieved from the HPI - ALT: Organization reource not found. OperationOutcome resource returned
5. The response containing a bundle with a single Organisation record is returned
6. The integrating application displays the Organisation details to the user

<h4>Query organisation rules and errors</h4>
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
<td>A query organisation request must include a valid 'other identifer' and the identifier system</td>
<td>
 <ul>
  <li>EM01100</li>
  <li></li>
 </ul>
</td>
<td>
 <ul>
  <li>System error occured while processing the request</li>
  <li>Unknown identifier system: \<></li>
 </ul>
</td>
<td>
 <ul>
  <li>Organization.identifier:nzbn</li>
  <li></li>
 </ul>
</td>
<td>
 <ul>
  <li>422 Unknown</li>
  <li>422 Unknown</li>
 </ul>
 </td>
</tr>
</table>
