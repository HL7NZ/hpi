### Compliance testing

Provide the following details in a test report and email to [integration@health.govt.nz](mailto:integration@health.govt.nz).

1. Tester details <br />
  a. Organisation Name <br />
  b. Application name and version <br />
  c. HPI IG Version <br />
  d. Test Script version <br />
  e. FHIR release version <br />
  f. Testing start date and time and end date and time <br />
  g. Tester name and contact details <br />
  h. List of interactions included in your integration (eg Get Practitioner, Get Location, Search Location)

2. For each test supply screen shots of the user interface for:
    * the input data as entered in the integrating application (“the application”)
    * the output:
      * any error messages presented by the application
      * the confirmation or result of the request presented by the application
    * For update operations the state of the record pre-request should be included. 
    * **Note**: If non-interactive, please provide JSON request (update / add) or response (get/search).

3. For each test supply a timestamp when each request is sent.


### Tests

**Mandatory vs Optional tests**
* If there are tests below that are labelled mandatory but do fit the application's use case then please let us know why.
* Some tests are labelled *mandatory if*. These tests are Mandatory only if you are using this piece of data for your use case.

<h4>Security and Audit Assessment</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>All test messages will be assessed against the security criteria in the table below</caption>
<tr><th>Reference</th>
<th>Purpose</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>Security 1</td>
<td>Credentials match those issued to the testing organisation <br /> and their orgID and appID are auditing correctly</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td>Security 2</td>
<td>Sending user ID is an end user ID or a hpi-person-id</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td>Security 3</td>
<td>Sending user ID changes when different end users are initiating the request (Please make sure a seperate user creates a request)</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Mandatory</td></tr>

<tr><td>Security 4</td>
<td>Each request has a unique request id in the X-Correlation-Id field <br />
If present this will be returned in the response</td>
<td>Checked against all tests</td>
<td>Te Whatu Ora will check internal logs</td>
<td>Recommended</td></tr>
</table>


<h4>HPI Organization GET</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th>
</tr>

<tr>
<td>HPI-O-Get-1</td>
<td>System behaves appropriately when a dormant hpi-organisation-id is requested</td>
<td>GZZ995-A</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Get-2</td>
<td>System behaves appropriately when the organisation requested is no longer active</td>
<td>GZZ903-C</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td>
</tr>
</table>

<h4>HPI Organization SEARCH</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr>
<th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th>
</tr>

<tr>
<td>HPI-O-Search-1</td>
<td>Minimum search criteria are included</td>
<td>Search for ‘New Zealand Army’ <br /> Search for ‘Hosptial Pharmacy’</td>
<td>Organisation name is supplied and returns results</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Search-2</td>
<td>Search results are presented to user in order provided by the HPI <br /> if not please provide a reason</td>
<td>Use search results from above</td>
<td>Results presented in order provided</td>
<td>mandatory</td></tr>

<tr>
<td>HPI-O-Search-3</td>
<td>System behaves appropriately when the name search criteria better matches an alias than the name</td>
<td>Search for ‘Discount Pharmaceuticals Limited’</td>
<td>System allows user to view aliases before selecting a result <br /> Name= TryNSave Discount Pharmacy <br /> Alias= Discount Pharmaceuticals Limited <br /> HPI-O= GZZ869-G</td>
<td>mandatory</td>
</tr>

<tr>
<td>HPI-O-Search-4</td>
<td>System can search using the NZBN identifier</td>
<td>NZBN= 9999999999057</td>
<td>HPI details for GZZ920-C are presented</td>
<td>optional</td>
</tr>
</table>


<h4>HPI Location/Facility GET</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-L-Get-1</td>
<td>System behaves appropriately when a dormant hpi-facility-id is requested</td>
<td>FZZ997-J</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Get-2</td>
<td>System behaves appropriately when the location requested is no longer active</td>
<td>FZZ754-E <br /> FZZ753-C</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Get-3</td>
<td>System behaves appropriately when more than one contact point is present</td>
<td>FZZ968-B</td>
<td>Where appropriate all contact points are displayed to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Get-4</td>
<td>System behaves appropriately when using the contact point rank</td>
<td>FZZ065-D</td>
<td>When rank is present it is presented to user in an meaningful way</td>
<td></td></tr>

<tr><td>HPI-L-Get-5</td>
<td>System presents the address parts appropriately</td>
<td>FZZ961-K <br /> FZZ960-H <br /> FZZ959-A <br /> FZZ958-K <br /> FZZ065-D</td>
<td>All address formats are displayed appropriately</td>
<td></td></tr>
</table>

