

### Get Practitioner Overview

A Practitioner read request returns a Practitioner record with the following attributes (if populated):
* The ‘last updated single instance’ from all the HPI sources of Practitioner information:
  * deathdate,
  * official and usual names,
  * set of languages (Practitioner.communication, and
* All:
  * educational qualifications,
  * ‘old’ names, and
  * registraion details (Practitioner.qualification) 

A user with administration permissions will also see the ‘last updated single instance’ from across all sources:
 * set of ethnicities,
 * gender, and
 * birthdate.


### Get Practitioner using an hpi-person-id (HPI-CPN)

<div>
{% include get-practitioner.svg %}
</div>

**Get Practitioner processing steps:**

1. The user supplies an hpi-person-id number for the Practitioner to be looked up.
2. The integrating application sends an HTTP GET request for the Practitioner resource using the hpi-person-id to identify the Practitioner whose information is being requested. E.g. GET\<Endpoint>/Practitioner/99ZZRT
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The Practitioner resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5. The response containing the Practitioner resource is returned

<h4>Get Practitioner Rules and errors</h4>
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
<td>A Practitioner read request must include a valid hpi-person-id</td>
<td>
 <ul>
  <li>EM07240</li>
 </ul>
</td>
<td>
 <ul>
  <li>Resource not found</li>
 </ul>
</td>
<td>
 <ul>
  <li>Practitioner.identifier:HPI</li>
 </ul>
</td>
<td>
 <ul>
  <li>404 Not found</li>
 </ul>
 </td>
</tr>
</table>


### Query Practitioner using the registration authority identifier

To query a Practitioner with a registration authority identifier (E.g. nursing-council-id) the integrating application sends an HTTP GET request for the Practitioner resource using the registration authority identifier and identifiying the required register.

[For more information on read vs query click here](./general.html#read-resource-by-id)

<div>
{% include query-practitioner.svg %}
</div>

**Query Practitioner processing step E.g.nursing-council-id:**

1. The user supplies the system (https://standards.digital.health.nz/ns/nursing-council-id) and identifier (nursing-council-id) for the Practitioner.
2. The integrating application sends an HTTP GET request for the Practitioner resource using the nursing council identifier to identify the Practitioner whose information is being requested. E.g. GET\<Endpoint>/Practitioner?identifier=https://standards.digital.health.nz/ns/nursing-council-id\|961049
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The Practitioner resource is retrieved from the HPI - ALT: Practitioner not found. OperationOutcome resource returned
5. The response containing a bundle with a single Practitioner record is returned
6. The integrating application displays the practitioner details to the user

[For a full list of identifiers click here](https://fhir.org.nz/ig/base/namingSystems.html)

<h4>Query Practitioner Rules and errors</h4>
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
<td>A Practitioner query request must include a valid registration authority identifier and 'system'</td>
<td>
 <ul>
  <li>EM07208</li>
  <li>EM07240</li>
 </ul>
</td>
<td>
 <ul>
  <li>Value is invalid</li>
  <li>Resource not found</li>
 </ul>
</td>
<td>
 <ul>
  <li>Practitioner.identifier.system</li>
  <li>Practitioner.identifier:RA</li>
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
