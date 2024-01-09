

### Search Practitioner using demographics

The search Practitioner operation allows a user to search the Practitioner index with known demographics 
* name,
* gender, and
* birthdate

[For more information of available search parameters click here](/capabilityStatement.html#practitioner)

#### Search Practitioner using name

<div>
{% include search-practitioner-withname.svg %}
</div>

**Processing steps:**

1. The user of the integrating application searches for a Practitioner by entering the name
2. The integrating application sends an HTTP GET request for the Practitioner resource using the name attribute as search parameter E.g. GET\<Endpoint>/Practitioner?name=walter o'reilly
4. The request is validated - ALT: Validation failure. OperationOutcome resource returned
5. The matching practitioners are retrieved from the HPI
6. The response containing a bundle of matching practitioners is returned to the integrating application
7. The integrating application displays the matching practitioners to the user


### Search Practitioner using name and birth date

<div>
{% include search-practitionerwithnamebirthdate.svg %}
</div>

**Processing steps:**

1. The user of the integrating application searches for a Practitioner by entering the name and birth date
2. The integrating application sends an HTTP GET request for the Practitioner resource using the name and birthdate elements as search parameters E.g. GET\<Endpoint>/Practitioner?name=walter o'reilly&birthdate=1943-05-24
3. The request is validated - ALT: Validation failure. OperationOutcome resource returned
4. The matching practitioners are retrieved from the HPI
5. The response containing a bundle of matching practitioners is returned to the integrating application
6. The integrating application displays the matching practitioners to the user
 
<h3>Search Practitioner Rules and errors</h3>
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
<td>A search practitioner request must include a name at minimum</td>
<td>
 <ul>
  <li>EM07201</li>
 </ul>
</td>
<td>
 <ul>
  <li>Required value missing</li>
 </ul>
</td>
<td>
 <ul>
  <li>Practitioner.SearchParam.name</li>
 </ul>
</td>
<td>
 <ul>
  <li>422 Unknown</li>
 </ul>
 </td>

 <td>A search practitioner request may include birthdate and gender</td>
<td>
 <ul>
  <li><i>No error</i></li>
 </ul>
</td>
<td>
 <ul>
  <li></li>
 </ul>
</td>
<td>
 <ul>
  <li></li>
 </ul>
</td>
<td>
 <ul>
  <li></li>
 </ul>
 </td>
</tr>
</table>