<h4>HPI Location/Facility Search</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-L-Search-1</td>
<td>Minimum search criteria are included</td>
<td>Name = “Red Diamond”</td>
<td>Facility name is supplied and returns results</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Search-2</td>
<td>Search results are presented to user in order provided by the HPI <br /> if not please provide a reason</td>
<td>Use search results from above</td>
<td>Results presented in order provided</td>
<td>mandatory</td></tr>

<tr><td>HPI-L-Search-3</td>
<td>System behaves appropriately when the name search criteria better matches an alias than the name</td>
<td>Name = “Red Diamond Pukekohe”</td>
<td>System allows user to view aliases before selecting a result <br /> Name= Pukekohe Diamond Doctors <br /> Alias= Pukekohe Diamond Doctors <br /> HPI = F=FZZ857-D</td>
<td>mandatory</td></tr>
</table>

<h4>HPI Practitioner GET</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-P-Get-1</td>
<td>System can handle a response when a dormant hpi-person-id is requested</td>
<td>99ZZRT <br /> 90ZZJF</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-2</td>
<td>System can display the information required to confirm a health providers identity <br />
Full name <br />
hpi-person-id (CPN) <br />
Registration type (RA Provider only) </td>
<td> 91ZZWJ <br /> 90ZZLC </td>
<td>System displays information required to confirm identity</td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-3</td>
<td>System can handle a response when practitioner has <br /> only a surname; <br /> only a given name; <br /> Has both official and usual names</td>
<td> <b>Do all</b> <br /> 91ZZWJ <br /> 91ZZVR <br /> 93ZZWU</td>
<td>System does not error <br /> System returns all name parts when present <br /> Order of name parts is clear to the user <br /> System should retain the name as a Family name when a practitioner has only a Given Name on the HPI </td>
<td>mandatory</td></tr>

<tr><td>HPI-P-Get-4</td>
<td>System behaves appropriately when the requested practitioner has more than one registration</td>
<td><b>Do all</b> <br /> 95ZZEJ (dental/nursing) <br /> 98ZZNY (nursing/medical)<br /> 95ZZQE (medical sciences/nursing)<br /> 98ZZQJ (nursing/midwifery)<br /> 95ZZDR (nursing/psychology)<br /> 95ZZDE (optometry/nursing)</td>
<td>The appropriate registration is used or both registrations are presented</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-5</td>
<td>System behaves appropriately when the requested practitioner has more than one Scope of Practice</td>
<td><b>Do all</b> <br /> 98ZZNY <br /> 90ZZJF <br /> 98ZZNM</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-6</td>
<td>System behaves appropriately when the requested practitioner does not have a registration (qualification)</td>
<td>90ZZLC <br /> 90ZZLP</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-7</td>
<td>System behaves appropriately for all registration (qualification) statuses</td>
<td><b>Do all</b> <br /> 98ZZYU (Current)<br /> 98ZZYH (Inactive) <br /> 98ZZXQ (Removed) <br /> 98ZZXD (Suspended)</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-8</td>
<td>System clearly distinguishes between educational qualifications and registration details</td>
<td>97ZZYP <br /> 94ZZXF <br /> 97ZZYC <br /> 94ZZWZ <br /> 97ZZXW</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-9</td>
<td>System clearly displays all condition’s of practice / additional authorisation’s to user</td>
<td> TBC </td>
<td>System returns appropriate messaging to user</td>
<td>optional</td></tr>

<tr><td>HPI-P-Get-10</td>
<td>When a system is assessing a practitioners authority to practice that both the APC period and the registration status is used</td>
<td>90ZZSR <br /> 90ZZMG</td>
<td>The user is informed the practitioners APC has expired</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-11</td>
<td>System behaves appropriately when confidentiality settings have been set for a practitioner</td>
<td>93ZZRW <br /> 96ZZSG <br /> 98ZZWL</td>
<td>System does not error <br /> System returns appropriate messaging to user <br /> For more information see [Confidentiality](/businessView.html#confidentiality) and [Redacted Practitioner details](/StructureDefinition-HPIPractitioner.html#redacted-practitioner-details)</td>
<td>mandatory if</td></tr>

<tr><td>HPI-P-Get-12</td>
<td>System behaves appropriately when practitioner record has a date of death</td>
<td>90ZZLP <br /> 90ZZMG <br /> 92ZZSJ <br /> 92ZZRR</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>
</table>

<h4>HPI Practitioner Search</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<caption>*NOTE: Access is restricted to Practitioner Search by name and date of birth – prior permission should be sort from the [Integration team](mailto:integration@health.govt.nz) before developing this functionality into an application</caption>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-P-Search-1</td>
<td>System can search using the practitioner’s registration identifier eg Medical Council number, Nursing Council number</td>
<td>Medical Council <br /> Medical Council #= 99478 <br /> <br /> Nursing Council <br /> Nursing Council #= 961049 <br /> <br /> Medical Sciences Council <br /> Medical Sciences Council #= 30-91697</td>
<td>System retrieves record successfully</td>
<td>optional</td></tr>

<tr><td>HPI-P-Search-2</td>
<td>Minimum search criteria are included</td>
<td>Name = Walter O’Reilly <br /> Name = Brian Hunnicutt</td>
<td>A name is provided in the request</td>
<td>optional</td></tr>

<tr><td>HPI-P-Search-3</td>
<td>Other search criteria are included</td>
<td>Name = Walter O’Reilly <br />
Birthdate = 1943-05-24 <br />
Gender = male <br />
Name = Brian Hunnicutt <br />
Birthdate = 1939-02-06 <br />
Gender = male</td>
<td>Name, gender and birthdate can be provided in the request</td>
<td>optional</td></tr>

<tr><td>HPI-P-Search-4</td>
<td>Search results are presented to user in order provided by the HPI <br /> if not please provide a reason</td>
<td>Use search results from above</td>
<td>Results presented in order provided</td>
<td>mandatory</td></tr>
</table>


<h4>HPI PractitionerRole Get</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-PR-Get-1</td>
<td>System can Get a record using the hpi-practitionerrole-id</td>
<td>tbd</td>
<td>userID varies for each request</td>
<td>mandatory</td></tr>
</table>

<h4>HPI PractitionerRole Search</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-PR-Search-1</td>
<td>Minimum search criteria are included</td>
<td>tbd</td>
<td>hpi-person-id is always provided</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Search-2</td>
<td>System behaves appropriately when the record contains a role that has ended</td>
<td>tbd</td>
<td>System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Search-3</td>
<td>System behaves appropriately where a role does not include an hpi-organisation-id</td>
<td>tbd</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Search-4</td>
<td>System behaves appropriately where a role does not include a role code</td>
<td>tbd</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Search-5</td>
<td>System behaves appropriately when confidentiality settings have been set for a practitioner</td>
<td>tbd</td>
<td>System does not error <br /> System returns appropriate messaging to user</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Search-6</td>
<td>System behaves appropriately when the record contains one or more contact points</td>
<td>tbd</td>
<td>Where appropriate all contact points are displayed to user</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Search-7</td>
<td>System behaves appropriately when using the contact point rank</td>
<td>tbd</td>
<td>When rank is present it is presented to user in an meaningful way</td>
<td>optional</td></tr>
</table>


<h4>HPI PractitionerRole Add</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-PR-Add-1</td>
<td>Minimum add criteria are provided (hpi-person-id and hpi-facility-id)</td>
<td>Select hpi-person-id from test IDs <br /> Select hpi-facility-id from the test IDs</td>
<td>PractitionerRole record is added</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Add-2</td>
<td>System can supply all possible PractitionerRole attributes</td>
<td>Add a record with location, organization, role code,  multiple contact points and a period</td>
<td>PractitionerRole record is added</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Add-3</td>
<td>System can provide the confidentiality settings</td>
<td>TBC</td>
<td>PractitionerRole record is added with appropriate confidentiality settings</td>
<td>optional</td></tr>
</table>


<h4>HPI PractitionerRole Update</h4>
<table>
<style>
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<tr><th>Reference</th>
<th>Purpose – Demonstrate that the</th>
<th>Input values</th>
<th>Expected outcome</th>
<th>Mandatory</th></tr>

<tr><td>HPI-PR-Update</td>
<td>System can end a PractitionerRole record that it has created</td>
<td>Use role created in HPI-PR-Add-1 test</td>
<td>hpi-person-id is always provided</td>
<td>mandatory</td></tr>

<tr><td>HPI-PR-Update</td>
<td>System can add a contactpoint</td>
<td>Use role created in HPI-PR-Add-1 to 3</td>
<td>Contactpoint is added to the record</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Update</td>
<td>System can remove a contactpoint</td>
<td>Use role created in HPI-PR-Add-1 to 3</td>
<td>Contactpoint is removed from the record</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Update</td>
<td>System can update the rank on a contactpoint</td>
<td>Use role created in HPI-PR-Add-1 to 3</td>
<td>Rank is updated on a contactpoint</td>
<td>optional</td></tr>

<tr><td>HPI-PR-Update</td>
<td>System can provide the confidentiality settings</td>
<td>TBC - Use role created in HPI-PR-Add-1 to 3</td>
<td>Confidentiality settings are updated on the record</td>
<td>optional</td></tr>
</table>